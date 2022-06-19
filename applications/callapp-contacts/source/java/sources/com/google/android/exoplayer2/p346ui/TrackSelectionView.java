package com.google.android.exoplayer2.p346ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckedTextView;
import android.widget.LinearLayout;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.p346ui.C11479c;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.trackselection.AbstractC11440e;
import com.google.android.exoplayer2.trackselection.DefaultTrackSelector;
import com.google.android.exoplayer2.util.C11593a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* renamed from: com.google.android.exoplayer2.ui.TrackSelectionView */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/TrackSelectionView.class */
public class TrackSelectionView extends LinearLayout {

    /* renamed from: a */
    private final int f38137a;

    /* renamed from: b */
    private final LayoutInflater f38138b;

    /* renamed from: c */
    private final CheckedTextView f38139c;

    /* renamed from: d */
    private final CheckedTextView f38140d;

    /* renamed from: e */
    private final View$OnClickListenerC11472a f38141e;

    /* renamed from: f */
    private final SparseArray<DefaultTrackSelector.SelectionOverride> f38142f;

    /* renamed from: g */
    private boolean f38143g;

    /* renamed from: h */
    private boolean f38144h;

    /* renamed from: i */
    private AbstractC11511i f38145i;

    /* renamed from: j */
    private CheckedTextView[][] f38146j;

    /* renamed from: k */
    private AbstractC11440e.C11441a f38147k;

    /* renamed from: l */
    private int f38148l;

    /* renamed from: m */
    private TrackGroupArray f38149m;

    /* renamed from: n */
    private boolean f38150n;

    /* renamed from: o */
    private Comparator<C11473b> f38151o;

    /* renamed from: p */
    private AbstractC11474c f38152p;

    /* renamed from: com.google.android.exoplayer2.ui.TrackSelectionView$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/TrackSelectionView$a.class */
    public final class View$OnClickListenerC11472a implements View.OnClickListener {
        private View$OnClickListenerC11472a() {
            TrackSelectionView.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            TrackSelectionView.m20285a(TrackSelectionView.this, view);
        }
    }

    /* renamed from: com.google.android.exoplayer2.ui.TrackSelectionView$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/TrackSelectionView$b.class */
    public static final class C11473b {

        /* renamed from: a */
        public final int f38154a;

        /* renamed from: b */
        public final int f38155b;

        /* renamed from: c */
        public final Format f38156c;

        public C11473b(int i, int i2, Format format) {
            this.f38154a = i;
            this.f38155b = i2;
            this.f38156c = format;
        }
    }

    /* renamed from: com.google.android.exoplayer2.ui.TrackSelectionView$c */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/TrackSelectionView$c.class */
    public interface AbstractC11474c {
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
        this.f38142f = new SparseArray<>();
        setSaveFromParentEnabled(false);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{16843534});
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        this.f38137a = resourceId;
        obtainStyledAttributes.recycle();
        LayoutInflater from = LayoutInflater.from(context);
        this.f38138b = from;
        View$OnClickListenerC11472a view$OnClickListenerC11472a = new View$OnClickListenerC11472a();
        this.f38141e = view$OnClickListenerC11472a;
        this.f38145i = new C11477a(getResources());
        this.f38149m = TrackGroupArray.EMPTY;
        CheckedTextView checkedTextView = (CheckedTextView) from.inflate(17367055, (ViewGroup) this, false);
        this.f38139c = checkedTextView;
        checkedTextView.setBackgroundResource(resourceId);
        checkedTextView.setText(C11479c.C11489j.exo_track_selection_none);
        checkedTextView.setEnabled(false);
        checkedTextView.setFocusable(true);
        checkedTextView.setOnClickListener(view$OnClickListenerC11472a);
        checkedTextView.setVisibility(8);
        addView(checkedTextView);
        addView(from.inflate(C11479c.C11487h.exo_list_divider, (ViewGroup) this, false));
        CheckedTextView checkedTextView2 = (CheckedTextView) from.inflate(17367055, (ViewGroup) this, false);
        this.f38140d = checkedTextView2;
        checkedTextView2.setBackgroundResource(resourceId);
        checkedTextView2.setText(C11479c.C11489j.exo_track_selection_auto);
        checkedTextView2.setEnabled(false);
        checkedTextView2.setFocusable(true);
        checkedTextView2.setOnClickListener(view$OnClickListenerC11472a);
        addView(checkedTextView2);
    }

    /* JADX WARN: Type inference failed for: r1v8, types: [android.widget.CheckedTextView[], android.widget.CheckedTextView[][]] */
    /* renamed from: a */
    private void m20287a() {
        for (int childCount = getChildCount() - 1; childCount >= 3; childCount--) {
            removeViewAt(childCount);
        }
        if (this.f38147k == null) {
            this.f38139c.setEnabled(false);
            this.f38140d.setEnabled(false);
            return;
        }
        this.f38139c.setEnabled(true);
        this.f38140d.setEnabled(true);
        TrackGroupArray trackGroupArray = this.f38147k.f37823c[this.f38148l];
        this.f38149m = trackGroupArray;
        this.f38146j = new CheckedTextView[trackGroupArray.length];
        boolean m20283c = m20283c();
        for (int i = 0; i < this.f38149m.length; i++) {
            TrackGroup trackGroup = this.f38149m.get(i);
            boolean m20286a = m20286a(i);
            this.f38146j[i] = new CheckedTextView[trackGroup.length];
            int i2 = trackGroup.length;
            C11473b[] c11473bArr = new C11473b[i2];
            for (int i3 = 0; i3 < trackGroup.length; i3++) {
                c11473bArr[i3] = new C11473b(i, i3, trackGroup.getFormat(i3));
            }
            Comparator<C11473b> comparator = this.f38151o;
            if (comparator != null) {
                Arrays.sort(c11473bArr, comparator);
            }
            for (int i4 = 0; i4 < i2; i4++) {
                if (i4 == 0) {
                    addView(this.f38138b.inflate(C11479c.C11487h.exo_list_divider, (ViewGroup) this, false));
                }
                CheckedTextView checkedTextView = (CheckedTextView) this.f38138b.inflate((m20286a || m20283c) ? 17367056 : 17367055, (ViewGroup) this, false);
                checkedTextView.setBackgroundResource(this.f38137a);
                checkedTextView.setText(this.f38145i.mo20227a(c11473bArr[i4].f38156c));
                checkedTextView.setTag(c11473bArr[i4]);
                if (this.f38147k.m20562a(this.f38148l, i, i4) == 4) {
                    checkedTextView.setFocusable(true);
                    checkedTextView.setOnClickListener(this.f38141e);
                } else {
                    checkedTextView.setFocusable(false);
                    checkedTextView.setEnabled(false);
                }
                this.f38146j[i][i4] = checkedTextView;
                addView(checkedTextView);
            }
        }
        m20284b();
    }

    /* renamed from: a */
    static /* synthetic */ void m20285a(TrackSelectionView trackSelectionView, View view) {
        if (view == trackSelectionView.f38139c) {
            trackSelectionView.f38150n = true;
            trackSelectionView.f38142f.clear();
        } else if (view == trackSelectionView.f38140d) {
            trackSelectionView.f38150n = false;
            trackSelectionView.f38142f.clear();
        } else {
            trackSelectionView.f38150n = false;
            C11473b c11473b = (C11473b) C11593a.m20020b(view.getTag());
            int i = c11473b.f38154a;
            int i2 = c11473b.f38155b;
            DefaultTrackSelector.SelectionOverride selectionOverride = trackSelectionView.f38142f.get(i);
            C11593a.m20020b(trackSelectionView.f38147k);
            if (selectionOverride == null) {
                if (!trackSelectionView.f38144h && trackSelectionView.f38142f.size() > 0) {
                    trackSelectionView.f38142f.clear();
                }
                trackSelectionView.f38142f.put(i, new DefaultTrackSelector.SelectionOverride(i, i2));
            } else {
                int i3 = selectionOverride.length;
                int[] iArr = selectionOverride.tracks;
                boolean isChecked = ((CheckedTextView) view).isChecked();
                boolean m20286a = trackSelectionView.m20286a(i);
                boolean z = m20286a || trackSelectionView.m20283c();
                if (!isChecked || !z) {
                    if (!isChecked) {
                        if (m20286a) {
                            int[] copyOf = Arrays.copyOf(iArr, iArr.length + 1);
                            copyOf[copyOf.length - 1] = i2;
                            trackSelectionView.f38142f.put(i, new DefaultTrackSelector.SelectionOverride(i, copyOf));
                        } else {
                            trackSelectionView.f38142f.put(i, new DefaultTrackSelector.SelectionOverride(i, i2));
                        }
                    }
                } else if (i3 == 1) {
                    trackSelectionView.f38142f.remove(i);
                } else {
                    int[] iArr2 = new int[iArr.length - 1];
                    int length = iArr.length;
                    int i4 = 0;
                    int i5 = 0;
                    while (true) {
                        int i6 = i5;
                        if (i4 >= length) {
                            break;
                        }
                        int i7 = iArr[i4];
                        int i8 = i6;
                        if (i7 != i2) {
                            iArr2[i6] = i7;
                            i8 = i6 + 1;
                        }
                        i4++;
                        i5 = i8;
                    }
                    trackSelectionView.f38142f.put(i, new DefaultTrackSelector.SelectionOverride(i, iArr2));
                }
            }
        }
        trackSelectionView.m20284b();
        if (trackSelectionView.f38152p != null) {
            ArrayList arrayList = new ArrayList(trackSelectionView.f38142f.size());
            for (int i9 = 0; i9 < trackSelectionView.f38142f.size(); i9++) {
                arrayList.add(trackSelectionView.f38142f.valueAt(i9));
            }
        }
    }

    @RequiresNonNull({"mappedTrackInfo"})
    /* renamed from: a */
    private boolean m20286a(int i) {
        return this.f38143g && this.f38149m.get(i).length > 1 && this.f38147k.m20563a(this.f38148l, i) != 0;
    }

    /* renamed from: b */
    private void m20284b() {
        this.f38139c.setChecked(this.f38150n);
        this.f38140d.setChecked(!this.f38150n && this.f38142f.size() == 0);
        for (int i = 0; i < this.f38146j.length; i++) {
            DefaultTrackSelector.SelectionOverride selectionOverride = this.f38142f.get(i);
            int i2 = 0;
            while (true) {
                CheckedTextView[][] checkedTextViewArr = this.f38146j;
                if (i2 < checkedTextViewArr[i].length) {
                    if (selectionOverride != null) {
                        this.f38146j[i][i2].setChecked(selectionOverride.containsTrack(((C11473b) C11593a.m20020b(checkedTextViewArr[i][i2].getTag())).f38155b));
                    } else {
                        checkedTextViewArr[i][i2].setChecked(false);
                    }
                    i2++;
                }
            }
        }
    }

    /* renamed from: c */
    private boolean m20283c() {
        return this.f38144h && this.f38149m.length > 1;
    }

    public void setAllowAdaptiveSelections(boolean z) {
        if (this.f38143g != z) {
            this.f38143g = z;
            m20287a();
        }
    }

    public void setAllowMultipleOverrides(boolean z) {
        if (this.f38144h != z) {
            this.f38144h = z;
            if (!z && this.f38142f.size() > 1) {
                for (int size = this.f38142f.size() - 1; size > 0; size--) {
                    this.f38142f.remove(size);
                }
            }
            m20287a();
        }
    }

    public void setShowDisableOption(boolean z) {
        this.f38139c.setVisibility(z ? 0 : 8);
    }

    public void setTrackNameProvider(AbstractC11511i abstractC11511i) {
        this.f38145i = (AbstractC11511i) C11593a.m20020b(abstractC11511i);
        m20287a();
    }
}
