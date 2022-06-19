package p303z2;

import android.content.Context;
import android.database.Cursor;
import android.os.Build;
import android.os.Process;
import android.util.Base64;
import android.util.JsonReader;
import com.google.android.gms.internal.ads.C1676a;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.mglab.scm.MainActivity;
import com.mglab.scm.visual.FragmentDev;
import java.util.ArrayList;
import java.util.Objects;
import p028c3.C0816a;
import p078e2.EnumC2524b;
import p078e2.View$OnClickListenerC2530g;
import p103g5.C2864p;
import p103g5.C2904w;
import p114h5.C3009a;
import p201p6.C4021f;
import p218r2.C4184b;
import p221r5.AbstractC4208a;
import p231s4.AbstractC4296f;
import p231s4.C4295e;
import p250u2.AbstractC4469i;
import p250u2.C4456b;
import p303z2.C5057r;
/* renamed from: z2.p */
/* loaded from: classes2-dex2jar.jar:z2/p.class */
public final /* synthetic */ class C5055p implements C5057r.AbstractC5059b, C4021f.AbstractC4022a, C3009a.AbstractC3010a, AbstractC4296f, View$OnClickListenerC2530g.AbstractC2533c {

    /* renamed from: b */
    public static final /* synthetic */ C5055p f15351b = new C5055p(0);

    /* renamed from: c */
    public static final /* synthetic */ C5055p f15352c = new C5055p(1);

    /* renamed from: d */
    public static final /* synthetic */ C5055p f15353d = new C5055p(2);

    /* renamed from: e */
    public static final /* synthetic */ C5055p f15354e = new C5055p(3);

    /* renamed from: f */
    public static final /* synthetic */ C5055p f15355f = new C5055p(4);

    /* renamed from: g */
    public static final /* synthetic */ C5055p f15356g = new C5055p(5);

    /* renamed from: a */
    public final /* synthetic */ int f15357a;

    public /* synthetic */ C5055p(int i) {
        this.f15357a = i;
    }

    @Override // p303z2.C5057r.AbstractC5059b
    public Object apply(Object obj) {
        switch (this.f15357a) {
            case 0:
                Cursor cursor = (Cursor) obj;
                C4184b c4184b = C5057r.f15360e;
                ArrayList arrayList = new ArrayList();
                while (cursor.moveToNext()) {
                    AbstractC4469i.AbstractC4470a m893a = AbstractC4469i.m893a();
                    m893a.mo888b(cursor.getString(1));
                    m893a.mo887c(C0816a.m7344b(cursor.getInt(2)));
                    String string = cursor.getString(3);
                    byte[] decode = string == null ? null : Base64.decode(string, 0);
                    C4456b.C4458b c4458b = (C4456b.C4458b) m893a;
                    c4458b.f13835b = decode;
                    arrayList.add(c4458b.mo889a());
                }
                return arrayList;
            default:
                Cursor cursor2 = (Cursor) obj;
                C4184b c4184b2 = C5057r.f15360e;
                ArrayList arrayList2 = new ArrayList();
                int i = 0;
                while (true) {
                    int i2 = i;
                    if (!cursor2.moveToNext()) {
                        byte[] bArr = new byte[i2];
                        int i3 = 0;
                        for (int i4 = 0; i4 < arrayList2.size(); i4++) {
                            byte[] bArr2 = (byte[]) arrayList2.get(i4);
                            System.arraycopy(bArr2, 0, bArr, i3, bArr2.length);
                            i3 += bArr2.length;
                        }
                        return bArr;
                    }
                    byte[] blob = cursor2.getBlob(0);
                    arrayList2.add(blob);
                    i = i2 + blob.length;
                }
        }
    }

    @Override // p114h5.C3009a.AbstractC3010a
    /* renamed from: b */
    public Object mo101b(JsonReader jsonReader) {
        AbstractC4208a abstractC4208a = C3009a.f10106a;
        jsonReader.beginObject();
        String str = null;
        C2904w c2904w = null;
        Integer num = null;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            Objects.requireNonNull(nextName);
            nextName.hashCode();
            boolean z = true;
            switch (nextName.hashCode()) {
                case -1266514778:
                    if (nextName.equals("frames")) {
                        z = false;
                        break;
                    }
                    break;
                case 3373707:
                    if (nextName.equals(AppMeasurementSdk.ConditionalUserProperty.NAME)) {
                        z = true;
                        break;
                    }
                    break;
                case 2125650548:
                    if (nextName.equals("importance")) {
                        z = true;
                        break;
                    }
                    break;
            }
            switch (z) {
                case false:
                    ArrayList arrayList = new ArrayList();
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        arrayList.add(C3009a.m2755a(jsonReader));
                    }
                    jsonReader.endArray();
                    c2904w = new C2904w(arrayList);
                    break;
                case true:
                    str = jsonReader.nextString();
                    Objects.requireNonNull(str, "Null name");
                    break;
                case true:
                    num = Integer.valueOf(jsonReader.nextInt());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        String str2 = str == null ? " name" : "";
        String str3 = str2;
        if (num == null) {
            str3 = C1676a.m4789h(str2, " importance");
        }
        String str4 = str3;
        if (c2904w == null) {
            str4 = C1676a.m4789h(str3, " frames");
        }
        if (str4.isEmpty()) {
            return new C2864p(str, num.intValue(), c2904w, null);
        }
        throw new IllegalStateException(C1676a.m4789h("Missing required properties:", str4));
    }

    @Override // p201p6.C4021f.AbstractC4022a
    /* renamed from: c */
    public String mo100c(Object obj) {
        Context context = (Context) obj;
        int i = Build.VERSION.SDK_INT;
        return context.getPackageManager().hasSystemFeature("android.hardware.type.television") ? "tv" : context.getPackageManager().hasSystemFeature("android.hardware.type.watch") ? "watch" : (i < 23 || !context.getPackageManager().hasSystemFeature("android.hardware.type.automotive")) ? (i < 26 || !context.getPackageManager().hasSystemFeature("android.hardware.type.embedded")) ? "" : "embedded" : "auto";
    }

    @Override // p078e2.View$OnClickListenerC2530g.AbstractC2533c
    /* renamed from: g */
    public void mo96g(View$OnClickListenerC2530g view$OnClickListenerC2530g, EnumC2524b enumC2524b) {
        int i = FragmentDev.f7408b;
        Process.killProcess(Process.myPid());
        System.exit(1);
    }

    @Override // p231s4.AbstractC4296f
    public void onConsentFormLoadFailure(C4295e c4295e) {
        int i = MainActivity.f7270v;
    }
}
