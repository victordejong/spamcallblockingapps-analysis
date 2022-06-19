package com.callapp.contacts.loader.external;

import com.callapp.common.model.json.JSONExternalSourceContact;
import com.callapp.common.model.json.JSONQuotaLimitation;
import com.callapp.common.model.json.QuotaLimitPOJO;
import com.callapp.contacts.loader.SimpleContactLoader;
import com.callapp.contacts.loader.api.LoadContext;
import com.callapp.contacts.loader.api.NetworkDataLoader;
import com.callapp.contacts.manager.cache.CacheManager;
import com.callapp.contacts.model.contact.ExternalSourceData;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.servermessage.CheckQuotaLimitation;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/external/ExternalSourcesLoader.class */
public abstract class ExternalSourcesLoader<T extends ExternalSourceData> extends SimpleContactLoader implements NetworkDataLoader {
    /* renamed from: a */
    protected abstract JSONExternalSourceContact mo28805a(T t);

    /* renamed from: a */
    protected T mo28822a(List<T> list) {
        if (CollectionUtils.m26068b(list)) {
            return list.get(0);
        }
        return null;
    }

    @Override // com.callapp.contacts.loader.SimpleContactLoader
    /* renamed from: a */
    public final void mo27726a(LoadContext loadContext) {
        Map<String, QuotaLimitPOJO> quotaLimitationMap;
        QuotaLimitPOJO quotaLimitPOJO;
        JSONQuotaLimitation m26909a = CheckQuotaLimitation.m26909a(true);
        if (m26909a == null || (quotaLimitationMap = m26909a.getQuotaLimitationMap()) == null || (quotaLimitPOJO = quotaLimitationMap.get(String.valueOf(getExernalSourceId()))) == null || quotaLimitPOJO.isEnabled()) {
            m28831a(loadContext, mo28800c(loadContext));
        }
    }

    /* renamed from: a */
    protected abstract void mo28808a(LoadContext loadContext, T t);

    /* renamed from: a */
    public final void m28831a(LoadContext loadContext, List<T> list) {
        JSONExternalSourceContact mo28805a;
        if (CollectionUtils.m26068b(list)) {
            T mo28822a = mo28822a(list);
            mo28822a.setLastUpdated(new Date());
            mo28808a(loadContext, (LoadContext) mo28822a);
            CacheManager.get().m28389a((Class<String>) getDataClass(), loadContext.f25322a.getCacheKey((Class) getDataClass()), (String) mo28822a);
            for (T t : list) {
                if (t != null && StringUtils.m26045b((CharSequence) t.getFullName()) && (mo28805a = mo28805a((ExternalSourcesLoader<T>) t)) != null) {
                    mo28805a.setKey(t.getKey());
                    mo28805a.setExternalSourceId(getExernalSourceId());
                    try {
                        ExternalSourcesUtils.m28829a(mo28805a);
                    } catch (IOException e) {
                        CLog.m27609a(getClass(), e);
                    }
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.callapp.contacts.loader.SimpleContactLoader, com.callapp.contacts.loader.api.ContactDataLoader
    /* renamed from: b */
    public final void mo28789b(LoadContext loadContext) {
        ExternalSourceData externalSourceData = (ExternalSourceData) CacheManager.get().m28378b(getDataClass(), loadContext.f25322a.getCacheKey(getDataClass()), false);
        if (externalSourceData != null) {
            mo28808a(loadContext, (LoadContext) externalSourceData);
        }
    }

    /* renamed from: c */
    protected abstract List<T> mo28800c(LoadContext loadContext);

    protected abstract Class<T> getDataClass();

    protected abstract int getExernalSourceId();
}
