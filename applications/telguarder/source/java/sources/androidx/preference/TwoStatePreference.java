package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import androidx.preference.Preference;
/* loaded from: classes-dex2jar.jar:androidx/preference/TwoStatePreference.class */
public abstract class TwoStatePreference extends Preference {
    protected boolean mChecked;
    private boolean mCheckedSet;
    private boolean mDisableDependentsState;
    private CharSequence mSummaryOff;
    private CharSequence mSummaryOn;

    /* loaded from: classes-dex2jar.jar:androidx/preference/TwoStatePreference$SavedState.class */
    public static class SavedState extends Preference.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: androidx.preference.TwoStatePreference.SavedState.1
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        boolean mChecked;

        SavedState(Parcel parcel) {
            super(parcel);
            this.mChecked = parcel.readInt() != 1 ? false : true;
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.mChecked ? 1 : 0);
        }
    }

    public TwoStatePreference(Context context) {
        this(context, null);
    }

    public TwoStatePreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TwoStatePreference(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public TwoStatePreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    public boolean getDisableDependentsState() {
        return this.mDisableDependentsState;
    }

    public CharSequence getSummaryOff() {
        return this.mSummaryOff;
    }

    public CharSequence getSummaryOn() {
        return this.mSummaryOn;
    }

    public boolean isChecked() {
        return this.mChecked;
    }

    @Override // androidx.preference.Preference
    public void onClick() {
        super.onClick();
        boolean z = !isChecked();
        if (callChangeListener(Boolean.valueOf(z))) {
            setChecked(z);
        }
    }

    @Override // androidx.preference.Preference
    protected Object onGetDefaultValue(TypedArray typedArray, int i) {
        return Boolean.valueOf(typedArray.getBoolean(i, false));
    }

    @Override // androidx.preference.Preference
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable == null || !parcelable.getClass().equals(SavedState.class)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setChecked(savedState.mChecked);
    }

    @Override // androidx.preference.Preference
    public Parcelable onSaveInstanceState() {
        Parcelable onSaveInstanceState = super.onSaveInstanceState();
        if (isPersistent()) {
            return onSaveInstanceState;
        }
        SavedState savedState = new SavedState(onSaveInstanceState);
        savedState.mChecked = isChecked();
        return savedState;
    }

    @Override // androidx.preference.Preference
    protected void onSetInitialValue(Object obj) {
        Boolean bool = obj;
        if (obj == null) {
            bool = false;
        }
        setChecked(getPersistedBoolean(((Boolean) bool).booleanValue()));
    }

    public void setChecked(boolean z) {
        boolean z2 = this.mChecked != z;
        if (z2 || !this.mCheckedSet) {
            this.mChecked = z;
            this.mCheckedSet = true;
            persistBoolean(z);
            if (!z2) {
                return;
            }
            notifyDependencyChange(shouldDisableDependents());
            notifyChanged();
        }
    }

    public void setDisableDependentsState(boolean z) {
        this.mDisableDependentsState = z;
    }

    public void setSummaryOff(int i) {
        setSummaryOff(getContext().getString(i));
    }

    public void setSummaryOff(CharSequence charSequence) {
        this.mSummaryOff = charSequence;
        if (!isChecked()) {
            notifyChanged();
        }
    }

    public void setSummaryOn(int i) {
        setSummaryOn(getContext().getString(i));
    }

    public void setSummaryOn(CharSequence charSequence) {
        this.mSummaryOn = charSequence;
        if (isChecked()) {
            notifyChanged();
        }
    }

    @Override // androidx.preference.Preference
    public boolean shouldDisableDependents() {
        boolean z = true;
        if (!(this.mDisableDependentsState ? this.mChecked : !this.mChecked)) {
            z = super.shouldDisableDependents();
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:29:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void syncSummaryView(android.view.View r4) {
        /*
            r3 = this;
            r0 = r4
            boolean r0 = r0 instanceof android.widget.TextView
            if (r0 != 0) goto L8
            return
        L8:
            r0 = r4
            android.widget.TextView r0 = (android.widget.TextView) r0
            r4 = r0
            r0 = 1
            r5 = r0
            r0 = r3
            boolean r0 = r0.mChecked
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L33
            r0 = r3
            java.lang.CharSequence r0 = r0.mSummaryOn
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L33
            r0 = r4
            r1 = r3
            java.lang.CharSequence r1 = r1.mSummaryOn
            r0.setText(r1)
        L2d:
            r0 = 0
            r8 = r0
            goto L55
        L33:
            r0 = r5
            r8 = r0
            r0 = r3
            boolean r0 = r0.mChecked
            if (r0 != 0) goto L55
            r0 = r5
            r8 = r0
            r0 = r3
            java.lang.CharSequence r0 = r0.mSummaryOff
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L55
            r0 = r4
            r1 = r3
            java.lang.CharSequence r1 = r1.mSummaryOff
            r0.setText(r1)
            goto L2d
        L55:
            r0 = r8
            r5 = r0
            r0 = r8
            if (r0 == 0) goto L76
            r0 = r3
            java.lang.CharSequence r0 = r0.getSummary()
            r9 = r0
            r0 = r8
            r5 = r0
            r0 = r9
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L76
            r0 = r4
            r1 = r9
            r0.setText(r1)
            r0 = 0
            r5 = r0
        L76:
            r0 = r5
            if (r0 != 0) goto L81
            r0 = r7
            r8 = r0
            goto L85
        L81:
            r0 = 8
            r8 = r0
        L85:
            r0 = r8
            r1 = r4
            int r1 = r1.getVisibility()
            if (r0 == r1) goto L94
            r0 = r4
            r1 = r8
            r0.setVisibility(r1)
        L94:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.preference.TwoStatePreference.syncSummaryView(android.view.View):void");
    }

    public void syncSummaryView(PreferenceViewHolder preferenceViewHolder) {
        syncSummaryView(preferenceViewHolder.findViewById(16908304));
    }
}
