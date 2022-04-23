package p459j.p460a.p474c0.p483e.p487d;

import android.text.TextPaint;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.LayoutRes;
import com.gogolook.commonlib.view.IconFontTextView;
import gogolook.callgogolook2.R$id;
import p459j.p460a.p474c0.p483e.p487d.AbstractC11799s;
import p459j.p460a.p613z0.p617p.C14666a;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.c0.e.d.j */
/* loaded from: classes2-dex2jar.jar:j/a/c0/e/d/j.class */
public final class C11772j extends C14666a {

    /* renamed from: a */
    public AbstractC11799s.EnumC11800a f26411a = AbstractC11799s.EnumC11800a.SINGLE;

    /* renamed from: b */
    public final TextView f26412b;

    /* renamed from: c */
    public final IconFontTextView f26413c;

    /* renamed from: d */
    public final TextView f26414d;

    /* renamed from: e */
    public TextView f26415e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11772j(ViewGroup viewGroup, @LayoutRes int i) {
        super(viewGroup, i);
        C15149k.m377b(viewGroup, "parent");
        View findViewById = this.itemView.findViewById(R$id.iftv_icon);
        C15149k.m383a((Object) findViewById, "itemView.findViewById(R.id.iftv_icon)");
        this.f26413c = (IconFontTextView) findViewById;
        View findViewById2 = this.itemView.findViewById(R$id.tv_url_link);
        TextView textView = (TextView) findViewById2;
        TextPaint paint = textView.getPaint();
        C15149k.m383a((Object) paint, "paint");
        paint.setUnderlineText(true);
        C15149k.m383a((Object) findViewById2, "itemView.findViewById<Te…lineText = true\n        }");
        this.f26412b = textView;
        View findViewById3 = this.itemView.findViewById(R$id.tv_description);
        C15149k.m383a((Object) findViewById3, "itemView.findViewById(R.id.tv_description)");
        this.f26414d = (TextView) findViewById3;
        View findViewById4 = this.itemView.findViewById(R$id.tv_warning);
        C15149k.m383a((Object) findViewById4, "itemView.findViewById(R.id.tv_warning)");
        this.f26415e = (TextView) findViewById4;
    }

    /* renamed from: a */
    public final void m8329a(AbstractC11799s.EnumC11800a aVar) {
        C15149k.m377b(aVar, "<set-?>");
        this.f26411a = aVar;
    }

    /* renamed from: b */
    public final TextView m8328b() {
        return this.f26414d;
    }

    /* renamed from: c */
    public final IconFontTextView m8327c() {
        return this.f26413c;
    }

    /* renamed from: d */
    public final AbstractC11799s.EnumC11800a m8326d() {
        return this.f26411a;
    }

    /* renamed from: e */
    public final TextView m8325e() {
        return this.f26412b;
    }

    /* renamed from: f */
    public final TextView m8324f() {
        return this.f26415e;
    }
}
