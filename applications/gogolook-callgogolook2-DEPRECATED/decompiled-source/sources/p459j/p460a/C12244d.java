package p459j.p460a;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Map;
import p081h.p119d.p120a.C5769g;
import p081h.p119d.p120a.C5776l;
import p459j.p460a.p582w0.C14217x3;
/* renamed from: j.a.d */
/* loaded from: classes2-dex2jar.jar:j/a/d.class */
public class C12244d extends BaseAdapter {

    /* renamed from: a */
    public LayoutInflater f27612a;

    /* renamed from: b */
    public Context f27613b;

    /* renamed from: c */
    public ArrayList<Map<EnumC12254e, String>> f27614c = new ArrayList<>();

    /* renamed from: d */
    public SimpleDateFormat f27615d = new SimpleDateFormat("yyyy/MM/dd");

    /* renamed from: e */
    public AbstractC12248d f27616e;

    /* renamed from: j.a.d$a */
    /* loaded from: classes2-dex2jar.jar:j/a/d$a.class */
    public class View$OnClickListenerC12245a implements View.OnClickListener {
        public View$OnClickListenerC12245a(C12244d dVar) {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ((View) view.getTag()).performLongClick();
        }
    }

    /* renamed from: j.a.d$b */
    /* loaded from: classes2-dex2jar.jar:j/a/d$b.class */
    public class View$OnClickListenerC12246b implements View.OnClickListener {
        public View$OnClickListenerC12246b(C12244d dVar) {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ((View) view.getTag()).performLongClick();
        }
    }

    /* renamed from: j.a.d$c */
    /* loaded from: classes2-dex2jar.jar:j/a/d$c.class */
    public class View$OnClickListenerC12247c implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f27617a;

        public View$OnClickListenerC12247c(int i) {
            this.f27617a = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (C12244d.this.f27616e != null) {
                C12244d.this.f27616e.mo6540a(this.f27617a);
            }
        }
    }

    /* renamed from: j.a.d$d */
    /* loaded from: classes2-dex2jar.jar:j/a/d$d.class */
    public interface AbstractC12248d {
        /* renamed from: a */
        void mo6540a(int i);
    }

    /* renamed from: j.a.d$e */
    /* loaded from: classes2-dex2jar.jar:j/a/d$e.class */
    public class C12249e {

        /* renamed from: a */
        public RelativeLayout f27619a;

        /* renamed from: b */
        public TextView f27620b;

        /* renamed from: c */
        public TextView f27621c;

        /* renamed from: d */
        public TextView f27622d;

        /* renamed from: e */
        public TextView f27623e;

        /* renamed from: f */
        public ImageView f27624f;

        /* renamed from: g */
        public ImageView f27625g;

        /* renamed from: h */
        public ImageView f27626h;

        /* renamed from: i */
        public ImageView f27627i;

        public C12249e(C12244d dVar) {
        }
    }

    public C12244d(Context context, AbstractC12248d dVar) {
        this.f27613b = context;
        this.f27612a = LayoutInflater.from(context);
        this.f27616e = dVar;
    }

    /* renamed from: a */
    public void m6543a() {
        ArrayList<Map<EnumC12254e, String>> arrayList = this.f27614c;
        if (arrayList != null) {
            arrayList.clear();
        }
    }

    /* renamed from: a */
    public void m6541a(ArrayList<Map<EnumC12254e, String>> arrayList) {
        ArrayList<Map<EnumC12254e, String>> arrayList2 = this.f27614c;
        if (arrayList2 != null) {
            arrayList2.clear();
            this.f27614c.addAll(arrayList);
        }
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f27614c.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f27614c.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        C12249e eVar;
        Map<EnumC12254e, String> map = this.f27614c.get(i);
        if (view == null) {
            view = this.f27612a.inflate(R$layout.newscenter_listitem, (ViewGroup) null);
            eVar = new C12249e(this);
            LinearLayout linearLayout = (LinearLayout) view.findViewById(R$id.ll_whole);
            eVar.f27619a = (RelativeLayout) view.findViewById(R$id.rl_banner);
            eVar.f27620b = (TextView) view.findViewById(R$id.tv_title);
            eVar.f27621c = (TextView) view.findViewById(R$id.tv_msg);
            eVar.f27623e = (TextView) view.findViewById(R$id.tv_date);
            eVar.f27622d = (TextView) view.findViewById(R$id.tv_action_btn);
            eVar.f27624f = (ImageView) view.findViewById(R$id.iv_close);
            eVar.f27625g = (ImageView) view.findViewById(R$id.iv_banner_content);
            eVar.f27626h = (ImageView) view.findViewById(R$id.iv_banner_close);
            eVar.f27627i = (ImageView) view.findViewById(R$id.iv_news);
            view.setTag(eVar);
        } else {
            eVar = (C12249e) view.getTag();
        }
        String str = map.get(EnumC12254e.IMAGE);
        int i2 = 0;
        if (!TextUtils.isEmpty(str)) {
            eVar.f27619a.setVisibility(0);
            eVar.f27624f.setVisibility(8);
            C5769g<String> a = C5776l.m24470c(this.f27613b).m24450a(str);
            a.m24529i();
            a.mo24518a(eVar.f27625g);
            eVar.f27626h.setTag(view);
            eVar.f27626h.setOnClickListener(new View$OnClickListenerC12245a(this));
        } else {
            eVar.f27619a.setVisibility(8);
            eVar.f27624f.setVisibility(0);
            eVar.f27624f.setTag(view);
            eVar.f27624f.setOnClickListener(new View$OnClickListenerC12246b(this));
        }
        String str2 = map.get(EnumC12254e.BUTTON_TEXT);
        if (TextUtils.isEmpty(map.get(EnumC12254e.BUTTON_LINK)) || TextUtils.isEmpty(str2)) {
            eVar.f27622d.setVisibility(8);
        } else {
            eVar.f27622d.setVisibility(0);
            eVar.f27622d.setText(str2);
            eVar.f27622d.setOnClickListener(new View$OnClickListenerC12247c(i));
        }
        eVar.f27620b.setText(map.get(EnumC12254e.TITLE));
        eVar.f27621c.setText(map.get(EnumC12254e.CONTENT));
        eVar.f27623e.setText(this.f27615d.format(Long.valueOf(Long.parseLong(map.get(EnumC12254e.CREATETIME)))));
        ImageView imageView = eVar.f27627i;
        if (!"0".equals(map.get(EnumC12254e.READ))) {
            i2 = 8;
        }
        imageView.setVisibility(i2);
        eVar.f27620b.setGravity(16);
        eVar.f27620b.setMinHeight(C14217x3.m2201a(28.0f));
        return view;
    }
}
