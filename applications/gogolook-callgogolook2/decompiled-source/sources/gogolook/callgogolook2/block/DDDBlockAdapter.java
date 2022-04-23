package gogolook.callgogolook2.block;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.appcompat.widget.SwitchCompat;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.setting.DualSimDddSettingActivity;
import p459j.p460a.p463b0.DialogC11125g;
import p459j.p460a.p533l.C12944k;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14073m;
import p459j.p460a.p582w0.C14116p0;
import p459j.p460a.p582w0.p587d5.C13978e;
import p459j.p460a.p582w0.p590x4.C14289m;
import p459j.p460a.p613z0.DialogC14644l;
import p459j.p460a.p613z0.p615n.View$OnTouchListenerC14659a;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/block/DDDBlockAdapter.class */
public class DDDBlockAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    /* renamed from: a */
    public LayoutInflater f10681a;

    /* renamed from: b */
    public Activity f10682b;

    /* renamed from: d */
    public boolean f10684d;

    /* renamed from: e */
    public DialogInterface.OnDismissListener f10685e = new DialogInterface$OnDismissListenerC4428a();

    /* renamed from: c */
    public boolean[] f10683c = C12944k.m4947d().m4959a();

    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/block/DDDBlockAdapter$ToggleViewHolder.class */
    public class ToggleViewHolder extends RecyclerView.ViewHolder {
        @BindView(R$id.iv_notify)
        public ImageView ivNotify;
        @BindView(R$id.sw_enable)
        public SwitchCompat swEnable;
        @BindView(R$id.tv_notify)
        public TextView tvNotify;
        @BindView(R$id.tv_primary)
        public TextView tvPrimary;
        @BindView(R$id.tv_secondary)
        public TextView tvSecondary;

        public ToggleViewHolder(DDDBlockAdapter dDDBlockAdapter, View view) {
            super(view);
            ButterKnife.bind(this, view);
            this.tvNotify.setVisibility(8);
            this.ivNotify.setVisibility(8);
        }
    }

    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/block/DDDBlockAdapter$ToggleViewHolder_ViewBinding.class */
    public class ToggleViewHolder_ViewBinding implements Unbinder {

        /* renamed from: a */
        public ToggleViewHolder f10686a;

        @UiThread
        public ToggleViewHolder_ViewBinding(ToggleViewHolder toggleViewHolder, View view) {
            this.f10686a = toggleViewHolder;
            toggleViewHolder.tvPrimary = (TextView) Utils.findRequiredViewAsType(view, R$id.tv_primary, "field 'tvPrimary'", TextView.class);
            toggleViewHolder.tvNotify = (TextView) Utils.findRequiredViewAsType(view, R$id.tv_notify, "field 'tvNotify'", TextView.class);
            toggleViewHolder.ivNotify = (ImageView) Utils.findRequiredViewAsType(view, R$id.iv_notify, "field 'ivNotify'", ImageView.class);
            toggleViewHolder.swEnable = (SwitchCompat) Utils.findRequiredViewAsType(view, R$id.sw_enable, "field 'swEnable'", SwitchCompat.class);
            toggleViewHolder.tvSecondary = (TextView) Utils.findRequiredViewAsType(view, R$id.tv_secondary, "field 'tvSecondary'", TextView.class);
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void unbind() {
            ToggleViewHolder toggleViewHolder = this.f10686a;
            if (toggleViewHolder != null) {
                this.f10686a = null;
                toggleViewHolder.tvPrimary = null;
                toggleViewHolder.tvNotify = null;
                toggleViewHolder.ivNotify = null;
                toggleViewHolder.swEnable = null;
                toggleViewHolder.tvSecondary = null;
                return;
            }
            throw new IllegalStateException("Bindings already cleared.");
        }
    }

    /* renamed from: gogolook.callgogolook2.block.DDDBlockAdapter$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/block/DDDBlockAdapter$a.class */
    public class DialogInterface$OnDismissListenerC4428a implements DialogInterface.OnDismissListener {
        public DialogInterface$OnDismissListenerC4428a() {
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            DDDBlockAdapter.this.notifyDataSetChanged();
        }
    }

    /* renamed from: gogolook.callgogolook2.block.DDDBlockAdapter$b */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/block/DDDBlockAdapter$b.class */
    public class View$OnClickListenerC4429b implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ ToggleViewHolder f10688a;

        public View$OnClickListenerC4429b(ToggleViewHolder toggleViewHolder) {
            this.f10688a = toggleViewHolder;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DDDBlockAdapter.this.m28640a(this.f10688a);
        }
    }

    /* renamed from: gogolook.callgogolook2.block.DDDBlockAdapter$c */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/block/DDDBlockAdapter$c.class */
    public class C4430c extends View$OnTouchListenerC14659a {

        /* renamed from: b */
        public final /* synthetic */ ToggleViewHolder f10690b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4430c(Context context, ToggleViewHolder toggleViewHolder) {
            super(context);
            this.f10690b = toggleViewHolder;
        }

        @Override // p459j.p460a.p613z0.p615n.View$OnTouchListenerC14659a
        /* renamed from: b */
        public void mo916b() {
            DDDBlockAdapter.this.m28640a(this.f10690b);
        }
    }

    /* renamed from: gogolook.callgogolook2.block.DDDBlockAdapter$d */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/block/DDDBlockAdapter$d.class */
    public class View$OnClickListenerC4431d implements View.OnClickListener {
        public View$OnClickListenerC4431d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DDDBlockAdapter.this.m28635b(false);
        }
    }

    /* renamed from: gogolook.callgogolook2.block.DDDBlockAdapter$e */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/block/DDDBlockAdapter$e.class */
    public class View$OnTouchListenerC4432e implements View.OnTouchListener {
        public View$OnTouchListenerC4432e(DDDBlockAdapter dDDBlockAdapter) {
        }

        @Override // android.view.View.OnTouchListener
        @SuppressLint({"NewApi"})
        public boolean onTouch(View view, MotionEvent motionEvent) {
            try {
                view.getBackground().setHotspot(motionEvent.getX(), motionEvent.getY());
                return false;
            } catch (Exception e) {
                e.printStackTrace();
                return false;
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.block.DDDBlockAdapter$f */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/block/DDDBlockAdapter$f.class */
    public class DialogInterface$OnClickListenerC4433f implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ ToggleViewHolder f10693a;

        /* renamed from: b */
        public final /* synthetic */ boolean f10694b;

        /* renamed from: gogolook.callgogolook2.block.DDDBlockAdapter$f$a */
        /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/block/DDDBlockAdapter$f$a.class */
        public class C4434a implements DialogC11125g.AbstractC11127b {
            public C4434a() {
            }

            @Override // p459j.p460a.p463b0.DialogC11125g.AbstractC11127b
            /* renamed from: a */
            public void mo5752a(String str) {
                C13915b3.m3044e("DDDSetting", str);
                DialogInterface$OnClickListenerC4433f fVar = DialogInterface$OnClickListenerC4433f.this;
                fVar.f10693a.tvSecondary.setText(fVar.f10694b ? R$string.block_call_only : R$string.blocklist_db_unactivated);
            }
        }

        public DialogInterface$OnClickListenerC4433f(ToggleViewHolder toggleViewHolder, boolean z) {
            this.f10693a = toggleViewHolder;
            this.f10694b = z;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            if (C14073m.m2620h()) {
                DDDBlockAdapter.this.f10682b.startActivity(DualSimDddSettingActivity.m26141a(DDDBlockAdapter.this.f10682b, 1));
            } else if (C14073m.m2621g()) {
                DialogC11125g gVar = new DialogC11125g(DDDBlockAdapter.this.f10682b);
                gVar.setCancelable(false);
                gVar.m10247a(new C4434a());
                gVar.setOnDismissListener(DDDBlockAdapter.this.f10685e);
                gVar.show();
            }
            dialogInterface.dismiss();
        }
    }

    /* renamed from: gogolook.callgogolook2.block.DDDBlockAdapter$g */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/block/DDDBlockAdapter$g.class */
    public class C4435g extends RecyclerView.ViewHolder {
        public C4435g(DDDBlockAdapter dDDBlockAdapter, View view) {
            super(view);
            TextView textView = (TextView) view.findViewById(R$id.tv_ddd_desc);
        }
    }

    /* renamed from: gogolook.callgogolook2.block.DDDBlockAdapter$h */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/block/DDDBlockAdapter$h.class */
    public class C4436h extends RecyclerView.ViewHolder {
        public C4436h(DDDBlockAdapter dDDBlockAdapter, View view) {
            super(view);
        }
    }

    public DDDBlockAdapter(Activity activity, boolean z) {
        this.f10684d = false;
        this.f10682b = activity;
        this.f10681a = LayoutInflater.from(activity);
        this.f10684d = z;
    }

    /* renamed from: a */
    public void m28641a() {
        C12944k.m4947d().m4949b(this.f10683c);
        C14037j3.m2731a().mo2704a(new C14116p0());
    }

    /* renamed from: a */
    public final void m28640a(ToggleViewHolder toggleViewHolder) {
        int adapterPosition = toggleViewHolder.getAdapterPosition();
        toggleViewHolder.swEnable.toggle();
        int i = R$string.block_call_only;
        if (adapterPosition == 0) {
            boolean isChecked = toggleViewHolder.swEnable.isChecked();
            m28635b(isChecked);
            if (!isChecked || (!C14073m.m2620h() && !C14073m.m2621g())) {
                C14289m.m1872b("All", isChecked);
                TextView textView = toggleViewHolder.tvSecondary;
                if (!isChecked) {
                    i = R$string.blocklist_db_unactivated;
                }
                textView.setText(i);
                return;
            }
            DialogC14644l lVar = new DialogC14644l(this.f10682b);
            lVar.m937a(R$string.blocklist_dialog_ddd_not_set_msg);
            lVar.m936a(R$string.okok, new DialogInterface$OnClickListenerC4433f(toggleViewHolder, isChecked));
            lVar.setOnDismissListener(this.f10685e);
            lVar.show();
            return;
        }
        int i2 = adapterPosition - 2;
        if (i2 >= 0) {
            boolean[] zArr = this.f10683c;
            if (i2 < zArr.length) {
                zArr[i2] = !zArr[i2];
                C14289m.m1872b(C12944k.f29299b[i2], zArr[i2]);
                TextView textView2 = toggleViewHolder.tvSecondary;
                if (!this.f10683c[i2]) {
                    i = R$string.blocklist_db_unactivated;
                }
                textView2.setText(i);
            }
        }
    }

    /* renamed from: a */
    public void m28636a(boolean z) {
        this.f10684d = z;
        notifyDataSetChanged();
    }

    /* renamed from: b */
    public final void m28635b(boolean z) {
        C13978e.f31386a.m9459a("pref_block_other_ddd", (String) Boolean.valueOf(z));
        m28636a(z);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        int i = 2;
        if (!this.f10684d) {
            i = 2 + C12944k.f29299b.length;
        }
        return i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        if (i == 0) {
            return 0;
        }
        int i2 = 1;
        if (i != 1) {
            return 0;
        }
        if (this.f10684d) {
            i2 = 2;
        }
        return i2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        boolean z;
        String str;
        if (getItemViewType(i) == 0) {
            ToggleViewHolder toggleViewHolder = (ToggleViewHolder) viewHolder;
            int adapterPosition = viewHolder.getAdapterPosition();
            if (adapterPosition <= 1) {
                z = this.f10684d;
                str = this.f10682b.getString(R$string.blocklist_menu_different_ddd);
            } else {
                int i2 = adapterPosition - 2;
                z = this.f10683c[i2];
                str = C12944k.f29299b[i2];
            }
            toggleViewHolder.tvPrimary.setText(str);
            toggleViewHolder.swEnable.setChecked(z);
            toggleViewHolder.tvSecondary.setText(z ? R$string.block_call_only : R$string.blocklist_db_unactivated);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        ToggleViewHolder toggleViewHolder;
        View findViewById;
        View view = null;
        if (i == 0) {
            view = this.f10681a.inflate(R$layout.mp_ddd_block_toggle_listitem, viewGroup, false);
            ToggleViewHolder toggleViewHolder2 = new ToggleViewHolder(this, view);
            view.setOnClickListener(new View$OnClickListenerC4429b(toggleViewHolder2));
            toggleViewHolder2.swEnable.setOnTouchListener(new C4430c(this.f10682b, toggleViewHolder2));
            toggleViewHolder = toggleViewHolder2;
        } else if (1 == i) {
            view = this.f10681a.inflate(R$layout.mp_block_ddd_section, viewGroup, false);
            toggleViewHolder = new C4436h(this, view);
        } else if (2 == i) {
            view = this.f10681a.inflate(R$layout.mp_block_ddd_desc, viewGroup, false);
            C4435g gVar = new C4435g(this, view);
            view.setOnClickListener(new View$OnClickListenerC4431d());
            toggleViewHolder = gVar;
        } else {
            toggleViewHolder = null;
        }
        if (Build.VERSION.SDK_INT >= 21 && view != null && (findViewById = view.findViewById(R$id.view_bg)) != null && (findViewById.getBackground() instanceof RippleDrawable)) {
            findViewById.setOnTouchListener(new View$OnTouchListenerC4432e(this));
        }
        return toggleViewHolder;
    }
}
