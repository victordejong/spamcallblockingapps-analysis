package p193e.p194a.p294b.p336i;

import android.content.Context;
import android.util.AttributeSet;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\b'\u0018��2\u00020\u00012\u00020\u0002B1\b\u0007\u0012\u0006\u0010$\u001a\u00020#\u0012\n\b\u0002\u0010&\u001a\u0004\u0018\u00010%\u0012\b\b\u0002\u0010'\u001a\u00020\f\u0012\b\b\u0002\u0010(\u001a\u00020\f¢\u0006\u0004\b)\u0010*J\u000f\u0010\u0004\u001a\u00020\u0003H\u0014¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0006\u001a\u00020\u0003H\u0014¢\u0006\u0004\b\u0006\u0010\u0005J\u0017\u0010\t\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u000b\u0010\u0005J\u001f\u0010\u000f\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0019\u0010\u0012\u001a\u00020\u00032\b\u0010\u0011\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\u0012\u0010\nJ\u0017\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0014\u0010\nJ\u0017\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0016\u0010\nJ\u0017\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0019\u0010\u001aR\"\u0010\"\u001a\u00020\u001b8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!¨\u0006+"}, d2 = {"Le/a/b/i/a;", "Landroid/widget/FrameLayout;", "Le/a/b/i/f;", "Ls1/s;", "onAttachedToWindow", "()V", "onDetachedFromWindow", "", "message", "m", "(Ljava/lang/String;)V", "o", "", RemoteMessageConst.Notification.COLOR, "background", "n", "(II)V", AnalyticsConstants.NAME, "setContactName", "title", "setRequestTitle", "subTitle", "setResponseSubTitle", "", "visible", "q", "(Z)V", "Le/a/b/i/e;", AbstractC2405c.f7629a, "Le/a/b/i/e;", "getPresenter", "()Le/a/b/i/e;", "setPresenter", "(Le/a/b/i/e;)V", "presenter", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroid/util/AttributeSet;", "attrRes", "defStyleAttrRes", "defStyleRes", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;II)V", "bizmon_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.b.i.a */
/* loaded from: classes6-dex2jar.jar:e/a/b/i/a.class */
public abstract class AbstractC7917a extends AbstractC7925g implements AbstractC7924f {
    @Inject

    /* renamed from: c */
    public AbstractC7923e f24538c;

    public AbstractC7917a(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 0);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractC7917a(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        l.e(context, AnalyticsConstants.CONTEXT);
    }

    public final AbstractC7923e getPresenter() {
        AbstractC7923e abstractC7923e = this.f24538c;
        if (abstractC7923e != null) {
            return abstractC7923e;
        }
        l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p294b.p336i.AbstractC7924f
    /* renamed from: m */
    public void mo29110m(String str) {
        l.e(str, "message");
        Context context = getContext();
        l.d(context, AnalyticsConstants.CONTEXT);
        C19291g.m13589S1(context, 0, str, 0, 1);
    }

    /* renamed from: n */
    public void mo29109n(int i, int i2) {
    }

    /* renamed from: o */
    public void mo29108o() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        AbstractC7923e abstractC7923e = this.f24538c;
        if (abstractC7923e != null) {
            ((AbstractC20576b) abstractC7923e).f57683a = this;
        } else {
            l.l("presenter");
            throw null;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        AbstractC7923e abstractC7923e = this.f24538c;
        if (abstractC7923e != null) {
            ((AbstractC20574a) abstractC7923e).mo9806c();
        } else {
            l.l("presenter");
            throw null;
        }
    }

    /* renamed from: q */
    public void mo29106q(boolean z) {
    }

    public void setContactName(String str) {
    }

    public final void setPresenter(AbstractC7923e abstractC7923e) {
        l.e(abstractC7923e, "<set-?>");
        this.f24538c = abstractC7923e;
    }

    @Override // p193e.p194a.p294b.p336i.AbstractC7924f
    public void setRequestTitle(String str) {
        l.e(str, "title");
    }

    public void setResponseSubTitle(String str) {
        l.e(str, "subTitle");
    }
}
