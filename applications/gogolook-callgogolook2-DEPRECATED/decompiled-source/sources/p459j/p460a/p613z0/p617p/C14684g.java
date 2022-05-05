package p459j.p460a.p613z0.p617p;

import android.content.Context;
import android.text.SpannableString;
import android.text.method.MovementMethod;
import android.text.style.URLSpan;
import android.widget.TextView;
import androidx.annotation.ColorRes;
import androidx.core.text.HtmlCompat;
import androidx.media2.exoplayer.external.text.ttml.TtmlNode;
import gogolook.callgogolook2.view.style.WhoscallUrlSpan;
import kotlin.Metadata;
import p459j.p460a.p613z0.p616o.C14662a;
import p626l.C14986p;
import p626l.C14989s;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��.\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\u001aP\u0010��\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042:\b\u0002\u0010\u0005\u001a4\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\u0003\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\t\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0006H\u0007\u001a}\u0010��\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042!\u0010\n\u001a\u001d\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\t\u0012\u0004\u0012\u00020\f0\u000b2\b\b\u0001\u0010\r\u001a\u00020\u000e2:\b\u0002\u0010\u0005\u001a4\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\u0003\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\t\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0006H\u0007¨\u0006\u000f"}, m815d2 = {"setHtmlText", "", "Landroid/widget/TextView;", "text", "", "onUrlClickListener", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "url", "clickableSpanFactory", "Lkotlin/Function1;", "Lgogolook/callgogolook2/view/style/WhoscallUrlSpan;", "clickEffectColorResId", "", "whoscall_rcRelease"}, m814k = 2, m813mv = {1, 1, 13})
/* renamed from: j.a.z0.p.g */
/* loaded from: classes3-dex2jar.jar:j/a/z0/p/g.class */
public final class C14684g {

    /* renamed from: j.a.z0.p.g$a */
    /* loaded from: classes3-dex2jar.jar:j/a/z0/p/g$a.class */
    public static final class C14685a implements C14662a.AbstractC14665c {

        /* renamed from: a */
        public final /* synthetic */ AbstractC15122p f32793a;

        public C14685a(AbstractC15122p pVar) {
            this.f32793a = pVar;
        }

        @Override // p459j.p460a.p613z0.p616o.C14662a.AbstractC14665c
        /* renamed from: a */
        public void mo865a(Context context, String str, String str2) {
            C15149k.m377b(context, "context");
            C15149k.m377b(str, "text");
            C15149k.m377b(str2, "url");
            this.f32793a.invoke(str, str2);
        }
    }

    /* renamed from: j.a.z0.p.g$b */
    /* loaded from: classes3-dex2jar.jar:j/a/z0/p/g$b.class */
    public static final class C14686b implements C14662a.AbstractC14665c {

        /* renamed from: a */
        public final /* synthetic */ AbstractC15122p f32794a;

        public C14686b(AbstractC15122p pVar) {
            this.f32794a = pVar;
        }

        @Override // p459j.p460a.p613z0.p616o.C14662a.AbstractC14665c
        /* renamed from: a */
        public void mo865a(Context context, String str, String str2) {
            C15149k.m377b(context, "context");
            C15149k.m377b(str, "text");
            C15149k.m377b(str2, "url");
            this.f32794a.invoke(str, str2);
        }
    }

    /* renamed from: a */
    public static final void m870a(TextView textView, String str) {
        m866a(textView, str, (AbstractC15122p) null, 2, (Object) null);
    }

    /* renamed from: a */
    public static final void m869a(TextView textView, String str, AbstractC15118l<? super String, WhoscallUrlSpan> lVar, @ColorRes int i, AbstractC15122p<? super String, ? super String, C14989s> pVar) {
        MovementMethod movementMethod;
        C15149k.m377b(textView, "receiver$0");
        C15149k.m377b(str, "text");
        C15149k.m377b(lVar, "clickableSpanFactory");
        if (pVar == null) {
            MovementMethod a = C14662a.f32744e.m908a();
            if (a != null) {
                ((C14662a) a).m913a(i);
                movementMethod = a;
            } else {
                throw new C14986p("null cannot be cast to non-null type gogolook.callgogolook2.view.method.WhoscallLinkMovementMethod");
            }
        } else {
            C14662a aVar = new C14662a(new C14686b(pVar));
            aVar.m913a(i);
            movementMethod = aVar;
        }
        textView.setMovementMethod(movementMethod);
        SpannableString spannableString = new SpannableString(HtmlCompat.fromHtml(str, 63));
        URLSpan[] uRLSpanArr = (URLSpan[]) spannableString.getSpans(0, spannableString.length(), URLSpan.class);
        if (uRLSpanArr != null) {
            for (URLSpan uRLSpan : uRLSpanArr) {
                int spanStart = spannableString.getSpanStart(uRLSpan);
                int spanEnd = spannableString.getSpanEnd(uRLSpan);
                spannableString.removeSpan(uRLSpan);
                C15149k.m383a((Object) uRLSpan, TtmlNode.TAG_SPAN);
                String url = uRLSpan.getURL();
                C15149k.m383a((Object) url, "span.url");
                spannableString.setSpan(lVar.invoke(url), spanStart, spanEnd, 0);
            }
        }
        textView.setText(spannableString);
    }

    /* renamed from: a */
    public static /* synthetic */ void m868a(TextView textView, String str, AbstractC15118l lVar, int i, AbstractC15122p pVar, int i2, Object obj) {
        if ((i2 & 8) != 0) {
            pVar = null;
        }
        m869a(textView, str, lVar, i, pVar);
    }

    /* renamed from: a */
    public static final void m867a(TextView textView, String str, AbstractC15122p<? super String, ? super String, C14989s> pVar) {
        C15149k.m377b(textView, "receiver$0");
        C15149k.m377b(str, "text");
        textView.setMovementMethod(pVar == null ? C14662a.f32744e.m908a() : new C14662a(new C14685a(pVar)));
        SpannableString spannableString = new SpannableString(HtmlCompat.fromHtml(str, 63));
        URLSpan[] uRLSpanArr = (URLSpan[]) spannableString.getSpans(0, spannableString.length(), URLSpan.class);
        if (uRLSpanArr != null) {
            for (URLSpan uRLSpan : uRLSpanArr) {
                int spanStart = spannableString.getSpanStart(uRLSpan);
                int spanEnd = spannableString.getSpanEnd(uRLSpan);
                spannableString.removeSpan(uRLSpan);
                C15149k.m383a((Object) uRLSpan, TtmlNode.TAG_SPAN);
                String url = uRLSpan.getURL();
                C15149k.m383a((Object) url, "span.url");
                spannableString.setSpan(new WhoscallUrlSpan(url, 0, false, 6, null), spanStart, spanEnd, 0);
            }
        }
        textView.setText(spannableString);
    }

    /* renamed from: a */
    public static /* synthetic */ void m866a(TextView textView, String str, AbstractC15122p pVar, int i, Object obj) {
        if ((i & 2) != 0) {
            pVar = null;
        }
        m867a(textView, str, pVar);
    }
}
