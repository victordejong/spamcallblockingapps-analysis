package com.google.firebase;

import com.google.android.gms.common.a.m;
import com.google.android.gms.common.internal.ae;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/firebase/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private final String f4435a;

    /* renamed from: b  reason: collision with root package name */
    private final String f4436b;
    private final String c;
    private final String d;
    private final String e;
    private final String f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(String str, String str2, String str3, String str4, String str5, String str6) {
        com.google.android.gms.common.internal.b.a(!m.a(str), "ApplicationId must be set.");
        this.f4436b = str;
        this.f4435a = str2;
        this.c = str3;
        this.d = str4;
        this.e = str5;
        this.f = str6;
    }

    public final boolean equals(Object obj) {
        boolean z;
        if (!(obj instanceof b)) {
            z = false;
        } else {
            b bVar = (b) obj;
            z = false;
            if (ae.a(this.f4436b, bVar.f4436b)) {
                z = false;
                if (ae.a(this.f4435a, bVar.f4435a)) {
                    z = false;
                    if (ae.a(this.c, bVar.c)) {
                        z = false;
                        if (ae.a(this.d, bVar.d)) {
                            z = false;
                            if (ae.a(this.e, bVar.e)) {
                                z = false;
                                if (ae.a(this.f, bVar.f)) {
                                    z = true;
                                }
                            }
                        }
                    }
                }
            }
        }
        return z;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f4436b, this.f4435a, this.c, this.d, this.e, this.f});
    }

    public final String toString() {
        return ae.a(this).a("applicationId", this.f4436b).a("apiKey", this.f4435a).a("databaseUrl", this.c).a("gcmSenderId", this.e).a("storageBucket", this.f).toString();
    }
}
