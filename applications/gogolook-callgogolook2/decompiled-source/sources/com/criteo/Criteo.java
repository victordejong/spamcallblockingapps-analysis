package com.criteo;

import android.content.Context;
import android.content.Intent;
import com.criteo.controller.ConfigController;
import com.criteo.network.ConnectivityInfoUtils;
import com.criteo.utils.CriteoCacheHelper;
import com.criteo.utils.PreferenceDataUtils;
import com.criteo.utils.Tracer;
/* loaded from: classes-dex2jar.jar:com/criteo/Criteo.class */
public class Criteo {
    public static final String BROADCAST_CONFIG_ACTION = "CONFIG_CREATION_ACTION";
    public static final String TAG = "criteo.Stories.Criteo";

    /* loaded from: classes-dex2jar.jar:com/criteo/Criteo$ADType.class */
    public enum ADType {
        BANNER,
        INTERSTITIAL,
        NATIVE
    }

    /* loaded from: classes-dex2jar.jar:com/criteo/Criteo$OnCriteoAdListener.class */
    public interface OnCriteoAdListener {
        void onAdClicked(ADType aDType);

        void onAdClosed(ADType aDType);

        void onAdDisplayNoAd(ADType aDType);

        void onAdDisplayed(ADType aDType);

        void onAdFetched(ADType aDType);

        void onAdRequest(ADType aDType);

        void onAdRequestFailed(ADType aDType);

        void onAdRequestFiltered(ADType aDType);
    }

    /* JADX WARN: Removed duplicated region for block: B:130:0x04e8  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0127 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0340 A[EDGE_INSN: B:164:0x0340->B:82:0x0340 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:166:0x04fe A[EDGE_INSN: B:166:0x04fe->B:133:0x04fe ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01b5  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01c2  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0211  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x023c  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x024a  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0329  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void ifConfigExists(android.content.Context r5) {
        /*
            Method dump skipped, instructions count: 1330
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.criteo.Criteo.ifConfigExists(android.content.Context):void");
    }

    public static void initialize(Context context) {
        PreferenceDataUtils.setFirstRun(context, true);
        if (CriteoCacheHelper.getConfigFile(context)) {
            if (PreferenceDataUtils.getConfigExipire(context).longValue() >= System.currentTimeMillis()) {
                ifConfigExists(context);
            } else if (ConnectivityInfoUtils.isConnected(context)) {
                new ConfigController(context).onRequestMethod();
            } else {
                Tracer.debug(TAG, "Check Your Network Connection");
            }
        } else if (ConnectivityInfoUtils.isConnected(context)) {
            new ConfigController(context).onRequestMethod();
        } else {
            Tracer.debug(TAG, "Check Your Network Connection");
        }
    }

    public static void registerReciver(Context context) {
        Intent intent = new Intent();
        intent.setAction(BROADCAST_CONFIG_ACTION);
        context.sendBroadcast(intent);
    }
}
