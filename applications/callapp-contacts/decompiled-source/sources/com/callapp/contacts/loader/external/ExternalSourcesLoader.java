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
    protected abstract JSONExternalSourceContact a(T t);

    protected T a(List<T> list) {
        if (CollectionUtils.b(list)) {
            return list.get(0);
        }
        return null;
    }

    @Override // com.callapp.contacts.loader.SimpleContactLoader
    public final void a(LoadContext loadContext) {
        Map<String, QuotaLimitPOJO> quotaLimitationMap;
        QuotaLimitPOJO quotaLimitPOJO;
        JSONQuotaLimitation a2 = CheckQuotaLimitation.a(true);
        if (a2 == null || (quotaLimitationMap = a2.getQuotaLimitationMap()) == null || (quotaLimitPOJO = quotaLimitationMap.get(String.valueOf(getExernalSourceId()))) == null || quotaLimitPOJO.isEnabled()) {
            a(loadContext, c(loadContext));
        }
    }

    protected abstract void a(LoadContext loadContext, T t);

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(LoadContext loadContext, List<T> list) {
        JSONExternalSourceContact a2;
        if (CollectionUtils.b(list)) {
            T a3 = a(list);
            a3.setLastUpdated(new Date());
            a(loadContext, (LoadContext) a3);
            CacheManager.get().a((Class<String>) getDataClass(), loadContext.f14535a.getCacheKey((Class) getDataClass()), (String) a3);
            for (T t : list) {
                if (!(t == null || !StringUtils.b((CharSequence) t.getFullName()) || (a2 = a((ExternalSourcesLoader<T>) t)) == null)) {
                    a2.setKey(t.getKey());
                    a2.setExternalSourceId(getExernalSourceId());
                    try {
                        ExternalSourcesUtils.a(a2);
                    } catch (IOException e) {
                        CLog.a(getClass(), e);
                    }
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.callapp.contacts.loader.SimpleContactLoader, com.callapp.contacts.loader.api.ContactDataLoader
    public final void b(LoadContext loadContext) {
        ExternalSourceData externalSourceData = (ExternalSourceData) CacheManager.get().b(getDataClass(), loadContext.f14535a.getCacheKey(getDataClass()), false);
        if (externalSourceData != null) {
            a(loadContext, (LoadContext) externalSourceData);
        }
    }

    protected abstract List<T> c(LoadContext loadContext);

    protected abstract Class<T> getDataClass();

    protected abstract int getExernalSourceId();
}
