package com.callapp.contacts.api.helper.backup;

import android.widget.RadioGroup;
import com.callapp.contacts.manager.preferences.Prefs;
import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n¢\u0006\u0002\b\u0007"}, d2 = {"<anonymous>", "", "<anonymous parameter 0>", "Landroid/widget/RadioGroup;", "kotlin.jvm.PlatformType", "i", "", "onCheckedChanged"}, k = 3, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/backup/BackupSetupActivity$initViews$6.class */
final class BackupSetupActivity$initViews$6 implements RadioGroup.OnCheckedChangeListener {

    /* renamed from: a  reason: collision with root package name */
    public static final BackupSetupActivity$initViews$6 f14092a = new BackupSetupActivity$initViews$6();

    BackupSetupActivity$initViews$6() {
    }

    @Override // android.widget.RadioGroup.OnCheckedChangeListener
    public final void onCheckedChanged(RadioGroup radioGroup, int i) {
        int i2;
        switch (i) {
            case 2131364452:
                i2 = BackupIntervalPeriod.TWO_DAYS.getDaysInterval();
                break;
            case 2131364453:
                i2 = BackupIntervalPeriod.HALF_MONTH.getDaysInterval();
                break;
            default:
                i2 = BackupIntervalPeriod.MONTH.getDaysInterval();
                break;
        }
        Prefs.hL.set(Integer.valueOf(i2));
    }
}
