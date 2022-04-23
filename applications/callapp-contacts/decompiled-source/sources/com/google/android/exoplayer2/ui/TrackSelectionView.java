package com.google.android.exoplayer2.ui;

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
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.trackselection.DefaultTrackSelector;
import com.google.android.exoplayer2.trackselection.e;
import com.google.android.exoplayer2.ui.c;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/TrackSelectionView.class */
public class TrackSelectionView extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    private final int f22015a;

    /* renamed from: b  reason: collision with root package name */
    private final LayoutInflater f22016b;

    /* renamed from: c  reason: collision with root package name */
    private final CheckedTextView f22017c;

    /* renamed from: d  reason: collision with root package name */
    private final CheckedTextView f22018d;
    private final a e;
    private final SparseArray<DefaultTrackSelector.SelectionOverride> f;
    private boolean g;
    private boolean h;
    private i i;
    private CheckedTextView[][] j;
    private e.a k;
    private int l;
    private TrackGroupArray m;
    private boolean n;
    private Comparator<b> o;
    private c p;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/TrackSelectionView$a.class */
    public final class a implements View.OnClickListener {
        private a() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            TrackSelectionView.a(TrackSelectionView.this, view);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/TrackSelectionView$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f22020a;

        /* renamed from: b  reason: collision with root package name */
        public final int f22021b;

        /* renamed from: c  reason: collision with root package name */
        public final Format f22022c;

        public b(int i, int i2, Format format) {
            this.f22020a = i;
            this.f22021b = i2;
            this.f22022c = format;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/TrackSelectionView$c.class */
    public interface c {
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
        this.f = new SparseArray<>();
        setSaveFromParentEnabled(false);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{16843534});
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        this.f22015a = resourceId;
        obtainStyledAttributes.recycle();
        LayoutInflater from = LayoutInflater.from(context);
        this.f22016b = from;
        a aVar = new a();
        this.e = aVar;
        this.i = new com.google.android.exoplayer2.ui.a(getResources());
        this.m = TrackGroupArray.EMPTY;
        CheckedTextView checkedTextView = (CheckedTextView) from.inflate(17367055, (ViewGroup) this, false);
        this.f22017c = checkedTextView;
        checkedTextView.setBackgroundResource(resourceId);
        checkedTextView.setText(c.j.exo_track_selection_none);
        checkedTextView.setEnabled(false);
        checkedTextView.setFocusable(true);
        checkedTextView.setOnClickListener(aVar);
        checkedTextView.setVisibility(8);
        addView(checkedTextView);
        addView(from.inflate(c.h.exo_list_divider, (ViewGroup) this, false));
        CheckedTextView checkedTextView2 = (CheckedTextView) from.inflate(17367055, (ViewGroup) this, false);
        this.f22018d = checkedTextView2;
        checkedTextView2.setBackgroundResource(resourceId);
        checkedTextView2.setText(c.j.exo_track_selection_auto);
        checkedTextView2.setEnabled(false);
        checkedTextView2.setFocusable(true);
        checkedTextView2.setOnClickListener(aVar);
        addView(checkedTextView2);
    }

    /* JADX WARN: Type inference failed for: r1v8, types: [android.widget.CheckedTextView[], android.widget.CheckedTextView[][]] */
    private void a() {
        for (int childCount = getChildCount() - 1; childCount >= 3; childCount--) {
            removeViewAt(childCount);
        }
        if (this.k == null) {
            this.f22017c.setEnabled(false);
            this.f22018d.setEnabled(false);
            return;
        }
        this.f22017c.setEnabled(true);
        this.f22018d.setEnabled(true);
        TrackGroupArray trackGroupArray = this.k.f21939c[this.l];
        this.m = trackGroupArray;
        this.j = new CheckedTextView[trackGroupArray.length];
        boolean c2 = c();
        for (int i = 0; i < this.m.length; i++) {
            TrackGroup trackGroup = this.m.get(i);
            boolean a2 = a(i);
            this.j[i] = new CheckedTextView[trackGroup.length];
            int i2 = trackGroup.length;
            b[] bVarArr = new b[i2];
            for (int i3 = 0; i3 < trackGroup.length; i3++) {
                bVarArr[i3] = new b(i, i3, trackGroup.getFormat(i3));
            }
            Comparator<b> comparator = this.o;
            if (comparator != null) {
                Arrays.sort(bVarArr, comparator);
            }
            for (int i4 = 0; i4 < i2; i4++) {
                if (i4 == 0) {
                    addView(this.f22016b.inflate(c.h.exo_list_divider, (ViewGroup) this, false));
                }
                CheckedTextView checkedTextView = (CheckedTextView) this.f22016b.inflate((a2 || c2) ? 17367056 : 17367055, (ViewGroup) this, false);
                checkedTextView.setBackgroundResource(this.f22015a);
                checkedTextView.setText(this.i.a(bVarArr[i4].f22022c));
                checkedTextView.setTag(bVarArr[i4]);
                if (this.k.a(this.l, i, i4) == 4) {
                    checkedTextView.setFocusable(true);
                    checkedTextView.setOnClickListener(this.e);
                } else {
                    checkedTextView.setFocusable(false);
                    checkedTextView.setEnabled(false);
                }
                this.j[i][i4] = checkedTextView;
                addView(checkedTextView);
            }
        }
        b();
    }

    static /* synthetic */ void a(TrackSelectionView trackSelectionView, View view) {
        if (view == trackSelectionView.f22017c) {
            trackSelectionView.n = true;
            trackSelectionView.f.clear();
        } else if (view == trackSelectionView.f22018d) {
            trackSelectionView.n = false;
            trackSelectionView.f.clear();
        } else {
            trackSelectionView.n = false;
            b bVar = (b) com.google.android.exoplayer2.util.a.b(view.getTag());
            int i = bVar.f22020a;
            int i2 = bVar.f22021b;
            DefaultTrackSelector.SelectionOverride selectionOverride = trackSelectionView.f.get(i);
            com.google.android.exoplayer2.util.a.b(trackSelectionView.k);
            if (selectionOverride == null) {
                if (!trackSelectionView.h && trackSelectionView.f.size() > 0) {
                    trackSelectionView.f.clear();
                }
                trackSelectionView.f.put(i, new DefaultTrackSelector.SelectionOverride(i, i2));
            } else {
                int i3 = selectionOverride.length;
                int[] iArr = selectionOverride.tracks;
                boolean isChecked = ((CheckedTextView) view).isChecked();
                boolean a2 = trackSelectionView.a(i);
                boolean z = a2 || trackSelectionView.c();
                if (!isChecked || !z) {
                    if (!isChecked) {
                        if (a2) {
                            int[] copyOf = Arrays.copyOf(iArr, iArr.length + 1);
                            copyOf[copyOf.length - 1] = i2;
                            trackSelectionView.f.put(i, new DefaultTrackSelector.SelectionOverride(i, copyOf));
                        } else {
                            trackSelectionView.f.put(i, new DefaultTrackSelector.SelectionOverride(i, i2));
                        }
                    }
                } else if (i3 == 1) {
                    trackSelectionView.f.remove(i);
                } else {
                    int[] iArr2 = new int[iArr.length - 1];
                    int i4 = 0;
                    for (int i5 : iArr) {
                        i4 = i4;
                        if (i5 != i2) {
                            iArr2[i4] = i5;
                            i4++;
                        }
                    }
                    trackSelectionView.f.put(i, new DefaultTrackSelector.SelectionOverride(i, iArr2));
                }
            }
        }
        trackSelectionView.b();
        if (trackSelectionView.p != null) {
            ArrayList arrayList = new ArrayList(trackSelectionView.f.size());
            for (int i6 = 0; i6 < trackSelectionView.f.size(); i6++) {
                arrayList.add(trackSelectionView.f.valueAt(i6));
            }
        }
    }

    @RequiresNonNull({"mappedTrackInfo"})
    private boolean a(int i) {
        return this.g && this.m.get(i).length > 1 && this.k.a(this.l, i) != 0;
    }

    private void b() {
        this.f22017c.setChecked(this.n);
        this.f22018d.setChecked(!this.n && this.f.size() == 0);
        for (int i = 0; i < this.j.length; i++) {
            DefaultTrackSelector.SelectionOverride selectionOverride = this.f.get(i);
            int i2 = 0;
            while (true) {
                CheckedTextView[][] checkedTextViewArr = this.j;
                if (i2 < checkedTextViewArr[i].length) {
                    if (selectionOverride != null) {
                        this.j[i][i2].setChecked(selectionOverride.containsTrack(((b) com.google.android.exoplayer2.util.a.b(checkedTextViewArr[i][i2].getTag())).f22021b));
                    } else {
                        checkedTextViewArr[i][i2].setChecked(false);
                    }
                    i2++;
                }
            }
        }
    }

    private boolean c() {
        return this.h && this.m.length > 1;
    }

    public void setAllowAdaptiveSelections(boolean z) {
        if (this.g != z) {
            this.g = z;
            a();
        }
    }

    public void setAllowMultipleOverrides(boolean z) {
        if (this.h != z) {
            this.h = z;
            if (!z && this.f.size() > 1) {
                for (int size = this.f.size() - 1; size > 0; size--) {
                    this.f.remove(size);
                }
            }
            a();
        }
    }

    public void setShowDisableOption(boolean z) {
        this.f22017c.setVisibility(z ? 0 : 8);
    }

    public void setTrackNameProvider(i iVar) {
        this.i = (i) com.google.android.exoplayer2.util.a.b(iVar);
        a();
    }
}
