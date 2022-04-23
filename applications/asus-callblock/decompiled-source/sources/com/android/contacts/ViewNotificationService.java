package com.android.contacts;

import android.app.Service;
import android.content.Intent;
import android.content.Loader;
import android.os.IBinder;
import android.util.Log;
import com.android.contacts.model.c;
import com.android.contacts.model.d;
/* loaded from: classes-dex2jar.jar:com/android/contacts/ViewNotificationService.class */
public class ViewNotificationService extends Service {

    /* renamed from: a  reason: collision with root package name */
    private static final String f495a = ViewNotificationService.class.getSimpleName();

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, final int i2) {
        d dVar = new d(this, intent.getData());
        dVar.registerListener(0, new Loader.OnLoadCompleteListener<c>() { // from class: com.android.contacts.ViewNotificationService.1
            @Override // android.content.Loader.OnLoadCompleteListener
            public final /* synthetic */ void onLoadComplete(Loader<c> loader, c cVar) {
                try {
                    loader.reset();
                } catch (RuntimeException e) {
                    Log.e(ViewNotificationService.f495a, "Error reseting loader", e);
                }
                try {
                    ViewNotificationService.this.stopSelfResult(i2);
                } catch (RuntimeException e2) {
                    Log.e(ViewNotificationService.f495a, "Error stopping service", e2);
                }
            }
        });
        dVar.startLoading();
        return 3;
    }
}
