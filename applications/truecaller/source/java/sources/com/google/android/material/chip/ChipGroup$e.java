package com.google.android.material.chip;

import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import java.util.concurrent.atomic.AtomicInteger;
import p1727n3.p1807k.p1821i.C26614s;
/* loaded from: classes3-dex2jar.jar:com/google/android/material/chip/ChipGroup$e.class */
public class ChipGroup$e implements ViewGroup.OnHierarchyChangeListener {

    /* renamed from: a */
    public ViewGroup.OnHierarchyChangeListener f6674a;

    /* renamed from: b */
    public final /* synthetic */ ChipGroup f6675b;

    public ChipGroup$e(ChipGroup chipGroup, ChipGroup$a chipGroup$a) {
        this.f6675b = chipGroup;
    }

    @Override // android.view.ViewGroup.OnHierarchyChangeListener
    public void onChildViewAdded(View view, View view2) {
        if (view == this.f6675b && (view2 instanceof Chip)) {
            if (view2.getId() == -1) {
                AtomicInteger atomicInteger = C26614s.f74505a;
                view2.setId(View.generateViewId());
            }
            Chip chip = (Chip) view2;
            if (chip.isChecked()) {
                ((ChipGroup) view).c(chip.getId());
            }
            chip.setOnCheckedChangeListenerInternal(this.f6675b.j);
        }
        ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.f6674a;
        if (onHierarchyChangeListener != null) {
            onHierarchyChangeListener.onChildViewAdded(view, view2);
        }
    }

    @Override // android.view.ViewGroup.OnHierarchyChangeListener
    public void onChildViewRemoved(View view, View view2) {
        if (view == this.f6675b && (view2 instanceof Chip)) {
            ((Chip) view2).setOnCheckedChangeListenerInternal((CompoundButton.OnCheckedChangeListener) null);
        }
        ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.f6674a;
        if (onHierarchyChangeListener != null) {
            onHierarchyChangeListener.onChildViewRemoved(view, view2);
        }
    }
}
