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
import androidx.recyclerview.widget.RecyclerView.AbstractC2626a;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalRecyclerViewHolder.class */
public class HorizontalRecyclerViewHolder<Adapter extends RecyclerView.AbstractC2626a> extends RecyclerView.AbstractC2657v {

    /* renamed from: r */
    private final RecyclerView f21409r;

    /* renamed from: s */
    private final ImageView f21410s;

    /* renamed from: t */
    private final View f21411t;

    /* renamed from: u */
    private final int f21412u;

    /* renamed from: v */
    private View f21413v;

    /* renamed from: w */
    private TextView f21414w;

    /* renamed from: x */
    private ImageView f21415x;

    /* renamed from: y */
    private View f21416y;

    public HorizontalRecyclerViewHolder(View view, Adapter adapter, View.OnClickListener onClickListener, String str) {
        super(view);
        int color = ThemeUtils.getColor(2131099784);
        this.f21412u = color;
        RecyclerView recyclerView = (RecyclerView) view.findViewById(2131363648);
        this.f21409r = recyclerView;
        ImageView imageView = (ImageView) view.findViewById(2131362980);
        this.f21410s = imageView;
        this.f21411t = view.findViewById(2131362893);
        recyclerView.setLayoutManager(new LinearLayoutManager(view.getContext(), 0, false));
        recyclerView.setNestedScrollingEnabled(false);
        recyclerView.setFocusable(false);
        recyclerView.setAdapter(adapter);
        if (imageView != null) {
            imageView.setColorFilter(new PorterDuffColorFilter(color, PorterDuff.Mode.SRC_IN));
        }
        this.f21413v = view.findViewById(2131362960);
        m31119a(onClickListener, str);
    }

    /* renamed from: a */
    private void m31119a(View.OnClickListener onClickListener, String str) {
        if (onClickListener != null) {
            View m27302b = ViewUtils.m27302b(this.f21413v);
            this.f21413v = m27302b;
            this.f21414w = (TextView) m27302b.findViewById(2131362962);
            this.f21415x = (ImageView) this.f21413v.findViewById(2131362961);
            this.f21416y = this.f21413v.findViewById(2131362611);
        } else if (ViewUtils.m27329a(this.f21413v)) {
            this.f21413v.setVisibility(8);
        }
        View view = this.f21413v;
        if (view != null) {
            view.setOnClickListener(onClickListener);
        }
        TextView textView = this.f21414w;
        if (textView != null) {
            textView.setTextColor(this.f21412u);
            this.f21414w.setText(str);
        }
        ImageView imageView = this.f21415x;
        if (imageView != null) {
            imageView.setColorFilter(new PorterDuffColorFilter(this.f21412u, PorterDuff.Mode.SRC_IN));
        }
        View view2 = this.f21416y;
        if (view2 != null) {
            view2.setBackgroundColor(ThemeUtils.m27386a(CallAppApplication.get(), 2131099891));
        }
    }

    /* renamed from: a */
    public final void m31120a(View.OnClickListener onClickListener, View.OnClickListener onClickListener2, View.OnClickListener onClickListener3, String str, int i) {
        ViewUtils.m27287g(this.f21411t, i);
        this.f21411t.setOnClickListener(onClickListener);
        if (Build.VERSION.SDK_INT >= 21 && onClickListener == null && (this.f21411t.getBackground() instanceof RippleDrawable)) {
            this.f21411t.setBackground(null);
        }
        ImageView imageView = this.f21410s;
        if (imageView != null) {
            imageView.setOnClickListener(onClickListener2);
            this.f21410s.setVisibility(onClickListener2 == null ? 8 : 0);
        }
        m31119a(onClickListener3, str);
    }

    public Adapter getAdapter() {
        return (Adapter) this.f21409r.getAdapter();
    }

    public RecyclerView getRecyclerView() {
        return this.f21409r;
    }
}
