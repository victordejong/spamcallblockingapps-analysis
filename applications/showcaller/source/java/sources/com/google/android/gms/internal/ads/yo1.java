package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Bundle;
import android.util.JsonReader;
import com.google.android.gms.ads.C5842q;
import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/yo1.class */
public final class yo1 extends i30 {

    /* renamed from: d */
    private final bp1 f32571d;

    /* renamed from: e */
    private final wo1 f32572e;

    /* renamed from: f */
    private final Map<Long, ro1> f32573f = new HashMap();

    public yo1(bp1 bp1Var, wo1 wo1Var) {
        this.f32571d = bp1Var;
        this.f32572e = wo1Var;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: E6 */
    private static zzbdg m8753E6(Map<String, String> map) {
        boolean z;
        C7043uq c7043uq = new C7043uq();
        String str = map.get("ad_request");
        if (str == null) {
            return c7043uq.m10258a();
        }
        JsonReader jsonReader = new JsonReader(new StringReader(Uri.decode(str)));
        try {
            jsonReader.beginObject();
            while (jsonReader.hasNext()) {
                String nextName = jsonReader.nextName();
                switch (nextName.hashCode()) {
                    case -1289032093:
                        if (nextName.equals("extras")) {
                            z = false;
                            break;
                        }
                        z = true;
                        break;
                    case -839117230:
                        if (nextName.equals("isTestDevice")) {
                            z = true;
                            break;
                        }
                        z = true;
                        break;
                    case -733436947:
                        if (nextName.equals("tagForUnderAgeOfConsent")) {
                            z = true;
                            break;
                        }
                        z = true;
                        break;
                    case -99890337:
                        if (nextName.equals("httpTimeoutMillis")) {
                            z = true;
                            break;
                        }
                        z = true;
                        break;
                    case 523149226:
                        if (nextName.equals("keywords")) {
                            z = true;
                            break;
                        }
                        z = true;
                        break;
                    case 597632527:
                        if (nextName.equals("maxAdContentRating")) {
                            z = true;
                            break;
                        }
                        z = true;
                        break;
                    case 1411582723:
                        if (nextName.equals("tagForChildDirectedTreatment")) {
                            z = true;
                            break;
                        }
                        z = true;
                        break;
                    default:
                        z = true;
                        break;
                }
                switch (z) {
                    case false:
                        jsonReader.beginObject();
                        Bundle bundle = new Bundle();
                        while (jsonReader.hasNext()) {
                            bundle.putString(jsonReader.nextName(), jsonReader.nextString());
                        }
                        jsonReader.endObject();
                        c7043uq.m10257b(bundle);
                        break;
                    case true:
                        jsonReader.beginArray();
                        ArrayList arrayList = new ArrayList();
                        while (jsonReader.hasNext()) {
                            arrayList.add(jsonReader.nextString());
                        }
                        jsonReader.endArray();
                        c7043uq.m10256c(arrayList);
                        break;
                    case true:
                        c7043uq.m10255d(jsonReader.nextBoolean());
                        break;
                    case true:
                        if (!jsonReader.nextBoolean()) {
                            c7043uq.m10254e(0);
                            break;
                        } else {
                            c7043uq.m10254e(1);
                            break;
                        }
                    case true:
                        if (!jsonReader.nextBoolean()) {
                            c7043uq.m10253f(0);
                            break;
                        } else {
                            c7043uq.m10253f(1);
                            break;
                        }
                    case true:
                        String nextString = jsonReader.nextString();
                        if (!C5842q.f18780a.contains(nextString)) {
                            break;
                        } else {
                            c7043uq.m10252g(nextString);
                            break;
                        }
                    case true:
                        c7043uq.m10251h(jsonReader.nextInt());
                        break;
                    default:
                        jsonReader.skipValue();
                        break;
                }
            }
            jsonReader.endObject();
        } catch (IOException e) {
            ei0.m15469a("Ad Request json was malformed, parsing ended early.");
        }
        zzbdg m10258a = c7043uq.m10258a();
        Bundle bundle2 = m10258a.f33671p.getBundle("com.google.ads.mediation.admob.AdMobAdapter");
        Bundle bundle3 = bundle2;
        if (bundle2 == null) {
            bundle3 = m10258a.f33661f;
            m10258a.f33671p.putBundle("com.google.ads.mediation.admob.AdMobAdapter", bundle3);
        }
        return new zzbdg(m10258a.f33659d, m10258a.f33660e, bundle3, m10258a.f33662g, m10258a.f33663h, m10258a.f33664i, m10258a.f33665j, m10258a.f33666k, m10258a.f33667l, m10258a.f33668m, m10258a.f33669n, m10258a.f33670o, m10258a.f33671p, m10258a.f33672q, m10258a.f33673r, m10258a.f33674s, m10258a.f33675t, m10258a.f33676u, m10258a.f33677v, m10258a.f33678w, m10258a.f33679x, m10258a.f33680y, m10258a.f33681z, m10258a.f33658A);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0516  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00a8  */
    @Override // com.google.android.gms.internal.ads.j30
    /* renamed from: B */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo8754B(java.lang.String r6) {
        /*
            Method dump skipped, instructions count: 1319
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.yo1.mo8754B(java.lang.String):void");
    }

    @Override // com.google.android.gms.internal.ads.j30
    /* renamed from: d */
    public final void mo8752d() {
        this.f32573f.clear();
    }
}
