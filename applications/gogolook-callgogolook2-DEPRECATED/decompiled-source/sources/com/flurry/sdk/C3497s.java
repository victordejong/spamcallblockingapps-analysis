package com.flurry.sdk;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.media2.session.SessionCommand;
import com.flurry.sdk.C3363jx;
import com.flurry.sdk.C3368jz;
import com.flurry.sdk.C3504t;
import java.io.File;
/* renamed from: com.flurry.sdk.s */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/s.class */
public class C3497s {

    /* renamed from: a */
    public static final String f6032a = "s";

    /* renamed from: com.flurry.sdk.s$6 */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/s$6.class */
    public static final /* synthetic */ class C35036 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f6049a = new int[EnumC2922cs.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            try {
                f6049a[EnumC2922cs.STRING.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f6049a[EnumC2922cs.IMAGE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f6049a[EnumC2922cs.VIDEO.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f6049a[EnumC2922cs.VAST_VIDEO.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f6049a[EnumC2922cs.RICH_MEDIA.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* renamed from: a */
    public static String m32326a(C2921cr crVar, int i) {
        C2806af afVar = C3484p.m32358a().f6006h;
        File a = C2806af.m33656a(i, crVar.f4517c);
        if (a == null) {
            return crVar.f4517c;
        }
        return "file://" + a.getAbsolutePath();
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x01c1, code lost:
        if (r14 != false) goto L_0x01ca;
     */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01d2  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void m32323a(com.flurry.sdk.C3497s r9, com.flurry.sdk.C2921cr r10, final android.view.ViewGroup r11, final com.flurry.sdk.C2772aa r12) {
        /*
            Method dump skipped, instructions count: 524
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.C3497s.m32323a(com.flurry.sdk.s, com.flurry.sdk.cr, android.view.ViewGroup, com.flurry.sdk.aa):void");
    }

    /* renamed from: a */
    public static /* synthetic */ void m32322a(C3497s sVar, C2921cr crVar, final ImageView imageView, int i) {
        C2806af afVar = C3484p.m32358a().f6006h;
        File a = C2806af.m33656a(i, crVar.f4517c);
        if (a == null) {
            String str = f6032a;
            C3356jq.m32615a(3, str, "Cached asset not available for image:" + crVar.f4517c);
            C3363jx jxVar = new C3363jx();
            jxVar.f5766g = crVar.f4517c;
            jxVar.f5941u = SessionCommand.COMMAND_CODE_SESSION_FAST_FORWARD;
            jxVar.f5767h = C3368jz.EnumC3371a.kGet;
            jxVar.f5754d = new C2987do();
            jxVar.f5751a = new C3363jx.AbstractC3365a<Void, Bitmap>() { // from class: com.flurry.sdk.s.3
                @Override // com.flurry.sdk.C3363jx.AbstractC3365a
                /* renamed from: a */
                public final /* synthetic */ void mo32321a(C3363jx<Void, Bitmap> jxVar2, Bitmap bitmap) {
                    Bitmap bitmap2 = bitmap;
                    String str2 = C3497s.f6032a;
                    C3356jq.m32615a(3, str2, "Image request -- HTTP status code is:" + jxVar2.f5776q);
                    if (jxVar2.m32580b()) {
                        C3497s.this.m32327a(imageView, bitmap2);
                    }
                }
            };
            C3323iz.m32690a().m32623a((Object) sVar, (C3497s) jxVar);
            return;
        }
        String str2 = f6032a;
        C3356jq.m32615a(3, str2, "Cached asset present for image:" + crVar.f4517c);
        sVar.m32327a(imageView, BitmapFactory.decodeFile(a.getAbsolutePath()));
    }

    /* renamed from: a */
    public final void m32327a(final ImageView imageView, final Bitmap bitmap) {
        C3331jb.m32681a().m32678a(new AbstractRunnableC3447lc(this) { // from class: com.flurry.sdk.s.4
            @Override // com.flurry.sdk.AbstractRunnableC3447lc
            /* renamed from: a */
            public final void mo32300a() {
                imageView.setImageBitmap(bitmap);
            }
        });
    }

    /* renamed from: a */
    public final void m32325a(final C2921cr crVar, final View view, final int i) {
        if (crVar != null && view != null) {
            int i2 = C35036.f6049a[crVar.f4516b.ordinal()];
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 == 3 || i2 == 4) {
                        final ViewGroup viewGroup = (ViewGroup) view;
                        if (crVar != null && viewGroup != null && !TextUtils.isEmpty(crVar.f4517c)) {
                            if (!EnumC2922cs.VIDEO.equals(crVar.f4516b) && !EnumC2922cs.VAST_VIDEO.equals(crVar.f4516b)) {
                                return;
                            }
                            if (!(viewGroup instanceof ViewGroup)) {
                                C3356jq.m32602e(f6032a, "The view must be an instance of ViewGroup in order to load the asset");
                                return;
                            }
                            final AbstractC3518x a = C3484p.m32358a().f6000b.m32298a(i);
                            if (a == null) {
                                C3356jq.m32615a(5, f6032a, "Video error. Could not find ad object");
                            } else if (!(a instanceof C2772aa)) {
                                C3356jq.m32615a(5, f6032a, "The ad must be an instance of FlurryAdNative to fetch video");
                            } else {
                                C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.s.2
                                    @Override // com.flurry.sdk.AbstractRunnableC3447lc
                                    /* renamed from: a */
                                    public final void mo32300a() {
                                        C3497s.m32323a(C3497s.this, crVar, viewGroup, (C2772aa) a);
                                    }
                                });
                            }
                        }
                    }
                } else if (crVar != null && !TextUtils.isEmpty(crVar.f4517c) && EnumC2922cs.IMAGE.equals(crVar.f4516b)) {
                    if (view == null || !(view instanceof ImageView)) {
                        C3356jq.m32602e(f6032a, "The view must be an instance of ImageView in order to load the asset");
                    } else {
                        C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.s.1
                            @Override // com.flurry.sdk.AbstractRunnableC3447lc
                            /* renamed from: a */
                            public final void mo32300a() {
                                C3497s.m32322a(C3497s.this, crVar, (ImageView) view, i);
                            }
                        });
                    }
                }
            } else if (crVar != null && EnumC2922cs.STRING.equals(crVar.f4516b) && view != null) {
                if ("callToAction".equals(crVar.f4515a) || ("clickToCall".equals(crVar.f4515a) && (view instanceof Button))) {
                    Button button = (Button) view;
                    button.setText(crVar.f4517c);
                    if ("callToAction".equals(crVar.f4515a) || "clickToCall".equals(crVar.f4515a)) {
                        C3504t tVar = new C3504t("clickToCall".equals(crVar.f4515a) ? C3504t.EnumC3505a.CLICK_TO_CALL : C3504t.EnumC3505a.CALL_TO_ACTION);
                        tVar.f6050a = button;
                        tVar.f6051b = i;
                        C3345jm.m32636a().m32635a(tVar);
                    }
                } else if (!(view instanceof TextView)) {
                    C3356jq.m32602e(f6032a, "The view must be an instance of TextView in order to load the asset");
                } else {
                    ((TextView) view).setText(crVar.f4517c);
                }
            }
        }
    }
}
