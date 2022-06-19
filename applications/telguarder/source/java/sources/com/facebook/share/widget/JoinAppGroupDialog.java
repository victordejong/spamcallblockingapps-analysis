package com.facebook.share.widget;

import android.app.Activity;
import android.app.Fragment;
import android.content.Intent;
import android.os.Bundle;
import com.facebook.FacebookCallback;
import com.facebook.internal.AppCall;
import com.facebook.internal.CallbackManagerImpl;
import com.facebook.internal.DialogPresenter;
import com.facebook.internal.FacebookDialogBase;
import com.facebook.internal.FragmentWrapper;
import com.facebook.share.internal.ResultProcessor;
import com.facebook.share.internal.ShareInternalUtility;
import java.util.ArrayList;
import java.util.List;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/facebook/share/widget/JoinAppGroupDialog.class */
public class JoinAppGroupDialog extends FacebookDialogBase<String, Result> {
    private static final int DEFAULT_REQUEST_CODE = CallbackManagerImpl.RequestCodeOffset.AppGroupJoin.toRequestCode();
    private static final String JOIN_GAME_GROUP_DIALOG = "game_group_join";

    @Deprecated
    /* loaded from: classes-dex2jar.jar:com/facebook/share/widget/JoinAppGroupDialog$Result.class */
    public static final class Result {
        private final Bundle data;

        private Result(Bundle bundle) {
            this.data = bundle;
        }

        public Bundle getData() {
            return this.data;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/share/widget/JoinAppGroupDialog$WebHandler.class */
    private class WebHandler extends FacebookDialogBase<String, Result>.ModeHandler {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private WebHandler() {
            super();
            JoinAppGroupDialog.this = r4;
        }

        public boolean canShow(String str, boolean z) {
            return true;
        }

        public AppCall createAppCall(String str) {
            AppCall createBaseAppCall = JoinAppGroupDialog.this.createBaseAppCall();
            Bundle bundle = new Bundle();
            bundle.putString("id", str);
            DialogPresenter.setupAppCallForWebDialog(createBaseAppCall, JoinAppGroupDialog.JOIN_GAME_GROUP_DIALOG, bundle);
            return createBaseAppCall;
        }
    }

    @Deprecated
    public JoinAppGroupDialog(Activity activity) {
        super(activity, DEFAULT_REQUEST_CODE);
    }

    @Deprecated
    public JoinAppGroupDialog(Fragment fragment) {
        this(new FragmentWrapper(fragment));
    }

    @Deprecated
    public JoinAppGroupDialog(androidx.fragment.app.Fragment fragment) {
        this(new FragmentWrapper(fragment));
    }

    private JoinAppGroupDialog(FragmentWrapper fragmentWrapper) {
        super(fragmentWrapper, DEFAULT_REQUEST_CODE);
    }

    @Deprecated
    public static boolean canShow() {
        return true;
    }

    @Deprecated
    public static void show(Activity activity, String str) {
        new JoinAppGroupDialog(activity).show(str);
    }

    @Deprecated
    public static void show(Fragment fragment, String str) {
        show(new FragmentWrapper(fragment), str);
    }

    @Deprecated
    public static void show(androidx.fragment.app.Fragment fragment, String str) {
        show(new FragmentWrapper(fragment), str);
    }

    private static void show(FragmentWrapper fragmentWrapper, String str) {
        new JoinAppGroupDialog(fragmentWrapper).show(str);
    }

    @Override // com.facebook.internal.FacebookDialogBase
    protected AppCall createBaseAppCall() {
        return new AppCall(getRequestCode());
    }

    @Override // com.facebook.internal.FacebookDialogBase
    protected List<FacebookDialogBase<String, Result>.ModeHandler> getOrderedModeHandlers() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new WebHandler());
        return arrayList;
    }

    @Override // com.facebook.internal.FacebookDialogBase
    protected void registerCallbackImpl(CallbackManagerImpl callbackManagerImpl, final FacebookCallback<Result> facebookCallback) {
        final ResultProcessor resultProcessor = facebookCallback == null ? null : new ResultProcessor(facebookCallback) { // from class: com.facebook.share.widget.JoinAppGroupDialog.1
            @Override // com.facebook.share.internal.ResultProcessor
            public void onSuccess(AppCall appCall, Bundle bundle) {
                facebookCallback.onSuccess(new Result(bundle));
            }
        };
        callbackManagerImpl.registerCallback(getRequestCode(), new CallbackManagerImpl.Callback() { // from class: com.facebook.share.widget.JoinAppGroupDialog.2
            @Override // com.facebook.internal.CallbackManagerImpl.Callback
            public boolean onActivityResult(int i, Intent intent) {
                return ShareInternalUtility.handleActivityResult(JoinAppGroupDialog.this.getRequestCode(), i, intent, resultProcessor);
            }
        });
    }
}
