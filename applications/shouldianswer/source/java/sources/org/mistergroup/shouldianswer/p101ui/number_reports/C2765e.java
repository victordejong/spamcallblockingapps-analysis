package org.mistergroup.shouldianswer.p101ui.number_reports;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.model.EnumC2439m;
import org.mistergroup.shouldianswer.model.communityDatabase.C2413d;
import org.mistergroup.shouldianswer.p097a.AbstractC2145bg;
import org.mistergroup.shouldianswer.utils.C3134x;
/* renamed from: org.mistergroup.shouldianswer.ui.number_reports.e */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/number_reports/e.class */
public final class C2765e extends RecyclerView.AbstractC0977w {

    /* renamed from: a */
    private final AbstractC2145bg f8235a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2765e(AbstractC2145bg abstractC2145bg) {
        super(abstractC2145bg.m5863d());
        C1694h.m3117b(abstractC2145bg, "binding");
        this.f8235a = abstractC2145bg;
    }

    /* renamed from: a */
    public final void m536a(C2758a c2758a) {
        C1694h.m3117b(c2758a, "item");
        C3134x c3134x = C3134x.f9269a;
        View d = this.f8235a.m5863d();
        C1694h.m3122a((Object) d, "binding.root");
        Context context = d.getContext();
        C1694h.m3122a((Object) context, "binding.root.context");
        ImageView imageView = this.f8235a.f5709c;
        C1694h.m3122a((Object) imageView, "binding.imgRating");
        C2413d m543a = c2758a.m543a();
        if (m543a == null) {
            C1694h.m3124a();
        }
        c3134x.m24b(context, imageView, m543a.m1118a());
        C2413d m543a2 = c2758a.m543a();
        if (m543a2 == null) {
            C1694h.m3124a();
        }
        String m1109d = m543a2.m1109d();
        EnumC2439m.C2440a c2440a = EnumC2439m.f7139w;
        C2413d m543a3 = c2758a.m543a();
        if (m543a3 == null) {
            C1694h.m3124a();
        }
        String m1015a = c2440a.m1015a(m543a3.m1113b());
        C2413d m543a4 = c2758a.m543a();
        if (m543a4 == null) {
            C1694h.m3124a();
        }
        String m1108e = m543a4.m1108e();
        String str = m1109d;
        String str2 = m1015a;
        String str3 = m1108e;
        if (!(m1109d.length() == 0)) {
            str = m1109d;
            str2 = m1015a;
            str3 = m1108e;
            if (m1108e.length() == 0) {
                str = m1109d;
                str2 = m1015a;
                str3 = m1108e;
                if (!(m1015a.length() == 0)) {
                    str3 = m1109d;
                    str = m1015a;
                    str2 = "";
                }
            }
        }
        String str4 = str;
        if (!(str2.length() == 0)) {
            if (!(str.length() == 0)) {
                str2 = str + " (" + str2 + ')';
            }
            str4 = str2;
        }
        AppCompatTextView appCompatTextView = this.f8235a.f5712f;
        C1694h.m3122a((Object) appCompatTextView, "binding.tvTitle");
        appCompatTextView.setText(str4);
        AppCompatTextView appCompatTextView2 = this.f8235a.f5710d;
        C1694h.m3122a((Object) appCompatTextView2, "binding.tvComment");
        appCompatTextView2.setText(str3);
        AppCompatTextView appCompatTextView3 = this.f8235a.f5711e;
        C1694h.m3122a((Object) appCompatTextView3, "binding.tvNick");
        C2413d m543a5 = c2758a.m543a();
        if (m543a5 == null) {
            C1694h.m3124a();
        }
        appCompatTextView3.setText(m543a5.m1111c());
    }
}
