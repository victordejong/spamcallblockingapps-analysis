package gogolook.callgogolook2.block.category;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.drawable.RippleDrawable;
import android.util.Pair;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.view.ToggleButton;
import java.util.List;
import p459j.p460a.p533l.p535o.C12998a;
import p459j.p460a.p582w0.C14017g4;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/block/category/CategoryBlockAdapter.class */
public class CategoryBlockAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    /* renamed from: a */
    public LayoutInflater f10712a;

    /* renamed from: b */
    public List<Pair<String, Boolean>> f10713b;

    /* renamed from: c */
    public AbstractC4446d f10714c;

    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/block/category/CategoryBlockAdapter$ToggleViewHolder.class */
    public class ToggleViewHolder extends RecyclerView.ViewHolder {
        @BindView(R$id.iv_notify)
        public ImageView ivNotify;
        @BindView(R$id.tb_enable)
        public ToggleButton tbEnable;
        @BindView(R$id.tv_notify)
        public TextView tvNotify;
        @BindView(R$id.tv_primary)
        public TextView tvPrimary;
        @BindView(R$id.tv_secondary)
        public TextView tvSecondary;

        public ToggleViewHolder(CategoryBlockAdapter categoryBlockAdapter, View view) {
            super(view);
            ButterKnife.bind(this, view);
            this.tvNotify.setVisibility(8);
            this.ivNotify.setVisibility(8);
        }
    }

    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/block/category/CategoryBlockAdapter$ToggleViewHolder_ViewBinding.class */
    public class ToggleViewHolder_ViewBinding implements Unbinder {

        /* renamed from: a */
        public ToggleViewHolder f10715a;

        @UiThread
        public ToggleViewHolder_ViewBinding(ToggleViewHolder toggleViewHolder, View view) {
            this.f10715a = toggleViewHolder;
            toggleViewHolder.tvPrimary = (TextView) Utils.findRequiredViewAsType(view, R$id.tv_primary, "field 'tvPrimary'", TextView.class);
            toggleViewHolder.tvNotify = (TextView) Utils.findRequiredViewAsType(view, R$id.tv_notify, "field 'tvNotify'", TextView.class);
            toggleViewHolder.ivNotify = (ImageView) Utils.findRequiredViewAsType(view, R$id.iv_notify, "field 'ivNotify'", ImageView.class);
            toggleViewHolder.tbEnable = (ToggleButton) Utils.findRequiredViewAsType(view, R$id.tb_enable, "field 'tbEnable'", ToggleButton.class);
            toggleViewHolder.tvSecondary = (TextView) Utils.findRequiredViewAsType(view, R$id.tv_secondary, "field 'tvSecondary'", TextView.class);
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void unbind() {
            ToggleViewHolder toggleViewHolder = this.f10715a;
            if (toggleViewHolder != null) {
                this.f10715a = null;
                toggleViewHolder.tvPrimary = null;
                toggleViewHolder.tvNotify = null;
                toggleViewHolder.ivNotify = null;
                toggleViewHolder.tbEnable = null;
                toggleViewHolder.tvSecondary = null;
                return;
            }
            throw new IllegalStateException("Bindings already cleared.");
        }
    }

    /* renamed from: gogolook.callgogolook2.block.category.CategoryBlockAdapter$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/block/category/CategoryBlockAdapter$a.class */
    public class View$OnTouchListenerC4443a implements View.OnTouchListener {
        public View$OnTouchListenerC4443a(CategoryBlockAdapter categoryBlockAdapter) {
        }

        @Override // android.view.View.OnTouchListener
        @SuppressLint({"NewApi"})
        public boolean onTouch(View view, MotionEvent motionEvent) {
            try {
                ((RippleDrawable) view.getBackground()).setHotspot(motionEvent.getX(), motionEvent.getY());
                return false;
            } catch (Exception e) {
                e.printStackTrace();
                return false;
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.block.category.CategoryBlockAdapter$b */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/block/category/CategoryBlockAdapter$b.class */
    public class View$OnClickListenerC4444b implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ ToggleViewHolder f10716a;

        public View$OnClickListenerC4444b(CategoryBlockAdapter categoryBlockAdapter, ToggleViewHolder toggleViewHolder) {
            this.f10716a = toggleViewHolder;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f10716a.tbEnable.m25829g();
        }
    }

    /* renamed from: gogolook.callgogolook2.block.category.CategoryBlockAdapter$c */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/block/category/CategoryBlockAdapter$c.class */
    public class C4445c implements ToggleButton.AbstractC5295f {

        /* renamed from: a */
        public final /* synthetic */ ToggleViewHolder f10717a;

        /* renamed from: b */
        public final /* synthetic */ Pair f10718b;

        public C4445c(ToggleViewHolder toggleViewHolder, Pair pair) {
            this.f10717a = toggleViewHolder;
            this.f10718b = pair;
        }

        @Override // gogolook.callgogolook2.view.ToggleButton.AbstractC5295f
        /* renamed from: a */
        public void mo4082a(View view, boolean z) {
            this.f10717a.tvSecondary.setText(z ? R$string.block_call_only : R$string.blocklist_db_unactivated);
            if (z) {
                C12998a.m4832k().m4851a((String) this.f10718b.first);
            } else {
                C12998a.m4832k().m4841e((String) this.f10718b.first);
            }
            if (CategoryBlockAdapter.this.f10714c != null) {
                CategoryBlockAdapter.this.f10714c.mo28624a((String) this.f10718b.first, z);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.block.category.CategoryBlockAdapter$d */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/block/category/CategoryBlockAdapter$d.class */
    public interface AbstractC4446d {
        /* renamed from: a */
        void mo28624a(String str, boolean z);
    }

    public CategoryBlockAdapter(Context context, List<Pair<String, Boolean>> list, AbstractC4446d dVar) {
        this.f10714c = null;
        this.f10712a = LayoutInflater.from(context);
        this.f10713b = list;
        this.f10714c = dVar;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f10713b.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        if (getItemViewType(i) == 0) {
            ToggleViewHolder toggleViewHolder = (ToggleViewHolder) viewHolder;
            Pair<String, Boolean> pair = this.f10713b.get(i);
            toggleViewHolder.tvPrimary.setText((CharSequence) pair.first);
            if (((Boolean) pair.second).booleanValue()) {
                toggleViewHolder.tbEnable.m25833d();
            } else {
                toggleViewHolder.tbEnable.m25835c();
            }
            toggleViewHolder.tvSecondary.setText(((Boolean) pair.second).booleanValue() ? R$string.block_call_only : R$string.blocklist_db_unactivated);
            toggleViewHolder.itemView.setOnClickListener(new View$OnClickListenerC4444b(this, toggleViewHolder));
            toggleViewHolder.tbEnable.m25839a(new C4445c(toggleViewHolder, pair));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        ToggleViewHolder toggleViewHolder;
        View findViewById;
        View view = null;
        if (i == 0) {
            view = this.f10712a.inflate(R$layout.mp_block_toggle_listitem, viewGroup, false);
            toggleViewHolder = new ToggleViewHolder(this, view);
        } else {
            toggleViewHolder = null;
        }
        if (C14017g4.m2805s() && view != null && (findViewById = view.findViewById(R$id.view_bg)) != null && (findViewById.getBackground() instanceof RippleDrawable)) {
            findViewById.setOnTouchListener(new View$OnTouchListenerC4443a(this));
        }
        return toggleViewHolder;
    }
}
