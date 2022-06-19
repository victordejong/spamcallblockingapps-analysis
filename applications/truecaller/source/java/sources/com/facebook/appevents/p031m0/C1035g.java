package com.facebook.appevents.p031m0;

import android.app.Activity;
import android.view.View;
import android.view.Window;
import com.facebook.internal.p037u0.p040m.C1220a;
import java.util.Arrays;
import kotlin.Metadata;
import s1.z.c.l;
@Metadata(d1 = {"��@\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\b\u001a\u00020\tH\u0007J\b\u0010\n\u001a\u00020\tH\u0007J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\rH\u0007J\b\u0010\u000e\u001a\u00020\u0004H\u0007J\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0007J\b\u0010\u0013\u001a\u00020\u0006H\u0007J\u0012\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u0014\u0010\u0005\u001a\u00020\u00068CX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0007¨\u0006\u0017"}, d2 = {"Lcom/facebook/appevents/internal/AppEventUtility;", "", "()V", "PRICE_REGEX", "", "isMainThread", "", "()Z", "assertIsMainThread", "", "assertIsNotMainThread", "bytesToHex", "bytes", "", "getAppVersion", "getRootView", "Landroid/view/View;", "activity", "Landroid/app/Activity;", "isEmulator", "normalizePrice", "", "value", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.appevents.m0.g */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/m0/g.class */
public final class C1035g {
    /* renamed from: a */
    public static final String m41868a(byte[] bArr) {
        l.e(bArr, "bytes");
        StringBuffer stringBuffer = new StringBuffer();
        int length = bArr.length;
        int i = 0;
        while (i < length) {
            byte b = bArr[i];
            i++;
            String format = String.format("%02x", Arrays.copyOf(new Object[]{Byte.valueOf(b)}, 1));
            l.d(format, "java.lang.String.format(format, *args)");
            stringBuffer.append(format);
        }
        String stringBuffer2 = stringBuffer.toString();
        l.d(stringBuffer2, "sb.toString()");
        return stringBuffer2;
    }

    /* renamed from: b */
    public static final View m41867b(Activity activity) {
        View view;
        Window window;
        if (!C1220a.m41623b(C1035g.class) && activity != null) {
            try {
                window = activity.getWindow();
            } catch (Exception e) {
                view = null;
            } catch (Throwable th) {
                C1220a.m41624a(th, C1035g.class);
                view = null;
            }
            if (window == null) {
                return null;
            }
            view = window.getDecorView().getRootView();
            return view;
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x009b, code lost:
        if (s1.f0.r.y(r0, "generic", false, 2) == false) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x00a6, code lost:
        if (s1.z.c.l.a("google_sdk", android.os.Build.PRODUCT) != false) goto L20;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean m41866c() {
        /*
            java.lang.String r0 = android.os.Build.FINGERPRINT
            r5 = r0
            r0 = r5
            java.lang.String r1 = "FINGERPRINT"
            s1.z.c.l.d(r0, r1)
            r0 = 0
            r6 = r0
            r0 = r5
            java.lang.String r1 = "generic"
            r2 = 0
            r3 = 2
            boolean r0 = s1.f0.r.y(r0, r1, r2, r3)
            if (r0 != 0) goto La9
            r0 = r5
            java.lang.String r1 = "FINGERPRINT"
            s1.z.c.l.d(r0, r1)
            r0 = r5
            java.lang.String r1 = "unknown"
            r2 = 0
            r3 = 2
            boolean r0 = s1.f0.r.y(r0, r1, r2, r3)
            if (r0 != 0) goto La9
            java.lang.String r0 = android.os.Build.MODEL
            r5 = r0
            r0 = r5
            java.lang.String r1 = "MODEL"
            s1.z.c.l.d(r0, r1)
            r0 = r5
            java.lang.String r1 = "google_sdk"
            r2 = 0
            r3 = 2
            boolean r0 = s1.f0.v.B(r0, r1, r2, r3)
            if (r0 != 0) goto La9
            r0 = r5
            java.lang.String r1 = "MODEL"
            s1.z.c.l.d(r0, r1)
            r0 = r5
            java.lang.String r1 = "Emulator"
            r2 = 0
            r3 = 2
            boolean r0 = s1.f0.v.B(r0, r1, r2, r3)
            if (r0 != 0) goto La9
            r0 = r5
            java.lang.String r1 = "MODEL"
            s1.z.c.l.d(r0, r1)
            r0 = r5
            java.lang.String r1 = "Android SDK built for x86"
            r2 = 0
            r3 = 2
            boolean r0 = s1.f0.v.B(r0, r1, r2, r3)
            if (r0 != 0) goto La9
            java.lang.String r0 = android.os.Build.MANUFACTURER
            r5 = r0
            r0 = r5
            java.lang.String r1 = "MANUFACTURER"
            s1.z.c.l.d(r0, r1)
            r0 = r5
            java.lang.String r1 = "Genymotion"
            r2 = 0
            r3 = 2
            boolean r0 = s1.f0.v.B(r0, r1, r2, r3)
            if (r0 != 0) goto La9
            java.lang.String r0 = android.os.Build.BRAND
            r5 = r0
            r0 = r5
            java.lang.String r1 = "BRAND"
            s1.z.c.l.d(r0, r1)
            r0 = r5
            java.lang.String r1 = "generic"
            r2 = 0
            r3 = 2
            boolean r0 = s1.f0.r.y(r0, r1, r2, r3)
            if (r0 == 0) goto L9e
            java.lang.String r0 = android.os.Build.DEVICE
            r5 = r0
            r0 = r5
            java.lang.String r1 = "DEVICE"
            s1.z.c.l.d(r0, r1)
            r0 = r5
            java.lang.String r1 = "generic"
            r2 = 0
            r3 = 2
            boolean r0 = s1.f0.r.y(r0, r1, r2, r3)
            if (r0 != 0) goto La9
        L9e:
            java.lang.String r0 = "google_sdk"
            java.lang.String r1 = android.os.Build.PRODUCT
            boolean r0 = s1.z.c.l.a(r0, r1)
            if (r0 == 0) goto Lab
        La9:
            r0 = 1
            r6 = r0
        Lab:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.p031m0.C1035g.m41866c():boolean");
    }
}
