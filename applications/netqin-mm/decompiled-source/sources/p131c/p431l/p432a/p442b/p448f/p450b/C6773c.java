package p131c.p431l.p432a.p442b.p448f.p450b;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.netqin.p525cm.p528db.model.BlackWhiteListModel;
import java.util.List;
import p131c.p431l.p432a.p442b.p445c.C6727b;
/* renamed from: c.l.a.b.f.b.c */
/* loaded from: classes2-dex2jar.jar:c/l/a/b/f/b/c.class */
public class C6773c extends BaseAdapter {

    /* renamed from: a */
    public Context f20888a;

    /* renamed from: b */
    public List<BlackWhiteListModel> f20889b;

    /* renamed from: c */
    public Activity f20890c;

    /* renamed from: c.l.a.b.f.b.c$b */
    /* loaded from: classes2-dex2jar.jar:c/l/a/b/f/b/c$b.class */
    public class C6775b {

        /* renamed from: a */
        public TextView f20891a;

        /* renamed from: b */
        public TextView f20892b;

        public C6775b(C6773c cVar) {
        }
    }

    public C6773c(Context context, List<BlackWhiteListModel> list, Activity activity) {
        this.f20888a = context;
        this.f20889b = list;
        this.f20890c = activity;
        C6727b.m19968a(context);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f20889b.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f20889b.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        C6775b bVar;
        if (view == null) {
            view = LayoutInflater.from(this.f20888a).inflate(2131427375, (ViewGroup) null);
            bVar = new C6775b();
            bVar.f20891a = (TextView) view.findViewById(2131231223);
            bVar.f20892b = (TextView) view.findViewById(2131231214);
            view.setTag(bVar);
        } else {
            bVar = (C6775b) view.getTag();
        }
        BlackWhiteListModel blackWhiteListModel = this.f20889b.get(i);
        if (!TextUtils.isEmpty(blackWhiteListModel.getName())) {
            bVar.f20891a.setText(blackWhiteListModel.getName());
        } else {
            bVar.f20891a.setText(blackWhiteListModel.getAddress());
        }
        blackWhiteListModel.getAddress().equals("-1");
        bVar.f20892b.setText(blackWhiteListModel.getAddress());
        return view;
    }
}
