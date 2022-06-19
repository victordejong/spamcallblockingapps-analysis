package p193e.p194a.p1365y.p1381b;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.text.SpannableString;
import android.text.style.ImageSpan;
import android.util.TypedValue;
import com.razorpay.AnalyticsConstants;
import com.truecaller.flashsdk.C3909R;
import com.truecaller.flashsdk.models.Payload;
import java.util.Arrays;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1451f.p1452a.C22234h;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1406z3.C21853e;
import p193e.p194a.p437c.p578p.C10480a;
import s1.g;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.y.b.h0 */
/* loaded from: classes9-dex2jar.jar:e/a/y/b/h0.class */
public final class C21608h0 implements AbstractC21606g0 {

    /* renamed from: a */
    public final g f60262a = C25225a.m3978P1(new C21609a());

    /* renamed from: b */
    public final Context f60263b;

    /* renamed from: e.a.y.b.h0$a */
    /* loaded from: classes9-dex2jar.jar:e/a/y/b/h0$a.class */
    public static final class C21609a extends m implements a<C21853e> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C21609a() {
            super(0);
            C21608h0.this = r4;
        }

        public Object invoke() {
            C21853e m15664K1 = C17891a1.C17902k.m15664K1(C21608h0.this.f60263b);
            l.d(m15664K1, "GlideApp.with(context)");
            return m15664K1;
        }
    }

    public C21608h0(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f60263b = context;
    }

    @Override // p193e.p194a.p1365y.p1381b.AbstractC21606g0
    /* renamed from: a */
    public int mo9376a(int i) {
        Context context = this.f60263b;
        Object obj = C26467a.f74235a;
        return C26467a.C26471d.m1787a(context, i);
    }

    @Override // p193e.p194a.p1365y.p1381b.AbstractC21606g0
    /* renamed from: b */
    public String mo9375b(int i, Object... objArr) {
        l.e(objArr, "formatArgs");
        String string = this.f60263b.getString(i, Arrays.copyOf(objArr, objArr.length));
        l.d(string, "context.getString(resId, *formatArgs)");
        return string;
    }

    @Override // p193e.p194a.p1365y.p1381b.AbstractC21606g0
    /* renamed from: c */
    public Drawable mo9374c(int i) {
        Context context = this.f60263b;
        Object obj = C26467a.f74235a;
        Drawable m1789b = C26467a.C26470c.m1789b(context, i);
        if (m1789b != null) {
            return m1789b;
        }
        throw new Resources.NotFoundException(String.valueOf(i));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // p193e.p194a.p1365y.p1381b.AbstractC21606g0
    /* renamed from: d */
    public String mo9373d(Payload payload) {
        String str;
        l.e(payload, "payload");
        String m35382e = payload.m35382e();
        if (m35382e != null) {
            switch (m35382e.hashCode()) {
                case -1423461112:
                    if (m35382e.equals("accept")) {
                        str = this.f60263b.getString(C3909R.string.accept);
                        l.d(str, "context.getString(R.string.accept)");
                        break;
                    }
                    break;
                case -1073880421:
                    if (m35382e.equals("missed")) {
                        str = this.f60263b.getString(C3909R.string.missed_your_flash);
                        l.d(str, "context.getString(R.string.missed_your_flash)");
                        break;
                    }
                    break;
                case -934710369:
                    if (m35382e.equals("reject")) {
                        str = this.f60263b.getString(C3909R.string.reject);
                        l.d(str, "context.getString(R.string.reject)");
                        break;
                    }
                    break;
                case 3548:
                    if (m35382e.equals("ok")) {
                        str = this.f60263b.getString(C3909R.string.sfc_ok);
                        l.d(str, "context.getString(R.string.sfc_ok)");
                        break;
                    }
                    break;
                case 1772609:
                    if (m35382e.equals("��")) {
                        str = this.f60263b.getString(C3909R.string.calling_you_back);
                        l.d(str, "context.getString(R.string.calling_you_back)");
                        break;
                    }
                    break;
                case 3035641:
                    if (m35382e.equals("busy")) {
                        str = this.f60263b.getString(C3909R.string.is_busy);
                        l.d(str, "context.getString(R.string.is_busy)");
                        break;
                    }
                    break;
            }
            return str;
        }
        String m35384c = payload.m35384c();
        l.d(m35384c, "payload.message");
        int length = m35384c.length() - 1;
        int i = 0;
        boolean z = false;
        while (i <= length) {
            boolean z2 = l.g(m35384c.charAt(!z ? i : length), 32) <= 0;
            if (!z) {
                if (!z2) {
                    z = true;
                } else {
                    i++;
                }
            } else if (!z2) {
                str = m35384c.subSequence(i, length + 1).toString();
                return str;
            } else {
                length--;
            }
        }
        str = m35384c.subSequence(i, length + 1).toString();
        return str;
    }

    @Override // p193e.p194a.p1365y.p1381b.AbstractC21606g0
    /* renamed from: e */
    public SpannableString mo9372e(String str, int i, int i2, int i3, Context context) {
        l.e(str, "string");
        l.e(context, "activityContext");
        Drawable mutate = mo9374c(i3).mutate();
        l.d(mutate, "getDrawable(icon).mutate()");
        mutate.setBounds(0, 0, i, i);
        mutate.setColorFilter(i2, PorterDuff.Mode.SRC_IN);
        ImageSpan imageSpan = new ImageSpan(mutate, 0);
        SpannableString spannableString = new SpannableString(C22128a.m8562v(new Object[]{str}, 1, "   %s", "java.lang.String.format(format, *args)"));
        spannableString.setSpan(imageSpan, 0, 1, 33);
        return spannableString;
    }

    @Override // p193e.p194a.p1365y.p1381b.AbstractC21606g0
    /* renamed from: f */
    public Bitmap mo9371f(String str, boolean z) {
        Bitmap bitmap;
        int i;
        l.e(str, "imgUrl");
        try {
            C22234h mo8420V = ((C22234h) C17891a1.C17902k.m15597l(((C21853e) this.f60262a.getValue()).mo8415f(), Uri.parse(str))).mo8420V(str);
            l.d(mo8420V, "glideRequestManager.asBi…            .load(imgUrl)");
            if (z) {
                i = m9370g(64);
                mo8420V.mo8102f();
            } else {
                i = m9370g(200);
                mo8420V.mo8104c();
            }
            bitmap = (Bitmap) mo8420V.m8417Y(i, i).get();
        } catch (Exception e) {
            C10480a.m26061I1(new RuntimeException("could not get contact image for flash"));
            bitmap = null;
        }
        return bitmap;
    }

    /* renamed from: g */
    public final int m9370g(int i) {
        Resources resources = this.f60263b.getResources();
        l.d(resources, "context.resources");
        return (int) TypedValue.applyDimension(1, i, resources.getDisplayMetrics());
    }
}
