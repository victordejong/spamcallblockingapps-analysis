package com.rey.material.widget;

import android.content.Context;
import android.support.p004v7.widget.ListViewCompat;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AbsListView;
import com.rey.material.app.ThemeManager;
import com.rey.material.util.ViewUtil;
/* loaded from: classes2-dex2jar.jar:com/rey/material/widget/ListView.class */
public class ListView extends ListViewCompat implements ThemeManager.OnThemeChangedListener {
    protected int mCurrentStyle = Integer.MIN_VALUE;
    private AbsListView.RecyclerListener mRecyclerListener;
    protected int mStyleId;

    public ListView(Context context) {
        super(context);
        init(context, null, 0, 0);
    }

    public ListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context, attributeSet, 0, 0);
    }

    public ListView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context, attributeSet, i, 0);
    }

    public void applyStyle(int i) {
        ViewUtil.applyStyle(this, i);
        applyStyle(getContext(), null, 0, i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void applyStyle(Context context, AttributeSet attributeSet, int i, int i2) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void init(Context context, AttributeSet attributeSet, int i, int i2) {
        super.setRecyclerListener(new AbsListView.RecyclerListener() { // from class: com.rey.material.widget.ListView.1
            @Override // android.widget.AbsListView.RecyclerListener
            public void onMovedToScrapHeap(View view) {
                RippleManager.cancelRipple(view);
                if (ListView.this.mRecyclerListener != null) {
                    ListView.this.mRecyclerListener.onMovedToScrapHeap(view);
                }
            }
        });
        if (!isInEditMode()) {
            this.mStyleId = ThemeManager.getStyleId(context, attributeSet, i, i2);
        }
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.mStyleId != 0) {
            ThemeManager.getInstance().registerOnThemeChangedListener(this);
            onThemeChanged(null);
        }
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.mStyleId != 0) {
            ThemeManager.getInstance().unregisterOnThemeChangedListener(this);
        }
    }

    @Override // com.rey.material.app.ThemeManager.OnThemeChangedListener
    public void onThemeChanged(ThemeManager.OnThemeChangedEvent onThemeChangedEvent) {
        int currentStyle = ThemeManager.getInstance().getCurrentStyle(this.mStyleId);
        if (this.mCurrentStyle != currentStyle) {
            this.mCurrentStyle = currentStyle;
            applyStyle(this.mCurrentStyle);
        }
    }

    @Override // android.widget.AbsListView
    public void setRecyclerListener(AbsListView.RecyclerListener recyclerListener) {
        this.mRecyclerListener = recyclerListener;
    }
}
