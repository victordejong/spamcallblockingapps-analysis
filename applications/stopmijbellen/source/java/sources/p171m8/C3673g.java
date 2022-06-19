package p171m8;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.Button;
import java.util.ArrayList;
import p160l8.View$OnClickListenerC3534q;
/* renamed from: m8.g */
/* loaded from: classes2-dex2jar.jar:m8/g.class */
public class C3673g extends ArrayAdapter<C3670d> {

    /* renamed from: a */
    public static final /* synthetic */ int f12024a = 0;

    public C3673g(Context context, ArrayList<C3670d> arrayList) {
        super(context, 0, arrayList);
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        C3670d item = getItem(i);
        View view2 = view;
        if (view == null) {
            view2 = LayoutInflater.from(getContext()).inflate(2131492949, viewGroup, false);
        }
        item.m1908b(view2);
        ((Button) view2.findViewById(2131296550)).setOnClickListener(new View$OnClickListenerC3671e(this, item, 0));
        ((Button) view2.findViewById(2131296727)).setOnClickListener(new View$OnClickListenerC3672f(this, item, 0));
        if (item.m1905e()) {
            view2.setOnClickListener(new View$OnClickListenerC3534q(item, 1));
        } else {
            view2.setOnClickListener(null);
        }
        return view2;
    }
}
