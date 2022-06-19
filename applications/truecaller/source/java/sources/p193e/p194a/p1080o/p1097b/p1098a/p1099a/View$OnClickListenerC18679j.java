package p193e.p194a.p1080o.p1097b.p1098a.p1099a;

import android.view.View;
import com.truecaller.contextcall.utils.view.ondemandreasonpicker.OnDemandCallReasonPickerView;
/* renamed from: e.a.o.b.a.a.j */
/* loaded from: classes8-dex2jar.jar:e/a/o/b/a/a/j.class */
public final class View$OnClickListenerC18679j implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ OnDemandCallReasonPickerView f52519a;

    public View$OnClickListenerC18679j(OnDemandCallReasonPickerView onDemandCallReasonPickerView) {
        this.f52519a = onDemandCallReasonPickerView;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        C18681l c18681l = (C18681l) this.f52519a.getPresenter$context_call_release();
        if (this.f52519a.f11465y) {
            AbstractC18677h abstractC18677h = (AbstractC18677h) c18681l.f57683a;
            if (abstractC18677h != null) {
                abstractC18677h.mo14638t0();
            }
        } else {
            AbstractC18677h abstractC18677h2 = (AbstractC18677h) c18681l.f57683a;
            if (abstractC18677h2 != null) {
                abstractC18677h2.mo14644R();
            }
        }
        AbstractC18675f onDemandReasonPickerCallback = this.f52519a.getOnDemandReasonPickerCallback();
        if (onDemandReasonPickerCallback != null) {
            onDemandReasonPickerCallback.mo14646d();
        }
    }
}
