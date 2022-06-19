package com.google.android.exoplayer2.p005ui;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckedTextView;
import android.widget.LinearLayout;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.trackselection.DefaultTrackSelector;
import com.google.android.exoplayer2.trackselection.DefaultTrackSelector$Parameters;
import com.google.android.exoplayer2.trackselection.DefaultTrackSelector$ParametersBuilder;
import com.google.android.exoplayer2.trackselection.DefaultTrackSelector$SelectionOverride;
import com.google.android.exoplayer2.trackselection.MappingTrackSelector$MappedTrackInfo;
import com.google.android.exoplayer2.util.Assertions;
import java.util.Arrays;
/* renamed from: com.google.android.exoplayer2.ui.TrackSelectionView */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ui/TrackSelectionView.class */
public class TrackSelectionView extends LinearLayout {
    private boolean allowAdaptiveSelections;
    private final ComponentListener componentListener;
    private final CheckedTextView defaultView;
    private final CheckedTextView disableView;
    private final LayoutInflater inflater;
    private boolean isDisabled;
    private DefaultTrackSelector$SelectionOverride override;
    private int rendererIndex;
    private final int selectableItemBackgroundResourceId;
    private TrackGroupArray trackGroups;
    private TrackNameProvider trackNameProvider;
    private DefaultTrackSelector trackSelector;
    private CheckedTextView[][] trackViews;

    /* renamed from: com.google.android.exoplayer2.ui.TrackSelectionView$ComponentListener */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ui/TrackSelectionView$ComponentListener.class */
    public class ComponentListener implements View.OnClickListener {
        private ComponentListener() {
            TrackSelectionView.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TrackSelectionView.this.onClick(view);
        }
    }

    public TrackSelectionView(Context context) {
        this(context, null);
    }

    public TrackSelectionView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TrackSelectionView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{16843534});
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        this.selectableItemBackgroundResourceId = resourceId;
        obtainStyledAttributes.recycle();
        LayoutInflater from = LayoutInflater.from(context);
        this.inflater = from;
        ComponentListener componentListener = new ComponentListener();
        this.componentListener = componentListener;
        this.trackNameProvider = new DefaultTrackNameProvider(getResources());
        CheckedTextView checkedTextView = (CheckedTextView) from.inflate(17367055, (ViewGroup) this, false);
        this.disableView = checkedTextView;
        checkedTextView.setBackgroundResource(resourceId);
        checkedTextView.setText(C0577R.string.exo_track_selection_none);
        checkedTextView.setEnabled(false);
        checkedTextView.setFocusable(true);
        checkedTextView.setOnClickListener(componentListener);
        checkedTextView.setVisibility(8);
        addView(checkedTextView);
        addView(from.inflate(C0577R.C0580layout.exo_list_divider, (ViewGroup) this, false));
        CheckedTextView checkedTextView2 = (CheckedTextView) from.inflate(17367055, (ViewGroup) this, false);
        this.defaultView = checkedTextView2;
        checkedTextView2.setBackgroundResource(resourceId);
        checkedTextView2.setText(C0577R.string.exo_track_selection_auto);
        checkedTextView2.setEnabled(false);
        checkedTextView2.setFocusable(true);
        checkedTextView2.setOnClickListener(componentListener);
        addView(checkedTextView2);
    }

    public void applySelection() {
        DefaultTrackSelector$ParametersBuilder buildUponParameters = this.trackSelector.buildUponParameters();
        buildUponParameters.setRendererDisabled(this.rendererIndex, this.isDisabled);
        DefaultTrackSelector$SelectionOverride defaultTrackSelector$SelectionOverride = this.override;
        if (defaultTrackSelector$SelectionOverride != null) {
            buildUponParameters.setSelectionOverride(this.rendererIndex, this.trackGroups, defaultTrackSelector$SelectionOverride);
        } else {
            buildUponParameters.clearSelectionOverrides(this.rendererIndex);
        }
        this.trackSelector.setParameters(buildUponParameters);
    }

    public static Pair<AlertDialog, TrackSelectionView> getDialog(Activity activity, CharSequence charSequence, DefaultTrackSelector defaultTrackSelector, int i) {
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        View inflate = LayoutInflater.from(builder.getContext()).inflate(C0577R.C0580layout.exo_track_selection_dialog, (ViewGroup) null);
        TrackSelectionView trackSelectionView = (TrackSelectionView) inflate.findViewById(C0577R.C0579id.exo_track_selection_view);
        trackSelectionView.init(defaultTrackSelector, i);
        return Pair.create(builder.setTitle(charSequence).setView(inflate).setPositiveButton(17039370, new DialogInterface.OnClickListener() { // from class: com.google.android.exoplayer2.ui.TrackSelectionView.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                TrackSelectionView.this.applySelection();
            }
        }).setNegativeButton(17039360, (DialogInterface.OnClickListener) null).create(), trackSelectionView);
    }

    private static int[] getTracksAdding(int[] iArr, int i) {
        int[] copyOf = Arrays.copyOf(iArr, iArr.length + 1);
        copyOf[copyOf.length - 1] = i;
        return copyOf;
    }

    private static int[] getTracksRemoving(int[] iArr, int i) {
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

    public void onClick(View view) {
        if (view == this.disableView) {
            onDisableViewClicked();
        } else if (view == this.defaultView) {
            onDefaultViewClicked();
        } else {
            onTrackViewClicked(view);
        }
        updateViewStates();
    }

    private void onDefaultViewClicked() {
        this.isDisabled = false;
        this.override = null;
    }

    private void onDisableViewClicked() {
        this.isDisabled = true;
        this.override = null;
    }

    private void onTrackViewClicked(View view) {
        DefaultTrackSelector$SelectionOverride defaultTrackSelector$SelectionOverride;
        this.isDisabled = false;
        Pair pair = (Pair) view.getTag();
        int intValue = ((Integer) pair.first).intValue();
        int intValue2 = ((Integer) pair.second).intValue();
        DefaultTrackSelector$SelectionOverride defaultTrackSelector$SelectionOverride2 = this.override;
        if (defaultTrackSelector$SelectionOverride2 == null || defaultTrackSelector$SelectionOverride2.groupIndex != intValue || !this.allowAdaptiveSelections) {
            this.override = new DefaultTrackSelector$SelectionOverride(intValue, intValue2);
            return;
        }
        int i = defaultTrackSelector$SelectionOverride2.length;
        int[] iArr = defaultTrackSelector$SelectionOverride2.tracks;
        if (!((CheckedTextView) view).isChecked()) {
            defaultTrackSelector$SelectionOverride = new DefaultTrackSelector$SelectionOverride(intValue, getTracksAdding(iArr, intValue2));
        } else if (i == 1) {
            this.override = null;
            this.isDisabled = true;
            return;
        } else {
            defaultTrackSelector$SelectionOverride = new DefaultTrackSelector$SelectionOverride(intValue, getTracksRemoving(iArr, intValue2));
        }
        this.override = defaultTrackSelector$SelectionOverride;
    }

    private void updateViewStates() {
        this.disableView.setChecked(this.isDisabled);
        this.defaultView.setChecked(!this.isDisabled && this.override == null);
        int i = 0;
        while (i < this.trackViews.length) {
            int i2 = 0;
            while (true) {
                CheckedTextView[][] checkedTextViewArr = this.trackViews;
                if (i2 < checkedTextViewArr[i].length) {
                    CheckedTextView checkedTextView = checkedTextViewArr[i][i2];
                    DefaultTrackSelector$SelectionOverride defaultTrackSelector$SelectionOverride = this.override;
                    checkedTextView.setChecked(defaultTrackSelector$SelectionOverride != null && defaultTrackSelector$SelectionOverride.groupIndex == i && defaultTrackSelector$SelectionOverride.containsTrack(i2));
                    i2++;
                }
            }
            i++;
        }
    }

    /* JADX WARN: Type inference failed for: r1v15, types: [android.widget.CheckedTextView[], android.widget.CheckedTextView[][]] */
    private void updateViews() {
        for (int childCount = getChildCount() - 1; childCount >= 3; childCount--) {
            removeViewAt(childCount);
        }
        DefaultTrackSelector defaultTrackSelector = this.trackSelector;
        MappingTrackSelector$MappedTrackInfo currentMappedTrackInfo = defaultTrackSelector == null ? null : defaultTrackSelector.getCurrentMappedTrackInfo();
        if (this.trackSelector == null || currentMappedTrackInfo == null) {
            this.disableView.setEnabled(false);
            this.defaultView.setEnabled(false);
            return;
        }
        this.disableView.setEnabled(true);
        this.defaultView.setEnabled(true);
        this.trackGroups = currentMappedTrackInfo.getTrackGroups(this.rendererIndex);
        DefaultTrackSelector$Parameters parameters = this.trackSelector.getParameters();
        this.isDisabled = parameters.getRendererDisabled(this.rendererIndex);
        this.override = parameters.getSelectionOverride(this.rendererIndex, this.trackGroups);
        this.trackViews = new CheckedTextView[this.trackGroups.length];
        int i = 0;
        while (true) {
            TrackGroupArray trackGroupArray = this.trackGroups;
            if (i >= trackGroupArray.length) {
                updateViewStates();
                return;
            }
            TrackGroup trackGroup = trackGroupArray.get(i);
            boolean z = this.allowAdaptiveSelections && this.trackGroups.get(i).length > 1 && currentMappedTrackInfo.getAdaptiveSupport(this.rendererIndex, i, false) != 0;
            this.trackViews[i] = new CheckedTextView[trackGroup.length];
            for (int i2 = 0; i2 < trackGroup.length; i2++) {
                if (i2 == 0) {
                    addView(this.inflater.inflate(C0577R.C0580layout.exo_list_divider, (ViewGroup) this, false));
                }
                CheckedTextView checkedTextView = (CheckedTextView) this.inflater.inflate(z ? 17367056 : 17367055, (ViewGroup) this, false);
                checkedTextView.setBackgroundResource(this.selectableItemBackgroundResourceId);
                checkedTextView.setText(this.trackNameProvider.getTrackName(trackGroup.getFormat(i2)));
                if (currentMappedTrackInfo.getTrackSupport(this.rendererIndex, i, i2) == 4) {
                    checkedTextView.setFocusable(true);
                    checkedTextView.setTag(Pair.create(Integer.valueOf(i), Integer.valueOf(i2)));
                    checkedTextView.setOnClickListener(this.componentListener);
                } else {
                    checkedTextView.setFocusable(false);
                    checkedTextView.setEnabled(false);
                }
                this.trackViews[i][i2] = checkedTextView;
                addView(checkedTextView);
            }
            i++;
        }
    }

    public void init(DefaultTrackSelector defaultTrackSelector, int i) {
        this.trackSelector = defaultTrackSelector;
        this.rendererIndex = i;
        updateViews();
    }

    public void setAllowAdaptiveSelections(boolean z) {
        if (this.allowAdaptiveSelections != z) {
            this.allowAdaptiveSelections = z;
            updateViews();
        }
    }

    public void setShowDisableOption(boolean z) {
        this.disableView.setVisibility(z ? 0 : 8);
    }

    public void setTrackNameProvider(TrackNameProvider trackNameProvider) {
        this.trackNameProvider = (TrackNameProvider) Assertions.checkNotNull(trackNameProvider);
        updateViews();
    }
}
