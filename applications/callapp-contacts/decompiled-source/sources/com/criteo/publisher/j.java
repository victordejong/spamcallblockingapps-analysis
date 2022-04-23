package com.criteo.publisher;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/j.class */
public interface j {

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/j$_CC.class */
    public final /* synthetic */ class _CC {
        public static void $default$onAdClicked(j jVar) {
        }

        public static void $default$onAdFailedToReceive(j jVar, CriteoErrorCode criteoErrorCode) {
        }

        public static void $default$onAdLeftApplication(j jVar) {
        }
    }

    void onAdClicked();

    void onAdFailedToReceive(CriteoErrorCode criteoErrorCode);

    void onAdLeftApplication();
}
