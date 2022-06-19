package p193e.p194a.p195a.p200c;

import android.text.style.ClickableSpan;
import com.truecaller.android.truemoji.widget.EmojiTextView;
import com.truecaller.messaging.conversation.ExpandableEmojiTextView;
import com.truecaller.utils.p185ui.LinkClickMovementMethod;
import p193e.p194a.p195a.p200c.ViewTreeObserver$OnPreDrawListenerC5184d;
import p193e.p194a.p195a.p200c.p219p8.C5660b;
import s1.s;
import s1.z.b.r;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.a.c.c7 */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/c7.class */
public final class C5181c7 extends m implements r<String, Integer, LinkClickMovementMethod.LinkType, ClickableSpan, s> {

    /* renamed from: b */
    public final /* synthetic */ ViewTreeObserver$OnPreDrawListenerC5184d.C5189c0 f17779b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5181c7(ViewTreeObserver$OnPreDrawListenerC5184d.C5189c0 c5189c0) {
        super(4);
        this.f17779b = c5189c0;
    }

    /* renamed from: q */
    public Object m33681q(Object obj, Object obj2, Object obj3, Object obj4) {
        String str = (String) obj;
        int intValue = ((Number) obj2).intValue();
        LinkClickMovementMethod.LinkType linkType = (LinkClickMovementMethod.LinkType) obj3;
        ClickableSpan clickableSpan = (ClickableSpan) obj4;
        l.e(str, "linkText");
        l.e(linkType, "linkType");
        if (clickableSpan instanceof C5660b) {
            ViewTreeObserver$OnPreDrawListenerC5184d.this.f17817i0.mo33150v1(((C5660b) clickableSpan).f19015a);
        } else {
            int ordinal = linkType.ordinal();
            if (ordinal != 0) {
                boolean z = true;
                if (ordinal == 1) {
                    ViewTreeObserver$OnPreDrawListenerC5184d.this.f17817i0.mo33167D(str);
                } else if (ordinal != 2) {
                    Integer num = null;
                    if (ordinal == 3) {
                        ViewTreeObserver$OnPreDrawListenerC5184d viewTreeObserver$OnPreDrawListenerC5184d = ViewTreeObserver$OnPreDrawListenerC5184d.this;
                        int i = ViewTreeObserver$OnPreDrawListenerC5184d.f17783j0;
                        Integer valueOf = Integer.valueOf(viewTreeObserver$OnPreDrawListenerC5184d.getAdapterPosition());
                        Integer num2 = null;
                        if (!(valueOf.intValue() == -1)) {
                            num2 = valueOf;
                        }
                        if (num2 != null) {
                            viewTreeObserver$OnPreDrawListenerC5184d.f17817i0.mo33153l(intValue, num2.intValue());
                        }
                    } else if (ordinal != 4) {
                        ViewTreeObserver$OnPreDrawListenerC5184d viewTreeObserver$OnPreDrawListenerC5184d2 = ViewTreeObserver$OnPreDrawListenerC5184d.this;
                        int i2 = ViewTreeObserver$OnPreDrawListenerC5184d.f17783j0;
                        EmojiTextView m33641Y4 = viewTreeObserver$OnPreDrawListenerC5184d2.m33641Y4();
                        if (m33641Y4 != null && (m33641Y4 instanceof ExpandableEmojiTextView)) {
                            ExpandableEmojiTextView expandableEmojiTextView = (ExpandableEmojiTextView) m33641Y4;
                            if (!expandableEmojiTextView.m35119l() || expandableEmojiTextView.getCurrentLayoutStyle() != ExpandableEmojiTextView.LayoutStyle.EXPANDABLE) {
                                Integer valueOf2 = Integer.valueOf(viewTreeObserver$OnPreDrawListenerC5184d2.getAdapterPosition());
                                if (valueOf2.intValue() != -1) {
                                    z = false;
                                }
                                if (!z) {
                                    num = valueOf2;
                                }
                                if (num != null) {
                                    viewTreeObserver$OnPreDrawListenerC5184d2.f17817i0.mo33125n(num.intValue());
                                }
                            } else {
                                expandableEmojiTextView.setTag(Long.valueOf(viewTreeObserver$OnPreDrawListenerC5184d2.getItemId()));
                                ExpandableEmojiTextView.LayoutStyle layoutStyle = expandableEmojiTextView.f13026k;
                                ExpandableEmojiTextView.LayoutState layoutState = ExpandableEmojiTextView.LayoutState.EXPANDED;
                                expandableEmojiTextView.m35123h(layoutStyle, layoutState, false, Integer.MAX_VALUE);
                                s1.z.b.l<? super ExpandableEmojiTextView.LayoutState, s> lVar = expandableEmojiTextView.f13028m;
                                if (lVar != null) {
                                    s sVar = (s) lVar.d(layoutState);
                                }
                                viewTreeObserver$OnPreDrawListenerC5184d2.m33585v5(expandableEmojiTextView);
                            }
                        }
                    } else {
                        ViewTreeObserver$OnPreDrawListenerC5184d.this.f17817i0.mo33160Z0(str);
                    }
                } else {
                    ViewTreeObserver$OnPreDrawListenerC5184d.this.f17817i0.mo33164P0(str);
                }
            } else {
                ViewTreeObserver$OnPreDrawListenerC5184d.this.f17817i0.mo33161V0(str);
            }
        }
        return s.a;
    }
}
