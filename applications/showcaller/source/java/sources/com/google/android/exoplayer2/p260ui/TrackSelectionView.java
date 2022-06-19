package com.google.android.exoplayer2.p260ui;

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
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.trackselection.AbstractC5405d;
import com.google.android.exoplayer2.trackselection.DefaultTrackSelector;
import com.google.android.exoplayer2.util.C5508e;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* renamed from: com.google.android.exoplayer2.ui.TrackSelectionView */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ui/TrackSelectionView.class */
public class TrackSelectionView extends LinearLayout {

    /* renamed from: d */
    private final int f17542d;

    /* renamed from: e */
    private final LayoutInflater f17543e;

    /* renamed from: f */
    private final CheckedTextView f17544f;

    /* renamed from: g */
    private final CheckedTextView f17545g;

    /* renamed from: h */
    private final View$OnClickListenerC5430b f17546h;

    /* renamed from: i */
    private final SparseArray<DefaultTrackSelector.SelectionOverride> f17547i;

    /* renamed from: j */
    private boolean f17548j;

    /* renamed from: k */
    private boolean f17549k;

    /* renamed from: l */
    private AbstractC5446n f17550l;

    /* renamed from: m */
    private CheckedTextView[][] f17551m;

    /* renamed from: n */
    private AbstractC5405d.C5406a f17552n;

    /* renamed from: o */
    private int f17553o;

    /* renamed from: p */
    private TrackGroupArray f17554p;

    /* renamed from: q */
    private boolean f17555q;

    /* renamed from: r */
    private AbstractC5431c f17556r;

    /* renamed from: com.google.android.exoplayer2.ui.TrackSelectionView$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ui/TrackSelectionView$b.class */
    public class View$OnClickListenerC5430b implements View.OnClickListener {
        private View$OnClickListenerC5430b() {
            TrackSelectionView.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TrackSelectionView.this.m19118d(view);
        }
    }

    /* renamed from: com.google.android.exoplayer2.ui.TrackSelectionView$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ui/TrackSelectionView$c.class */
    public interface AbstractC5431c {
        /* renamed from: a */
        void m19110a(boolean z, List<DefaultTrackSelector.SelectionOverride> list);
    }

    public TrackSelectionView(Context context) {
        this(context, null);
    }

    public TrackSelectionView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TrackSelectionView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        setOrientation(1);
        this.f17547i = new SparseArray<>();
        setSaveFromParentEnabled(false);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{16843534});
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        this.f17542d = resourceId;
        obtainStyledAttributes.recycle();
        LayoutInflater from = LayoutInflater.from(context);
        this.f17543e = from;
        View$OnClickListenerC5430b view$OnClickListenerC5430b = new View$OnClickListenerC5430b();
        this.f17546h = view$OnClickListenerC5430b;
        this.f17550l = new C5435d(getResources());
        this.f17554p = TrackGroupArray.f16307d;
        CheckedTextView checkedTextView = (CheckedTextView) from.inflate(17367055, (ViewGroup) this, false);
        this.f17544f = checkedTextView;
        checkedTextView.setBackgroundResource(resourceId);
        checkedTextView.setText(C5441j.exo_track_selection_none);
        checkedTextView.setEnabled(false);
        checkedTextView.setFocusable(true);
        checkedTextView.setOnClickListener(view$OnClickListenerC5430b);
        checkedTextView.setVisibility(8);
        addView(checkedTextView);
        addView(from.inflate(C5440i.exo_list_divider, (ViewGroup) this, false));
        CheckedTextView checkedTextView2 = (CheckedTextView) from.inflate(17367055, (ViewGroup) this, false);
        this.f17545g = checkedTextView2;
        checkedTextView2.setBackgroundResource(resourceId);
        checkedTextView2.setText(C5441j.exo_track_selection_auto);
        checkedTextView2.setEnabled(false);
        checkedTextView2.setFocusable(true);
        checkedTextView2.setOnClickListener(view$OnClickListenerC5430b);
        addView(checkedTextView2);
    }

    /* renamed from: b */
    private static int[] m19120b(int[] iArr, int i) {
        int[] copyOf = Arrays.copyOf(iArr, iArr.length + 1);
        copyOf[copyOf.length - 1] = i;
        return copyOf;
    }

    /* renamed from: c */
    private static int[] m19119c(int[] iArr, int i) {
        int[] iArr2 = new int[iArr.length - 1];
        int length = iArr.length;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int i4 = i3;
            if (i2 < length) {
                int i5 = iArr[i2];
                int i6 = i4;
                if (i5 != i) {
                    iArr2[i4] = i5;
                    i6 = i4 + 1;
                }
                i2++;
                i3 = i6;
            } else {
                return iArr2;
            }
        }
    }

    /* renamed from: d */
    public void m19118d(View view) {
        if (view == this.f17544f) {
            m19116f();
        } else if (view == this.f17545g) {
            m19117e();
        } else {
            m19115g(view);
        }
        m19112j();
        AbstractC5431c abstractC5431c = this.f17556r;
        if (abstractC5431c != null) {
            abstractC5431c.m19110a(getIsDisabled(), getOverrides());
        }
    }

    /* renamed from: e */
    private void m19117e() {
        this.f17555q = false;
        this.f17547i.clear();
    }

    /* renamed from: f */
    private void m19116f() {
        this.f17555q = true;
        this.f17547i.clear();
    }

    /* renamed from: g */
    private void m19115g(View view) {
        this.f17555q = false;
        Pair pair = (Pair) view.getTag();
        int intValue = ((Integer) pair.first).intValue();
        int intValue2 = ((Integer) pair.second).intValue();
        DefaultTrackSelector.SelectionOverride selectionOverride = this.f17547i.get(intValue);
        C5508e.m18911e(this.f17552n);
        if (selectionOverride == null) {
            if (!this.f17549k && this.f17547i.size() > 0) {
                this.f17547i.clear();
            }
            this.f17547i.put(intValue, new DefaultTrackSelector.SelectionOverride(intValue, intValue2));
            return;
        }
        int i = selectionOverride.f17282f;
        int[] iArr = selectionOverride.f17281e;
        boolean isChecked = ((CheckedTextView) view).isChecked();
        boolean m19114h = m19114h(intValue);
        boolean z = m19114h || m19113i();
        if (isChecked && z) {
            if (i == 1) {
                this.f17547i.remove(intValue);
            } else {
                this.f17547i.put(intValue, new DefaultTrackSelector.SelectionOverride(intValue, m19119c(iArr, intValue2)));
            }
        } else if (isChecked) {
        } else {
            if (m19114h) {
                this.f17547i.put(intValue, new DefaultTrackSelector.SelectionOverride(intValue, m19120b(iArr, intValue2)));
            } else {
                this.f17547i.put(intValue, new DefaultTrackSelector.SelectionOverride(intValue, intValue2));
            }
        }
    }

    @RequiresNonNull({"mappedTrackInfo"})
    /* renamed from: h */
    private boolean m19114h(int i) {
        boolean z = true;
        if (!this.f17548j || this.f17554p.m20155a(i).f16304d <= 1 || this.f17552n.m19302a(this.f17553o, i, false) == 0) {
            z = false;
        }
        return z;
    }

    /* renamed from: i */
    private boolean m19113i() {
        boolean z = true;
        if (!this.f17549k || this.f17554p.f16308e <= 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: j */
    private void m19112j() {
        this.f17544f.setChecked(this.f17555q);
        this.f17545g.setChecked(!this.f17555q && this.f17547i.size() == 0);
        for (int i = 0; i < this.f17551m.length; i++) {
            DefaultTrackSelector.SelectionOverride selectionOverride = this.f17547i.get(i);
            int i2 = 0;
            while (true) {
                CheckedTextView[][] checkedTextViewArr = this.f17551m;
                if (i2 < checkedTextViewArr[i].length) {
                    checkedTextViewArr[i][i2].setChecked(selectionOverride != null && selectionOverride.m19332a(i2));
                    i2++;
                }
            }
        }
    }

    /* JADX WARN: Type inference failed for: r1v9, types: [android.widget.CheckedTextView[], android.widget.CheckedTextView[][]] */
    /* renamed from: k */
    private void m19111k() {
        for (int childCount = getChildCount() - 1; childCount >= 3; childCount--) {
            removeViewAt(childCount);
        }
        if (this.f17552n == null) {
            this.f17544f.setEnabled(false);
            this.f17545g.setEnabled(false);
            return;
        }
        this.f17544f.setEnabled(true);
        this.f17545g.setEnabled(true);
        TrackGroupArray m19298e = this.f17552n.m19298e(this.f17553o);
        this.f17554p = m19298e;
        this.f17551m = new CheckedTextView[m19298e.f16308e];
        boolean m19113i = m19113i();
        int i = 0;
        while (true) {
            TrackGroupArray trackGroupArray = this.f17554p;
            if (i >= trackGroupArray.f16308e) {
                m19112j();
                return;
            }
            TrackGroup m20155a = trackGroupArray.m20155a(i);
            boolean m19114h = m19114h(i);
            this.f17551m[i] = new CheckedTextView[m20155a.f16304d];
            for (int i2 = 0; i2 < m20155a.f16304d; i2++) {
                if (i2 == 0) {
                    addView(this.f17543e.inflate(C5440i.exo_list_divider, (ViewGroup) this, false));
                }
                CheckedTextView checkedTextView = (CheckedTextView) this.f17543e.inflate((m19114h || m19113i) ? 17367056 : 17367055, (ViewGroup) this, false);
                checkedTextView.setBackgroundResource(this.f17542d);
                checkedTextView.setText(this.f17550l.mo19089a(m20155a.m20159a(i2)));
                if (this.f17552n.m19297f(this.f17553o, i, i2) == 4) {
                    checkedTextView.setFocusable(true);
                    checkedTextView.setTag(Pair.create(Integer.valueOf(i), Integer.valueOf(i2)));
                    checkedTextView.setOnClickListener(this.f17546h);
                } else {
                    checkedTextView.setFocusable(false);
                    checkedTextView.setEnabled(false);
                }
                this.f17551m[i][i2] = checkedTextView;
                addView(checkedTextView);
            }
            i++;
        }
    }

    public boolean getIsDisabled() {
        return this.f17555q;
    }

    public List<DefaultTrackSelector.SelectionOverride> getOverrides() {
        ArrayList arrayList = new ArrayList(this.f17547i.size());
        for (int i = 0; i < this.f17547i.size(); i++) {
            arrayList.add(this.f17547i.valueAt(i));
        }
        return arrayList;
    }

    public void setAllowAdaptiveSelections(boolean z) {
        if (this.f17548j != z) {
            this.f17548j = z;
            m19111k();
        }
    }

    public void setAllowMultipleOverrides(boolean z) {
        if (this.f17549k != z) {
            this.f17549k = z;
            if (!z && this.f17547i.size() > 1) {
                for (int size = this.f17547i.size() - 1; size > 0; size--) {
                    this.f17547i.remove(size);
                }
            }
            m19111k();
        }
    }

    public void setShowDisableOption(boolean z) {
        this.f17544f.setVisibility(z ? 0 : 8);
    }

    public void setTrackNameProvider(AbstractC5446n abstractC5446n) {
        this.f17550l = (AbstractC5446n) C5508e.m18911e(abstractC5446n);
        m19111k();
    }
}
