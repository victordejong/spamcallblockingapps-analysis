package com.appnext.core.result;

import com.appnext.core.AbstractC0501Ad;
import com.appnext.core.AppnextAd;
import com.appnext.core.SettingsManager;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.appnext.core.result.c */
/* loaded from: classes-dex2jar.jar:com/appnext/core/result/c.class */
public interface AbstractC0601c {
    JSONObject getConfigParams() throws JSONException;

    String getPlacementId();

    AppnextAd getSelectedAd();

    /* renamed from: t */
    String mo42224t();

    /* renamed from: u */
    String mo42223u();

    /* renamed from: v */
    String mo42222v();

    /* renamed from: w */
    SettingsManager mo42221w();

    /* renamed from: x */
    AbstractC0501Ad mo42220x();

    /* renamed from: y */
    AbstractC0599a mo42219y();
}
