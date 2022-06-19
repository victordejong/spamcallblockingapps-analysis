package p193e.p194a.p294b.p331b.p334c;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import com.razorpay.AnalyticsConstants;
import com.truecaller.bizmon.C3478R;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import s1.z.c.l;
/* renamed from: e.a.b.b.c.f */
/* loaded from: classes6-dex2jar.jar:e/a/b/b/c/f.class */
public final class C7879f extends ArrayAdapter<Integer> {
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C7879f(android.content.Context r7, int r8) {
        /*
            r6 = this;
            r0 = r7
            java.lang.String r1 = "context"
            s1.z.c.l.e(r0, r1)
            int r0 = com.truecaller.bizmon.C3478R.string.BusinessProfile_Size
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            java.util.List r0 = p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3962T1(r0)
            r9 = r0
            com.truecaller.bizmon.ui.profile.BusinessSize[] r0 = com.truecaller.bizmon.p152ui.profile.BusinessSize.values()
            r10 = r0
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r2 = 5
            r1.<init>(r2)
            r11 = r0
            r0 = 0
            r12 = r0
        L22:
            r0 = r12
            r1 = 5
            if (r0 >= r1) goto L3f
            r0 = r11
            r1 = r10
            r2 = r12
            r1 = r1[r2]
            int r1 = r1.getOption()
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            boolean r0 = r0.add(r1)
            int r12 = r12 + 1
            goto L22
        L3f:
            r0 = r6
            r1 = r7
            r2 = r8
            r3 = r9
            r4 = r11
            java.util.List r3 = s1.u.i.l0(r3, r4)
            r0.<init>(r1, r2, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p294b.p331b.p334c.C7879f.<init>(android.content.Context, int):void");
    }

    /* renamed from: a */
    public final int m29196a(int i) {
        return i != 0 ? C19291g.m13612L(getContext(), C3478R.attr.theme_textColorPrimary) : C19291g.m13612L(getContext(), C3478R.attr.theme_textColorPlaceholder);
    }

    @Override // android.widget.ArrayAdapter, android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i, View view, ViewGroup viewGroup) {
        l.e(viewGroup, "parent");
        View view2 = super.getView(i, view, viewGroup);
        l.d(view2, "super.getView(position, convertView, parent)");
        TextView textView = (TextView) view2.findViewById(16908308);
        Context context = textView.getContext();
        Integer item = getItem(i);
        if (item != null) {
            l.d(item, "getItem(position) ?: thr…llegalArgumentException()");
            textView.setText(context.getString(item.intValue()));
            textView.setTextColor(m29196a(i));
            return view2;
        }
        throw new IllegalArgumentException();
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        l.e(viewGroup, "parent");
        View view2 = super.getView(i, view, viewGroup);
        l.d(view2, "super.getView(position, convertView, parent)");
        TextView textView = (TextView) view2.findViewById(16908308);
        Context context = textView.getContext();
        Integer item = getItem(i);
        if (item != null) {
            l.d(item, "getItem(position) ?: thr…llegalArgumentException()");
            textView.setText(context.getString(item.intValue()));
            Context context2 = textView.getContext();
            l.d(context2, AnalyticsConstants.CONTEXT);
            textView.setTextSize(0, context2.getResources().getDimension(C3478R.dimen.business_profile_hint_text_size));
            textView.setTextColor(m29196a(i));
            view2.setPaddingRelative(0, view2.getPaddingTop(), view2.getPaddingRight(), view2.getPaddingBottom());
            return view2;
        }
        throw new IllegalArgumentException();
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i) {
        return i != 0;
    }
}
