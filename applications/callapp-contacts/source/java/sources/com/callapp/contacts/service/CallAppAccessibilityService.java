package com.callapp.contacts.service;

import android.accessibilityservice.AccessibilityService;
import android.content.Intent;
import android.view.accessibility.AccessibilityEvent;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.preferences.Prefs;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/service/CallAppAccessibilityService.class */
public class CallAppAccessibilityService extends AccessibilityService {

    /* renamed from: a */
    private static boolean f27566a = false;

    public static boolean isConnected() {
        return f27566a;
    }

    @Override // android.accessibilityservice.AccessibilityService
    public void onAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
    }

    @Override // android.app.Service
    public void onDestroy() {
        f27566a = false;
        super.onDestroy();
    }

    @Override // android.accessibilityservice.AccessibilityService
    public void onInterrupt() {
    }

    @Override // android.accessibilityservice.AccessibilityService
    protected void onServiceConnected() {
        f27566a = true;
        super.onServiceConnected();
        CallAppApplication.get();
        CallAppApplication.m31877a();
        Prefs.f26461eZ.set(Boolean.TRUE);
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        f27566a = false;
        return super.onUnbind(intent);
    }
}
