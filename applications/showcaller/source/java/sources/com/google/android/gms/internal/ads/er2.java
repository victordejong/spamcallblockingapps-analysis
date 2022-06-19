package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/er2.class */
public final class er2 extends zq2 {
    /* JADX WARN: Multi-variable type inference failed */
    public er2(sq2 sq2Var, sq2 sq2Var2, HashSet<String> hashSet, JSONObject jSONObject, long j) {
        super(sq2Var, sq2Var2, hashSet, jSONObject, null);
    }

    @Override // com.google.android.gms.internal.ads.ar2
    /* renamed from: a */
    public final void mo15402a(String str) {
        up2 m10275a;
        if (!TextUtils.isEmpty(str) && (m10275a = up2.m10275a()) != null) {
            for (np2 np2Var : m10275a.m10271e()) {
                if (this.f33263c.contains(np2Var.m12828h())) {
                    np2Var.m12829g().m14301f(str, this.f33265e);
                }
            }
        }
        super.onPostExecute(str);
    }

    @Override // android.os.AsyncTask
    protected final /* bridge */ /* synthetic */ String doInBackground(Object[] objArr) {
        if (mq2.m13107i(this.f33264d, this.f20099b.m10926d())) {
            return null;
        }
        this.f20099b.m10925e(this.f33264d);
        return this.f33264d.toString();
    }

    @Override // com.google.android.gms.internal.ads.ar2, android.os.AsyncTask
    protected final /* bridge */ /* synthetic */ void onPostExecute(String str) {
        onPostExecute(str);
    }
}
