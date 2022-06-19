package com.callapp.contacts.api.helper.backup;

import android.content.DialogInterface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageView;
import android.widget.TextView;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.Popup;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0007J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0002J\u0012\u0010\u000b\u001a\u00020\b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0014J\u001a\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016J\u0010\u0010\u0013\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\u0015H\u0016¨\u0006\u0016"}, m4298d2 = {"Lcom/callapp/contacts/api/helper/backup/BackUpRunPopup;", "Lcom/callapp/contacts/manager/popup/DialogPopup;", "()V", "getLayoutResource", "", "getPopupType", "Lcom/callapp/contacts/manager/popup/Popup$DialogType;", "initViews", "", "view", "Landroid/view/View;", "onDialogCancelled", "dialog", "Landroid/content/DialogInterface;", "ovViewCreated", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "setDialogWindowSize", "window", "Landroid/view/Window;", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/backup/BackUpRunPopup.class */
public final class BackUpRunPopup extends DialogPopup {
    public final int getLayoutResource() {
        return 2131558496;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public final Popup.DialogType getPopupType() {
        return Popup.DialogType.roundedCenter;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public final void onDialogCancelled(DialogInterface dialogInterface) {
        super.onDialogCancelled(dialogInterface);
        dismiss();
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public final View ovViewCreated(LayoutInflater inflater, ViewGroup viewGroup) {
        C18524p.m3840d(inflater, "inflater");
        View view = inflater.inflate(getLayoutResource(), (ViewGroup) null);
        C18524p.m3843b(view, "view");
        View findViewById = view.findViewById(2131363731);
        C18524p.m3843b(findViewById, "view.findViewById(R.id.runTitle)");
        TextView textView = (TextView) findViewById;
        textView.setTextColor(ThemeUtils.getColor(2131100140));
        textView.setText(Activities.getString(2131886306));
        View findViewById2 = view.findViewById(2131362058);
        C18524p.m3843b(findViewById2, "view.findViewById(R.id.backupNowBtn)");
        TextView textView2 = (TextView) findViewById2;
        textView2.setText(Activities.getString(2131886300));
        textView2.setTextColor(ThemeUtils.getColor(2131099784));
        textView2.setBackgroundResource(2131230875);
        textView2.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.api.helper.backup.BackUpRunPopup$initViews$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                AndroidUtils.m27635a(BackUpRunPopup.this.getActivity());
                BackupUtils.m29293a(true);
                BackUpRunPopup.this.dismiss();
            }
        });
        View findViewById3 = view.findViewById(2131362057);
        C18524p.m3843b(findViewById3, "view.findViewById(R.id.backupLaterBtn)");
        TextView textView3 = (TextView) findViewById3;
        textView3.setText(Activities.getString(2131886294));
        textView3.setTextColor(ThemeUtils.getColor(2131100228));
        ViewUtils.m27299b(textView3, 2131232141, ThemeUtils.getColor(2131099784), 0, 0);
        textView3.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.api.helper.backup.BackUpRunPopup$initViews$2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                AndroidUtils.m27635a(BackUpRunPopup.this.getActivity());
                BackupUtils.m29293a(false);
                BackUpRunPopup.this.dismiss();
            }
        });
        View findViewById4 = view.findViewById(2131363797);
        C18524p.m3843b(findViewById4, "view.findViewById(R.id.seetingsBtn)");
        ((ImageView) findViewById4).setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.api.helper.backup.BackUpRunPopup$initViews$3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                AndroidUtils.m27635a(BackUpRunPopup.this.getActivity());
                Activities.m27685a(BackUpRunPopup.this.getActivity(), BackupUtils.getBackupSettingsIntent());
                BackUpRunPopup.this.dismiss();
            }
        });
        return view;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public final void setDialogWindowSize(Window window) {
        C18524p.m3840d(window, "window");
        window.setLayout(-1, -2);
    }
}
