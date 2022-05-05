package com.google.android.gms.phenotype;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import gogolook.callgogolook2.gson.UserProfile;
import java.util.Arrays;
import java.util.Map;
import java.util.TreeMap;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p288n.C9098b;
import p081h.p203i.p204a.p224e.p288n.C9107k;
import p459j.p460a.p582w0.p590x4.C14247d;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/phenotype/Configuration.class */
public class Configuration extends AbstractSafeParcelable implements Comparable<Configuration> {
    public static final Parcelable.Creator<Configuration> CREATOR = new C9098b();

    /* renamed from: a */
    public final int f7187a;

    /* renamed from: b */
    public final zzi[] f7188b;

    /* renamed from: c */
    public final String[] f7189c;

    /* renamed from: d */
    public final Map<String, zzi> f7190d = new TreeMap();

    public Configuration(int i, zzi[] zziVarArr, String[] strArr) {
        this.f7187a = i;
        this.f7188b = zziVarArr;
        for (zzi zziVar : zziVarArr) {
            this.f7190d.put(zziVar.f7200a, zziVar);
        }
        this.f7189c = strArr;
        String[] strArr2 = this.f7189c;
        if (strArr2 != null) {
            Arrays.sort(strArr2);
        }
    }

    @Override // java.lang.Comparable
    public /* synthetic */ int compareTo(Configuration configuration) {
        return this.f7187a - configuration.f7187a;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Configuration)) {
            return false;
        }
        Configuration configuration = (Configuration) obj;
        return this.f7187a == configuration.f7187a && C9107k.m16083a(this.f7190d, configuration.f7190d) && Arrays.equals(this.f7189c, configuration.f7189c);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Configuration(");
        sb.append(this.f7187a);
        sb.append(UserProfile.CARD_CATE_SEPARATOR);
        sb.append("(");
        for (zzi zziVar : this.f7190d.values()) {
            sb.append(zziVar);
            sb.append(UserProfile.CARD_CATE_SEPARATOR);
        }
        sb.append(")");
        sb.append(UserProfile.CARD_CATE_SEPARATOR);
        sb.append("(");
        String[] strArr = this.f7189c;
        if (strArr != null) {
            for (String str : strArr) {
                sb.append(str);
                sb.append(UserProfile.CARD_CATE_SEPARATOR);
            }
        } else {
            sb.append(C14247d.f31851f);
        }
        sb.append(")");
        sb.append(")");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21225a(parcel, 2, this.f7187a);
        C7031b.m21209a(parcel, 3, (Parcelable[]) this.f7188b, i, false);
        C7031b.m21208a(parcel, 4, this.f7189c, false);
        C7031b.m21229a(parcel, a);
    }
}
