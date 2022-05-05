package com.google.android.gms.phenotype;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.Arrays;
import java.util.Map;
import java.util.TreeMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/phenotype/Configuration.class */
public class Configuration extends AbstractSafeParcelable implements Comparable<Configuration> {
    public static final Parcelable.Creator<Configuration> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    final int f4242a;

    /* renamed from: b  reason: collision with root package name */
    public final int f4243b;
    public final Flag[] c;
    public final String[] d;
    public final Map<String, Flag> e = new TreeMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    public Configuration(int i, int i2, Flag[] flagArr, String[] strArr) {
        this.f4242a = i;
        this.f4243b = i2;
        this.c = flagArr;
        for (Flag flag : flagArr) {
            this.e.put(flag.f4245b, flag);
        }
        this.d = strArr;
        if (this.d != null) {
            Arrays.sort(this.d);
        }
    }

    @Override // java.lang.Comparable
    public /* synthetic */ int compareTo(Configuration configuration) {
        return this.f4243b - configuration.f4243b;
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (obj != null) {
            z = false;
            if (obj instanceof Configuration) {
                Configuration configuration = (Configuration) obj;
                z = false;
                if (this.f4242a == configuration.f4242a) {
                    z = false;
                    if (this.f4243b == configuration.f4243b) {
                        z = false;
                        if (ae.a(this.e, configuration.e)) {
                            z = false;
                            if (Arrays.equals(this.d, configuration.d)) {
                                z = true;
                            }
                        }
                    }
                }
            }
        }
        return z;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Configuration(");
        sb.append(this.f4242a);
        sb.append(", ");
        sb.append(this.f4243b);
        sb.append(", ");
        sb.append("(");
        for (Flag flag : this.e.values()) {
            sb.append(flag);
            sb.append(", ");
        }
        sb.append(")");
        sb.append(", ");
        sb.append("(");
        if (this.d != null) {
            for (String str : this.d) {
                sb.append(str);
                sb.append(", ");
            }
        } else {
            sb.append("null");
        }
        sb.append(")");
        sb.append(")");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        a.a(this, parcel, i);
    }
}
