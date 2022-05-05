package com.hiya.stingray.p000ui.submitreport;

import android.content.DialogInterface;
import android.view.View;
import androidx.appcompat.app.b;
/* renamed from: com.hiya.stingray.ui.submitreport.SubmitReportFragment$b */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/submitreport/SubmitReportFragment$b.class */
class SubmitReportFragment$b implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ SubmitReportFragment f144f;

    /* renamed from: com.hiya.stingray.ui.submitreport.SubmitReportFragment$b$a */
    /* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/submitreport/SubmitReportFragment$b$a.class */
    class DialogInterface$OnClickListenerC0063a implements DialogInterface.OnClickListener {
        DialogInterface$OnClickListenerC0063a(SubmitReportFragment$b submitReportFragment$b) {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            dialogInterface.dismiss();
        }
    }

    /* renamed from: com.hiya.stingray.ui.submitreport.SubmitReportFragment$b$b */
    /* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/submitreport/SubmitReportFragment$b$b.class */
    class DialogInterface$OnClickListenerC0064b implements DialogInterface.OnClickListener {
        DialogInterface$OnClickListenerC0064b() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            SubmitReportFragment$b.this.f144f.getActivity().onBackPressed();
        }
    }

    SubmitReportFragment$b(SubmitReportFragment submitReportFragment) {
        this.f144f = submitReportFragment;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.f144f.comments.getText().length() == 0) {
            this.f144f.getActivity().onBackPressed();
            return;
        }
        b.a aVar = new b.a(this.f144f.getContext());
        aVar.d(true);
        aVar.g(2131821239);
        aVar.m(2131821238, new DialogInterface$OnClickListenerC0064b());
        aVar.i(2131820704, new DialogInterface$OnClickListenerC0063a(this));
        aVar.a().show();
    }
}
