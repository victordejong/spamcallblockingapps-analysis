package com.privacystar.core.p011ui.detail_view;

import android.support.annotation.CallSuper;
import android.support.annotation.UiThread;
import android.support.p004v7.widget.CardView;
import android.support.p004v7.widget.Toolbar;
import android.view.View;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.privacystar.core.C1566R;
import com.rey.material.widget.FloatingActionButton;
/* renamed from: com.privacystar.core.ui.detail_view.DetailActivity_ViewBinding */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/DetailActivity_ViewBinding.class */
public class DetailActivity_ViewBinding implements Unbinder {
    private DetailActivity target;
    private View view2131296668;
    private View view2131296670;

    @UiThread
    public DetailActivity_ViewBinding(DetailActivity detailActivity) {
        this(detailActivity, detailActivity.getWindow().getDecorView());
    }

    @UiThread
    public DetailActivity_ViewBinding(final DetailActivity detailActivity, View view) {
        this.target = detailActivity;
        detailActivity.toolbar = (Toolbar) Utils.findRequiredViewAsType(view, 2131297363, "field 'toolbar'", Toolbar.class);
        View findRequiredView = Utils.findRequiredView(view, C1566R.C1569id.detail_view_add_fab, "field 'fab' and method 'fabClicked'");
        detailActivity.fab = (FloatingActionButton) Utils.castView(findRequiredView, C1566R.C1569id.detail_view_add_fab, "field 'fab'", FloatingActionButton.class);
        this.view2131296668 = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() { // from class: com.privacystar.core.ui.detail_view.DetailActivity_ViewBinding.1
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                detailActivity.fabClicked();
            }
        });
        View findRequiredView2 = Utils.findRequiredView(view, C1566R.C1569id.detail_view_button_cv, "field 'button' and method 'buttonClicked'");
        detailActivity.button = (CardView) Utils.castView(findRequiredView2, C1566R.C1569id.detail_view_button_cv, "field 'button'", CardView.class);
        this.view2131296670 = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() { // from class: com.privacystar.core.ui.detail_view.DetailActivity_ViewBinding.2
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                detailActivity.buttonClicked();
            }
        });
        detailActivity.buttonText = (TextView) Utils.findRequiredViewAsType(view, C1566R.C1569id.detail_view_button_text, "field 'buttonText'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        DetailActivity detailActivity = this.target;
        if (detailActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        detailActivity.toolbar = null;
        detailActivity.fab = null;
        detailActivity.button = null;
        detailActivity.buttonText = null;
        this.view2131296668.setOnClickListener(null);
        this.view2131296668 = null;
        this.view2131296670.setOnClickListener(null);
        this.view2131296670 = null;
    }
}
