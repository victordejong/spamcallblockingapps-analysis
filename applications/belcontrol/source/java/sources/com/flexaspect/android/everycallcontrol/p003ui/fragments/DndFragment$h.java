package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import android.view.View;
import com.kedlin.cca.p007ui.CCAManyStatesButton;
import com.kedlin.cca.p007ui.CCARangeSeekbarVertical;
import java.util.Arrays;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.DndFragment$h */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$h.class */
public class DndFragment$h implements View.OnClickListener {

    /* renamed from: a */
    public DndFragment$j f3024a;

    /* renamed from: b */
    public final /* synthetic */ DndFragment f3025b;

    public DndFragment$h(DndFragment dndFragment, Object obj) {
        this.f3025b = dndFragment;
        this.f3024a = (DndFragment$j) obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v52 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3 */
    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        CCARangeSeekbarVertical<Long> cCARangeSeekbarVertical;
        long[] jArr;
        CCAManyStatesButton cCAManyStatesButton = (CCAManyStatesButton) view;
        this.f3024a.f3030d.setEnabled(!cCAManyStatesButton.m4312c());
        this.f3024a.f3028b.setEnabled(view.isSelected());
        this.f3024a.f3029c.setEnabled(view.isSelected());
        if (cCAManyStatesButton.m4312c()) {
            return;
        }
        ?? r8 = true;
        if (cCAManyStatesButton.m4313b()) {
            int indexOf = Arrays.asList(DndFragment.D()).indexOf(this.f3024a.f3027a);
            if (DndFragment.y(this.f3025b) != -1) {
                DndFragment dndFragment = this.f3025b;
                jArr = DndFragment.E(dndFragment, DndFragment.y(dndFragment));
            } else {
                jArr = null;
            }
            if (jArr == null || indexOf == DndFragment.y(this.f3025b)) {
                this.f3024a.f3030d.setSelectedMinValue(360L);
                cCARangeSeekbarVertical = this.f3024a.f3030d;
                r8 = true;
            } else {
                DndFragment.z(this.f3025b, indexOf);
                this.f3024a.f3030d.setSelectedMinValue(Long.valueOf(jArr[0]));
                CCARangeSeekbarVertical<Long> cCARangeSeekbarVertical2 = this.f3024a.f3030d;
                r8 = jArr[1];
                cCARangeSeekbarVertical = cCARangeSeekbarVertical2;
            }
        } else {
            this.f3024a.f3030d.setSelectedMinValue(1260L);
            cCARangeSeekbarVertical = this.f3024a.f3030d;
        }
        cCARangeSeekbarVertical.setSelectedMaxValue(Long.valueOf(r8 == true ? 1L : 0L));
        this.f3024a.f3030d.m4298h();
    }
}
