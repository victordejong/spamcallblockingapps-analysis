package p459j.p460a.p613z0;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.view.RecycleSafeImageView;
import java.util.HashSet;
import p459j.p460a.p582w0.C14123p4;
import p459j.p460a.p582w0.C14206w4;
/* renamed from: j.a.z0.k */
/* loaded from: classes3-dex2jar.jar:j/a/z0/k.class */
public class DialogC14636k extends Dialog {

    /* renamed from: a */
    public TextView f32681a;

    /* renamed from: b */
    public TextView f32682b;

    /* renamed from: c */
    public TextView f32683c;

    /* renamed from: d */
    public TextView f32684d;

    /* renamed from: e */
    public View f32685e;

    /* renamed from: f */
    public View f32686f;

    /* renamed from: g */
    public View f32687g;

    /* renamed from: h */
    public ListView f32688h;

    /* renamed from: i */
    public DialogInterface.OnClickListener f32689i;

    /* renamed from: j */
    public DialogInterface.OnClickListener f32690j;

    /* renamed from: k */
    public int f32691k;

    /* renamed from: l */
    public int f32692l;

    /* renamed from: m */
    public boolean f32693m;

    /* renamed from: n */
    public int f32694n;

    /* renamed from: o */
    public HashSet<Integer> f32695o;

    /* renamed from: p */
    public String[] f32696p;

    /* renamed from: q */
    public Boolean f32697q;

    /* renamed from: r */
    public DialogC14636k f32698r;

    /* renamed from: s */
    public boolean f32699s;

    /* renamed from: t */
    public boolean f32700t;

    /* renamed from: j.a.z0.k$a */
    /* loaded from: classes3-dex2jar.jar:j/a/z0/k$a.class */
    public class View$OnClickListenerC14637a implements View.OnClickListener {
        public View$OnClickListenerC14637a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DialogC14636k.this.f32698r.dismiss();
        }
    }

    /* renamed from: j.a.z0.k$b */
    /* loaded from: classes3-dex2jar.jar:j/a/z0/k$b.class */
    public class View$OnClickListenerC14638b implements View.OnClickListener {
        public View$OnClickListenerC14638b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DialogC14636k kVar = DialogC14636k.this;
            DialogInterface.OnClickListener onClickListener = kVar.f32689i;
            if (onClickListener != null) {
                onClickListener.onClick(kVar.f32698r, -1);
            }
            if (DialogC14636k.this.f32697q.booleanValue()) {
                DialogC14636k.this.dismiss();
            }
        }
    }

    /* renamed from: j.a.z0.k$c */
    /* loaded from: classes3-dex2jar.jar:j/a/z0/k$c.class */
    public class View$OnClickListenerC14639c implements View.OnClickListener {
        public View$OnClickListenerC14639c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DialogC14636k kVar = DialogC14636k.this;
            DialogInterface.OnClickListener onClickListener = kVar.f32690j;
            if (onClickListener != null) {
                onClickListener.onClick(kVar.f32698r, -2);
            }
            if (DialogC14636k.this.f32697q.booleanValue()) {
                DialogC14636k.this.dismiss();
            }
        }
    }

    /* renamed from: j.a.z0.k$d */
    /* loaded from: classes3-dex2jar.jar:j/a/z0/k$d.class */
    public class C14640d extends BaseAdapter {
        public C14640d() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return DialogC14636k.this.f32696p.length;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View view2 = view;
            if (view == null) {
                view2 = DialogC14636k.this.getLayoutInflater().inflate(R$layout.dialog_w_item, (ViewGroup) null);
                C14643g gVar = new C14643g(DialogC14636k.this);
                gVar.f32708a = (RecycleSafeImageView) view2.findViewById(R$id.riv_icon);
                gVar.f32709b = (TextView) view2.findViewById(R$id.tv_text);
                view2.setTag(gVar);
            }
            C14643g gVar2 = (C14643g) view2.getTag();
            gVar2.f32709b.setText(DialogC14636k.this.f32696p[i]);
            DialogC14636k kVar = DialogC14636k.this;
            if (kVar.f32693m) {
                gVar2.f32708a.setImageResource(kVar.f32695o.contains(Integer.valueOf(i)) ? R$drawable.radio_btn_on : R$drawable.radio_btn_off);
            } else {
                gVar2.f32708a.setImageResource(kVar.f32695o.contains(Integer.valueOf(i)) ? R$drawable.checkbox_on : R$drawable.checkbox_off);
            }
            return view2;
        }
    }

    /* renamed from: j.a.z0.k$e */
    /* loaded from: classes3-dex2jar.jar:j/a/z0/k$e.class */
    public class View$OnClickListenerC14641e implements View.OnClickListener {
        public View$OnClickListenerC14641e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (DialogC14636k.this.f32699s && DialogC14636k.this.f32700t) {
                DialogC14636k.this.dismiss();
            }
        }
    }

    /* renamed from: j.a.z0.k$f */
    /* loaded from: classes3-dex2jar.jar:j/a/z0/k$f.class */
    public class C14642f implements AdapterView.OnItemClickListener {

        /* renamed from: a */
        public final /* synthetic */ DialogInterface.OnClickListener f32706a;

        public C14642f(DialogInterface.OnClickListener onClickListener) {
            this.f32706a = onClickListener;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            DialogC14636k kVar = DialogC14636k.this;
            boolean z = true;
            if (kVar.f32692l == 1 && kVar.f32691k == 1) {
                if (!kVar.f32695o.contains(Integer.valueOf(i))) {
                    DialogC14636k.this.f32695o.clear();
                    DialogC14636k.this.f32695o.add(Integer.valueOf(i));
                    DialogC14636k kVar2 = DialogC14636k.this;
                    kVar2.f32694n = i;
                    kVar2.f32688h.invalidateViews();
                }
            } else if (DialogC14636k.this.f32695o.contains(Integer.valueOf(i))) {
                DialogC14636k.this.f32695o.remove(Integer.valueOf(i));
                DialogC14636k.this.f32688h.invalidateViews();
            } else {
                int size = DialogC14636k.this.f32695o.size();
                DialogC14636k kVar3 = DialogC14636k.this;
                if (size < kVar3.f32692l) {
                    kVar3.f32694n = i;
                    kVar3.f32695o.add(Integer.valueOf(i));
                    DialogC14636k.this.f32688h.invalidateViews();
                }
            }
            DialogC14636k kVar4 = DialogC14636k.this;
            TextView textView = kVar4.f32683c;
            int size2 = kVar4.f32695o.size();
            DialogC14636k kVar5 = DialogC14636k.this;
            if (size2 > kVar5.f32692l || kVar5.f32695o.size() < DialogC14636k.this.f32691k) {
                z = false;
            }
            textView.setEnabled(z);
            DialogInterface.OnClickListener onClickListener = this.f32706a;
            if (onClickListener != null) {
                onClickListener.onClick(DialogC14636k.this.f32698r, i);
            }
        }
    }

    /* renamed from: j.a.z0.k$g */
    /* loaded from: classes3-dex2jar.jar:j/a/z0/k$g.class */
    public class C14643g {

        /* renamed from: a */
        public RecycleSafeImageView f32708a;

        /* renamed from: b */
        public TextView f32709b;

        public C14643g(DialogC14636k kVar) {
        }
    }

    public DialogC14636k(Context context) {
        this(context, 1, 1);
    }

    public DialogC14636k(Context context, int i, int i2) {
        super(context, 16973840);
        this.f32693m = false;
        this.f32694n = -1;
        this.f32697q = true;
        this.f32699s = true;
        this.f32700t = true;
        getWindow().requestFeature(1);
        setContentView(R$layout.dialog_w_choose);
        LinearLayout linearLayout = (LinearLayout) findViewById(R$id.ll_body);
        this.f32685e = findViewById(R$id.iv_close);
        this.f32681a = (TextView) findViewById(R$id.tv_message);
        this.f32683c = (TextView) findViewById(R$id.tv_positive_btn);
        this.f32684d = (TextView) findViewById(R$id.tv_negative_btn);
        this.f32682b = (TextView) findViewById(R$id.tv_title);
        this.f32688h = (ListView) findViewById(R$id.lv_list);
        this.f32686f = findViewById(R$id.v_dummy);
        this.f32687g = findViewById(R$id.v_outside);
        this.f32698r = this;
        this.f32691k = i;
        this.f32692l = i2;
        boolean z = false;
        if (this.f32692l == 1) {
            z = false;
            if (this.f32691k == 1) {
                z = true;
            }
        }
        this.f32693m = z;
        this.f32695o = new HashSet<>();
    }

    /* renamed from: a */
    public void m946a() {
        this.f32695o.clear();
        this.f32694n = -1;
        this.f32688h.invalidateViews();
        this.f32683c.setEnabled(false);
    }

    /* renamed from: a */
    public void m945a(int i, DialogInterface.OnClickListener onClickListener) {
        m941a(C14206w4.m2225a(i), onClickListener);
    }

    /* renamed from: a */
    public void m944a(DialogInterface.OnClickListener onClickListener) {
        this.f32688h.setOnItemClickListener(new C14642f(onClickListener));
    }

    /* renamed from: a */
    public void m942a(String str) {
        this.f32681a.setText(str);
    }

    /* renamed from: a */
    public void m941a(String str, DialogInterface.OnClickListener onClickListener) {
        this.f32683c.setText(str);
        this.f32689i = onClickListener;
    }

    /* renamed from: a */
    public void m940a(String[] strArr) {
        this.f32696p = strArr;
    }

    /* renamed from: b */
    public int m939b() {
        return this.f32694n;
    }

    @Override // android.app.Dialog
    public void setCancelable(boolean z) {
        super.setCancelable(z);
        this.f32699s = z;
    }

    @Override // android.app.Dialog
    public void setCanceledOnTouchOutside(boolean z) {
        super.setCanceledOnTouchOutside(z);
        this.f32700t = z;
    }

    @Override // android.app.Dialog
    public void setTitle(int i) {
        setTitle(C14206w4.m2225a(i));
    }

    @Override // android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        this.f32682b.setText(charSequence);
    }

    @Override // android.app.Dialog
    public void show() {
        getWindow().setBackgroundDrawableResource(17170445);
        this.f32685e.setOnClickListener(new View$OnClickListenerC14637a());
        int i = 8;
        this.f32685e.setVisibility(this.f32699s ? 0 : 8);
        this.f32683c.setOnClickListener(new View$OnClickListenerC14638b());
        if (TextUtils.isEmpty(this.f32684d.getText())) {
            this.f32684d.setVisibility(8);
            this.f32686f.setVisibility(0);
        } else {
            this.f32684d.setVisibility(0);
            this.f32686f.setVisibility(8);
        }
        TextView textView = this.f32681a;
        textView.setVisibility(TextUtils.isEmpty(textView.getText()) ? 8 : 0);
        TextView textView2 = this.f32682b;
        if (!TextUtils.isEmpty(textView2.getText())) {
            i = 0;
        }
        textView2.setVisibility(i);
        this.f32684d.setOnClickListener(new View$OnClickListenerC14639c());
        this.f32688h.setAdapter((ListAdapter) new C14640d());
        this.f32688h.setDividerHeight(0);
        if (this.f32688h.getOnItemClickListener() == null) {
            m944a((DialogInterface.OnClickListener) null);
        }
        TextView textView3 = this.f32683c;
        boolean z = false;
        if (this.f32695o.size() <= this.f32692l) {
            z = false;
            if (this.f32695o.size() >= this.f32691k) {
                z = true;
            }
        }
        textView3.setEnabled(z);
        this.f32687g.setOnClickListener(new View$OnClickListenerC14641e());
        try {
            C14123p4.m2445a(getOwnerActivity(), getWindow());
            super.show();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
