package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.C2299a;
import com.google.android.gms.ads.internal.C2341q;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bbe.class */
public final class bbe {

    /* renamed from: a */
    private final Context f10856a;

    /* renamed from: b */
    private final bay f10857b;

    /* renamed from: c */
    private final ctl f10858c;

    /* renamed from: d */
    private final C3647yd f10859d;

    /* renamed from: e */
    private final C2299a f10860e;

    /* renamed from: f */
    private final dwi f10861f;

    /* renamed from: g */
    private final Executor f10862g;

    /* renamed from: h */
    private final C2835bl f10863h;

    /* renamed from: i */
    private final bbv f10864i;

    /* renamed from: j */
    private final ScheduledExecutorService f10865j;

    public bbe(Context context, bay bayVar, ctl ctlVar, C3647yd c3647yd, C2299a c2299a, dwi dwiVar, Executor executor, chh chhVar, bbv bbvVar, ScheduledExecutorService scheduledExecutorService) {
        this.f10856a = context;
        this.f10857b = bayVar;
        this.f10858c = ctlVar;
        this.f10859d = c3647yd;
        this.f10860e = c2299a;
        this.f10861f = dwiVar;
        this.f10862g = executor;
        this.f10863h = chhVar.f13045i;
        this.f10864i = bbvVar;
        this.f10865j = scheduledExecutorService;
    }

    /* renamed from: a */
    private static <T> crt<T> m12130a(crt<T> crtVar, T t) {
        return crg.m10780a(crtVar, Exception.class, new cqt(null) { // from class: com.google.android.gms.internal.ads.bbk

            /* renamed from: a */
            private final Object f10878a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10878a = r4;
            }

            @Override // com.google.android.gms.internal.ads.cqt
            /* renamed from: a */
            public final crt mo7012a(Object obj) {
                Object obj2 = this.f10878a;
                C3556uu.m7051a("Error during loading assets.", (Exception) obj);
                return crg.m10778a(obj2);
            }
        }, C3650yg.f17647f);
    }

    /* renamed from: a */
    private final crt<List<BinderC2831bh>> m12128a(JSONArray jSONArray, boolean z, boolean z2) {
        crt<List<BinderC2831bh>> crtVar;
        if (jSONArray == null || jSONArray.length() <= 0) {
            crtVar = crg.m10778a(Collections.emptyList());
        } else {
            ArrayList arrayList = new ArrayList();
            int length = z2 ? jSONArray.length() : 1;
            for (int i = 0; i < length; i++) {
                arrayList.add(m12124a(jSONArray.optJSONObject(i), z));
            }
            crtVar = crg.m10783a(crg.m10779a((Iterable) arrayList), bbh.f10873a, this.f10862g);
        }
        return crtVar;
    }

    /* renamed from: a */
    private final crt<BinderC2831bh> m12124a(JSONObject jSONObject, boolean z) {
        crt<BinderC2831bh> m12123a;
        if (jSONObject == null) {
            m12123a = crg.m10778a((Object) null);
        } else {
            String optString = jSONObject.optString("url");
            if (TextUtils.isEmpty(optString)) {
                m12123a = crg.m10778a((Object) null);
            } else {
                double optDouble = jSONObject.optDouble("scale", 1.0d);
                boolean optBoolean = jSONObject.optBoolean("is_transparent", true);
                int optInt = jSONObject.optInt("width", -1);
                int optInt2 = jSONObject.optInt("height", -1);
                if (z) {
                    m12123a = crg.m10778a(new BinderC2831bh(null, Uri.parse(optString), optDouble, optInt, optInt2));
                } else {
                    m12123a = m12123a(jSONObject.optBoolean("require"), crg.m10783a(this.f10857b.m12136a(optString, optDouble, optBoolean), new coe(optString, optDouble, optInt, optInt2) { // from class: com.google.android.gms.internal.ads.bbg

                        /* renamed from: a */
                        private final String f10869a;

                        /* renamed from: b */
                        private final double f10870b;

                        /* renamed from: c */
                        private final int f10871c;

                        /* renamed from: d */
                        private final int f10872d;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f10869a = optString;
                            this.f10870b = optDouble;
                            this.f10871c = optInt;
                            this.f10872d = optInt2;
                        }

                        @Override // com.google.android.gms.internal.ads.coe
                        /* renamed from: a */
                        public final Object mo7184a(Object obj) {
                            String str = this.f10869a;
                            return new BinderC2831bh(new BitmapDrawable(Resources.getSystem(), (Bitmap) obj), Uri.parse(str), this.f10870b, this.f10871c, this.f10872d);
                        }
                    }, this.f10862g), (Object) null);
                }
            }
        }
        return m12123a;
    }

    /* renamed from: a */
    private static <T> crt<T> m12123a(boolean z, crt<T> crtVar, T t) {
        return z ? crg.m10782a(crtVar, new cqt(crtVar) { // from class: com.google.android.gms.internal.ads.bbn

            /* renamed from: a */
            private final crt f10881a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10881a = crtVar;
            }

            @Override // com.google.android.gms.internal.ads.cqt
            /* renamed from: a */
            public final crt mo7012a(Object obj) {
                return obj != null ? this.f10881a : crg.m10777a((Throwable) new zzcqm("Retrieve required value in native ad response failed.", 0));
            }
        }, C3650yg.f17647f) : m12130a(crtVar, (Object) null);
    }

    /* renamed from: a */
    public static List<ebu> m12127a(JSONObject jSONObject) {
        ArrayList emptyList;
        JSONObject optJSONObject = jSONObject.optJSONObject("mute");
        if (optJSONObject == null) {
            emptyList = Collections.emptyList();
        } else {
            JSONArray optJSONArray = optJSONObject.optJSONArray("reasons");
            if (optJSONArray == null || optJSONArray.length() <= 0) {
                emptyList = Collections.emptyList();
            } else {
                emptyList = new ArrayList();
                for (int i = 0; i < optJSONArray.length(); i++) {
                    ebu m12118d = m12118d(optJSONArray.optJSONObject(i));
                    if (m12118d != null) {
                        emptyList.add(m12118d);
                    }
                }
            }
        }
        return emptyList;
    }

    /* renamed from: b */
    public static ebu m12122b(JSONObject jSONObject) {
        ebu ebuVar;
        JSONObject optJSONObject = jSONObject.optJSONObject("mute");
        if (optJSONObject == null) {
            ebuVar = null;
        } else {
            JSONObject optJSONObject2 = optJSONObject.optJSONObject("default_reason");
            ebuVar = null;
            if (optJSONObject2 != null) {
                ebuVar = m12118d(optJSONObject2);
            }
        }
        return ebuVar;
    }

    /* renamed from: d */
    private static ebu m12118d(JSONObject jSONObject) {
        ebu ebuVar;
        if (jSONObject == null) {
            ebuVar = null;
        } else {
            String optString = jSONObject.optString("reason");
            String optString2 = jSONObject.optString("ping_url");
            ebuVar = null;
            if (!TextUtils.isEmpty(optString)) {
                ebuVar = null;
                if (!TextUtils.isEmpty(optString2)) {
                    ebuVar = new ebu(optString, optString2);
                }
            }
        }
        return ebuVar;
    }

    /* renamed from: d */
    private static Integer m12117d(JSONObject jSONObject, String str) {
        Integer num;
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject(str);
            num = Integer.valueOf(Color.rgb(jSONObject2.getInt("r"), jSONObject2.getInt("g"), jSONObject2.getInt("b")));
        } catch (JSONException e) {
            num = null;
        }
        return num;
    }

    /* renamed from: a */
    public final /* synthetic */ BinderC2830bg m12125a(JSONObject jSONObject, List list) {
        BinderC2830bg binderC2830bg;
        if (list == null || list.isEmpty()) {
            binderC2830bg = null;
        } else {
            String optString = jSONObject.optString("text");
            Integer m12117d = m12117d(jSONObject, "bg_color");
            Integer m12117d2 = m12117d(jSONObject, "text_color");
            int optInt = jSONObject.optInt("text_size", -1);
            boolean optBoolean = jSONObject.optBoolean("allow_pub_rendering");
            int optInt2 = jSONObject.optInt("animation_ms", 1000);
            int optInt3 = jSONObject.optInt("presentation_ms", 4000);
            Integer num = null;
            if (optInt > 0) {
                num = Integer.valueOf(optInt);
            }
            binderC2830bg = new BinderC2830bg(optString, list, m12117d, m12117d2, num, optInt2 + optInt3, this.f10863h.f11459e, optBoolean);
        }
        return binderC2830bg;
    }

    /* renamed from: a */
    public final /* synthetic */ crt m12129a(String str, Object obj) {
        C2341q.m14743d();
        act m13597a = adb.m13597a(this.f10856a, aei.m13555a(), "native-omid", false, false, this.f10858c, this.f10859d, null, null, this.f10860e, this.f10861f, null, false);
        C3659yp m6729a = C3659yp.m6729a(m13597a);
        m13597a.mo13426v().mo13528a(new aee(m6729a) { // from class: com.google.android.gms.internal.ads.bbm

            /* renamed from: a */
            private final C3659yp f10880a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10880a = m6729a;
            }

            @Override // com.google.android.gms.internal.ads.aee
            /* renamed from: a */
            public final void mo11712a(boolean z) {
                this.f10880a.m6730a();
            }
        });
        m13597a.loadData(str, "text/html", "UTF-8");
        return m6729a;
    }

    /* renamed from: a */
    public final crt<BinderC2831bh> m12126a(JSONObject jSONObject, String str) {
        return m12124a(jSONObject.optJSONObject(str), this.f10863h.f11456b);
    }

    /* renamed from: b */
    public final crt<List<BinderC2831bh>> m12121b(JSONObject jSONObject, String str) {
        return m12128a(jSONObject.optJSONArray(str), this.f10863h.f11456b, this.f10863h.f11458d);
    }

    /* renamed from: c */
    public final crt<act> m12120c(JSONObject jSONObject) {
        crt<act> m10782a;
        JSONObject m6851a = C3614wy.m6851a(jSONObject, "html_containers", "instream");
        if (m6851a == null) {
            JSONObject optJSONObject = jSONObject.optJSONObject("video");
            if (optJSONObject == null) {
                m10782a = crg.m10778a((Object) null);
            } else if (TextUtils.isEmpty(optJSONObject.optString("vast_xml"))) {
                C3556uu.m6745e("Required field 'vast_xml' is missing");
                m10782a = crg.m10778a((Object) null);
            } else {
                m10782a = m12130a(crg.m10784a(this.f10864i.m12110a(optJSONObject), ((Integer) dyx.m8158e().m7876a(edi.f16442bv)).intValue(), TimeUnit.SECONDS, this.f10865j), (Object) null);
            }
        } else {
            crt<act> m12112a = this.f10864i.m12112a(m6851a.optString("base_url"), m6851a.optString("html"));
            m10782a = crg.m10782a(m12112a, new cqt(m12112a) { // from class: com.google.android.gms.internal.ads.bbl

                /* renamed from: a */
                private final crt f10879a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f10879a = m12112a;
                }

                @Override // com.google.android.gms.internal.ads.cqt
                /* renamed from: a */
                public final crt mo7012a(Object obj) {
                    crt crtVar = this.f10879a;
                    act actVar = (act) obj;
                    if (actVar == null || actVar.mo13448d() == null) {
                        throw new zzcqm("Retrieve video view in instream ad response failed.", 0);
                    }
                    return crtVar;
                }
            }, C3650yg.f17647f);
        }
        return m10782a;
    }

    /* renamed from: c */
    public final crt<BinderC2830bg> m12119c(JSONObject jSONObject, String str) {
        crt<BinderC2830bg> m12123a;
        JSONObject optJSONObject = jSONObject.optJSONObject(str);
        if (optJSONObject == null) {
            m12123a = crg.m10778a((Object) null);
        } else {
            JSONArray optJSONArray = optJSONObject.optJSONArray("images");
            JSONObject optJSONObject2 = optJSONObject.optJSONObject("image");
            JSONArray jSONArray = optJSONArray;
            if (optJSONArray == null) {
                jSONArray = optJSONArray;
                if (optJSONObject2 != null) {
                    jSONArray = new JSONArray();
                    jSONArray.put(optJSONObject2);
                }
            }
            m12123a = m12123a(optJSONObject.optBoolean("require"), crg.m10783a(m12128a(jSONArray, false, true), new coe(this, optJSONObject) { // from class: com.google.android.gms.internal.ads.bbj

                /* renamed from: a */
                private final bbe f10876a;

                /* renamed from: b */
                private final JSONObject f10877b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f10876a = this;
                    this.f10877b = optJSONObject;
                }

                @Override // com.google.android.gms.internal.ads.coe
                /* renamed from: a */
                public final Object mo7184a(Object obj) {
                    return this.f10876a.m12125a(this.f10877b, (List) obj);
                }
            }, this.f10862g), (Object) null);
        }
        return m12123a;
    }
}
