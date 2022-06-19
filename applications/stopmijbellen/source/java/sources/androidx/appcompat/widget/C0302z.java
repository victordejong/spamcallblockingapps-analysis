package androidx.appcompat.widget;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.textclassifier.TextClassificationManager;
import android.view.textclassifier.TextClassifier;
import android.widget.TextView;
import com.google.android.gms.internal.play_billing.zzb;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import p122i2.C3081q;
import p124i4.C3102d;
import p134j4.AbstractC3183a1;
import p134j4.AbstractC3228l2;
import p134j4.C3187b1;
import p134j4.C3248s0;
import p134j4.C3257v0;
import p134j4.C3263x0;
import p134j4.C3266y0;
import p134j4.C3269z0;
import p229s2.C4281c;
import p283x2.C4854f;
import p291y.C4951d;
/* renamed from: androidx.appcompat.widget.z */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/z.class */
public class C0302z implements AbstractC3183a1 {

    /* renamed from: a */
    public Object f1161a;

    /* renamed from: b */
    public Object f1162b;

    public /* synthetic */ C0302z(Context context, C4281c c4281c) {
        this.f1161a = context;
        this.f1162b = new C3081q(this, c4281c);
    }

    public C0302z(TextView textView) {
        this.f1161a = textView;
    }

    public /* synthetic */ C0302z(Object obj, Object obj2) {
        this.f1161a = obj;
        this.f1162b = obj2;
    }

    /* renamed from: a */
    public File m8402a() {
        return new File(((C4854f) this.f1162b).m355h(), (String) this.f1161a);
    }

    /* renamed from: b */
    public TextClassifier m8401b() {
        Object obj = this.f1162b;
        if (((TextClassifier) obj) == null) {
            TextClassificationManager textClassificationManager = (TextClassificationManager) ((TextView) this.f1161a).getContext().getSystemService(TextClassificationManager.class);
            return textClassificationManager != null ? textClassificationManager.getTextClassifier() : TextClassifier.NO_OP;
        }
        return (TextClassifier) obj;
    }

    /* renamed from: c */
    public void m8400c() {
        C3081q c3081q = (C3081q) this.f1162b;
        Context context = (Context) this.f1161a;
        if (!c3081q.f10438b) {
            zzb.zzn("BillingBroadcastManager", "Receiver is not registered.");
            return;
        }
        context.unregisterReceiver((C3081q) c3081q.f10439c.f1162b);
        c3081q.f10438b = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v74, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v75, types: [java.util.List] */
    @Override // p134j4.AbstractC3183a1
    public Object zza() {
        Boolean bool;
        C3187b1 c3187b1 = (C3187b1) this.f1161a;
        Bundle bundle = (Bundle) this.f1162b;
        Objects.requireNonNull(c3187b1);
        int i = bundle.getInt("session_id");
        if (i == 0) {
            bool = Boolean.FALSE;
        } else {
            Map map = c3187b1.f10734e;
            Integer valueOf = Integer.valueOf(i);
            if (map.containsKey(valueOf)) {
                C3266y0 m2563a = c3187b1.m2563a(i);
                int i2 = bundle.getInt(C3102d.m2640L("status", m2563a.f11065c.f11051a));
                C3263x0 c3263x0 = m2563a.f11065c;
                int i3 = c3263x0.f11054d;
                if (C4951d.m185r(i3, i2)) {
                    C3187b1.f10729g.m1510b("Found stale update for session %s with status %d.", valueOf, Integer.valueOf(i3));
                    C3263x0 c3263x02 = m2563a.f11065c;
                    String str = c3263x02.f11051a;
                    int i4 = c3263x02.f11054d;
                    if (i4 == 4) {
                        ((AbstractC3228l2) c3187b1.f10731b.zza()).mo2524b(i, str);
                    } else if (i4 == 5) {
                        ((AbstractC3228l2) c3187b1.f10731b.zza()).zzi(i);
                    } else if (i4 == 6) {
                        ((AbstractC3228l2) c3187b1.f10731b.zza()).mo2521e(Arrays.asList(str));
                    }
                } else {
                    c3263x0.f11054d = i2;
                    if (C4951d.m184s(i2)) {
                        c3187b1.m2562b(new C3248s0(c3187b1, i));
                        c3187b1.f10732c.m2514a(m2563a.f11065c.f11051a);
                    } else {
                        for (C3269z0 c3269z0 : c3263x0.f11056f) {
                            ArrayList parcelableArrayList = bundle.getParcelableArrayList(C3102d.m2639M("chunk_intents", m2563a.f11065c.f11051a, c3269z0.f11068a));
                            if (parcelableArrayList != null) {
                                for (int i5 = 0; i5 < parcelableArrayList.size(); i5++) {
                                    if (parcelableArrayList.get(i5) != null && ((Intent) parcelableArrayList.get(i5)).getData() != null) {
                                        ((C3257v0) c3269z0.f11071d.get(i5)).f11000a = true;
                                    }
                                }
                            }
                        }
                    }
                }
            } else {
                String m2561c = C3187b1.m2561c(bundle);
                long j = bundle.getLong(C3102d.m2640L("pack_version", m2561c));
                String string = bundle.getString(C3102d.m2640L("pack_version_tag", m2561c), "");
                int i6 = bundle.getInt(C3102d.m2640L("status", m2561c));
                long j2 = bundle.getLong(C3102d.m2640L("total_bytes_to_download", m2561c));
                ArrayList<String> stringArrayList = bundle.getStringArrayList(C3102d.m2640L("slice_ids", m2561c));
                ArrayList arrayList = new ArrayList();
                ArrayList<String> arrayList2 = stringArrayList;
                if (stringArrayList == null) {
                    arrayList2 = Collections.emptyList();
                }
                for (String str2 : arrayList2) {
                    ArrayList parcelableArrayList2 = bundle.getParcelableArrayList(C3102d.m2639M("chunk_intents", m2561c, str2));
                    ArrayList arrayList3 = new ArrayList();
                    ArrayList arrayList4 = parcelableArrayList2;
                    if (parcelableArrayList2 == null) {
                        arrayList4 = Collections.emptyList();
                    }
                    Iterator it2 = arrayList4.iterator();
                    while (true) {
                        boolean z = false;
                        if (!it2.hasNext()) {
                            break;
                        }
                        if (((Intent) it2.next()) != null) {
                            z = true;
                        }
                        arrayList3.add(new C3257v0(z));
                    }
                    String string2 = bundle.getString(C3102d.m2639M("uncompressed_hash_sha256", m2561c, str2));
                    long j3 = bundle.getLong(C3102d.m2639M("uncompressed_size", m2561c, str2));
                    int i7 = bundle.getInt(C3102d.m2639M("patch_format", m2561c, str2), 0);
                    arrayList.add(i7 != 0 ? new C3269z0(str2, string2, j3, arrayList3, 0, i7) : new C3269z0(str2, string2, j3, arrayList3, bundle.getInt(C3102d.m2639M("compression_format", m2561c, str2), 0), 0));
                }
                c3187b1.f10734e.put(Integer.valueOf(i), new C3266y0(i, bundle.getInt("app_version_code"), new C3263x0(m2561c, j, i6, j2, arrayList, string)));
            }
            bool = Boolean.TRUE;
        }
        return bool;
    }
}
