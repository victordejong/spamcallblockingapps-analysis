package p459j.p460a.p533l;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
/* renamed from: j.a.l.h */
/* loaded from: classes2-dex2jar.jar:j/a/l/h.class */
public class C12940h extends BaseAdapter {

    /* renamed from: a */
    public LayoutInflater f29281a;

    /* renamed from: b */
    public String[] f29282b;

    /* renamed from: d */
    public int f29284d;

    /* renamed from: e */
    public Context f29285e;

    /* renamed from: c */
    public int f29283c = -1;

    /* renamed from: f */
    public boolean f29286f = false;

    /* renamed from: j.a.l.h$a */
    /* loaded from: classes2-dex2jar.jar:j/a/l/h$a.class */
    public class C12941a {

        /* renamed from: a */
        public TextView f29287a;

        /* renamed from: b */
        public ImageView f29288b;

        public C12941a(C12940h hVar) {
        }
    }

    public C12940h(Context context, String[] strArr, int i) {
        this.f29285e = context;
        this.f29281a = LayoutInflater.from(context);
        this.f29282b = strArr;
        this.f29284d = i;
    }

    /* renamed from: a */
    public int m4971a() {
        return this.f29283c;
    }

    /* renamed from: a */
    public void m4970a(int i) {
        this.f29283c = i;
    }

    /* renamed from: a */
    public boolean m4969a(boolean z) {
        if (this.f29286f == z) {
            return false;
        }
        this.f29286f = z;
        notifyDataSetChanged();
        return true;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f29282b.length;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f29282b[i];
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        C12941a aVar;
        boolean z;
        if (view == null || (view instanceof TextView)) {
            view = this.f29281a.inflate(R$layout.block_spam_report_item, viewGroup, false);
            aVar = new C12941a(this);
            aVar.f29287a = (TextView) view.findViewById(2131363272);
            aVar.f29288b = (ImageView) view.findViewById(R$id.image1);
            view.setTag(aVar);
        } else {
            aVar = (C12941a) view.getTag();
        }
        aVar.f29287a.setText(this.f29282b[i]);
        int i2 = this.f29283c;
        if (i2 == i) {
            boolean z2 = i == this.f29284d;
            view.setLayoutParams(new AbsListView.LayoutParams(-1, -1));
            aVar.f29288b.setVisibility(0);
            aVar.f29288b.setImageResource(z2 ? R$drawable.ic_gift_check : R$drawable.call_end_spam_select);
            aVar.f29287a.setTextColor(ContextCompat.getColor(this.f29285e, z2 ? 2131100157 : 2131100151));
        } else if (i2 == -1 || !(z = this.f29286f)) {
            view.setLayoutParams(new AbsListView.LayoutParams(-1, -1));
            aVar.f29288b.setVisibility(4);
            aVar.f29287a.setTextColor(ContextCompat.getColor(this.f29285e, 2131100119));
        } else if (z) {
            view.setLayoutParams(new AbsListView.LayoutParams(-1, 1));
        }
        if (i == getCount() - 1) {
            view.findViewById(R$id.line).setVisibility(8);
        } else {
            view.findViewById(R$id.line).setVisibility(0);
        }
        return view;
    }
}
