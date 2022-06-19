package p193e.p194a.p1114o5.p1119c2;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import com.truecaller.C2752R;
/* renamed from: e.a.o5.c2.f */
/* loaded from: classes15-dex2jar.jar:e/a/o5/c2/f.class */
public class C18967f extends ArrayAdapter<String> {
    public C18967f(Context context, String[] strArr) {
        super(context, 0, strArr);
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View view2 = view;
        if (view == null) {
            view2 = LayoutInflater.from(getContext()).inflate(C2752R.layout.view_carrier_menu_item, viewGroup, false);
        }
        ((TextView) view2.findViewById(2131366469)).setText(getItem(i));
        view2.findViewById(2131363364).setVisibility(i != getCount() - 1 ? 0 : 8);
        return view2;
    }
}
