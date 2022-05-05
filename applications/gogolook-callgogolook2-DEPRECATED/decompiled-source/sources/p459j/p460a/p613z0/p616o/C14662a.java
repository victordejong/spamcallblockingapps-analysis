package p459j.p460a.p613z0.p616o;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.Spannable;
import android.text.method.LinkMovementMethod;
import android.text.method.MovementMethod;
import android.text.style.ClickableSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.URLSpan;
import android.view.MotionEvent;
import android.widget.TextView;
import androidx.annotation.ColorRes;
import androidx.core.app.NotificationCompat;
import androidx.core.content.ContextCompat;
import androidx.media2.exoplayer.external.text.ttml.TtmlNode;
import kotlin.Metadata;
import p459j.p460a.p582w0.C14191v;
import p626l.C14978j;
import p626l.C14985o;
import p626l.p631e0.C14949k;
import p626l.p632u.C15013i;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018�� \u001f2\u00020\u0001:\u0002\u001f B\u0013\b\u0007\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\"\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J$\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00170\u00162\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u000eH\u0002J \u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u000eH\u0002J \u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010\u001e\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u0012H\u0002R\u001e\u0010\u0005\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006!"}, m815d2 = {"Lgogolook/callgogolook2/view/method/WhoscallLinkMovementMethod;", "Landroid/text/method/LinkMovementMethod;", "onUrlClickListener", "Lgogolook/callgogolook2/view/method/WhoscallLinkMovementMethod$OnUrlClickListener;", "(Lgogolook/callgogolook2/view/method/WhoscallLinkMovementMethod$OnUrlClickListener;)V", "highlightColorResId", "", "getHighlightColorResId", "()I", "setHighlightColorResId", "(I)V", "hoveredColorSpan", "Landroid/text/style/ForegroundColorSpan;", "findClickableSpan", "Landroid/text/style/ClickableSpan;", "widget", "Landroid/widget/TextView;", "buffer", "Landroid/text/Spannable;", NotificationCompat.CATEGORY_EVENT, "Landroid/view/MotionEvent;", "getSpanTextAndUrl", "Lkotlin/Pair;", "", TtmlNode.TAG_SPAN, "highlightUrl", "", "spannable", "onTouchEvent", "", "removeUrlHighlight", "Companion", "OnUrlClickListener", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.z0.o.a */
/* loaded from: classes3-dex2jar.jar:j/a/z0/o/a.class */
public final class C14662a extends LinkMovementMethod {
    @ColorRes

    /* renamed from: a */
    public int f32745a;

    /* renamed from: b */
    public ForegroundColorSpan f32746b;

    /* renamed from: c */
    public final AbstractC14665c f32747c;

    /* renamed from: e */
    public static final C14664b f32744e = new C14664b(null);

    /* renamed from: d */
    public static final MovementMethod f32743d = new C14662a(new C14663a());

    /* renamed from: j.a.z0.o.a$a */
    /* loaded from: classes3-dex2jar.jar:j/a/z0/o/a$a.class */
    public static final class C14663a implements AbstractC14665c {
        @Override // p459j.p460a.p613z0.p616o.C14662a.AbstractC14665c
        /* renamed from: a */
        public void mo865a(Context context, String str, String str2) {
            C15149k.m377b(context, "context");
            C15149k.m377b(str, "text");
            C15149k.m377b(str2, "url");
            C14191v.m2257a(context, new Intent("android.intent.action.VIEW", Uri.parse(str2)), null, 2, null);
        }
    }

    /* renamed from: j.a.z0.o.a$b */
    /* loaded from: classes3-dex2jar.jar:j/a/z0/o/a$b.class */
    public static final class C14664b {
        public C14664b() {
        }

        public /* synthetic */ C14664b(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final MovementMethod m908a() {
            return C14662a.f32743d;
        }
    }

    /* renamed from: j.a.z0.o.a$c */
    /* loaded from: classes3-dex2jar.jar:j/a/z0/o/a$c.class */
    public interface AbstractC14665c {
        /* renamed from: a */
        void mo865a(Context context, String str, String str2);
    }

    public C14662a() {
        this(null, 1, null);
    }

    public C14662a(AbstractC14665c cVar) {
        this.f32747c = cVar;
        this.f32745a = 2131099957;
    }

    public /* synthetic */ C14662a(AbstractC14665c cVar, int i, C15145g gVar) {
        this((i & 1) != 0 ? null : cVar);
    }

    /* renamed from: a */
    public final ClickableSpan m909a(TextView textView, Spannable spannable, MotionEvent motionEvent) {
        int x = (int) motionEvent.getX();
        int totalPaddingLeft = textView.getTotalPaddingLeft();
        int scrollX = textView.getScrollX();
        int offsetForHorizontal = textView.getLayout().getOffsetForHorizontal(textView.getLayout().getLineForVertical((((int) motionEvent.getY()) - textView.getTotalPaddingTop()) + textView.getScrollY()), (x - totalPaddingLeft) + scrollX);
        ClickableSpan[] clickableSpanArr = (ClickableSpan[]) spannable.getSpans(offsetForHorizontal, offsetForHorizontal, ClickableSpan.class);
        return clickableSpanArr != null ? (ClickableSpan) C15013i.m585a(clickableSpanArr, 0) : null;
    }

    /* renamed from: a */
    public final C14978j<String, String> m911a(Spannable spannable, ClickableSpan clickableSpan) {
        String str;
        String obj = spannable.subSequence(spannable.getSpanStart(clickableSpan), spannable.getSpanEnd(clickableSpan)).toString();
        if (clickableSpan instanceof URLSpan) {
            String url = ((URLSpan) clickableSpan).getURL();
            C15149k.m383a((Object) url, "span.url");
            str = new C14949k("”$").m744b(new C14949k("^”").m744b(url, ""), "");
        } else {
            str = obj;
        }
        return C14985o.m644a(obj, str);
    }

    /* renamed from: a */
    public final void m913a(int i) {
        this.f32745a = i;
    }

    /* renamed from: a */
    public final void m912a(Spannable spannable) {
        ForegroundColorSpan foregroundColorSpan = this.f32746b;
        if (foregroundColorSpan != null) {
            spannable.removeSpan(foregroundColorSpan);
        }
    }

    /* renamed from: a */
    public final void m910a(TextView textView, Spannable spannable, ClickableSpan clickableSpan) {
        if (this.f32746b == null) {
            this.f32746b = new ForegroundColorSpan(ContextCompat.getColor(textView.getContext(), this.f32745a));
        }
        spannable.setSpan(this.f32746b, spannable.getSpanStart(clickableSpan), spannable.getSpanEnd(clickableSpan), 33);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00ce  */
    @Override // android.text.method.LinkMovementMethod, android.text.method.ScrollingMovementMethod, android.text.method.BaseMovementMethod, android.text.method.MovementMethod
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.widget.TextView r6, android.text.Spannable r7, android.view.MotionEvent r8) {
        /*
            Method dump skipped, instructions count: 218
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p613z0.p616o.C14662a.onTouchEvent(android.widget.TextView, android.text.Spannable, android.view.MotionEvent):boolean");
    }
}
