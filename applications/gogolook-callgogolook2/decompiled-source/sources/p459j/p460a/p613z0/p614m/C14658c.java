package p459j.p460a.p613z0.p614m;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import java.util.List;
import p626l.C14986p;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.z0.m.c */
/* loaded from: classes3-dex2jar.jar:j/a/z0/m/c.class */
public final class C14658c extends AbstractC14649a {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14658c(List<String> list, int i) {
        super(list, i);
        C15149k.m377b(list, "list");
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View view2 = null;
        Context context = viewGroup != null ? viewGroup.getContext() : null;
        View view3 = view;
        if (view == null) {
            view3 = LayoutInflater.from(context).inflate(R$layout.offlinedb_rule_pop_menu_item, (ViewGroup) null);
        }
        if (view3 != null) {
            view2 = view3.findViewById(R$id.tvItem);
        }
        if (view2 != null) {
            TextView textView = (TextView) view2;
            View findViewById = view3.findViewById(R$id.ivSelected);
            if (findViewById != null) {
                ImageView imageView = (ImageView) findViewById;
                textView.setText(m931a().get(i));
                if (i == m930b()) {
                    imageView.setVisibility(0);
                } else {
                    imageView.setVisibility(8);
                }
                return view3;
            }
            throw new C14986p("null cannot be cast to non-null type android.widget.ImageView");
        }
        throw new C14986p("null cannot be cast to non-null type android.widget.TextView");
    }
}
