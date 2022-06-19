package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.huawei.hms.framework.common.ContainerUtils;
import com.mopub.common.Constants;
import java.util.EnumMap;
import java.util.Iterator;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/measurement/internal/zzah.class */
public final class zzah {

    /* renamed from: b */
    public static final zzah f6264b = new zzah(null, null);

    /* renamed from: a */
    public final EnumMap f6265a;

    public zzah(Boolean bool, Boolean bool2) {
        EnumMap enumMap = new EnumMap(zzag.class);
        this.f6265a = enumMap;
        enumMap.put((EnumMap) zzag.AD_STORAGE, (zzag) bool);
        enumMap.put((EnumMap) zzag.ANALYTICS_STORAGE, (zzag) bool2);
    }

    public zzah(EnumMap enumMap) {
        EnumMap enumMap2 = new EnumMap(zzag.class);
        this.f6265a = enumMap2;
        enumMap2.putAll(enumMap);
    }

    /* renamed from: a */
    public static zzah m38626a(Bundle bundle) {
        if (bundle == null) {
            return f6264b;
        }
        EnumMap enumMap = new EnumMap(zzag.class);
        zzag[] values = zzag.values();
        for (int i = 0; i < 2; i++) {
            zzag zzagVar = values[i];
            enumMap.put((EnumMap) zzagVar, (zzag) m38618i(bundle.getString(zzagVar.f6263a)));
        }
        return new zzah(enumMap);
    }

    /* renamed from: b */
    public static zzah m38625b(String str) {
        EnumMap enumMap = new EnumMap(zzag.class);
        if (str != null) {
            int i = 0;
            while (true) {
                zzag[] zzagVarArr = zzag.f6261d;
                if (i >= 2) {
                    break;
                }
                zzag zzagVar = zzagVarArr[i];
                int i2 = i + 2;
                if (i2 < str.length()) {
                    char charAt = str.charAt(i2);
                    Boolean bool = null;
                    if (charAt != '-') {
                        bool = charAt != '0' ? charAt != '1' ? null : Boolean.TRUE : Boolean.FALSE;
                    }
                    enumMap.put((EnumMap) zzagVar, (zzag) bool);
                }
                i++;
            }
        }
        return new zzah(enumMap);
    }

    /* renamed from: f */
    public static boolean m38621f(int i, int i2) {
        return i <= i2;
    }

    /* renamed from: h */
    public static final int m38619h(Boolean bool) {
        if (bool == null) {
            return 0;
        }
        return bool.booleanValue() ? 1 : 2;
    }

    /* renamed from: i */
    public static Boolean m38618i(String str) {
        if (str == null) {
            return null;
        }
        if (str.equals("granted")) {
            return Boolean.TRUE;
        }
        if (!str.equals(Constants.TAS_DENIED)) {
            return null;
        }
        return Boolean.FALSE;
    }

    /* renamed from: c */
    public final zzah m38624c(zzah zzahVar) {
        Boolean bool;
        EnumMap enumMap = new EnumMap(zzag.class);
        zzag[] values = zzag.values();
        for (int i = 0; i < 2; i++) {
            zzag zzagVar = values[i];
            Boolean bool2 = (Boolean) this.f6265a.get(zzagVar);
            Boolean bool3 = (Boolean) zzahVar.f6265a.get(zzagVar);
            if (bool2 == null) {
                bool = bool3;
            } else {
                bool = bool2;
                if (bool3 != null) {
                    bool = Boolean.valueOf(bool2.booleanValue() && bool3.booleanValue());
                }
            }
            enumMap.put((EnumMap) zzagVar, (zzag) bool);
        }
        return new zzah(enumMap);
    }

    /* renamed from: d */
    public final String m38623d() {
        StringBuilder sb = new StringBuilder("G1");
        zzag[] zzagVarArr = zzag.f6261d;
        for (int i = 0; i < 2; i++) {
            Boolean bool = (Boolean) this.f6265a.get(zzagVarArr[i]);
            sb.append(bool == null ? '-' : bool.booleanValue() ? '1' : '0');
        }
        return sb.toString();
    }

    /* renamed from: e */
    public final boolean m38622e(zzag zzagVar) {
        Boolean bool = (Boolean) this.f6265a.get(zzagVar);
        return bool == null || bool.booleanValue();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzah)) {
            return false;
        }
        zzah zzahVar = (zzah) obj;
        zzag[] values = zzag.values();
        for (int i = 0; i < 2; i++) {
            zzag zzagVar = values[i];
            if (m38619h((Boolean) this.f6265a.get(zzagVar)) != m38619h((Boolean) zzahVar.f6265a.get(zzagVar))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: g */
    public final boolean m38620g(zzah zzahVar) {
        boolean z;
        zzag[] zzagVarArr = (zzag[]) this.f6265a.keySet().toArray(new zzag[0]);
        int length = zzagVarArr.length;
        int i = 0;
        while (true) {
            z = false;
            if (i >= length) {
                break;
            }
            zzag zzagVar = zzagVarArr[i];
            Boolean bool = (Boolean) this.f6265a.get(zzagVar);
            Boolean bool2 = (Boolean) zzahVar.f6265a.get(zzagVar);
            Boolean bool3 = Boolean.FALSE;
            if (bool == bool3 && bool2 != bool3) {
                z = true;
                break;
            }
            i++;
        }
        return z;
    }

    public final int hashCode() {
        Iterator it = this.f6265a.values().iterator();
        int i = 17;
        while (true) {
            int i2 = i;
            if (it.hasNext()) {
                i = (i2 * 31) + m38619h((Boolean) it.next());
            } else {
                return i2;
            }
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("settings: ");
        zzag[] values = zzag.values();
        for (int i = 0; i < 2; i++) {
            zzag zzagVar = values[i];
            if (i != 0) {
                sb.append(", ");
            }
            sb.append(zzagVar.name());
            sb.append(ContainerUtils.KEY_VALUE_DELIMITER);
            Boolean bool = (Boolean) this.f6265a.get(zzagVar);
            if (this.f6265a.containsKey(zzagVar) || bool == null) {
                sb.append("uninitialized");
            } else {
                sb.append(true != bool.booleanValue() ? Constants.TAS_DENIED : "granted");
            }
        }
        return sb.toString();
    }
}
