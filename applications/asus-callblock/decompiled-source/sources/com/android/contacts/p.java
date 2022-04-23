package com.android.contacts;

import android.app.Fragment;
import android.app.FragmentTransaction;
import android.content.ContentResolver;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.View;
import com.android.contacts.ContactSaveService;
import com.android.contacts.activities.TransactionSafeActivity;
import com.android.contacts.test.a;
/* loaded from: classes-dex2jar.jar:com/android/contacts/p.class */
public abstract class p extends TransactionSafeActivity implements ContactSaveService.b {
    private ContentResolver mContentResolver;

    protected static void hideFragment(FragmentTransaction fragmentTransaction, Fragment fragment) {
        if (fragment != null && !fragment.isHidden()) {
            fragmentTransaction.hide(fragment);
        }
    }

    protected static void showFragment(FragmentTransaction fragmentTransaction, Fragment fragment) {
        if (fragment != null && fragment.isHidden()) {
            fragmentTransaction.show(fragment);
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public ContentResolver getContentResolver() {
        if (this.mContentResolver == null) {
            a a2 = ContactsApplication.a();
            if (a2 != null) {
                this.mContentResolver = a2.f2172a;
            }
            if (this.mContentResolver == null) {
                this.mContentResolver = super.getContentResolver();
            }
        }
        return this.mContentResolver;
    }

    public <T extends Fragment> T getFragment(int i) {
        T t = (T) getFragmentManager().findFragmentById(i);
        if (t != null) {
            return t;
        }
        throw new IllegalArgumentException("fragment 0x" + Integer.toHexString(i) + " doesn't exist");
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public SharedPreferences getSharedPreferences(String str, int i) {
        SharedPreferences sharedPreferences;
        a a2 = ContactsApplication.a();
        return (a2 == null || (sharedPreferences = a2.f2173b) == null) ? super.getSharedPreferences(str, i) : sharedPreferences;
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public Object getSystemService(String str) {
        Object systemService = super.getSystemService(str);
        return systemService != null ? systemService : getApplicationContext().getSystemService(str);
    }

    public <T extends View> T getView(int i) {
        T t = (T) findViewById(i);
        if (t != null) {
            return t;
        }
        throw new IllegalArgumentException("view 0x" + Integer.toHexString(i) + " doesn't exist");
    }

    @Override // com.android.contacts.activities.TransactionSafeActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        ContactSaveService.a(this);
        super.onCreate(bundle);
    }

    @Override // android.app.Activity
    public void onDestroy() {
        ContactSaveService.b(this);
        super.onDestroy();
    }

    @Override // com.android.contacts.ContactSaveService.b
    public void onServiceCompleted(Intent intent) {
        onNewIntent(intent);
    }
}
