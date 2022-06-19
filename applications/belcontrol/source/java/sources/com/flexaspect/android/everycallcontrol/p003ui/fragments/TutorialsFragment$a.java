package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import android.os.Handler;
import android.os.Message;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import java.util.List;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.TutorialsFragment$a */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/TutorialsFragment$a.class */
public class TutorialsFragment$a extends Handler {

    /* renamed from: a */
    public final /* synthetic */ TutorialsFragment f3118a;

    public TutorialsFragment$a(TutorialsFragment tutorialsFragment) {
        this.f3118a = tutorialsFragment;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        int i;
        TextView textView;
        Fragment fragment;
        if (this.f3118a.getView() == null) {
            return;
        }
        if (((Boolean) message.getData().get("isLoadedAndParsed")).booleanValue()) {
            TutorialsFragment.G(this.f3118a, (List) message.getData().get("videos"));
            if (TutorialsFragment.F(this.f3118a).size() > 0) {
                this.f3118a.l().setAdapter((ListAdapter) new b61(TutorialsFragment.H(this.f3118a), TutorialsFragment.F(this.f3118a)));
                return;
            }
            textView = (TextView) this.f3118a.getView().findViewById(16908292);
            fragment = this.f3118a;
            i = 2131821793;
        } else {
            textView = (TextView) this.f3118a.getView().findViewById(16908292);
            fragment = this.f3118a;
            i = 2131821308;
        }
        textView.setText(fragment.getText(i));
    }
}
