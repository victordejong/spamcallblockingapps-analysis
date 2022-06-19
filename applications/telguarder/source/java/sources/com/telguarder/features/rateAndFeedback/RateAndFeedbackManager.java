package com.telguarder.features.rateAndFeedback;

import android.app.AlertDialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.view.KeyEvent;
import androidx.appcompat.app.AppCompatActivity;
import com.telguarder.ApplicationConstants;
import com.telguarder.ApplicationObject;
import com.telguarder.C2083R;
import com.telguarder.features.advertisements.AdvertManager;
import com.telguarder.features.numberLookup.PhoneNumberLookupManager;
import com.telguarder.helpers.analytics.AnalyticsManager;
import com.telguarder.helpers.common.AppUtil;
import com.telguarder.helpers.contact.ContactManager;
import com.telguarder.helpers.country.CountryManager;
import com.telguarder.helpers.p022ui.UiHelper;
import com.telguarder.helpers.preferences.PreferencesManager;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/rateAndFeedback/RateAndFeedbackManager.class */
public class RateAndFeedbackManager {
    private static RateAndFeedbackManager mInstance;
    private static boolean mOptOut = false;
    private AlertDialog mFeedbackDialog;
    public AlertDialog mRateDialog;

    private RateAndFeedbackManager() {
        mOptOut = true;
    }

    public static RateAndFeedbackManager getInstance() {
        RateAndFeedbackManager rateAndFeedbackManager;
        synchronized (RateAndFeedbackManager.class) {
            try {
                if (mInstance == null) {
                    mInstance = new RateAndFeedbackManager();
                }
                rateAndFeedbackManager = mInstance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return rateAndFeedbackManager;
    }

    private int getIntentFlags() {
        int i = Build.VERSION.SDK_INT;
        return 1208483840;
    }

    public void rateApp(AppCompatActivity appCompatActivity) {
        try {
            appCompatActivity.startActivity(rateIntentForUrl("market://details"));
        } catch (ActivityNotFoundException e) {
            appCompatActivity.startActivity(rateIntentForUrl("http://play.google.com/store/apps/details"));
        }
    }

    private Intent rateIntentForUrl(String str) {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(String.format("%s?id=%s", str, ApplicationObject.getContext().getPackageName())));
        intent.addFlags(getIntentFlags());
        return intent;
    }

    public void setOptOut(boolean z) {
        mOptOut = z;
        PreferencesManager.getInstance().saveAppRatingOptOut(mOptOut);
    }

    public void showFeedbackDialog(final AppCompatActivity appCompatActivity) {
        AlertDialog.Builder builder = new AlertDialog.Builder(appCompatActivity);
        builder.setMessage(C2083R.string.feedback_popup_message);
        builder.setPositiveButton(17039379, new DialogInterface.OnClickListener() { // from class: com.telguarder.features.rateAndFeedback.RateAndFeedbackManager.6
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                AnalyticsManager.getInstance().sendPopupFeedbackAction(true);
                RateAndFeedbackManager.this.startFeedbackActivity(appCompatActivity);
            }
        });
        builder.setNeutralButton(C2083R.string.rating_popup_maybe_later, new DialogInterface.OnClickListener() { // from class: com.telguarder.features.rateAndFeedback.RateAndFeedbackManager.7
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                AnalyticsManager.getInstance().sendPopupFeedbackAction(null);
            }
        });
        builder.setNegativeButton(17039369, new DialogInterface.OnClickListener() { // from class: com.telguarder.features.rateAndFeedback.RateAndFeedbackManager.8
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                AnalyticsManager.getInstance().sendPopupFeedbackAction(false);
            }
        });
        builder.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.telguarder.features.rateAndFeedback.RateAndFeedbackManager.9
            @Override // android.content.DialogInterface.OnKeyListener
            public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                if (i == 4 && keyEvent.getAction() == 1 && !keyEvent.isCanceled()) {
                    AnalyticsManager.getInstance().sendPopupFeedbackAction(null);
                    dialogInterface.cancel();
                    return true;
                }
                return false;
            }
        });
        AlertDialog create = builder.create();
        this.mFeedbackDialog = create;
        create.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.telguarder.features.rateAndFeedback.RateAndFeedbackManager.10
            @Override // android.content.DialogInterface.OnShowListener
            public void onShow(DialogInterface dialogInterface) {
                RateAndFeedbackManager.this.mFeedbackDialog.getButton(-1).setTextColor(UiHelper.getColorWrapper(appCompatActivity, C2083R.C2084color.colorAccent));
                RateAndFeedbackManager.this.mFeedbackDialog.getButton(-3).setTextColor(UiHelper.getColorWrapper(appCompatActivity, C2083R.C2084color.colorAccent));
                RateAndFeedbackManager.this.mFeedbackDialog.getButton(-2).setTextColor(UiHelper.getColorWrapper(appCompatActivity, C2083R.C2084color.colorAccent));
            }
        });
        this.mFeedbackDialog.show();
    }

    public void startFeedbackActivity(AppCompatActivity appCompatActivity) {
        appCompatActivity.startActivity(new Intent(appCompatActivity, FeedbackActivity.class));
    }

    public void init() {
        mOptOut = PreferencesManager.getInstance().getAppRatingOptOut();
    }

    public boolean shouldShowRateDialog(Context context) {
        if (mOptOut) {
            return false;
        }
        try {
            String countryIso = CountryManager.getInstance().getCountryIso(context);
            if (!TextUtils.isEmpty(countryIso)) {
                if (!Arrays.asList("BR", "MX", "CL", "AR", "DZ", "MA", "NL").contains(countryIso)) {
                    return false;
                }
            }
        } catch (Exception e) {
        }
        return PhoneNumberLookupManager.getInstance().wasLastIncomingNumberLookupSuccessful() && !ContactManager.getInstance().contactExists(context, PhoneNumberLookupManager.getInstance().getLastSuccessfullyLookedupIncomingNumber()) && System.currentTimeMillis() - AppUtil.getFirstInstallTime(context) >= ApplicationConstants.RATING_TRESHOLD_TIME && !AdvertManager.getInstance().hasAdvertInCache();
    }

    public void showRateDialog(final AppCompatActivity appCompatActivity) {
        AlertDialog.Builder builder = new AlertDialog.Builder(appCompatActivity);
        builder.setMessage(C2083R.string.rating_popup_identified_message);
        builder.setPositiveButton(17039379, new DialogInterface.OnClickListener() { // from class: com.telguarder.features.rateAndFeedback.RateAndFeedbackManager.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                AnalyticsManager.getInstance().sendPopupRatingAction(true);
                RateAndFeedbackManager.this.rateApp(appCompatActivity);
                RateAndFeedbackManager.this.setOptOut(true);
            }
        });
        builder.setNeutralButton(C2083R.string.rating_popup_maybe_later, new DialogInterface.OnClickListener() { // from class: com.telguarder.features.rateAndFeedback.RateAndFeedbackManager.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                AnalyticsManager.getInstance().sendPopupRatingAction(null);
                RateAndFeedbackManager.this.setOptOut(true);
            }
        });
        builder.setNegativeButton(17039369, new DialogInterface.OnClickListener() { // from class: com.telguarder.features.rateAndFeedback.RateAndFeedbackManager.3
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                AnalyticsManager.getInstance().sendPopupRatingAction(false);
                RateAndFeedbackManager.this.setOptOut(true);
                RateAndFeedbackManager.this.showFeedbackDialog(appCompatActivity);
            }
        });
        builder.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.telguarder.features.rateAndFeedback.RateAndFeedbackManager.4
            @Override // android.content.DialogInterface.OnKeyListener
            public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                if (i == 4 && keyEvent.getAction() == 1 && !keyEvent.isCanceled()) {
                    AnalyticsManager.getInstance().sendPopupRatingAction(null);
                    dialogInterface.cancel();
                    return true;
                }
                return false;
            }
        });
        AlertDialog create = builder.create();
        this.mRateDialog = create;
        create.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.telguarder.features.rateAndFeedback.RateAndFeedbackManager.5
            @Override // android.content.DialogInterface.OnShowListener
            public void onShow(DialogInterface dialogInterface) {
                RateAndFeedbackManager.this.mRateDialog.getButton(-1).setTextColor(UiHelper.getColorWrapper(appCompatActivity, C2083R.C2084color.colorAccent));
                RateAndFeedbackManager.this.mRateDialog.getButton(-3).setTextColor(UiHelper.getColorWrapper(appCompatActivity, C2083R.C2084color.colorAccent));
                RateAndFeedbackManager.this.mRateDialog.getButton(-2).setTextColor(UiHelper.getColorWrapper(appCompatActivity, C2083R.C2084color.colorAccent));
            }
        });
        this.mRateDialog.show();
    }
}
