package p193e.p1485h.p1486a.p1488b.p1490i;

import android.content.Context;
import android.os.Build;
import android.text.Html;
import com.clevertap.android.pushtemplates.C0861R;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import p193e.p1485h.p1486a.p1488b.C22674b;
import p193e.p1485h.p1486a.p1488b.C22675d;
import p193e.p1485h.p1486a.p1488b.C22681g;
import s1.z.c.l;
@Metadata(d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0012\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0002J\u0012\u0010\u000b\u001a\u00020\b2\b\u0010\f\u001a\u0004\u0018\u00010\nH\u0002¨\u0006\r"}, d2 = {"Lcom/clevertap/android/pushtemplates/content/ZeroBezelBigContentView;", "Lcom/clevertap/android/pushtemplates/content/ContentView;", AnalyticsConstants.CONTEXT, "Landroid/content/Context;", "renderer", "Lcom/clevertap/android/pushtemplates/TemplateRenderer;", "(Landroid/content/Context;Lcom/clevertap/android/pushtemplates/TemplateRenderer;)V", "setCustomContentViewBigImage", "", "pt_big_img", "", "setCustomContentViewMessageSummary", "pt_msg_summary", "clevertap-pushtemplates_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: e.h.a.b.i.o */
/* loaded from: classes-dex2jar.jar:e/h/a/b/i/o.class */
public final class C22692o extends C22685c {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C22692o(Context context, C22675d c22675d) {
        super(context, C0861R.layout.zero_bezel, c22675d);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(c22675d, "renderer");
        m7956a();
        m7948i(c22675d.f62764c);
        m7951f(c22675d.f62765d);
        String str = c22675d.f62766e;
        if (str != null) {
            if (str.length() > 0) {
                if (Build.VERSION.SDK_INT >= 24) {
                    this.f62808c.setTextViewText(C0861R.C0863id.msg, Html.fromHtml(str, 0));
                } else {
                    this.f62808c.setTextViewText(C0861R.C0863id.msg, Html.fromHtml(str));
                }
            }
        }
        m7947j(c22675d.f62769h);
        m7953d(c22675d.f62779r);
        m7950g(c22675d.f62770i);
        String str2 = c22675d.f62768g;
        if (str2 != null) {
            if (str2.length() > 0) {
                int i = C0861R.C0863id.big_image;
                C22681g.m7962r(i, str2, this.f62808c);
                if (C22674b.f62740a) {
                    this.f62808c.setViewVisibility(i, 8);
                }
                m7949h();
                m7954c();
            }
        }
        this.f62808c.setViewVisibility(C0861R.C0863id.big_image, 8);
        m7949h();
        m7954c();
    }
}
