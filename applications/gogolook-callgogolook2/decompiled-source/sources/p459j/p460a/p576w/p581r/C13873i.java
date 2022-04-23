package p459j.p460a.p576w.p581r;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import gogolook.callgogolook2.R$id;
import p459j.p460a.p576w.p578o.C13796c;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.w.r.i */
/* loaded from: classes2-dex2jar.jar:j/a/w/r/i.class */
public final class C13873i extends RecyclerView.ViewHolder {

    /* renamed from: a */
    public final ImageView f31150a;

    /* renamed from: b */
    public final TextView f31151b;

    /* renamed from: c */
    public final TextView f31152c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13873i(View view) {
        super(view);
        C15149k.m377b(view, "itemView");
        this.f31150a = (ImageView) view.findViewById(R$id.iv_intro_image);
        this.f31151b = (TextView) view.findViewById(R$id.tv_intro_title);
        this.f31152c = (TextView) view.findViewById(R$id.tv_intro_content);
    }

    /* renamed from: a */
    public final void m3268a(C13796c cVar) {
        C15149k.m377b(cVar, "iapIntro");
        this.f31150a.setImageResource(cVar.m3439b());
        TextView textView = this.f31151b;
        C15149k.m383a((Object) textView, "title");
        textView.setText(cVar.m3438c());
        TextView textView2 = this.f31152c;
        C15149k.m383a((Object) textView2, "content");
        textView2.setText(cVar.m3440a());
    }
}
