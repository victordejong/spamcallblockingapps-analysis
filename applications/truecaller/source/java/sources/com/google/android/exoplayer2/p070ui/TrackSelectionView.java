package com.google.android.exoplayer2.p070ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Pair;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckedTextView;
import android.widget.LinearLayout;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.trackselection.DefaultTrackSelector;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import p193e.p1577m.p1578a.p1596c.p1632o1.AbstractC24660g;
import p193e.p1577m.p1578a.p1596c.p1632o1.C24656d;
/* renamed from: com.google.android.exoplayer2.ui.TrackSelectionView */
/* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/ui/TrackSelectionView.class */
public class TrackSelectionView extends LinearLayout {

    /* renamed from: a */
    public final int f5192a;

    /* renamed from: b */
    public final LayoutInflater f5193b;

    /* renamed from: c */
    public final CheckedTextView f5194c;

    /* renamed from: d */
    public final CheckedTextView f5195d;

    /* renamed from: e */
    public final View$OnClickListenerC2022b f5196e;

    /* renamed from: g */
    public boolean f5198g;

    /* renamed from: h */
    public boolean f5199h;

    /* renamed from: k */
    public boolean f5202k;

    /* renamed from: f */
    public final SparseArray<DefaultTrackSelector.SelectionOverride> f5197f = new SparseArray<>();

    /* renamed from: i */
    public AbstractC24660g f5200i = new C24656d(getResources());

    /* renamed from: j */
    public TrackGroupArray f5201j = TrackGroupArray.f5002d;

    /* renamed from: com.google.android.exoplayer2.ui.TrackSelectionView$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/ui/TrackSelectionView$b.class */
    public class View$OnClickListenerC2022b implements View.OnClickListener {
        public View$OnClickListenerC2022b(C2021a c2021a) {
            TrackSelectionView.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TrackSelectionView trackSelectionView = TrackSelectionView.this;
            if (view == trackSelectionView.f5194c) {
                trackSelectionView.f5202k = true;
                trackSelectionView.f5197f.clear();
            } else if (view != trackSelectionView.f5195d) {
                trackSelectionView.f5202k = false;
                Pair pair = (Pair) view.getTag();
                int intValue = ((Integer) pair.first).intValue();
                ((Integer) pair.second).intValue();
                trackSelectionView.f5197f.get(intValue);
                throw null;
            } else {
                trackSelectionView.f5202k = false;
                trackSelectionView.f5197f.clear();
            }
            trackSelectionView.m39188a();
        }
    }

    public TrackSelectionView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        setOrientation(1);
        setSaveFromParentEnabled(false);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{16843534});
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        this.f5192a = resourceId;
        obtainStyledAttributes.recycle();
        LayoutInflater from = LayoutInflater.from(context);
        this.f5193b = from;
        View$OnClickListenerC2022b view$OnClickListenerC2022b = new View$OnClickListenerC2022b(null);
        this.f5196e = view$OnClickListenerC2022b;
        CheckedTextView checkedTextView = (CheckedTextView) from.inflate(17367055, (ViewGroup) this, false);
        this.f5194c = checkedTextView;
        checkedTextView.setBackgroundResource(resourceId);
        checkedTextView.setText(C2018R.string.exo_track_selection_none);
        checkedTextView.setEnabled(false);
        checkedTextView.setFocusable(true);
        checkedTextView.setOnClickListener(view$OnClickListenerC2022b);
        checkedTextView.setVisibility(8);
        addView(checkedTextView);
        addView(from.inflate(C2018R.layout.exo_list_divider, (ViewGroup) this, false));
        CheckedTextView checkedTextView2 = (CheckedTextView) from.inflate(17367055, (ViewGroup) this, false);
        this.f5195d = checkedTextView2;
        checkedTextView2.setBackgroundResource(resourceId);
        checkedTextView2.setText(C2018R.string.exo_track_selection_auto);
        checkedTextView2.setEnabled(false);
        checkedTextView2.setFocusable(true);
        checkedTextView2.setOnClickListener(view$OnClickListenerC2022b);
        addView(checkedTextView2);
    }

    /* renamed from: a */
    public final void m39188a() {
        this.f5194c.setChecked(this.f5202k);
        this.f5195d.setChecked(!this.f5202k && this.f5197f.size() == 0);
        throw null;
    }

    /* renamed from: b */
    public final void m39187b() {
        int childCount = getChildCount();
        while (true) {
            childCount--;
            if (childCount < 3) {
                this.f5194c.setEnabled(false);
                this.f5195d.setEnabled(false);
                return;
            }
            removeViewAt(childCount);
        }
    }

    public boolean getIsDisabled() {
        return this.f5202k;
    }

    public List<DefaultTrackSelector.SelectionOverride> getOverrides() {
        ArrayList arrayList = new ArrayList(this.f5197f.size());
        for (int i = 0; i < this.f5197f.size(); i++) {
            arrayList.add(this.f5197f.valueAt(i));
        }
        return arrayList;
    }

    public void setAllowAdaptiveSelections(boolean z) {
        if (this.f5198g != z) {
            this.f5198g = z;
            m39187b();
        }
    }

    public void setAllowMultipleOverrides(boolean z) {
        if (this.f5199h != z) {
            this.f5199h = z;
            if (!z && this.f5197f.size() > 1) {
                for (int size = this.f5197f.size() - 1; size > 0; size--) {
                    this.f5197f.remove(size);
                }
            }
            m39187b();
        }
    }

    public void setShowDisableOption(boolean z) {
        this.f5194c.setVisibility(z ? 0 : 8);
    }

    public void setTrackNameProvider(AbstractC24660g abstractC24660g) {
        Objects.requireNonNull(abstractC24660g);
        this.f5200i = abstractC24660g;
        m39187b();
    }
}
