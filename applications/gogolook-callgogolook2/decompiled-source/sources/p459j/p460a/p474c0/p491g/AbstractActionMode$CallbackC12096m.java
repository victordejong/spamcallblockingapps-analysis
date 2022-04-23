package p459j.p460a.p474c0.p491g;

import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import gogolook.callgogolook2.R$drawable;
/* renamed from: j.a.c0.g.m */
/* loaded from: classes2-dex2jar.jar:j/a/c0/g/m.class */
public abstract class AbstractActionMode$CallbackC12096m implements ActionMode.Callback {

    /* renamed from: a */
    public ViewGroup f27176a;

    /* renamed from: j.a.c0.g.m$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/g/m$a.class */
    public class View$OnClickListenerC12097a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ ActionMode f27177a;

        /* renamed from: b */
        public final /* synthetic */ MenuItem f27178b;

        public View$OnClickListenerC12097a(ActionMode actionMode, MenuItem menuItem) {
            this.f27177a = actionMode;
            this.f27178b = menuItem;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AbstractActionMode$CallbackC12096m.this.onActionItemClicked(this.f27177a, this.f27178b);
        }
    }

    /* renamed from: a */
    public final void m7174a() {
        ViewGroup viewGroup = this.f27176a;
        if (viewGroup != null) {
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = this.f27176a.getChildAt(i);
                childAt.setVisibility(8);
                childAt.setOnClickListener(null);
            }
            this.f27176a.removeAllViews();
        }
        this.f27176a = null;
    }

    /* renamed from: a */
    public final void m7173a(ActionMode actionMode, Menu menu, ViewGroup viewGroup) {
        if (this.f27176a != viewGroup) {
            m7174a();
            this.f27176a = viewGroup;
        }
        if (!(this.f27176a == null || menu == null || menu.size() <= 0)) {
            int childCount = this.f27176a.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = this.f27176a.getChildAt(i);
                childAt.setVisibility(8);
                childAt.setOnClickListener(null);
            }
            int size = menu.size();
            for (int i2 = 0; i2 < size; i2++) {
                MenuItem item = menu.getItem(i2);
                if (!item.hasSubMenu() && item.getOrder() == 63333 && item.isVisible()) {
                    item.setVisible(false);
                    ImageView imageView = (ImageView) this.f27176a.findViewById(item.getItemId());
                    ImageView imageView2 = imageView;
                    if (imageView == null) {
                        imageView2 = new ImageView(this.f27176a.getContext());
                        imageView2.setBackgroundResource(R$drawable.actionbar_background_transparent);
                        imageView2.setId(item.getItemId());
                        imageView2.setImageDrawable(item.getIcon());
                        this.f27176a.addView(imageView2, 0);
                    }
                    imageView2.setVisibility(0);
                    imageView2.setOnClickListener(new View$OnClickListenerC12097a(actionMode, item));
                }
            }
        }
    }

    @Override // android.view.ActionMode.Callback
    public void onDestroyActionMode(ActionMode actionMode) {
        m7174a();
    }
}
