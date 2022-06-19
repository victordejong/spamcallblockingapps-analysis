package p193e.p194a.p195a.p271o;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import s1.k;
import s1.z.c.l;
/* renamed from: e.a.a.o.q */
/* loaded from: classes7-dex2jar.jar:e/a/a/o/q.class */
public final class C7108q implements AbstractC7107p {

    /* renamed from: a */
    public final String[] f22880a = {m30110e(this, C2752R.string.ManageStorageUnitB, null, 2), m30110e(this, C2752R.string.ManageStorageUnitKB, null, 2), m30110e(this, C2752R.string.ManageStorageUnitMB, null, 2), m30110e(this, C2752R.string.ManageStorageUnitGB, null, 2)};

    /* renamed from: b */
    public final Context f22881b;

    @Inject
    public C7108q(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f22881b = context;
    }

    /* renamed from: e */
    public static String m30110e(C7108q c7108q, int i, String str, int i2) {
        String string = c7108q.f22881b.getString(i, null);
        l.d(string, "context.getString(string, arg)");
        return string;
    }

    @Override // p193e.p194a.p195a.p271o.AbstractC7107p
    /* renamed from: a */
    public String mo30114a(long j) {
        float f = (float) j;
        int i = 0;
        while (true) {
            float f2 = 1024;
            if (f <= f2 || i >= this.f22880a.length) {
                break;
            }
            f /= f2;
            i++;
        }
        StringBuilder m8728C = C22128a.m8728C("%.1f ");
        m8728C.append(this.f22880a[i]);
        return C22128a.m8562v(new Object[]{Float.valueOf(f)}, 1, m8728C.toString(), "java.lang.String.format(format, *args)");
    }

    @Override // p193e.p194a.p195a.p271o.AbstractC7107p
    /* renamed from: b */
    public C7083e mo30113b(long j, int i, int i2, boolean z) {
        String str;
        int m13612L = C19291g.m13612L(C17422k.m16113E(this.f22881b, true), i);
        if (z) {
            str = this.f22881b.getString(i2, mo30114a(j));
            l.d(str, "context.getString(string, arg)");
        } else {
            str = m30110e(this, i2, null, 2);
        }
        return new C7083e(j, m13612L, str);
    }

    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    @Override // p193e.p194a.p195a.p271o.AbstractC7107p
    /* renamed from: c */
    public List<C7083e> mo30112c(List<k<Long, Integer>> list) {
        l.e(list, "mediaSizeByType");
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = list.iterator();
        char c = 0;
        while (it.hasNext()) {
            k kVar = (k) it.next();
            long longValue = ((Number) kVar.a).longValue();
            int intValue = ((Number) kVar.b).intValue();
            if (intValue == 1) {
                arrayList.add(new C7083e(longValue, m30111d(C2752R.attr.tcx_media_photo_color), m30110e(this, C2752R.string.ManageStorageCaptionPhoto, null, 2)));
            } else if (intValue == 2) {
                arrayList.add(new C7083e(longValue, m30111d(C2752R.attr.tcx_media_video_color), m30110e(this, C2752R.string.ManageStorageCaptionVideo, null, 2)));
            } else if (intValue == 4) {
                arrayList.add(new C7083e(longValue, m30111d(C2752R.attr.tcx_media_audio_color), m30110e(this, C2752R.string.ManageStorageCaptionAudio, null, 2)));
            } else if (intValue == 5) {
                arrayList.add(new C7083e(longValue, m30111d(C2752R.attr.tcx_media_doc_color), m30110e(this, C2752R.string.ManageStorageCaptionDoc, null, 2)));
            } else if (intValue != 100) {
                c += longValue;
            } else {
                arrayList.add(new C7083e(longValue, m30111d(C2752R.attr.tcx_media_call_recording_color), m30110e(this, C2752R.string.ManageStorageCaptionCallRecording, null, 2)));
            }
        }
        if (c > 0) {
            arrayList.add(new C7083e(c, m30111d(C2752R.attr.tcx_media_others_color), m30110e(this, C2752R.string.ManageStorageCaptionOthers, null, 2)));
        }
        return arrayList;
    }

    /* renamed from: d */
    public final int m30111d(int i) {
        return C19291g.m13612L(C17422k.m16113E(this.f22881b, true), i);
    }
}
