package carbon.widget;

import android.view.View;
import android.view.ViewGroup;
/* loaded from: classes-dex2jar.jar:carbon/widget/RadioGroup$d.class */
public class RadioGroup$d implements ViewGroup.OnHierarchyChangeListener {

    /* renamed from: a */
    public ViewGroup.OnHierarchyChangeListener f2312a;

    /* renamed from: b */
    public final /* synthetic */ RadioGroup f2313b;

    public RadioGroup$d(RadioGroup radioGroup) {
        this.f2313b = radioGroup;
    }

    @Override // android.view.ViewGroup.OnHierarchyChangeListener
    public void onChildViewAdded(View view, View view2) {
        if (view == this.f2313b && (view2 instanceof RadioButton)) {
            if (view2.getId() == -1) {
                view2.setId(view2.hashCode());
            }
            ((RadioButton) view2).setOnCheckedChangeWidgetListener(RadioGroup.x(this.f2313b));
        }
        ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.f2312a;
        if (onHierarchyChangeListener != null) {
            onHierarchyChangeListener.onChildViewAdded(view, view2);
        }
    }

    @Override // android.view.ViewGroup.OnHierarchyChangeListener
    public void onChildViewRemoved(View view, View view2) {
        if (view == this.f2313b && (view2 instanceof RadioButton)) {
            ((RadioButton) view2).setOnCheckedChangeWidgetListener((RadioButton$b) null);
        }
        ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.f2312a;
        if (onHierarchyChangeListener != null) {
            onHierarchyChangeListener.onChildViewRemoved(view, view2);
        }
    }
}
