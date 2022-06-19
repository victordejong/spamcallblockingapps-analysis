package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.C5722o1;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/w30.class */
public final class w30 implements xy3 {

    /* renamed from: a */
    private volatile k30 f31441a;

    /* renamed from: b */
    private final Context f31442b;

    public w30(Context context) {
        this.f31442b = context;
    }

    /* renamed from: c */
    public static /* synthetic */ void m9784c(w30 w30Var) {
        if (w30Var.f31441a == null) {
            return;
        }
        w30Var.f31441a.m17112a();
        Binder.flushPendingCommands();
    }

    @Override // com.google.android.gms.internal.ads.xy3
    /* renamed from: a */
    public final zy3 mo9014a(dz3<?> dz3Var) {
        Parcelable.Creator<zzbqy> creator = zzbqy.CREATOR;
        Map<String, String> mo15629p = dz3Var.mo15629p();
        int size = mo15629p.size();
        String[] strArr = new String[size];
        String[] strArr2 = new String[size];
        int i = 0;
        for (Map.Entry<String, String> entry : mo15629p.entrySet()) {
            strArr[i] = entry.getKey();
            strArr2[i] = entry.getValue();
            i++;
        }
        zzbqy zzbqyVar = new zzbqy(dz3Var.m15634k(), strArr, strArr2);
        long mo16806b = C5667s.m18153k().mo16806b();
        zy3 zy3Var = null;
        try {
            vi0 vi0Var = new vi0();
            this.f31441a = new k30(this.f31442b, C5667s.m18146r().m17910a(), new u30(this, vi0Var), new v30(this, vi0Var));
            this.f31441a.m17093q();
            s30 s30Var = new s30(this, zzbqyVar);
            s03 s03Var = qi0.f28495a;
            r03 m13996h = k03.m13996h(k03.m13995i(vi0Var, s30Var, s03Var), ((Integer) C7192yr.m8714c().m14263c(C6679kw.f25582S2)).intValue(), TimeUnit.MILLISECONDS, qi0.f28498d);
            m13996h.mo10015d(new t30(this), s03Var);
            ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) m13996h.get();
            long mo16806b2 = C5667s.m18153k().mo16806b();
            StringBuilder sb = new StringBuilder(52);
            sb.append("Http assets remote cache took ");
            sb.append(mo16806b2 - mo16806b);
            sb.append("ms");
            C5722o1.m17990k(sb.toString());
            zzbra zzbraVar = (zzbra) new zzcbh(parcelFileDescriptor).m8069k0(zzbra.CREATOR);
            if (zzbraVar == null) {
                return null;
            }
            if (zzbraVar.f33728d) {
                throw new zzwl(zzbraVar.f33729e);
            }
            if (zzbraVar.f33732h.length == zzbraVar.f33733i.length) {
                HashMap hashMap = new HashMap();
                int i2 = 0;
                while (true) {
                    String[] strArr3 = zzbraVar.f33732h;
                    if (i2 >= strArr3.length) {
                        break;
                    }
                    hashMap.put(strArr3[i2], zzbraVar.f33733i[i2]);
                    i2++;
                }
                zy3Var = new zy3(zzbraVar.f33730f, zzbraVar.f33731g, hashMap, zzbraVar.f33734j, zzbraVar.f33735k);
            }
            return zy3Var;
        } catch (InterruptedException | ExecutionException e) {
            long mo16806b3 = C5667s.m18153k().mo16806b();
            StringBuilder sb2 = new StringBuilder(52);
            sb2.append("Http assets remote cache took ");
            sb2.append(mo16806b3 - mo16806b);
            sb2.append("ms");
            C5722o1.m17990k(sb2.toString());
            return null;
        } catch (Throwable th) {
            long mo16806b4 = C5667s.m18153k().mo16806b();
            StringBuilder sb3 = new StringBuilder(52);
            sb3.append("Http assets remote cache took ");
            sb3.append(mo16806b4 - mo16806b);
            sb3.append("ms");
            C5722o1.m17990k(sb3.toString());
            throw th;
        }
    }
}
