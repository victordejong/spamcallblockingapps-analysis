package com.google.firebase.inappmessaging;

import com.google.android.gms.tasks.Task;
import p131c.p161d.p282e.p315q.p333r0.C5842a;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks.class */
public interface FirebaseInAppMessagingDisplayCallbacks {

    /* loaded from: classes2-dex2jar.jar:com/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingDismissType.class */
    public enum InAppMessagingDismissType {
        UNKNOWN_DISMISS_TYPE,
        AUTO,
        CLICK,
        SWIPE
    }

    /* loaded from: classes2-dex2jar.jar:com/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingErrorReason.class */
    public enum InAppMessagingErrorReason {
        UNSPECIFIED_RENDER_ERROR,
        IMAGE_FETCH_ERROR,
        IMAGE_DISPLAY_ERROR,
        IMAGE_UNSUPPORTED_FORMAT
    }

    /* renamed from: a */
    Task<Void> mo7322a();

    /* renamed from: a */
    Task<Void> mo7321a(C5842a aVar);

    /* renamed from: a */
    Task<Void> mo7320a(InAppMessagingDismissType inAppMessagingDismissType);

    /* renamed from: a */
    Task<Void> mo7319a(InAppMessagingErrorReason inAppMessagingErrorReason);
}
