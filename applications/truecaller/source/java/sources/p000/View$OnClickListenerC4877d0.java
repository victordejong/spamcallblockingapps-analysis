package p000;

import android.os.Bundle;
import android.view.View;
import com.truecaller.p183ui.settings.SettingsCategory;
import p193e.p194a.p682e.p684b.p693m.AbstractC12989c;
import p193e.p194a.p682e.p684b.p693m.C12987a;
/* renamed from: d0 */
/* loaded from: classes3-dex2jar.jar:d0.class */
public final class View$OnClickListenerC4877d0 implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ int f16578a;

    /* renamed from: b */
    public final /* synthetic */ Object f16579b;

    public View$OnClickListenerC4877d0(int i, Object obj) {
        this.f16578a = i;
        this.f16579b = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        String str = null;
        switch (this.f16578a) {
            case 0:
                ((C12987a) this.f16579b).m22280OA().mo22276Gc(SettingsCategory.SETTINGS_ABOUT, null);
                return;
            case 1:
                ((C12987a) this.f16579b).m22280OA().mo22276Gc(SettingsCategory.SETTINGS_DATA_STORAGE, null);
                return;
            case 2:
                ((C12987a) this.f16579b).m22280OA().mo22276Gc(SettingsCategory.SETTINGS_GENERAL, null);
                return;
            case 3:
                ((C12987a) this.f16579b).m22280OA().mo22276Gc(SettingsCategory.SETTINGS_LANGUAGE, null);
                return;
            case 4:
                ((C12987a) this.f16579b).m22280OA().mo22276Gc(SettingsCategory.SETTINGS_CALLERID, null);
                return;
            case 5:
                ((C12987a) this.f16579b).m22280OA().mo22276Gc(SettingsCategory.SETTINGS_RINGTONE, null);
                return;
            case 6:
                ((C12987a) this.f16579b).m22280OA().mo22276Gc(SettingsCategory.SETTINGS_APPEARANCE, null);
                return;
            case 7:
                AbstractC12989c m22280OA = ((C12987a) this.f16579b).m22280OA();
                SettingsCategory settingsCategory = SettingsCategory.SETTINGS_MESSAGING;
                Bundle arguments = ((C12987a) this.f16579b).getArguments();
                if (arguments != null) {
                    str = arguments.getString("analytics_context");
                }
                m22280OA.mo22276Gc(settingsCategory, str);
                return;
            case 8:
                ((C12987a) this.f16579b).m22280OA().mo22276Gc(SettingsCategory.SETTINGS_BLOCK, null);
                return;
            case 9:
                ((C12987a) this.f16579b).m22280OA().mo22276Gc(SettingsCategory.SETTINGS_PRIVACY, null);
                return;
            case 10:
                ((C12987a) this.f16579b).m22280OA().mo22276Gc(SettingsCategory.SETTINGS_BACKUP, null);
                return;
            default:
                throw null;
        }
    }
}
