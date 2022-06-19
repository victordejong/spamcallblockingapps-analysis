package com.huawei.hms.p095ui;

import android.os.Bundle;
import com.huawei.hms.base.p084ui.C2280a;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.huawei.hms.ui.SafeBundle */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/ui/SafeBundle.class */
public class SafeBundle {

    /* renamed from: a */
    public final Bundle f7824a;

    public SafeBundle() {
        this(new Bundle());
    }

    public SafeBundle(Bundle bundle) {
        this.f7824a = bundle == null ? new Bundle() : bundle;
    }

    public boolean containsKey(String str) {
        try {
            return this.f7824a.containsKey(str);
        } catch (Exception e) {
            C2280a.m38098a("SafeBundle", "containsKey exception. key:");
            return false;
        }
    }

    public Object get(String str) {
        try {
            return this.f7824a.get(str);
        } catch (Exception e) {
            StringBuilder m8728C = C22128a.m8728C("get exception: ");
            m8728C.append(e.getMessage());
            C2280a.m38097a("SafeBundle", m8728C.toString(), true);
            return null;
        }
    }

    public Bundle getBundle() {
        return this.f7824a;
    }

    public int getInt(String str) {
        return getInt(str, 0);
    }

    public int getInt(String str, int i) {
        try {
            return this.f7824a.getInt(str, i);
        } catch (Exception e) {
            StringBuilder m8728C = C22128a.m8728C("getInt exception: ");
            m8728C.append(e.getMessage());
            C2280a.m38097a("SafeBundle", m8728C.toString(), true);
            return i;
        }
    }

    public String getString(String str) {
        try {
            return this.f7824a.getString(str);
        } catch (Exception e) {
            StringBuilder m8728C = C22128a.m8728C("getString exception: ");
            m8728C.append(e.getMessage());
            C2280a.m38097a("SafeBundle", m8728C.toString(), true);
            return "";
        }
    }

    public String getString(String str, String str2) {
        try {
            return this.f7824a.getString(str, str2);
        } catch (Exception e) {
            StringBuilder m8728C = C22128a.m8728C("getString exception: ");
            m8728C.append(e.getMessage());
            C2280a.m38097a("SafeBundle", m8728C.toString(), true);
            return str2;
        }
    }

    public boolean isEmpty() {
        try {
            return this.f7824a.isEmpty();
        } catch (Exception e) {
            C2280a.m38098a("SafeBundle", "isEmpty exception");
            return true;
        }
    }

    public int size() {
        try {
            return this.f7824a.size();
        } catch (Exception e) {
            C2280a.m38098a("SafeBundle", "size exception");
            return 0;
        }
    }

    public String toString() {
        return this.f7824a.toString();
    }
}
