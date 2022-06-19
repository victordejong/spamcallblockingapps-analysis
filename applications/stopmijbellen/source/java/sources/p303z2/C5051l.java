package p303z2;

import android.content.Context;
import android.database.Cursor;
import android.os.Process;
import android.util.JsonReader;
import ba.C0748b;
import com.google.android.gms.internal.ads.C1676a;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.protobuf.CodedOutputStream;
import com.mglab.scm.visual.FragmentDev;
import com.mglab.scm.visual.FragmentStat;
import java.io.IOException;
import java.util.Objects;
import java.util.logging.Logger;
import p074d9.C2497h;
import p078e2.EnumC2524b;
import p078e2.View$OnClickListenerC2530g;
import p095f8.C2768a;
import p103g5.C2836c;
import p114h5.C3009a;
import p117h8.C3033i;
import p117h8.C3036l;
import p122i2.AbstractC3069e;
import p122i2.C3067c;
import p149k8.C3406v;
import p149k8.C3407w;
import p191o6.C3920i;
import p193o8.C3948e;
import p218r2.AbstractC4187e;
import p218r2.C4184b;
import p221r5.AbstractC4208a;
import p222r6.C4221e;
import p278w8.C4775f;
import p278w8.C4776g;
import p303z2.C5057r;
/* renamed from: z2.l */
/* loaded from: classes2-dex2jar.jar:z2/l.class */
public final /* synthetic */ class C5051l implements C5057r.AbstractC5059b, C3009a.AbstractC3010a, AbstractC4187e, SuccessContinuation, AbstractC3069e, View$OnClickListenerC2530g.AbstractC2533c, C2497h.AbstractC2500c {

    /* renamed from: b */
    public static final /* synthetic */ C5051l f15326b = new C5051l(1);

    /* renamed from: c */
    public static final /* synthetic */ C5051l f15327c = new C5051l(2);

    /* renamed from: d */
    public static final /* synthetic */ C5051l f15328d = new C5051l(3);

    /* renamed from: e */
    public static final /* synthetic */ C5051l f15329e = new C5051l(4);

    /* renamed from: f */
    public static final /* synthetic */ C5051l f15330f = new C5051l(5);

    /* renamed from: g */
    public static final /* synthetic */ C5051l f15331g = new C5051l(6);

    /* renamed from: h */
    public static final /* synthetic */ C5051l f15332h = new C5051l(7);

    /* renamed from: i */
    public static final /* synthetic */ C5051l f15333i = new C5051l(8);

    /* renamed from: j */
    public static final /* synthetic */ C5051l f15334j = new C5051l(9);

    /* renamed from: k */
    public static final /* synthetic */ C5051l f15335k = new C5051l(10);

    /* renamed from: a */
    public final /* synthetic */ int f15336a;

    public /* synthetic */ C5051l(int i) {
        this.f15336a = i;
    }

    @Override // p122i2.AbstractC3069e
    /* renamed from: a */
    public void mo106a(C3067c c3067c, String str) {
        Context context = C2768a.f9468a;
    }

    @Override // p303z2.C5057r.AbstractC5059b
    public Object apply(Object obj) {
        switch (this.f15336a) {
            case 0:
                Cursor cursor = (Cursor) obj;
                C4184b c4184b = C5057r.f15360e;
                return cursor.moveToNext() ? Long.valueOf(cursor.getLong(0)) : 0L;
            default:
                C3920i c3920i = (C3920i) obj;
                Objects.requireNonNull(c3920i);
                try {
                    int mo4241b = c3920i.mo4241b();
                    byte[] bArr = new byte[mo4241b];
                    Logger logger = CodedOutputStream.f7029b;
                    CodedOutputStream.C1858b c1858b = new CodedOutputStream.C1858b(bArr, 0, mo4241b);
                    c3920i.mo4239f(c1858b);
                    if (c1858b.m4411L0() == 0) {
                        return bArr;
                    }
                    throw new IllegalStateException("Did not write as much data as expected.");
                } catch (IOException e) {
                    throw new RuntimeException(c3920i.m4393o("byte array"), e);
                }
        }
    }

    @Override // p114h5.C3009a.AbstractC3010a
    /* renamed from: b */
    public Object mo101b(JsonReader jsonReader) {
        switch (this.f15336a) {
            case 1:
                AbstractC4208a abstractC4208a = C3009a.f10106a;
                jsonReader.beginObject();
                String str = null;
                String str2 = null;
                while (jsonReader.hasNext()) {
                    String nextName = jsonReader.nextName();
                    Objects.requireNonNull(nextName);
                    if (nextName.equals("key")) {
                        str = jsonReader.nextString();
                        Objects.requireNonNull(str, "Null key");
                    } else if (!nextName.equals(AppMeasurementSdk.ConditionalUserProperty.VALUE)) {
                        jsonReader.skipValue();
                    } else {
                        str2 = jsonReader.nextString();
                        Objects.requireNonNull(str2, "Null value");
                    }
                }
                jsonReader.endObject();
                String str3 = str == null ? " key" : "";
                String str4 = str3;
                if (str2 == null) {
                    str4 = C1676a.m4789h(str3, " value");
                }
                if (!str4.isEmpty()) {
                    throw new IllegalStateException(C1676a.m4789h("Missing required properties:", str4));
                }
                return new C2836c(str, str2, null);
            default:
                return C3009a.m2755a(jsonReader);
        }
    }

    @Override // p074d9.C2497h.AbstractC2500c
    /* renamed from: c */
    public void mo105c(C2497h c2497h) {
        C1676a.m4785l("x2 DB completed", 1, C0748b.m7409b());
    }

    @Override // p078e2.View$OnClickListenerC2530g.AbstractC2533c
    /* renamed from: g */
    public void mo96g(View$OnClickListenerC2530g view$OnClickListenerC2530g, EnumC2524b enumC2524b) {
        switch (this.f15336a) {
            case 6:
                C0748b.m7409b().m7404g(new C3406v());
                return;
            case 7:
            default:
                C0748b.m7409b().m7404g(new C3407w("faq"));
                return;
            case 8:
                int i = FragmentDev.f7408b;
                new C4776g(new C4775f(), C3033i.class).m481d();
                new C4776g(new C4775f(), C3036l.class).m481d();
                return;
            case 9:
                C3948e c3948e = FragmentStat.f7603g;
                Process.killProcess(Process.myPid());
                System.exit(1);
                return;
        }
    }

    @Override // com.google.android.gms.tasks.SuccessContinuation
    public Task then(Object obj) {
        C4221e c4221e = (C4221e) obj;
        return Tasks.forResult(null);
    }
}
