package com.truecaller.messaging.conversation;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.text.Layout;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.appcompat.widget.AppCompatTextView;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.android.truemoji.widget.EmojiTextView;
import com.truecaller.messaging.data.types.Message;
import kotlin.Metadata;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p195a.p200c.C5326g6;
import p193e.p194a.p372b0.p430q.C8605o;
import p193e.p194a.p437c.p578p.C10480a;
import s1.g;
import s1.s;
import s1.z.b.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\n\u0018��2\u00020\u0001:\u0002[\\J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\n\u0010\tJ\u000f\u0010\u000b\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\r\u0010\fJ\u000f\u0010\u000e\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J3\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u00182\b\b\u0002\u0010\u001a\u001a\u00020\u00102\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u0017\u0010 \u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u001eH\u0014¢\u0006\u0004\b \u0010!J!\u0010$\u001a\u00020\u00042\u0012\u0010#\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u00040\"¢\u0006\u0004\b$\u0010%J\r\u0010&\u001a\u00020\u0010¢\u0006\u0004\b&\u0010\u0012J\u0017\u0010)\u001a\u00020\u00102\u0006\u0010(\u001a\u00020'H\u0016¢\u0006\u0004\b)\u0010*R%\u00101\u001a\n ,*\u0004\u0018\u00010+0+8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b-\u0010.\u001a\u0004\b/\u00100R\u001d\u00105\u001a\u0002028B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010.\u001a\u0004\b3\u00104R%\u00107\u001a\n ,*\u0004\u0018\u00010+0+8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001c\u0010.\u001a\u0004\b6\u00100R$\u00109\u001a\u0010\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u0004\u0018\u00010\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u00108R\u0016\u0010<\u001a\u00020\u00078\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b:\u0010;R$\u0010A\u001a\u00020\u00162\u0006\u0010=\u001a\u00020\u00168\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u0014\u0010>\u001a\u0004\b?\u0010@R\u0016\u0010E\u001a\u00020B8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bC\u0010DR\u0016\u0010I\u001a\u00020F8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bG\u0010HR$\u0010M\u001a\u00020\u00182\u0006\u0010=\u001a\u00020\u00188\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b&\u0010J\u001a\u0004\bK\u0010LR\u0016\u0010P\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bN\u0010OR\u0016\u0010R\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bQ\u0010OR$\u0010Z\u001a\u0004\u0018\u00010S8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bT\u0010U\u001a\u0004\bV\u0010W\"\u0004\bX\u0010Y¨\u0006]"}, d2 = {"Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;", "Lcom/truecaller/android/truemoji/widget/EmojiTextView;", "", "padding", "Ls1/s;", "setPaddingEnd", "(I)V", "Landroid/graphics/RectF;", "getShowMoreBounds", "()Landroid/graphics/RectF;", "getCollapseButtonBounds", "getTextColor", "()I", "getBgColor", "j", "()V", "", "m", "()Z", "isPrimary", "k", "(Z)I", "Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutStyle;", "layoutStyle", "Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutState;", "layoutState", "shouldExpand", "maxLines", "h", "(Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutStyle;Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutState;ZLjava/lang/Integer;)V", "Landroid/graphics/Canvas;", "canvas", "onDraw", "(Landroid/graphics/Canvas;)V", "Lkotlin/Function1;", "listener", "setOnResizeClickListener", "(Ls1/z/b/l;)V", "l", "Landroid/view/MotionEvent;", "event", "onTouchEvent", "(Landroid/view/MotionEvent;)Z", "Landroid/graphics/drawable/Drawable;", "kotlin.jvm.PlatformType", "i", "Ls1/g;", "getExpandDrawable", "()Landroid/graphics/drawable/Drawable;", "expandDrawable", "Landroidx/appcompat/widget/AppCompatTextView;", "getShowMoreButton", "()Landroidx/appcompat/widget/AppCompatTextView;", "showMoreButton", "getCollapseDrawable", "collapseDrawable", "Ls1/z/b/l;", "onResizeListener", "n", "Landroid/graphics/RectF;", "rectF", "<set-?>", "Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutStyle;", "getCurrentLayoutStyle", "()Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutStyle;", "currentLayoutStyle", "Landroid/graphics/Rect;", "o", "Landroid/graphics/Rect;", "rect", "", "p", "F", "actualTextSize", "Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutState;", "getCurrentLayoutState", "()Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutState;", "currentLayoutState", "r", "I", "actualPaddingStart", "q", "actualPaddingEnd", "Lcom/truecaller/messaging/data/types/Message;", "g", "Lcom/truecaller/messaging/data/types/Message;", "getItem", "()Lcom/truecaller/messaging/data/types/Message;", "setItem", "(Lcom/truecaller/messaging/data/types/Message;)V", "item", "LayoutState", "LayoutStyle", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:com/truecaller/messaging/conversation/ExpandableEmojiTextView.class */
public final class ExpandableEmojiTextView extends EmojiTextView {

    /* renamed from: g */
    public Message f13022g;

    /* renamed from: h */
    public final g f13023h;

    /* renamed from: i */
    public final g f13024i;

    /* renamed from: j */
    public final g f13025j;

    /* renamed from: m */
    public l<? super LayoutState, s> f13028m;

    /* renamed from: k */
    public LayoutStyle f13026k = LayoutStyle.NORMAL;

    /* renamed from: l */
    public LayoutState f13027l = LayoutState.EXPANDED;

    /* renamed from: n */
    public final RectF f13029n = new RectF();

    /* renamed from: o */
    public final Rect f13030o = new Rect();

    /* renamed from: p */
    public float f13031p = getTextSize();

    /* renamed from: q */
    public int f13032q = getPaddingEnd();

    /* renamed from: r */
    public int f13033r = getPaddingStart();

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutState;", "", "<init>", "(Ljava/lang/String;I)V", "EXPANDED", "COLLAPSED", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:com/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutState.class */
    public enum LayoutState {
        EXPANDED,
        COLLAPSED
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutStyle;", "", "<init>", "(Ljava/lang/String;I)V", "SHOW_MORE", "EXPANDABLE", "NORMAL", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:com/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutStyle.class */
    public enum LayoutStyle {
        SHOW_MORE,
        EXPANDABLE,
        NORMAL
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ExpandableEmojiTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
        this.f13023h = C25225a.m3978P1(new C25283i2(0, context));
        this.f13024i = C25225a.m3978P1(new C25283i2(1, context));
        this.f13025j = C25225a.m3978P1(new C5326g6(this, context));
    }

    public final int getBgColor() {
        int i;
        Message message;
        Message message2;
        Message message3 = this.f13022g;
        if (message3 == null || !C10480a.m26093A1(message3)) {
            Message message4 = this.f13022g;
            if (message4 == null || !C10480a.m25874x1(message4) || (message2 = this.f13022g) == null || message2.f13390k != 2) {
                Message message5 = this.f13022g;
                i = (message5 == null || !C10480a.m25874x1(message5) || (((message = this.f13022g) == null || message.f13390k != 0) && (message == null || message.f13390k != 1))) ? C19291g.m13612L(getContext(), C2752R.attr.tcx_messageIncomingBackground) : C19291g.m13612L(getContext(), C2752R.attr.tcx_messageOutgoingSmsBackground);
            } else {
                i = C19291g.m13612L(getContext(), C2752R.attr.tcx_messageOutgoingImBackground);
            }
        } else {
            i = C19291g.m13612L(getContext(), C2752R.attr.tcx_messageScheduledBackground);
        }
        return i;
    }

    private final RectF getCollapseButtonBounds() {
        float f;
        int i;
        Drawable expandDrawable;
        Drawable expandDrawable2;
        boolean z = true;
        if (getLayoutDirection() != 1) {
            z = false;
        }
        int height = getHeight();
        Drawable expandDrawable3 = getExpandDrawable();
        s1.z.c.l.d(expandDrawable3, "expandDrawable");
        int intrinsicHeight = expandDrawable3.getIntrinsicHeight();
        int m28238b = C8605o.m28238b(getContext(), 4.0f);
        int paddingBottom = getPaddingBottom();
        RectF rectF = this.f13029n;
        if (z) {
            f = this.f13033r;
        } else {
            float width = getWidth();
            s1.z.c.l.d(getExpandDrawable(), "expandDrawable");
            f = (width - expandDrawable2.getIntrinsicWidth()) - this.f13032q;
        }
        float f2 = ((height - intrinsicHeight) - m28238b) - paddingBottom;
        if (z) {
            int i2 = this.f13033r;
            Drawable expandDrawable4 = getExpandDrawable();
            s1.z.c.l.d(expandDrawable4, "expandDrawable");
            i = expandDrawable4.getIntrinsicWidth() + i2;
        } else {
            i = getWidth() - this.f13032q;
        }
        s1.z.c.l.d(getExpandDrawable(), "expandDrawable");
        rectF.set(f, f2, i, expandDrawable.getIntrinsicHeight() + f2);
        return this.f13029n;
    }

    private final Drawable getCollapseDrawable() {
        return (Drawable) this.f13023h.getValue();
    }

    private final Drawable getExpandDrawable() {
        return (Drawable) this.f13024i.getValue();
    }

    private final RectF getShowMoreBounds() {
        boolean z = true;
        if (getLayoutDirection() != 1) {
            z = false;
        }
        this.f13029n.set(z ? getPaddingStart() : (getWidth() - getShowMoreButton().getMeasuredWidth()) - getPaddingEnd(), (getHeight() - getShowMoreButton().getMeasuredHeight()) - getPaddingBottom(), z ? getShowMoreButton().getMeasuredWidth() : getWidth() - getPaddingEnd(), getHeight());
        return this.f13029n;
    }

    private final AppCompatTextView getShowMoreButton() {
        return (AppCompatTextView) this.f13025j.getValue();
    }

    public final int getTextColor() {
        int i;
        Message message;
        Message message2;
        Message message3 = this.f13022g;
        if (message3 == null || !C10480a.m26093A1(message3)) {
            Message message4 = this.f13022g;
            if (message4 == null || !C10480a.m25874x1(message4) || (message2 = this.f13022g) == null || message2.f13390k != 2) {
                Message message5 = this.f13022g;
                i = (message5 == null || !C10480a.m25874x1(message5) || (((message = this.f13022g) == null || message.f13390k != 0) && (message == null || message.f13390k != 1))) ? C19291g.m13612L(getContext(), 2130970017) : C19291g.m13612L(getContext(), C2752R.attr.tcx_messageOutgoingSmsText);
            } else {
                i = C19291g.m13612L(getContext(), C2752R.attr.tcx_messageOutgoingImText);
            }
        } else {
            i = C19291g.m13612L(getContext(), C2752R.attr.tcx_messageScheduledText);
        }
        return i;
    }

    /* renamed from: i */
    public static /* synthetic */ void m35122i(ExpandableEmojiTextView expandableEmojiTextView, LayoutStyle layoutStyle, LayoutState layoutState, boolean z, Integer num, int i) {
        if ((i & 4) != 0) {
            z = false;
        }
        expandableEmojiTextView.m35123h(layoutStyle, layoutState, z, null);
    }

    private final void setPaddingEnd(int i) {
        setPadding(getPaddingStart(), getPaddingTop(), i, getPaddingBottom());
    }

    public final LayoutState getCurrentLayoutState() {
        return this.f13027l;
    }

    public final LayoutStyle getCurrentLayoutStyle() {
        return this.f13026k;
    }

    public final Message getItem() {
        return this.f13022g;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x00b3, code lost:
        if (m35119l() != false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x002f, code lost:
        if (r0 != 2) goto L13;
     */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00d4  */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m35123h(com.truecaller.messaging.conversation.ExpandableEmojiTextView.LayoutStyle r6, com.truecaller.messaging.conversation.ExpandableEmojiTextView.LayoutState r7, boolean r8, java.lang.Integer r9) {
        /*
            Method dump skipped, instructions count: 228
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.messaging.conversation.ExpandableEmojiTextView.m35123h(com.truecaller.messaging.conversation.ExpandableEmojiTextView$LayoutStyle, com.truecaller.messaging.conversation.ExpandableEmojiTextView$LayoutState, boolean, java.lang.Integer):void");
    }

    /* renamed from: j */
    public final void m35121j() {
        setTextColor(m35120k(true));
        setTextSize(0, this.f13031p);
        setSingleLine(false);
        setEllipsize(null);
    }

    /* renamed from: k */
    public final int m35120k(boolean z) {
        int i;
        Message message = this.f13022g;
        if (message == null || !C10480a.m25899s1(message) || !z) {
            Message message2 = this.f13022g;
            i = (message2 == null || !C10480a.m25899s1(message2)) ? getTextColor() : C19291g.m13612L(getContext(), 2130970255);
        } else {
            i = C19291g.m13612L(getContext(), 2130970253);
        }
        return i;
    }

    /* renamed from: l */
    public final boolean m35119l() {
        return this.f13027l == LayoutState.COLLAPSED;
    }

    /* renamed from: m */
    public final boolean m35118m() {
        boolean z;
        if (getMaxLines() > 0) {
            Layout layout = getLayout();
            s1.z.c.l.d(layout, "layout");
            if (layout.getLineCount() > getMaxLines() && this.f13026k == LayoutStyle.SHOW_MORE && m35119l()) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    @Override // android.widget.TextView, android.view.View
    public void onDraw(Canvas canvas) {
        s1.z.c.l.e(canvas, "canvas");
        int m28238b = C8605o.m28238b(getContext(), 20.0f);
        if (this.f13026k == LayoutStyle.EXPANDABLE) {
            setPaddingEnd(m28238b + this.f13032q);
        } else {
            setPaddingEnd(this.f13032q);
        }
        super.onDraw(canvas);
        int ordinal = this.f13026k.ordinal();
        if (ordinal == 0) {
            if (!m35119l() || !m35118m()) {
                return;
            }
            canvas.save();
            RectF showMoreBounds = getShowMoreBounds();
            canvas.translate(showMoreBounds.left, showMoreBounds.top);
            getShowMoreButton().draw(canvas);
            canvas.restore();
        } else if (ordinal != 1) {
        } else {
            canvas.save();
            getCollapseButtonBounds().round(this.f13030o);
            if (m35119l()) {
                Drawable expandDrawable = getExpandDrawable();
                s1.z.c.l.d(expandDrawable, "expandDrawable");
                expandDrawable.setBounds(this.f13030o);
                getExpandDrawable().draw(canvas);
            } else {
                Drawable collapseDrawable = getCollapseDrawable();
                s1.z.c.l.d(collapseDrawable, "collapseDrawable");
                collapseDrawable.setBounds(this.f13030o);
                getCollapseDrawable().draw(canvas);
            }
            canvas.restore();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        s1.z.c.l.e(motionEvent, "event");
        int ordinal = this.f13026k.ordinal();
        if (ordinal != 0) {
            if (ordinal == 1) {
                RectF collapseButtonBounds = getCollapseButtonBounds();
                int m28238b = C8605o.m28238b(getContext(), 16.0f);
                float f = collapseButtonBounds.left;
                float f2 = m28238b;
                collapseButtonBounds.left = f - f2;
                collapseButtonBounds.top -= f2;
                collapseButtonBounds.right += f2;
                collapseButtonBounds.bottom += f2;
                if (collapseButtonBounds.contains(motionEvent.getX(), motionEvent.getY())) {
                    if (motionEvent.getAction() != 1) {
                        return true;
                    }
                    if (m35119l()) {
                        LayoutStyle layoutStyle = LayoutStyle.EXPANDABLE;
                        LayoutState layoutState = LayoutState.EXPANDED;
                        m35122i(this, layoutStyle, layoutState, false, null, 12);
                        l<? super LayoutState, s> lVar = this.f13028m;
                        if (lVar == null) {
                            return true;
                        }
                        s sVar = (s) lVar.d(layoutState);
                        return true;
                    }
                    LayoutStyle layoutStyle2 = LayoutStyle.EXPANDABLE;
                    LayoutState layoutState2 = LayoutState.COLLAPSED;
                    m35122i(this, layoutStyle2, layoutState2, false, null, 12);
                    l<? super LayoutState, s> lVar2 = this.f13028m;
                    if (lVar2 == null) {
                        return true;
                    }
                    s sVar2 = (s) lVar2.d(layoutState2);
                    return true;
                }
            }
        } else if (m35118m() && getShowMoreBounds().contains(motionEvent.getX(), motionEvent.getY())) {
            if (motionEvent.getAction() != 1) {
                return true;
            }
            LayoutStyle layoutStyle3 = LayoutStyle.NORMAL;
            LayoutState layoutState3 = LayoutState.EXPANDED;
            m35122i(this, layoutStyle3, layoutState3, false, null, 12);
            l<? super LayoutState, s> lVar3 = this.f13028m;
            if (lVar3 == null) {
                return true;
            }
            s sVar3 = (s) lVar3.d(layoutState3);
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    public final void setItem(Message message) {
        this.f13022g = message;
    }

    public final void setOnResizeClickListener(l<? super LayoutState, s> lVar) {
        s1.z.c.l.e(lVar, "listener");
        this.f13028m = lVar;
    }
}
