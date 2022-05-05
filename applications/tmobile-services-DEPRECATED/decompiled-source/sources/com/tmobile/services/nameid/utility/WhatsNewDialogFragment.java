package com.tmobile.services.nameid.utility;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.fragment.app.DialogFragment;
import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.p007ui.NameIDCardView;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/WhatsNewDialogFragment.class */
public class WhatsNewDialogFragment extends DialogFragment {

    /* renamed from: f */
    private int f14461f = -1;

    /* renamed from: g */
    private String f14462g = "";

    /* renamed from: h */
    private String f14463h = "";

    /* renamed from: i */
    private String f14464i = "";

    /* renamed from: j */
    private Callable<Void> f14465j = null;

    /* renamed from: H0 */
    private void m5273H0(View view) {
        LogUtil.m5643d("WhatsNewDialogFragment#setupDialogView", "icon: " + this.f14461f + ", title: " + this.f14462g + ", desc: " + this.f14463h + ", buttonText: " + this.f14464i);
        if (this.f14461f != -1) {
            view.findViewById(C1517R.C1520id.dialog_whats_new_icon).setBackgroundResource(this.f14461f);
            view.findViewById(C1517R.C1520id.dialog_whats_new_icon).setContentDescription(this.f14462g);
        }
        if (this.f14462g != null) {
            ((TextView) view.findViewById(C1517R.C1520id.dialog_whats_new_title_tv)).setText(this.f14462g);
            view.findViewById(C1517R.C1520id.dialog_whats_new_title_tv).setContentDescription(this.f14462g);
        }
        if (this.f14463h != null) {
            ((TextView) view.findViewById(C1517R.C1520id.dialog_whats_new_desc_tv)).setText(this.f14463h);
            view.findViewById(C1517R.C1520id.dialog_whats_new_desc_tv).setContentDescription(this.f14463h);
        }
        if (this.f14464i != null) {
            ((TextView) view.findViewById(C1517R.C1520id.dialog_whats_new_button_tv)).setText(this.f14464i);
            view.findViewById(C1517R.C1520id.dialog_whats_new_button_tv).setContentDescription(this.f14464i);
        }
        ((NameIDCardView) view.findViewById(C1517R.C1520id.dialog_whats_new_button_cv)).setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.utility.c2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                WhatsNewDialogFragment.this.m5274G0(view2);
            }
        });
    }

    /* renamed from: G0 */
    public /* synthetic */ void m5274G0(View view) {
        Callable<Void> callable = this.f14465j;
        if (callable != null) {
            try {
                callable.call();
            } catch (Exception e) {
                LogUtil.m5641f("WhatsNewDialogFragmentonClick", "Error processing on click event", e);
            }
        }
        dismiss();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setStyle(0, 16973834);
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(C1517R.layout.dialog_whats_new, viewGroup);
        m5273H0(inflate);
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
    }
}
