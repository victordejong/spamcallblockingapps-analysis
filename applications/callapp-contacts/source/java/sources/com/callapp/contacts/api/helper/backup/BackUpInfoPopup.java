package com.callapp.contacts.api.helper.backup;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.TextView;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.Popup;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0007J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0002J\u001a\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u0010\u0010\u0010\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0014H\u0014¨\u0006\u0015"}, m4298d2 = {"Lcom/callapp/contacts/api/helper/backup/BackUpInfoPopup;", "Lcom/callapp/contacts/manager/popup/DialogPopup;", "()V", "getLayoutResource", "", "getPopupType", "Lcom/callapp/contacts/manager/popup/Popup$DialogType;", "initViews", "", "view", "Landroid/view/View;", "ovViewCreated", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "setDialogWindowSize", "window", "Landroid/view/Window;", "shouldCanceledOnTouchOutside", "", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/backup/BackUpInfoPopup.class */
public final class BackUpInfoPopup extends DialogPopup {
    public final int getLayoutResource() {
        return 2131558494;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public final Popup.DialogType getPopupType() {
        return Popup.DialogType.roundedCenter;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public final View ovViewCreated(LayoutInflater inflater, ViewGroup viewGroup) {
        C18524p.m3840d(inflater, "inflater");
        View view = inflater.inflate(getLayoutResource(), (ViewGroup) null);
        C18524p.m3843b(view, "view");
        View findViewById = view.findViewById(2131362056);
        C18524p.m3843b(findViewById, "view.findViewById(R.id.backupInfoTitle)");
        TextView textView = (TextView) findViewById;
        textView.setTextColor(ThemeUtils.getColor(2131100140));
        textView.setText(Activities.getString(2131886306));
        View findViewById2 = view.findViewById(2131362064);
        C18524p.m3843b(findViewById2, "view.findViewById(R.id.backupinfoSubTitle)");
        TextView textView2 = (TextView) findViewById2;
        textView2.setTextColor(ThemeUtils.getColor(2131100140));
        textView2.setText(Activities.getString(2131887129));
        View findViewById3 = view.findViewById(2131362097);
        C18524p.m3843b(findViewById3, "view.findViewById(R.id.bkInfoSubtitle)");
        TextView textView3 = (TextView) findViewById3;
        textView3.setTextColor(ThemeUtils.getColor(2131100140));
        textView3.setText(Activities.getString(2131888156));
        View findViewById4 = view.findViewById(2131362058);
        C18524p.m3843b(findViewById4, "view.findViewById(R.id.backupNowBtn)");
        TextView textView4 = (TextView) findViewById4;
        textView4.setText(Activities.getString(2131886300));
        textView4.setTextColor(ThemeUtils.getColor(2131099784));
        textView4.setBackgroundResource(2131230875);
        textView4.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.api.helper.backup.BackUpInfoPopup$initViews$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                AndroidUtils.m27635a(BackUpInfoPopup.this.getActivity());
                BackupUtils.m29293a(true);
                BackUpInfoPopup.this.dismiss();
            }
        });
        View findViewById5 = view.findViewById(2131362057);
        C18524p.m3843b(findViewById5, "view.findViewById(R.id.backupLaterBtn)");
        TextView textView5 = (TextView) findViewById5;
        textView5.setText(Activities.getString(2131886294));
        textView5.setTextColor(ThemeUtils.getColor(2131100228));
        ViewUtils.m27299b(textView5, 2131232141, ThemeUtils.getColor(2131099784), 0, 0);
        textView5.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.api.helper.backup.BackUpInfoPopup$initViews$2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                AndroidUtils.m27635a(BackUpInfoPopup.this.getActivity());
                BackupUtils.m29293a(false);
                BackUpInfoPopup.this.dismiss();
            }
        });
        return view;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public final void setDialogWindowSize(Window window) {
        C18524p.m3840d(window, "window");
        window.setLayout(-1, -2);
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public final boolean shouldCanceledOnTouchOutside() {
        return false;
    }
}
