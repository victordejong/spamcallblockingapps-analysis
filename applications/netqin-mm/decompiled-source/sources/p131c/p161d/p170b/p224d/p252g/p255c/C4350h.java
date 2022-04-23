package p131c.p161d.p170b.p224d.p252g.p255c;

import android.content.SharedPreferences;
import android.util.Log;
import com.google.android.gms.internal.clearcut.zzae;
import com.google.android.gms.internal.clearcut.zzan;
import com.google.android.gms.internal.clearcut.zzao;
/* renamed from: c.d.b.d.g.c.h */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/c/h.class */
public final class C4350h extends zzae<T> {

    /* renamed from: k */
    public final Object f16519k = new Object();

    /* renamed from: l */
    public String f16520l;

    /* renamed from: m */
    public T f16521m;

    /* renamed from: n */
    public final /* synthetic */ zzan f16522n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4350h(zzao zzaoVar, String str, Object obj, zzan zzanVar) {
        super(zzaoVar, str, obj, null);
        this.f16522n = zzanVar;
    }

    /* JADX WARN: Type inference failed for: r0v12, types: [T, java.lang.Object] */
    @Override // com.google.android.gms.internal.clearcut.zzae
    /* renamed from: a */
    public final T mo10861a(SharedPreferences sharedPreferences) {
        try {
            return mo10856a(sharedPreferences.getString(this.f29215b, ""));
        } catch (ClassCastException e) {
            String valueOf = String.valueOf(this.f29215b);
            Log.e("PhenotypeFlag", valueOf.length() != 0 ? "Invalid byte[] value in SharedPreferences for ".concat(valueOf) : new String("Invalid byte[] value in SharedPreferences for "), e);
            return null;
        }
    }

    /* JADX WARN: Type inference failed for: r0v25, types: [T, java.lang.Object] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // com.google.android.gms.internal.clearcut.zzae
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final T mo10856a(java.lang.String r6) {
        /*
            r5 = this;
            r0 = r5
            java.lang.Object r0 = r0.f16519k     // Catch: IOException | IllegalArgumentException -> 0x0039
            r7 = r0
            r0 = r7
            monitor-enter(r0)     // Catch: IOException | IllegalArgumentException -> 0x0039
            r0 = r6
            r1 = r5
            java.lang.String r1 = r1.f16520l     // Catch: all -> 0x0034
            boolean r0 = r0.equals(r1)     // Catch: all -> 0x0034
            if (r0 != 0) goto L_0x002b
            r0 = r5
            com.google.android.gms.internal.clearcut.zzan r0 = r0.f16522n     // Catch: all -> 0x0034
            r1 = r6
            r2 = 3
            byte[] r1 = android.util.Base64.decode(r1, r2)     // Catch: all -> 0x0034
            java.lang.Object r0 = r0.mo10846a(r1)     // Catch: all -> 0x0034
            r8 = r0
            r0 = r5
            r1 = r6
            r0.f16520l = r1     // Catch: all -> 0x0034
            r0 = r5
            r1 = r8
            r0.f16521m = r1     // Catch: all -> 0x0034
        L_0x002b:
            r0 = r5
            T r0 = r0.f16521m     // Catch: all -> 0x0034
            r8 = r0
            r0 = r7
            monitor-exit(r0)     // Catch: all -> 0x0034
            r0 = r8
            return r0
        L_0x0034:
            r8 = move-exception
            r0 = r7
            monitor-exit(r0)     // Catch: all -> 0x0034
            r0 = r8
            throw r0     // Catch: IOException | IllegalArgumentException -> 0x0039
        L_0x0039:
            r7 = move-exception
            r0 = r5
            java.lang.String r0 = r0.f29215b
            r7 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r2 = r7
            java.lang.String r2 = java.lang.String.valueOf(r2)
            int r2 = r2.length()
            r3 = 27
            int r2 = r2 + r3
            r3 = r6
            java.lang.String r3 = java.lang.String.valueOf(r3)
            int r3 = r3.length()
            int r2 = r2 + r3
            r1.<init>(r2)
            r8 = r0
            r0 = r8
            java.lang.String r1 = "Invalid byte[] value for "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            r1 = r7
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            java.lang.String r1 = ": "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            r1 = r6
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r0 = "PhenotypeFlag"
            r1 = r8
            java.lang.String r1 = r1.toString()
            int r0 = android.util.Log.e(r0, r1)
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p252g.p255c.C4350h.mo10856a(java.lang.String):java.lang.Object");
    }
}
