package com.google.android.gms.internal.ads;

import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/dr2.class */
public final class dr2 extends zq2 {
    /* JADX WARN: Multi-variable type inference failed */
    public dr2(sq2 sq2Var, sq2 sq2Var2, HashSet<String> hashSet, JSONObject jSONObject, long j) {
        super(sq2Var, sq2Var2, hashSet, jSONObject, null);
    }

    /* renamed from: c */
    private final void m15709c(String str) {
        up2 m10275a = up2.m10275a();
        if (m10275a != null) {
            for (np2 np2Var : m10275a.m10271e()) {
                if (this.f33263c.contains(np2Var.m12828h())) {
                    np2Var.m12829g().m14300g(str, this.f33265e);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ar2
    /* renamed from: a */
    public final void mo15402a(String str) {
        m15709c(str);
        super.onPostExecute(str);
    }

    @Override // android.os.AsyncTask
    protected final /* bridge */ /* synthetic */ String doInBackground(Object[] objArr) {
        return this.f33264d.toString();
    }

    @Override // com.google.android.gms.internal.ads.ar2, android.os.AsyncTask
    protected final /* bridge */ /* synthetic */ void onPostExecute(String str) {
        String str2 = str;
        m15709c(str2);
        super.onPostExecute(str2);
    }
}
