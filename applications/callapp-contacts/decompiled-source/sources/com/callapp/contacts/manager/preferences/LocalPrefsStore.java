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

    /* renamed from: a  reason: collision with root package name */
    private static final Object f15231a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private ConcurrentHashMap<String, Object> f15232b;

    private void a() {
        ConcurrentHashMap<String, Object> concurrentHashMap = this.f15232b;
        if (concurrentHashMap != null) {
            concurrentHashMap.clear();
            List<OBPref> list = null;
            try {
                list = OBPrefsManager.getPrefs();
            } catch (Exception e) {
                CrashlyticsUtils.a(e);
                CLog.b(CallAppApplication.class, e);
                System.exit(1);
            }
            if (CollectionUtils.b(list)) {
                for (OBPref oBPref : list) {
                    if (StringUtils.b((CharSequence) oBPref.getKey()) && StringUtils.b((CharSequence) oBPref.getValue())) {
                        b(oBPref.getKey(), oBPref.getValue());
                    }
                }
            }
        }
    }

    private Object b(String str, String str2) {
        ConcurrentHashMap<String, Object> concurrentHashMap = this.f15232b;
        Object obj = str2;
        if (str2 == null) {
            obj = f15231a;
        }
        return concurrentHashMap.put(str, obj);
    }

    public static LocalPrefsStore get() {
        return Singletons.get().getPrefsStore();
    }

    public final String a(String str) {
        Object obj = this.f15232b.get(str);
        if (obj == f15231a) {
            return null;
        }
        return (String) obj;
    }

    public final void a(String str, String str2) {
        Object b2 = b(str, str2);
        Object obj = b2;
        if (b2 == null) {
            obj = this.f15232b.get(str);
        }
        synchronized (obj) {
            OBPrefsManager.setString(str, str2);
        }
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void destroy() {
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void init() {
        this.f15232b = new ConcurrentHashMap<>();
        a();
    }
}
