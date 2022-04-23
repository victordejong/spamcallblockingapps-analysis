package com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery;

import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.a;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalRecyclerViewHolder.class */
public class HorizontalRecyclerViewHolder<Adapter extends RecyclerView.a> extends RecyclerView.v {
    private final RecyclerView r;
    private final ImageView s;
    private final View t;
    private final int u;
    private View v;
    private TextView w;
    private ImageView x;
    private View y;

    public HorizontalRecyclerViewHolder(View view, Adapter adapter, View.OnClickListener onClickListener, String str) {
        super(view);
        int color = ThemeUtils.getColor(2131099784);
        this.u = color;
        RecyclerView recyclerView = (RecyclerView) view.findViewById(2131363648);
        this.r = recyclerView;
        ImageView imageView = (ImageView) view.findViewById(2131362980);
        this.s = imageView;
        this.t = view.findViewById(2131362893);
        recyclerView.setLayoutManager(new LinearLayoutManager(view.getContext(), 0, false));
        recyclerView.setNestedScrollingEnabled(false);
        recyclerView.setFocusable(false);
        recyclerView.setAdapter(adapter);
        if (imageView != null) {
            imageView.setColorFilter(new PorterDuffColorFilter(color, PorterDuff.Mode.SRC_IN));
        }
        this.v = view.findViewById(2131362960);
        a(onClickListener, str);
    }

    private void a(View.OnClickListener onClickListener, String str) {
        if (onClickListener != null) {
            View b2 = ViewUtils.b(this.v);
            this.v = b2;
            this.w = (TextView) b2.findViewById(2131362962);
            this.x = (ImageView) this.v.findViewById(2131362961);
            this.y = this.v.findViewById(2131362611);
        } else if (ViewUtils.a(this.v)) {
            this.v.setVisibility(8);
        }
        View view = this.v;
        if (view != null) {
            view.setOnClickListener(onClickListener);
        }
        TextView textView = this.w;
        if (textView != null) {
            textView.setTextColor(this.u);
            this.w.setText(str);
        }
        ImageView imageView = this.x;
        if (imageView != null) {
            imageView.setColorFilter(new PorterDuffColorFilter(this.u, PorterDuff.Mode.SRC_IN));
        }
        View view2 = this.y;
        if (view2 != null) {
            view2.setBackgroundColor(ThemeUtils.a(CallAppApplication.get(), 2131099891));
        }
    }

    public final void a(View.OnClickListener onClickListener, View.OnClickListener onClickListener2, View.OnClickListener onClickListener3, String str, int i) {
        ViewUtils.g(this.t, i);
        this.t.setOnClickListener(onClickListener);
        if (Build.VERSION.SDK_INT >= 21 && onClickListener == null && (this.t.getBackground() instanceof RippleDrawable)) {
            this.t.setBackground(null);
        }
        ImageView imageView = this.s;
        if (imageView != null) {
            imageView.setOnClickListener(onClickListener2);
            this.s.setVisibility(onClickListener2 == null ? 8 : 0);
        }
        a(onClickListener3, str);
    }

    public Adapter getAdapter() {
        return (Adapter) this.r.getAdapter();
    }

    public RecyclerView getRecyclerView() {
        return this.r;
    }
}
