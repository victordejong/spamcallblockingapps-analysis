package com.callapp.contacts.manager.preferences;

import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.ManagedLifecycle;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.model.OBPrefsManager;
import com.callapp.contacts.model.objectbox.OBPref;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.CrashlyticsUtils;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/preferences/LocalPrefsStore.class */
public class LocalPrefsStore implements ManagedLifecycle {

    /* renamed from: a */
    private static final Object f26195a = new Object();

    /* renamed from: b */
    private ConcurrentHashMap<String, Object> f26196b;

    /* renamed from: a */
    private void m28183a() {
        ConcurrentHashMap<String, Object> concurrentHashMap = this.f26196b;
        if (concurrentHashMap != null) {
            concurrentHashMap.clear();
            List<OBPref> list = null;
            try {
                list = OBPrefsManager.getPrefs();
            } catch (Exception e) {
                CrashlyticsUtils.m27547a(e);
                CLog.m27596b(CallAppApplication.class, e);
                System.exit(1);
            }
            if (!CollectionUtils.m26068b(list)) {
                return;
            }
            for (OBPref oBPref : list) {
                if (StringUtils.m26045b((CharSequence) oBPref.getKey()) && StringUtils.m26045b((CharSequence) oBPref.getValue())) {
                    m28180b(oBPref.getKey(), oBPref.getValue());
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    private Object m28180b(String str, String str2) {
        ConcurrentHashMap<String, Object> concurrentHashMap = this.f26196b;
        String str3 = str2;
        if (str2 == null) {
            str3 = f26195a;
        }
        return concurrentHashMap.put(str, str3);
    }

    public static LocalPrefsStore get() {
        return Singletons.get().getPrefsStore();
    }

    /* renamed from: a */
    public final String m28182a(String str) {
        Object obj = this.f26196b.get(str);
        if (obj == f26195a) {
            return null;
        }
        return (String) obj;
    }

    /* renamed from: a */
    public final void m28181a(String str, String str2) {
        Object m28180b = m28180b(str, str2);
        Object obj = m28180b;
        if (m28180b == null) {
            obj = this.f26196b.get(str);
        }
        synchronized (obj) {
            try {
                OBPrefsManager.setString(str, str2);
            } catch (Throwable th) {
                Object obj2 = obj;
                throw th;
            }
        }
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void destroy() {
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void init() {
        this.f26196b = new ConcurrentHashMap<>();
        m28183a();
    }
}
