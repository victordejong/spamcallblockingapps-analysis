package p193e.p194a.p1410z4;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import com.truecaller.settings.CallingSettings;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.z4.c */
/* loaded from: classes13-dex2jar.jar:e/a/z4/c.class */
public final class C21880c extends AbstractC21885h implements CallingSettings {
    public C21880c(Context context) {
        super(C22128a.m8731B0(context, AnalyticsConstants.CONTEXT, "tc.settings", 0, "context.getSharedPrefere…ME, Context.MODE_PRIVATE)"));
    }

    @Override // com.truecaller.settings.CallingSettings
    /* renamed from: Q1 */
    public CallingSettings.BlockMethod mo8950Q1(int i) {
        return (i & 8) == 0 ? CallingSettings.BlockMethod.Reject : CallingSettings.BlockMethod.Mute;
    }

    @Override // com.truecaller.settings.CallingSettings
    /* renamed from: z */
    public CallingSettings.BlockMethod mo8949z() {
        return (getInt("blockCallMethod", 0) & 8) == 0 ? CallingSettings.BlockMethod.Reject : CallingSettings.BlockMethod.Mute;
    }
}
