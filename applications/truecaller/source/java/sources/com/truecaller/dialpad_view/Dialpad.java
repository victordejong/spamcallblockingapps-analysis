package com.truecaller.dialpad_view;

import android.content.Context;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.View;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p1158q3.AbstractC19608a;
import p193e.p194a.p1158q3.AbstractC19614e;
import p193e.p194a.p1158q3.AbstractC19616g;
import p193e.p194a.p1158q3.AbstractC19617h;
import p193e.p194a.p1158q3.AbstractC19618i;
import p193e.p194a.p1158q3.C19609b;
import p193e.p194a.p432b4.p433a.AbstractC8640d;
import s1.s;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\r\n��\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\u00020\u00012\u00020\u00022\u00020\u0003B\u001b\b\u0016\u0012\u0006\u0010H\u001a\u00020G\u0012\b\u0010J\u001a\u0004\u0018\u00010I¢\u0006\u0004\bK\u0010LJ\u000f\u0010\u0005\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u001f\u0010\u000e\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0014¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\u00042\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0019\u001a\u00020\u00042\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u001d\u001a\u00020\u00042\b\u0010\u001c\u001a\u0004\u0018\u00010\u001b¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u001f\u0010\u0006J!\u0010$\u001a\u0004\u0018\u00010\u00042\u0006\u0010!\u001a\u00020 2\u0006\u0010#\u001a\u00020\"H\u0002¢\u0006\u0004\b$\u0010%J\u001f\u0010(\u001a\u00020\t2\u0006\u0010&\u001a\u00020\u00102\u0006\u0010'\u001a\u00020\u0010H\u0002¢\u0006\u0004\b(\u0010)J\u0011\u0010*\u001a\u0004\u0018\u00010\u0004H\u0002¢\u0006\u0004\b*\u0010+R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010-R\u001e\u00101\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010/0.8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u00100R\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u00103R\"\u0010:\u001a\u0002048\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b(\u00105\u001a\u0004\b6\u00107\"\u0004\b8\u00109R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b;\u0010<R\"\u0010C\u001a\u00020=8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b$\u0010>\u001a\u0004\b?\u0010@\"\u0004\bA\u0010BR\u0018\u0010F\u001a\u0004\u0018\u00010D8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010E¨\u0006M"}, d2 = {"Lcom/truecaller/dialpad_view/Dialpad;", "Le/a/q3/i;", "Landroid/view/View$OnLongClickListener;", "Landroid/view/View$OnTouchListener;", "Ls1/s;", "onFinishInflate", "()V", "Landroid/view/View;", ViewAction.VIEW, "", "onLongClick", "(Landroid/view/View;)Z", "Landroid/view/MotionEvent;", "event", "onTouch", "(Landroid/view/View;Landroid/view/MotionEvent;)Z", "", "getColumnCount", "()I", "Le/a/q3/e;", "dialpadListener", "setDialpadListener", "(Le/a/q3/e;)V", "Le/a/q3/b;", "dialpadFeedback", "setFeedback", "(Le/a/q3/b;)V", "Le/a/q3/a;", "dialpadExtraActionsListener", "setActionsListener", "(Le/a/q3/a;)V", "a", "", "mainText", "Lcom/truecaller/dialpad_view/DialpadKeyActionState;", "stateDialpad", AbstractC2405c.f7629a, "(Ljava/lang/CharSequence;Lcom/truecaller/dialpad_view/DialpadKeyActionState;)Ls1/s;", "actionCode", "secondaryCode", C22021b.f61237c, "(II)Z", "d", "()Ls1/s;", "f", "Le/a/q3/b;", "", "Landroid/graphics/Rect;", "[Landroid/graphics/Rect;", "lastTouchedViewBoundsArray", "e", "Le/a/q3/e;", "Le/a/q3/h;", "Le/a/q3/h;", "getDialpadViewHelper", "()Le/a/q3/h;", "setDialpadViewHelper", "(Le/a/q3/h;)V", "dialpadViewHelper", "g", "Le/a/q3/a;", "Le/a/b4/a/d;", "Le/a/b4/a/d;", "getT9keyProvider", "()Le/a/b4/a/d;", "setT9keyProvider", "(Le/a/b4/a/d;)V", "t9keyProvider", "", "Ljava/lang/String;", "t9KeyLanguage", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "dialpad-view_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes8-dex2jar.jar:com/truecaller/dialpad_view/Dialpad.class */
public final class Dialpad extends AbstractC19618i implements View.OnLongClickListener, View.OnTouchListener {

    /* renamed from: a */
    public final Rect[] f11794a = new Rect[5];
    @Inject

    /* renamed from: b */
    public AbstractC19617h f11795b;
    @Inject

    /* renamed from: c */
    public AbstractC8640d f11796c;

    /* renamed from: d */
    public String f11797d;

    /* renamed from: e */
    public AbstractC19614e f11798e;

    /* renamed from: f */
    public C19609b f11799f;

    /* renamed from: g */
    public AbstractC19608a f11800g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Dialpad(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        l.e(context, AnalyticsConstants.CONTEXT);
        Context context2 = getContext();
        l.d(context2, AnalyticsConstants.CONTEXT);
        Context applicationContext = context2.getApplicationContext();
        if (applicationContext instanceof AbstractC19616g) {
            ((AbstractC19616g) applicationContext).mo13097B().mo11152b(this);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x001f, code lost:
        if (r8 != null) goto L13;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m35432a() {
        /*
            Method dump skipped, instructions count: 362
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.dialpad_view.Dialpad.m35432a():void");
    }

    /* renamed from: b */
    public final boolean m35431b(int i, int i2) {
        AbstractC19608a abstractC19608a = this.f11800g;
        return abstractC19608a != null ? abstractC19608a.m13099de(i, i2) : false;
    }

    /* renamed from: c */
    public final s m35430c(CharSequence charSequence, DialpadKeyActionState dialpadKeyActionState) {
        s sVar;
        AbstractC19614e abstractC19614e = this.f11798e;
        if (abstractC19614e != null) {
            abstractC19614e.mo13098U4(charSequence.charAt(0), dialpadKeyActionState);
            sVar = s.a;
        } else {
            sVar = null;
        }
        return sVar;
    }

    /* renamed from: d */
    public final s m35429d() {
        s sVar;
        C19609b c19609b = this.f11799f;
        if (c19609b != null) {
            Handler handler = c19609b.f54497d;
            if (handler != null) {
                handler.sendMessageDelayed(Message.obtain(handler, 1), 20L);
            }
            sVar = s.a;
        } else {
            sVar = null;
        }
        return sVar;
    }

    @Override // p193e.p194a.p1158q3.AbstractC19618i
    public int getColumnCount() {
        return 3;
    }

    public final AbstractC19617h getDialpadViewHelper() {
        AbstractC19617h abstractC19617h = this.f11795b;
        if (abstractC19617h != null) {
            return abstractC19617h;
        }
        l.l("dialpadViewHelper");
        throw null;
    }

    public final AbstractC8640d getT9keyProvider() {
        AbstractC8640d abstractC8640d = this.f11796c;
        if (abstractC8640d != null) {
            return abstractC8640d;
        }
        l.l("t9keyProvider");
        throw null;
    }

    @Override // android.view.View
    public void onFinishInflate() {
        String str;
        super.onFinishInflate();
        if (isInEditMode()) {
            AbstractC19617h abstractC19617h = this.f11795b;
            if (abstractC19617h == null) {
                l.l("dialpadViewHelper");
                throw null;
            }
            str = abstractC19617h.mo13096a();
        } else {
            AbstractC19617h abstractC19617h2 = this.f11795b;
            if (abstractC19617h2 == null) {
                l.l("dialpadViewHelper");
                throw null;
            }
            str = abstractC19617h2.mo13093d();
        }
        this.f11797d = str;
        m35432a();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x00af  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x00a9 -> B:23:0x00ab). Please submit an issue!!! */
    @Override // android.view.View.OnLongClickListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onLongClick(android.view.View r5) {
        /*
            r4 = this;
            r0 = r5
            java.lang.String r1 = "view"
            s1.z.c.l.e(r0, r1)
            r0 = r5
            boolean r0 = r0 instanceof p193e.p194a.p1158q3.C19612c
            if (r0 == 0) goto La9
            r0 = r5
            e.a.q3.c r0 = (p193e.p194a.p1158q3.C19612c) r0
            java.lang.CharSequence r0 = r0.getMainText()
            java.lang.String r0 = r0.toString()
            r6 = r0
            r0 = r6
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto La9
            r0 = r6
            r1 = 0
            char r0 = r0.charAt(r1)
            r1 = 42
            if (r0 != r1) goto L36
            r0 = r4
            r1 = -4717(0xffffffffffffed93, float:NaN)
            r2 = 0
            boolean r0 = r0.m35431b(r1, r2)
            r7 = r0
            goto Lab
        L36:
            r0 = r6
            r1 = 0
            char r0 = r0.charAt(r1)
            r1 = 35
            if (r0 != r1) goto L4c
            r0 = r4
            r1 = -4716(0xffffffffffffed94, float:NaN)
            r2 = 0
            boolean r0 = r0.m35431b(r1, r2)
            r7 = r0
            goto Lab
        L4c:
            r0 = r6
            int r0 = java.lang.Integer.parseInt(r0)     // Catch: java.lang.NumberFormatException -> Lb6
            r8 = r0
            r0 = r8
            switch(r0) {
                case 0: goto L9c;
                case 1: goto L8f;
                case 2: goto L8f;
                case 3: goto L8f;
                case 4: goto L8f;
                case 5: goto L8f;
                case 6: goto L8f;
                case 7: goto L8f;
                case 8: goto L8f;
                case 9: goto L8f;
                default: goto L8c;
            }
        L8c:
            goto La9
        L8f:
            r0 = r4
            r1 = -4712(0xffffffffffffed98, float:NaN)
            r2 = r8
            boolean r0 = r0.m35431b(r1, r2)     // Catch: java.lang.NumberFormatException -> Lb6
            r7 = r0
            goto Lab
        L9c:
            r0 = r4
            r1 = -4714(0xffffffffffffed96, float:NaN)
            r2 = r8
            boolean r0 = r0.m35431b(r1, r2)     // Catch: java.lang.NumberFormatException -> Lb6
            r7 = r0
            goto Lab
        La9:
            r0 = 0
            r7 = r0
        Lab:
            r0 = r7
            if (r0 == 0) goto Lb4
            r0 = r5
            r1 = 0
            r0.setPressed(r1)
        Lb4:
            r0 = r7
            return r0
        Lb6:
            r6 = move-exception
            goto La9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.dialpad_view.Dialpad.onLongClick(android.view.View):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x018d  */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouch(android.view.View r10, android.view.MotionEvent r11) {
        /*
            Method dump skipped, instructions count: 530
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.dialpad_view.Dialpad.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    public final void setActionsListener(AbstractC19608a abstractC19608a) {
        this.f11800g = abstractC19608a;
    }

    public final void setDialpadListener(AbstractC19614e abstractC19614e) {
        this.f11798e = abstractC19614e;
    }

    public final void setDialpadViewHelper(AbstractC19617h abstractC19617h) {
        l.e(abstractC19617h, "<set-?>");
        this.f11795b = abstractC19617h;
    }

    public final void setFeedback(C19609b c19609b) {
        this.f11799f = c19609b;
    }

    public final void setT9keyProvider(AbstractC8640d abstractC8640d) {
        l.e(abstractC8640d, "<set-?>");
        this.f11796c = abstractC8640d;
    }
}
