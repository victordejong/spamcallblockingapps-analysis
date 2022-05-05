package com.android.contacts.util;

import android.accounts.AccountManager;
import android.accounts.AccountManagerCallback;
import android.accounts.AccountManagerFuture;
import android.accounts.AuthenticatorDescription;
import android.accounts.AuthenticatorException;
import android.accounts.OperationCanceledException;
import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.util.Log;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/android/contacts/util/AccountPromptUtils.class */
public class AccountPromptUtils {
    private static final String KEY_ALLOW_SKIP_ACCOUNT_SETUP = "allowSkip";
    private static final String KEY_INTRO_MESSAGE = "introMessage";
    private static final String KEY_SHOW_ACCOUNT_PROMPT = "settings.showAccountPrompt";
    private static final String KEY_USER_SKIPPED_ACCOUNT_SETUP = "setupSkipped";
    private static final String TAG = AccountPromptUtils.class.getSimpleName();

    private static AccountManagerCallback<Bundle> getAccountManagerCallback(final Activity activity) {
        return new AccountManagerCallback<Bundle>() { // from class: com.android.contacts.util.AccountPromptUtils.1
            @Override // android.accounts.AccountManagerCallback
            public final void run(AccountManagerFuture<Bundle> accountManagerFuture) {
                if (accountManagerFuture.isCancelled()) {
                    activity.finish();
                    return;
                }
                try {
                    if (accountManagerFuture.getResult().getBoolean(AccountPromptUtils.KEY_USER_SKIPPED_ACCOUNT_SETUP)) {
                        AccountPromptUtils.neverShowAccountPromptAgain(activity);
                    }
                } catch (AuthenticatorException e) {
                    Log.e(AccountPromptUtils.TAG, "Account setup error: Authenticator experienced an I/O problem");
                } catch (OperationCanceledException e2) {
                    Log.e(AccountPromptUtils.TAG, "Account setup error: account creation process canceled");
                } catch (IOException e3) {
                    Log.e(AccountPromptUtils.TAG, "Account setup error: No authenticator was registered for thisaccount type or the authenticator failed to respond");
                }
            }
        };
    }

    private static SharedPreferences getSharedPreferences(Context context) {
        return PreferenceManager.getDefaultSharedPreferences(context);
    }

    public static void launchAccountPrompt(Activity activity) {
        Bundle bundle = new Bundle();
        bundle.putCharSequence(KEY_INTRO_MESSAGE, activity.getString(2131755898));
        bundle.putBoolean(KEY_ALLOW_SKIP_ACCOUNT_SETUP, true);
        AccountManager.get(activity).addAccount("com.google", null, null, bundle, activity, getAccountManagerCallback(activity), null);
    }

    public static void neverShowAccountPromptAgain(Context context) {
        getSharedPreferences(context).edit().putBoolean(KEY_SHOW_ACCOUNT_PROMPT, false).apply();
    }

    public static boolean shouldShowAccountPrompt(Context context) {
        boolean z = false;
        AuthenticatorDescription[] authenticatorTypes = AccountManager.get(context).getAuthenticatorTypes();
        int length = authenticatorTypes.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            } else if ("com.google".equals(authenticatorTypes[i].type)) {
                z = getSharedPreferences(context).getBoolean(KEY_SHOW_ACCOUNT_PROMPT, true);
                break;
            } else {
                i++;
            }
        }
        return z;
    }
}
