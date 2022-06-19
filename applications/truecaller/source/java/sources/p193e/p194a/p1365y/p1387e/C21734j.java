package p193e.p194a.p1365y.p1387e;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import com.truecaller.flashsdk.C3909R;
import java.util.List;
import java.util.Objects;
import p193e.p194a.p1365y.p1387e.C21734j;
import p193e.p194a.p1365y.p1387e.C21737k;
/* renamed from: e.a.y.e.j */
/* loaded from: classes9-dex2jar.jar:e/a/y/e/j.class */
public class C21734j extends ArrayAdapter<C21733i> {

    /* renamed from: a */
    public C21737k.AbstractC21738a f60542a;

    /* renamed from: b */
    public LayoutInflater f60543b;

    /* renamed from: e.a.y.e.j$b */
    /* loaded from: classes9-dex2jar.jar:e/a/y/e/j$b.class */
    public class C21736b {

        /* renamed from: a */
        public final TextView f60544a;

        public C21736b(View view, C21735a c21735a) {
            C21734j.this = r5;
            this.f60544a = (TextView) view.findViewById(C3909R.C3911id.icon);
        }
    }

    public C21734j(Context context, List<C21733i> list) {
        super(context, C3909R.layout.adapter_emoji_item, list);
        this.f60543b = LayoutInflater.from(context);
    }

    public C21734j(Context context, C21733i[] c21733iArr) {
        super(context, C3909R.layout.adapter_emoji_item, c21733iArr);
        this.f60543b = LayoutInflater.from(context);
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        C21736b c21736b;
        if (view == null) {
            view = this.f60543b.inflate(C3909R.layout.adapter_emoji_item, viewGroup, false);
            c21736b = new C21736b(view, null);
            view.setTag(c21736b);
        } else {
            c21736b = (C21736b) view.getTag();
        }
        C21733i item = getItem(i);
        c21736b.f60544a.setText(item.f60541a);
        c21736b.f60544a.setTag(item);
        final C21736b c21736b2 = c21736b;
        c21736b.f60544a.setOnClickListener(new View.OnClickListener() { // from class: e.a.y.e.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                C21734j.C21736b c21736b3 = C21734j.C21736b.this;
                Objects.requireNonNull(c21736b3);
                C21734j.this.f60542a.mo9141s((C21733i) view2.getTag());
            }
        });
        return view;
    }
}
