package p122i2;

import com.google.android.gms.internal.ads.C1676a;
import com.google.android.gms.internal.play_billing.zzb;
/* renamed from: i2.c */
/* loaded from: classes-dex2jar.jar:i2/c.class */
public final class C3067c {

    /* renamed from: a */
    public int f10403a;

    /* renamed from: b */
    public String f10404b;

    public String toString() {
        String zzk = zzb.zzk(this.f10403a);
        String str = this.f10404b;
        return C1676a.m4788i(new StringBuilder(String.valueOf(zzk).length() + 32 + String.valueOf(str).length()), "Response Code: ", zzk, ", Debug Message: ", str);
    }
}
