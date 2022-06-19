package com.google.android.gms.wallet;

import com.google.android.gms.common.Feature;
import com.razorpay.AnalyticsConstants;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/wallet/zzj.class */
public final class zzj {

    /* renamed from: a */
    public static final Feature f6563a;

    /* renamed from: b */
    public static final Feature f6564b;

    /* renamed from: c */
    public static final Feature f6565c;

    /* renamed from: d */
    public static final Feature f6566d;

    /* renamed from: e */
    public static final Feature f6567e;

    /* renamed from: f */
    public static final Feature f6568f;

    /* renamed from: g */
    public static final Feature[] f6569g;

    static {
        Feature feature = new Feature(AnalyticsConstants.WALLET, 1L);
        f6563a = feature;
        Feature feature2 = new Feature("wallet_biometric_auth_keys", 1L);
        f6564b = feature2;
        Feature feature3 = new Feature("wallet_payment_dynamic_update", 2L);
        f6565c = feature3;
        Feature feature4 = new Feature("wallet_1p_initialize_buyflow", 1L);
        f6566d = feature4;
        Feature feature5 = new Feature("wallet_warm_up_ui_process", 1L);
        f6567e = feature5;
        Feature feature6 = new Feature("wallet_get_setup_wizard_intent", 2L);
        f6568f = feature6;
        f6569g = new Feature[]{feature, feature2, feature3, feature4, feature5, feature6};
    }
}
