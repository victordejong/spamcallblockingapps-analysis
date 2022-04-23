package p131c.p161d.p170b.p224d.p252g.p253a;

import android.content.Context;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.internal.ads.zzavy;
import com.google.android.gms.internal.ads.zzayu;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: c.d.b.d.g.a.d4 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/d4.class */
public final class C3458d4 {

    /* renamed from: d */
    public static final Map<String, String> f12605d;

    /* renamed from: a */
    public final Context f12606a;

    /* renamed from: b */
    public final List<String> f12607b;

    /* renamed from: c */
    public final zzavy f12608c;

    static {
        HashMap hashMap = new HashMap();
        if (PlatformVersion.m17060h()) {
            hashMap.put("android.webkit.resource.AUDIO_CAPTURE", "android.permission.RECORD_AUDIO");
            hashMap.put("android.webkit.resource.VIDEO_CAPTURE", "android.permission.CAMERA");
        }
        f12605d = hashMap;
    }

    public C3458d4(Context context, List<String> list, zzavy zzavyVar) {
        this.f12606a = context;
        this.f12607b = list;
        this.f12608c = zzavyVar;
    }

    /* renamed from: a */
    public final List<String> m27084a(String[] strArr) {
        boolean z;
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            for (String str2 : this.f12607b) {
                if (!str2.equals(str)) {
                    String valueOf = String.valueOf(str2);
                    if ((valueOf.length() != 0 ? "android.webkit.resource.".concat(valueOf) : new String("android.webkit.resource.")).equals(str)) {
                    }
                }
                z = true;
            }
            z = false;
            if (z) {
                boolean z2 = true;
                if (f12605d.containsKey(str)) {
                    zzp.m17969c();
                    z2 = zzayu.m16111b(this.f12606a, f12605d.get(str));
                }
                if (z2) {
                    arrayList.add(str);
                } else {
                    this.f12608c.m16275c(str);
                }
            } else {
                this.f12608c.m16276b(str);
            }
        }
        return arrayList;
    }
}
