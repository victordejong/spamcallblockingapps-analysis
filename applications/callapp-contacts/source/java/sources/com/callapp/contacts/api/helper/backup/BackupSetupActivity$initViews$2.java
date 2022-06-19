package com.callapp.contacts.api.helper.backup;

import android.widget.CompoundButton;
import com.callapp.contacts.manager.preferences.Prefs;
import kotlin.Metadata;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0016\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n¢\u0006\u0002\b\u0007"}, m4298d2 = {"<anonymous>", "", "<anonymous parameter 0>", "Landroid/widget/CompoundButton;", "kotlin.jvm.PlatformType", "isChecked", "", "onCheckedChanged"}, m4297k = 3, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/backup/BackupSetupActivity$initViews$2.class */
final class BackupSetupActivity$initViews$2 implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a */
    public static final BackupSetupActivity$initViews$2 f24738a = new BackupSetupActivity$initViews$2();

    BackupSetupActivity$initViews$2() {
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        Prefs.f26607hM.set(Boolean.valueOf(z));
    }
}
