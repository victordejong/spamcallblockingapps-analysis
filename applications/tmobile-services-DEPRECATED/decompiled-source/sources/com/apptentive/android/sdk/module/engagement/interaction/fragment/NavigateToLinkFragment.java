package com.apptentive.android.sdk.module.engagement.interaction.fragment;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveViewExitType;
import com.apptentive.android.sdk.module.engagement.interaction.model.NavigateToLinkInteraction;
import com.apptentive.android.sdk.util.Util;
import com.google.firebase.analytics.FirebaseAnalytics;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/fragment/NavigateToLinkFragment.class */
public class NavigateToLinkFragment extends ApptentiveBaseFragment<NavigateToLinkInteraction> {

    /* renamed from: com.apptentive.android.sdk.module.engagement.interaction.fragment.NavigateToLinkFragment$1 */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/fragment/NavigateToLinkFragment$1.class */
    static /* synthetic */ class C08021 {

        /* renamed from: $SwitchMap$com$apptentive$android$sdk$module$engagement$interaction$model$NavigateToLinkInteraction$Target */
        static final /* synthetic */ int[] f6452xc6407b83;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[NavigateToLinkInteraction.Target.values().length];
            f6452xc6407b83 = iArr;
            try {
                iArr[NavigateToLinkInteraction.Target.New.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f6452xc6407b83[NavigateToLinkInteraction.Target.Self.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    public static NavigateToLinkFragment newInstance(Bundle bundle) {
        NavigateToLinkFragment navigateToLinkFragment = new NavigateToLinkFragment();
        navigateToLinkFragment.setArguments(bundle);
        return navigateToLinkFragment;
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.fragment.ApptentiveBaseFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        String str;
        JSONObject jSONObject;
        Exception e;
        super.onCreate(bundle);
        boolean z = true;
        try {
            try {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(((NavigateToLinkInteraction) this.interaction).getUrl()));
                if (C08021.f6452xc6407b83[((NavigateToLinkInteraction) this.interaction).getTarget().ordinal()] == 1) {
                    intent.setFlags(268435456);
                }
                if (Util.canLaunchIntent(getContext(), intent)) {
                    getActivity().startActivity(intent);
                } else {
                    z = false;
                }
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject2.put("url", ((NavigateToLinkInteraction) this.interaction).getUrl());
                    jSONObject2.put("target", ((NavigateToLinkInteraction) this.interaction).getTarget().lowercaseName());
                    jSONObject2.put(FirebaseAnalytics.Param.SUCCESS, z);
                } catch (Exception e2) {
                    ApptentiveLog.m15641e(e2, "Error creating Event data object.", new Object[0]);
                    ApptentiveBaseFragment.logException(e2);
                }
                str = jSONObject2.toString();
            } catch (Throwable th) {
                JSONObject jSONObject3 = new JSONObject();
                try {
                    jSONObject3.put("url", ((NavigateToLinkInteraction) this.interaction).getUrl());
                    jSONObject3.put("target", ((NavigateToLinkInteraction) this.interaction).getTarget().lowercaseName());
                    jSONObject3.put(FirebaseAnalytics.Param.SUCCESS, false);
                } catch (Exception e3) {
                    ApptentiveLog.m15641e(e3, "Error creating Event data object.", new Object[0]);
                    ApptentiveBaseFragment.logException(e3);
                }
                engageInternal("navigate", jSONObject3.toString());
                throw th;
            }
        } catch (ActivityNotFoundException e4) {
            ApptentiveLog.m15632w(e4, "NavigateToLink Error: ", new Object[0]);
            ApptentiveBaseFragment.logException(e4);
            jSONObject = new JSONObject();
            try {
                jSONObject.put("url", ((NavigateToLinkInteraction) this.interaction).getUrl());
                jSONObject.put("target", ((NavigateToLinkInteraction) this.interaction).getTarget().lowercaseName());
                jSONObject.put(FirebaseAnalytics.Param.SUCCESS, false);
            } catch (Exception e5) {
                e = e5;
                ApptentiveLog.m15641e(e, "Error creating Event data object.", new Object[0]);
                ApptentiveBaseFragment.logException(e);
                str = jSONObject.toString();
                engageInternal("navigate", str);
            }
            str = jSONObject.toString();
            engageInternal("navigate", str);
        } catch (Exception e6) {
            ApptentiveLog.m15641e(e6, "Exception in %s.onCreate()", getClass().getSimpleName());
            ApptentiveBaseFragment.logException(e6);
            jSONObject = new JSONObject();
            try {
                jSONObject.put("url", ((NavigateToLinkInteraction) this.interaction).getUrl());
                jSONObject.put("target", ((NavigateToLinkInteraction) this.interaction).getTarget().lowercaseName());
                jSONObject.put(FirebaseAnalytics.Param.SUCCESS, false);
            } catch (Exception e7) {
                e = e7;
                ApptentiveLog.m15641e(e, "Error creating Event data object.", new Object[0]);
                ApptentiveBaseFragment.logException(e);
                str = jSONObject.toString();
                engageInternal("navigate", str);
            }
            str = jSONObject.toString();
            engageInternal("navigate", str);
        }
        engageInternal("navigate", str);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return null;
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.fragment.ApptentiveBaseFragment
    public boolean onFragmentExit(ApptentiveViewExitType apptentiveViewExitType) {
        return false;
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.fragment.ApptentiveBaseFragment, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        transit();
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.fragment.ApptentiveBaseFragment
    protected void sendLaunchEvent(Activity activity) {
    }
}
