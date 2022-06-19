package com.google.android.material.chip;

import android.widget.CompoundButton;
/* loaded from: classes3-dex2jar.jar:com/google/android/material/chip/ChipGroup$b.class */
public class ChipGroup$b implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a */
    public final /* synthetic */ ChipGroup f6673a;

    public ChipGroup$b(ChipGroup chipGroup, ChipGroup$a chipGroup$a) {
        this.f6673a = chipGroup;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        ChipGroup chipGroup = this.f6673a;
        if (chipGroup.m) {
            return;
        }
        if (chipGroup.getCheckedChipIds().isEmpty()) {
            ChipGroup chipGroup2 = this.f6673a;
            if (chipGroup2.h) {
                chipGroup2.e(compoundButton.getId(), true);
                ChipGroup chipGroup3 = this.f6673a;
                chipGroup3.l = compoundButton.getId();
                ChipGroup$d chipGroup$d = chipGroup3.i;
                return;
            }
        }
        int id = compoundButton.getId();
        if (!z) {
            ChipGroup chipGroup4 = this.f6673a;
            if (chipGroup4.l != id) {
                return;
            }
            ChipGroup.b(chipGroup4, -1);
            return;
        }
        ChipGroup chipGroup5 = this.f6673a;
        int i = chipGroup5.l;
        if (i != -1 && i != id && chipGroup5.g) {
            chipGroup5.e(i, false);
        }
        ChipGroup.b(this.f6673a, id);
    }
}
