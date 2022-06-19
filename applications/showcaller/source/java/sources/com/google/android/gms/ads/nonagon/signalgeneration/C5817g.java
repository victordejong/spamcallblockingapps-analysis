package com.google.android.gms.ads.nonagon.signalgeneration;

import android.util.JsonReader;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.internal.ads.k03;
import com.google.android.gms.internal.ads.r03;
import com.google.android.gms.internal.ads.tr1;
import com.google.android.gms.internal.ads.uz2;
import com.google.android.gms.internal.ads.zzcbj;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.concurrent.Executor;
import org.json.JSONException;
/* renamed from: com.google.android.gms.ads.nonagon.signalgeneration.g */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/nonagon/signalgeneration/g.class */
public final class C5817g implements uz2<zzcbj, C5821i> {

    /* renamed from: a */
    private final Executor f18746a;

    /* renamed from: b */
    private final tr1 f18747b;

    public C5817g(Executor executor, tr1 tr1Var) {
        this.f18746a = executor;
        this.f18747b = tr1Var;
    }

    @Override // com.google.android.gms.internal.ads.uz2
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ r03<C5821i> mo8403a(zzcbj zzcbjVar) {
        zzcbj zzcbjVar2 = zzcbjVar;
        return k03.m13995i(this.f18747b.m10518a(zzcbjVar2), new uz2(zzcbjVar2) { // from class: com.google.android.gms.ads.nonagon.signalgeneration.f

            /* renamed from: a */
            private final zzcbj f18735a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f18735a = zzcbjVar2;
            }

            @Override // com.google.android.gms.internal.ads.uz2
            /* renamed from: a */
            public final r03 mo8403a(Object obj) {
                zzcbj zzcbjVar3 = this.f18735a;
                C5821i c5821i = new C5821i(new JsonReader(new InputStreamReader((InputStream) obj)));
                try {
                    c5821i.f18752b = C5667s.m18160d().m18089S(zzcbjVar3.f33826d).toString();
                } catch (JSONException e) {
                    c5821i.f18752b = "{}";
                }
                return k03.m14003a(c5821i);
            }
        }, this.f18746a);
    }
}
