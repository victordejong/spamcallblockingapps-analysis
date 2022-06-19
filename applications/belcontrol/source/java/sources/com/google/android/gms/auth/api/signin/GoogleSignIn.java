package com.google.android.gms.auth.api.signin;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import androidx.fragment.app.Fragment;
import com.google.android.gms.auth.api.signin.internal.zzi;
import com.google.android.gms.auth.api.signin.internal.zzq;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.ApiExceptionUtil;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/GoogleSignIn.class */
public final class GoogleSignIn {
    private GoogleSignIn() {
    }

    public static GoogleSignInAccount getAccountForExtension(Context context, GoogleSignInOptionsExtension googleSignInOptionsExtension) {
        Preconditions.checkNotNull(context, "please provide a valid Context object");
        Preconditions.checkNotNull(googleSignInOptionsExtension, "please provide valid GoogleSignInOptionsExtension");
        GoogleSignInAccount lastSignedInAccount = getLastSignedInAccount(context);
        GoogleSignInAccount googleSignInAccount = lastSignedInAccount;
        if (lastSignedInAccount == null) {
            googleSignInAccount = GoogleSignInAccount.createDefault();
        }
        return googleSignInAccount.requestExtraScopes(zze(googleSignInOptionsExtension.getImpliedScopes()));
    }

    public static GoogleSignInAccount getAccountForScopes(Context context, Scope scope, Scope... scopeArr) {
        Preconditions.checkNotNull(context, "please provide a valid Context object");
        Preconditions.checkNotNull(scope, "please provide at least one valid scope");
        GoogleSignInAccount lastSignedInAccount = getLastSignedInAccount(context);
        GoogleSignInAccount googleSignInAccount = lastSignedInAccount;
        if (lastSignedInAccount == null) {
            googleSignInAccount = GoogleSignInAccount.createDefault();
        }
        googleSignInAccount.requestExtraScopes(new Scope[]{scope});
        googleSignInAccount.requestExtraScopes(scopeArr);
        return googleSignInAccount;
    }

    public static GoogleSignInClient getClient(Activity activity, GoogleSignInOptions googleSignInOptions) {
        return new GoogleSignInClient(activity, (GoogleSignInOptions) Preconditions.checkNotNull(googleSignInOptions));
    }

    public static GoogleSignInClient getClient(Context context, GoogleSignInOptions googleSignInOptions) {
        return new GoogleSignInClient(context, (GoogleSignInOptions) Preconditions.checkNotNull(googleSignInOptions));
    }

    public static GoogleSignInAccount getLastSignedInAccount(Context context) {
        return zzq.zzd(context).zzr();
    }

    public static Task<GoogleSignInAccount> getSignedInAccountFromIntent(Intent intent) {
        Status status;
        GoogleSignInResult signInResultFromIntent = zzi.getSignInResultFromIntent(intent);
        if (signInResultFromIntent == null) {
            status = Status.RESULT_INTERNAL_ERROR;
        } else {
            GoogleSignInAccount signInAccount = signInResultFromIntent.getSignInAccount();
            if (signInResultFromIntent.getStatus().isSuccess() && signInAccount != null) {
                return Tasks.forResult(signInAccount);
            }
            status = signInResultFromIntent.getStatus();
        }
        return Tasks.forException(ApiExceptionUtil.fromStatus(status));
    }

    public static boolean hasPermissions(GoogleSignInAccount googleSignInAccount, GoogleSignInOptionsExtension googleSignInOptionsExtension) {
        Preconditions.checkNotNull(googleSignInOptionsExtension, "Please provide a non-null GoogleSignInOptionsExtension");
        return hasPermissions(googleSignInAccount, zze(googleSignInOptionsExtension.getImpliedScopes()));
    }

    public static boolean hasPermissions(GoogleSignInAccount googleSignInAccount, Scope... scopeArr) {
        if (googleSignInAccount == null) {
            return false;
        }
        HashSet hashSet = new HashSet();
        Collections.addAll(hashSet, scopeArr);
        return googleSignInAccount.getGrantedScopes().containsAll(hashSet);
    }

    public static void requestPermissions(Activity activity, int i, GoogleSignInAccount googleSignInAccount, GoogleSignInOptionsExtension googleSignInOptionsExtension) {
        Preconditions.checkNotNull(activity, "Please provide a non-null Activity");
        Preconditions.checkNotNull(googleSignInOptionsExtension, "Please provide a non-null GoogleSignInOptionsExtension");
        requestPermissions(activity, i, googleSignInAccount, zze(googleSignInOptionsExtension.getImpliedScopes()));
    }

    public static void requestPermissions(Activity activity, int i, GoogleSignInAccount googleSignInAccount, Scope... scopeArr) {
        Preconditions.checkNotNull(activity, "Please provide a non-null Activity");
        Preconditions.checkNotNull(scopeArr, "Please provide at least one scope");
        activity.startActivityForResult(zzc(activity, googleSignInAccount, scopeArr), i);
    }

    public static void requestPermissions(Fragment fragment, int i, GoogleSignInAccount googleSignInAccount, GoogleSignInOptionsExtension googleSignInOptionsExtension) {
        Preconditions.checkNotNull(fragment, "Please provide a non-null Fragment");
        Preconditions.checkNotNull(googleSignInOptionsExtension, "Please provide a non-null GoogleSignInOptionsExtension");
        requestPermissions(fragment, i, googleSignInAccount, zze(googleSignInOptionsExtension.getImpliedScopes()));
    }

    public static void requestPermissions(Fragment fragment, int i, GoogleSignInAccount googleSignInAccount, Scope... scopeArr) {
        Preconditions.checkNotNull(fragment, "Please provide a non-null Fragment");
        Preconditions.checkNotNull(scopeArr, "Please provide at least one scope");
        fragment.startActivityForResult(zzc(fragment.getActivity(), googleSignInAccount, scopeArr), i);
    }

    private static Intent zzc(Activity activity, GoogleSignInAccount googleSignInAccount, Scope... scopeArr) {
        GoogleSignInOptions$Builder googleSignInOptions$Builder = new GoogleSignInOptions$Builder();
        if (scopeArr.length > 0) {
            googleSignInOptions$Builder.requestScopes(scopeArr[0], scopeArr);
        }
        if (googleSignInAccount != null && !TextUtils.isEmpty(googleSignInAccount.getEmail())) {
            googleSignInOptions$Builder.setAccountName((String) Preconditions.checkNotNull(googleSignInAccount.getEmail()));
        }
        return new GoogleSignInClient(activity, googleSignInOptions$Builder.build()).getSignInIntent();
    }

    private static Scope[] zze(List<Scope> list) {
        return list == null ? new Scope[0] : (Scope[]) list.toArray(new Scope[list.size()]);
    }
}
