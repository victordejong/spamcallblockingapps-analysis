package p459j.p460a.p613z0;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import p459j.p460a.p582w0.C14123p4;
import p459j.p460a.p582w0.C14191v;
import p459j.p460a.p582w0.C14206w4;
/* renamed from: j.a.z0.g */
/* loaded from: classes3-dex2jar.jar:j/a/z0/g.class */
public class DialogC14625g extends Dialog {

    /* renamed from: a */
    public TextView f32650a;

    /* renamed from: b */
    public ListView f32651b;

    /* renamed from: c */
    public Context f32652c;

    /* renamed from: d */
    public Dialog f32653d;

    /* renamed from: e */
    public View f32654e;

    /* renamed from: f */
    public boolean f32655f;

    /* renamed from: g */
    public boolean f32656g;

    /* renamed from: j.a.z0.g$a */
    /* loaded from: classes3-dex2jar.jar:j/a/z0/g$a.class */
    public class View$OnClickListenerC14626a implements View.OnClickListener {
        public View$OnClickListenerC14626a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (DialogC14625g.this.f32655f) {
                DialogC14625g.this.dismiss();
            }
        }
    }

    /* renamed from: j.a.z0.g$b */
    /* loaded from: classes3-dex2jar.jar:j/a/z0/g$b.class */
    public class C14627b implements AdapterView.OnItemClickListener {

        /* renamed from: a */
        public final /* synthetic */ DialogInterface.OnClickListener f32658a;

        public C14627b(DialogInterface.OnClickListener onClickListener) {
            this.f32658a = onClickListener;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            DialogInterface.OnClickListener onClickListener = this.f32658a;
            if (onClickListener != null) {
                onClickListener.onClick(DialogC14625g.this.f32653d, i);
            }
            DialogC14625g.this.dismiss();
        }
    }

    public DialogC14625g(Context context) {
        this(context, R$layout.dialog_m_list);
    }

    public DialogC14625g(Context context, int i) {
        super(context, 16973840);
        this.f32655f = true;
        this.f32656g = false;
        getWindow().requestFeature(1);
        this.f32652c = context;
        View inflate = LayoutInflater.from(context).inflate(i, (ViewGroup) null);
        this.f32650a = (TextView) inflate.findViewById(R$id.tv_title);
        this.f32651b = (ListView) inflate.findViewById(R$id.lv_choose);
        this.f32654e = inflate.findViewById(R$id.v_outside);
        this.f32654e.setOnClickListener(new View$OnClickListenerC14626a());
        setContentView(inflate);
        this.f32653d = this;
        Activity a = C14191v.m2260a(context);
        if (a != null) {
            setOwnerActivity(a);
        }
    }

    /* renamed from: a */
    public void m974a(DialogInterface.OnClickListener onClickListener) {
        this.f32651b.setOnItemClickListener(new C14627b(onClickListener));
    }

    /* renamed from: a */
    public void m973a(ListAdapter listAdapter, DialogInterface.OnClickListener onClickListener) {
        this.f32651b.setAdapter(listAdapter);
        m974a(onClickListener);
    }

    /* renamed from: a */
    public void m971a(String[] strArr) {
        m969a(strArr, false);
    }

    /* renamed from: a */
    public void m970a(String[] strArr, DialogInterface.OnClickListener onClickListener) {
        m971a(strArr);
        m974a(onClickListener);
    }

    /* renamed from: a */
    public void m969a(String[] strArr, boolean z) {
        this.f32656g = z;
        this.f32651b.setAdapter((ListAdapter) new ArrayAdapter(this.f32652c, z ? R$layout.dialog_m_item_small : R$layout.dialog_m_item, (int) R$id.tv_text, strArr));
        this.f32651b.setDividerHeight(0);
    }

    /* renamed from: b */
    public void m968b(String[] strArr, DialogInterface.OnClickListener onClickListener) {
        m969a(strArr, true);
        m974a(onClickListener);
    }

    @Override // android.app.Dialog
    public void setCancelable(boolean z) {
        super.setCancelable(z);
        this.f32655f = z;
    }

    @Override // android.app.Dialog
    public void setTitle(int i) {
        setTitle(C14206w4.m2225a(i));
    }

    @Override // android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        this.f32650a.setText(charSequence);
    }

    @Override // android.app.Dialog
    public void show() {
        if (TextUtils.isEmpty(this.f32650a.getText())) {
            this.f32650a.setVisibility(8);
        } else {
            this.f32650a.setVisibility(0);
        }
        try {
            if (!this.f32656g) {
                C14123p4.m2445a(getOwnerActivity(), getWindow());
            }
            super.show();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
