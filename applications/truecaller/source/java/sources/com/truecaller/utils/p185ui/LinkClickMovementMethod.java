package com.truecaller.utils.p185ui;

import android.content.Context;
import android.text.Layout;
import android.text.Spannable;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.util.Patterns;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.widget.TextView;
import com.razorpay.AnalyticsConstants;
import java.util.regex.Pattern;
import kotlin.Metadata;
import p193e.p194a.p1129p5.p1136w0.C19348b;
import s1.s;
import s1.z.b.r;
import s1.z.c.l;
/* renamed from: com.truecaller.utils.ui.LinkClickMovementMethod */
/* loaded from: classes15-dex2jar.jar:com/truecaller/utils/ui/LinkClickMovementMethod.class */
public final class LinkClickMovementMethod extends LinkMovementMethod {

    /* renamed from: a */
    public final Pattern f15965a = Pattern.compile("(^@.+)");

    /* renamed from: b */
    public final Pattern f15966b = Pattern.compile("(^truecaller://.+)");

    /* renamed from: c */
    public final GestureDetector f15967c;

    /* renamed from: d */
    public TextView f15968d;

    /* renamed from: e */
    public Spannable f15969e;

    /* renamed from: f */
    public final r<String, Integer, LinkType, ClickableSpan, s> f15970f;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\t\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/truecaller/utils/ui/LinkClickMovementMethod$LinkType;", "", "<init>", "(Ljava/lang/String;I)V", "PHONE", "WEB_URL", "EMAIL_ADDRESS", "MENTION", "DEEPLINK", "NONE", "utils_release"}, k = 1, mv = {1, 4, 1})
    /* renamed from: com.truecaller.utils.ui.LinkClickMovementMethod$LinkType */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/utils/ui/LinkClickMovementMethod$LinkType.class */
    public enum LinkType {
        PHONE,
        WEB_URL,
        EMAIL_ADDRESS,
        MENTION,
        DEEPLINK,
        NONE
    }

    /* renamed from: com.truecaller.utils.ui.LinkClickMovementMethod$a */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/utils/ui/LinkClickMovementMethod$a.class */
    public final class C4715a extends GestureDetector.SimpleOnGestureListener {
        public C4715a() {
            LinkClickMovementMethod.this = r4;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onDown(MotionEvent motionEvent) {
            l.e(motionEvent, "event");
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            ClickableSpan clickableSpan;
            l.e(motionEvent, "event");
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            int totalPaddingLeft = LinkClickMovementMethod.m34469b(LinkClickMovementMethod.this).getTotalPaddingLeft();
            int totalPaddingTop = LinkClickMovementMethod.m34469b(LinkClickMovementMethod.this).getTotalPaddingTop();
            int scrollX = LinkClickMovementMethod.m34469b(LinkClickMovementMethod.this).getScrollX();
            int scrollY = LinkClickMovementMethod.m34469b(LinkClickMovementMethod.this).getScrollY();
            Layout layout = LinkClickMovementMethod.m34469b(LinkClickMovementMethod.this).getLayout();
            int offsetForHorizontal = layout.getOffsetForHorizontal(layout.getLineForVertical(scrollY + (y - totalPaddingTop)), scrollX + (x - totalPaddingLeft));
            ClickableSpan[] clickableSpanArr = (ClickableSpan[]) LinkClickMovementMethod.m34470a(LinkClickMovementMethod.this).getSpans(offsetForHorizontal, offsetForHorizontal, ClickableSpan.class);
            boolean z = true;
            if (clickableSpanArr != null) {
                z = clickableSpanArr.length == 0;
            }
            if (z) {
                LinkClickMovementMethod.this.f15970f.q("", -1, LinkType.NONE, (Object) null);
                return false;
            }
            int length = clickableSpanArr.length;
            int i = 0;
            while (true) {
                clickableSpan = null;
                if (i >= length) {
                    break;
                }
                clickableSpan = clickableSpanArr[i];
                if (clickableSpan instanceof C19348b) {
                    break;
                }
                i++;
            }
            ClickableSpan clickableSpan2 = clickableSpan != null ? clickableSpan : clickableSpanArr[0];
            int spanStart = LinkClickMovementMethod.m34470a(LinkClickMovementMethod.this).getSpanStart(clickableSpan2);
            String obj = LinkClickMovementMethod.m34470a(LinkClickMovementMethod.this).subSequence(spanStart, LinkClickMovementMethod.m34470a(LinkClickMovementMethod.this).getSpanEnd(clickableSpan2)).toString();
            LinkClickMovementMethod.this.f15970f.q(obj, Integer.valueOf(spanStart), Patterns.PHONE.matcher(obj).matches() ? LinkType.PHONE : Patterns.WEB_URL.matcher(obj).matches() ? LinkType.WEB_URL : Patterns.EMAIL_ADDRESS.matcher(obj).matches() ? LinkType.EMAIL_ADDRESS : LinkClickMovementMethod.this.f15965a.matcher(obj).matches() ? LinkType.MENTION : LinkClickMovementMethod.this.f15966b.matcher(obj).matches() ? LinkType.DEEPLINK : LinkType.NONE, clickableSpan2);
            return false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public LinkClickMovementMethod(Context context, r<? super String, ? super Integer, ? super LinkType, ? super ClickableSpan, s> rVar) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(rVar, "callback");
        this.f15970f = rVar;
        this.f15967c = new GestureDetector(context, new C4715a());
    }

    /* renamed from: a */
    public static final /* synthetic */ Spannable m34470a(LinkClickMovementMethod linkClickMovementMethod) {
        Spannable spannable = linkClickMovementMethod.f15969e;
        if (spannable != null) {
            return spannable;
        }
        l.l("spannable");
        throw null;
    }

    /* renamed from: b */
    public static final /* synthetic */ TextView m34469b(LinkClickMovementMethod linkClickMovementMethod) {
        TextView textView = linkClickMovementMethod.f15968d;
        if (textView != null) {
            return textView;
        }
        l.l("textView");
        throw null;
    }

    @Override // android.text.method.LinkMovementMethod, android.text.method.ScrollingMovementMethod, android.text.method.BaseMovementMethod, android.text.method.MovementMethod
    public boolean onTouchEvent(TextView textView, Spannable spannable, MotionEvent motionEvent) {
        l.e(textView, "widget");
        l.e(spannable, "buffer");
        l.e(motionEvent, "event");
        this.f15968d = textView;
        this.f15969e = spannable;
        this.f15967c.onTouchEvent(motionEvent);
        return false;
    }
}
