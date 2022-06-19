package com.criteo.publisher;
/* renamed from: com.criteo.publisher.j */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/j.class */
public interface AbstractC8352j {

    /* renamed from: com.criteo.publisher.j$_CC */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/j$_CC.class */
    public final /* synthetic */ class _CC {
        public static void $default$onAdClicked(AbstractC8352j abstractC8352j) {
        }

        public static void $default$onAdFailedToReceive(AbstractC8352j abstractC8352j, CriteoErrorCode criteoErrorCode) {
        }

        public static void $default$onAdLeftApplication(AbstractC8352j abstractC8352j) {
        }
    }

    void onAdClicked();

    void onAdFailedToReceive(CriteoErrorCode criteoErrorCode);

    void onAdLeftApplication();
}
