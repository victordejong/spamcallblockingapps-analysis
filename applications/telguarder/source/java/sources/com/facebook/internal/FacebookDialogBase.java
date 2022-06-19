package com.facebook.internal;

import android.app.Activity;
import android.util.Log;
import com.facebook.CallbackManager;
import com.facebook.FacebookCallback;
import com.facebook.FacebookDialog;
import com.facebook.FacebookException;
import com.facebook.FacebookSdk;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/facebook/internal/FacebookDialogBase.class */
public abstract class FacebookDialogBase<CONTENT, RESULT> implements FacebookDialog<CONTENT, RESULT> {
    protected static final Object BASE_AUTOMATIC_MODE = new Object();
    private static final String TAG = "FacebookDialog";
    private final Activity activity;
    private final FragmentWrapper fragmentWrapper;
    private List<FacebookDialogBase<CONTENT, RESULT>.ModeHandler> modeHandlers;
    private int requestCode;

    /* loaded from: classes-dex2jar.jar:com/facebook/internal/FacebookDialogBase$ModeHandler.class */
    public abstract class ModeHandler {
        public ModeHandler() {
            FacebookDialogBase.this = r4;
        }

        public abstract boolean canShow(CONTENT content, boolean z);

        public abstract AppCall createAppCall(CONTENT content);

        public Object getMode() {
            return FacebookDialogBase.BASE_AUTOMATIC_MODE;
        }
    }

    public FacebookDialogBase(Activity activity, int i) {
        Validate.notNull(activity, "activity");
        this.activity = activity;
        this.fragmentWrapper = null;
        this.requestCode = i;
    }

    public FacebookDialogBase(FragmentWrapper fragmentWrapper, int i) {
        Validate.notNull(fragmentWrapper, "fragmentWrapper");
        this.fragmentWrapper = fragmentWrapper;
        this.activity = null;
        this.requestCode = i;
        if (fragmentWrapper.getActivity() != null) {
            return;
        }
        throw new IllegalArgumentException("Cannot use a fragment that is not attached to an activity");
    }

    private List<FacebookDialogBase<CONTENT, RESULT>.ModeHandler> cachedModeHandlers() {
        if (this.modeHandlers == null) {
            this.modeHandlers = getOrderedModeHandlers();
        }
        return this.modeHandlers;
    }

    private AppCall createAppCallForMode(CONTENT content, Object obj) {
        AppCall appCall;
        boolean z = obj == BASE_AUTOMATIC_MODE;
        Iterator<FacebookDialogBase<CONTENT, RESULT>.ModeHandler> it = cachedModeHandlers().iterator();
        while (true) {
            appCall = null;
            if (!it.hasNext()) {
                break;
            }
            FacebookDialogBase<CONTENT, RESULT>.ModeHandler next = it.next();
            if (z || Utility.areObjectsEqual(next.getMode(), obj)) {
                if (next.canShow(content, true)) {
                    try {
                        appCall = next.createAppCall(content);
                        break;
                    } catch (FacebookException e) {
                        appCall = createBaseAppCall();
                        DialogPresenter.setupAppCallForValidationError(appCall, e);
                    }
                }
            }
        }
        AppCall appCall2 = appCall;
        if (appCall == null) {
            appCall2 = createBaseAppCall();
            DialogPresenter.setupAppCallForCannotShowError(appCall2);
        }
        return appCall2;
    }

    @Override // com.facebook.FacebookDialog
    public boolean canShow(CONTENT content) {
        return canShowImpl(content, BASE_AUTOMATIC_MODE);
    }

    public boolean canShowImpl(CONTENT content, Object obj) {
        boolean z = obj == BASE_AUTOMATIC_MODE;
        for (FacebookDialogBase<CONTENT, RESULT>.ModeHandler modeHandler : cachedModeHandlers()) {
            if (z || Utility.areObjectsEqual(modeHandler.getMode(), obj)) {
                if (modeHandler.canShow(content, false)) {
                    return true;
                }
            }
        }
        return false;
    }

    protected abstract AppCall createBaseAppCall();

    public Activity getActivityContext() {
        Activity activity = this.activity;
        if (activity != null) {
            return activity;
        }
        FragmentWrapper fragmentWrapper = this.fragmentWrapper;
        if (fragmentWrapper == null) {
            return null;
        }
        return fragmentWrapper.getActivity();
    }

    protected abstract List<FacebookDialogBase<CONTENT, RESULT>.ModeHandler> getOrderedModeHandlers();

    public int getRequestCode() {
        return this.requestCode;
    }

    @Override // com.facebook.FacebookDialog
    public final void registerCallback(CallbackManager callbackManager, FacebookCallback<RESULT> facebookCallback) {
        if (callbackManager instanceof CallbackManagerImpl) {
            registerCallbackImpl((CallbackManagerImpl) callbackManager, facebookCallback);
            return;
        }
        throw new FacebookException("Unexpected CallbackManager, please use the provided Factory.");
    }

    @Override // com.facebook.FacebookDialog
    public final void registerCallback(CallbackManager callbackManager, FacebookCallback<RESULT> facebookCallback, int i) {
        setRequestCode(i);
        registerCallback(callbackManager, facebookCallback);
    }

    protected abstract void registerCallbackImpl(CallbackManagerImpl callbackManagerImpl, FacebookCallback<RESULT> facebookCallback);

    protected void setRequestCode(int i) {
        if (!FacebookSdk.isFacebookRequestCode(i)) {
            this.requestCode = i;
            return;
        }
        throw new IllegalArgumentException("Request code " + i + " cannot be within the range reserved by the Facebook SDK.");
    }

    @Override // com.facebook.FacebookDialog
    public void show(CONTENT content) {
        showImpl(content, BASE_AUTOMATIC_MODE);
    }

    public void showImpl(CONTENT content, Object obj) {
        AppCall createAppCallForMode = createAppCallForMode(content, obj);
        if (createAppCallForMode == null) {
            Log.e(TAG, "No code path should ever result in a null appCall");
            if (FacebookSdk.isDebugEnabled()) {
                throw new IllegalStateException("No code path should ever result in a null appCall");
            }
            return;
        }
        FragmentWrapper fragmentWrapper = this.fragmentWrapper;
        if (fragmentWrapper != null) {
            DialogPresenter.present(createAppCallForMode, fragmentWrapper);
        } else {
            DialogPresenter.present(createAppCallForMode, this.activity);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:18:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void startActivityForResult(android.content.Intent r6, int r7) {
        /*
            r5 = this;
            r0 = r5
            android.app.Activity r0 = r0.activity
            r8 = r0
            java.lang.String r0 = "Failed to find Activity or Fragment to startActivityForResult "
            r9 = r0
            r0 = r8
            if (r0 == 0) goto L16
            r0 = r8
            r1 = r6
            r2 = r7
            r0.startActivityForResult(r1, r2)
            goto L54
        L16:
            r0 = r5
            com.facebook.internal.FragmentWrapper r0 = r0.fragmentWrapper
            r10 = r0
            r0 = r9
            r8 = r0
            r0 = r10
            if (r0 == 0) goto L56
            r0 = r10
            android.app.Fragment r0 = r0.getNativeFragment()
            if (r0 == 0) goto L3b
            r0 = r5
            com.facebook.internal.FragmentWrapper r0 = r0.fragmentWrapper
            android.app.Fragment r0 = r0.getNativeFragment()
            r1 = r6
            r2 = r7
            r0.startActivityForResult(r1, r2)
            goto L54
        L3b:
            r0 = r9
            r8 = r0
            r0 = r5
            com.facebook.internal.FragmentWrapper r0 = r0.fragmentWrapper
            androidx.fragment.app.Fragment r0 = r0.getSupportFragment()
            if (r0 == 0) goto L56
            r0 = r5
            com.facebook.internal.FragmentWrapper r0 = r0.fragmentWrapper
            androidx.fragment.app.Fragment r0 = r0.getSupportFragment()
            r1 = r6
            r2 = r7
            r0.startActivityForResult(r1, r2)
        L54:
            r0 = 0
            r8 = r0
        L56:
            r0 = r8
            if (r0 == 0) goto L6a
            com.facebook.LoggingBehavior r0 = com.facebook.LoggingBehavior.DEVELOPER_ERRORS
            r1 = 6
            r2 = r5
            java.lang.Class r2 = r2.getClass()
            java.lang.String r2 = r2.getName()
            r3 = r8
            com.facebook.internal.Logger.log(r0, r1, r2, r3)
        L6a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.FacebookDialogBase.startActivityForResult(android.content.Intent, int):void");
    }
}
