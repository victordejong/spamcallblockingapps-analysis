package p303z2;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Build;
import android.os.Bundle;
import android.os.Process;
import android.util.Base64;
import android.util.JsonReader;
import ba.C0748b;
import com.android.billingclient.api.SkuDetails;
import com.google.android.datatransport.runtime.synchronization.SynchronizationException;
import com.google.android.gms.internal.ads.C1676a;
import com.mglab.scm.visual.FragmentAbout;
import com.mglab.scm.visual.FragmentDev;
import com.mglab.scm.visual.FragmentStat;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import p078e2.EnumC2524b;
import p078e2.View$OnClickListenerC2530g;
import p095f8.C2768a;
import p103g5.C2840e;
import p114h5.C3009a;
import p122i2.AbstractC3073i;
import p122i2.C3067c;
import p149k8.C3407w;
import p193o8.C3948e;
import p201p6.C4021f;
import p218r2.C4184b;
import p221r5.AbstractC4208a;
import p303z2.C5057r;
/* renamed from: z2.o */
/* loaded from: classes2-dex2jar.jar:z2/o.class */
public final /* synthetic */ class C5054o implements C5057r.AbstractC5059b, C4021f.AbstractC4022a, C3009a.AbstractC3010a, AbstractC3073i, View$OnClickListenerC2530g.AbstractC2533c {

    /* renamed from: b */
    public static final /* synthetic */ C5054o f15343b = new C5054o(2);

    /* renamed from: c */
    public static final /* synthetic */ C5054o f15344c = new C5054o(3);

    /* renamed from: d */
    public static final /* synthetic */ C5054o f15345d = new C5054o(4);

    /* renamed from: e */
    public static final /* synthetic */ C5054o f15346e = new C5054o(5);

    /* renamed from: f */
    public static final /* synthetic */ C5054o f15347f = new C5054o(6);

    /* renamed from: g */
    public static final /* synthetic */ C5054o f15348g = new C5054o(7);

    /* renamed from: h */
    public static final /* synthetic */ C5054o f15349h = new C5054o(8);

    /* renamed from: a */
    public final /* synthetic */ int f15350a;

    public /* synthetic */ C5054o(int i) {
        this.f15350a = i;
    }

    @Override // p303z2.C5057r.AbstractC5059b
    public Object apply(Object obj) {
        switch (this.f15350a) {
            case 0:
                C4184b c4184b = C5057r.f15360e;
                return (List) C5057r.m82r(((SQLiteDatabase) obj).rawQuery("SELECT distinct t._id, t.backend_name, t.priority, t.extras FROM transport_contexts AS t, events AS e WHERE e.context_id = t._id", new String[0]), C5055p.f15351b);
            case 1:
                C4184b c4184b2 = C5057r.f15360e;
                throw new SynchronizationException("Timed out while trying to acquire the lock.", (Throwable) obj);
            default:
                return Boolean.valueOf(((Cursor) obj).moveToNext());
        }
    }

    @Override // p114h5.C3009a.AbstractC3010a
    /* renamed from: b */
    public Object mo101b(JsonReader jsonReader) {
        AbstractC4208a abstractC4208a = C3009a.f10106a;
        jsonReader.beginObject();
        String str = null;
        byte[] bArr = null;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            Objects.requireNonNull(nextName);
            if (nextName.equals("filename")) {
                str = jsonReader.nextString();
                Objects.requireNonNull(str, "Null filename");
            } else if (!nextName.equals("contents")) {
                jsonReader.skipValue();
            } else {
                bArr = Base64.decode(jsonReader.nextString(), 2);
                Objects.requireNonNull(bArr, "Null contents");
            }
        }
        jsonReader.endObject();
        String str2 = str == null ? " filename" : "";
        String str3 = str2;
        if (bArr == null) {
            str3 = C1676a.m4789h(str2, " contents");
        }
        if (str3.isEmpty()) {
            return new C2840e(str, bArr, null);
        }
        throw new IllegalStateException(C1676a.m4789h("Missing required properties:", str3));
    }

    @Override // p201p6.C4021f.AbstractC4022a
    /* renamed from: c */
    public String mo100c(Object obj) {
        ApplicationInfo applicationInfo = ((Context) obj).getApplicationInfo();
        return (applicationInfo == null || Build.VERSION.SDK_INT < 24) ? "" : String.valueOf(applicationInfo.minSdkVersion);
    }

    @Override // p122i2.AbstractC3073i
    /* renamed from: e */
    public void mo102e(C3067c c3067c, List list) {
        Context context = C2768a.f9468a;
        if (c3067c.f10403a == 0) {
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                SkuDetails skuDetails = (SkuDetails) it2.next();
                Bundle bundle = new Bundle();
                bundle.putString("Price", skuDetails.f3209b.optString("price"));
                bundle.putLong("PriceAmountMicros", skuDetails.f3209b.optLong("price_amount_micros"));
                Map<String, Bundle> map = C2768a.f9470c;
                ((HashMap) map).put(skuDetails.m7230a(), bundle);
            }
            C2768a.f9470c.toString();
        }
    }

    @Override // p078e2.View$OnClickListenerC2530g.AbstractC2533c
    /* renamed from: g */
    public void mo96g(View$OnClickListenerC2530g view$OnClickListenerC2530g, EnumC2524b enumC2524b) {
        switch (this.f15350a) {
            case 6:
                int i = FragmentAbout.f7361e;
                return;
            case 7:
                int i2 = FragmentDev.f7408b;
                Process.killProcess(Process.myPid());
                System.exit(1);
                return;
            default:
                C3948e c3948e = FragmentStat.f7603g;
                C0748b.m7409b().m7404g(new C3407w("faq#notwork"));
                return;
        }
    }
}
