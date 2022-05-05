package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzry.class */
public final class zzry {
    private final List<zzru> zzbop;
    private final List<zzru> zzboq;
    private final List<zzru> zzbor;
    private final List<zzru> zzbos;
    private final List<zzru> zzbpv;
    private final List<zzru> zzbpw;
    private final List<String> zzbpx;
    private final List<String> zzbpy;
    private final List<String> zzbpz;
    private final List<String> zzbqa;

    private zzry(List<zzru> list, List<zzru> list2, List<zzru> list3, List<zzru> list4, List<zzru> list5, List<zzru> list6, List<String> list7, List<String> list8, List<String> list9, List<String> list10) {
        this.zzbop = Collections.unmodifiableList(list);
        this.zzboq = Collections.unmodifiableList(list2);
        this.zzbor = Collections.unmodifiableList(list3);
        this.zzbos = Collections.unmodifiableList(list4);
        this.zzbpv = Collections.unmodifiableList(list5);
        this.zzbpw = Collections.unmodifiableList(list6);
        this.zzbpx = Collections.unmodifiableList(list7);
        this.zzbpy = Collections.unmodifiableList(list8);
        this.zzbpz = Collections.unmodifiableList(list9);
        this.zzbqa = Collections.unmodifiableList(list10);
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zzbop);
        String valueOf2 = String.valueOf(this.zzboq);
        String valueOf3 = String.valueOf(this.zzbor);
        String valueOf4 = String.valueOf(this.zzbos);
        String valueOf5 = String.valueOf(this.zzbpv);
        String valueOf6 = String.valueOf(this.zzbpw);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 102 + String.valueOf(valueOf2).length() + String.valueOf(valueOf3).length() + String.valueOf(valueOf4).length() + String.valueOf(valueOf5).length() + String.valueOf(valueOf6).length());
        sb.append("Positive predicates: ");
        sb.append(valueOf);
        sb.append("  Negative predicates: ");
        sb.append(valueOf2);
        sb.append("  Add tags: ");
        sb.append(valueOf3);
        sb.append("  Remove tags: ");
        sb.append(valueOf4);
        sb.append("  Add macros: ");
        sb.append(valueOf5);
        sb.append("  Remove macros: ");
        sb.append(valueOf6);
        return sb.toString();
    }

    public final List<zzru> zzsa() {
        return this.zzbop;
    }

    public final List<zzru> zzsb() {
        return this.zzboq;
    }

    public final List<zzru> zzsc() {
        return this.zzbor;
    }

    public final List<zzru> zzsd() {
        return this.zzbos;
    }

    public final List<zzru> zzsu() {
        return this.zzbpv;
    }

    public final List<zzru> zzsv() {
        return this.zzbpw;
    }
}
