package com.truecaller.flashsdk.core;

import android.app.DownloadManager;
import android.app.Service;
import android.content.Intent;
import android.net.Uri;
import android.os.Environment;
import android.os.IBinder;
import android.widget.Toast;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.tenor.android.core.constant.ContentFormat;
import com.truecaller.flashsdk.models.Flash;
import com.truecaller.flashsdk.models.ImageFlash;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1872x.p1873a.C27062a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p1365y.p1382c.AbstractC21635e;
import p193e.p194a.p1365y.p1382c.AbstractC21636f;
import p193e.p194a.p1365y.p1382c.C21632c;
import p193e.p194a.p1365y.p1382c.p1383x.p1384a.C21667b;
import p193e.p194a.p1365y.p1382c.p1383x.p1385b.C21698r;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\b\u0018��2\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b+\u0010\u0005J\u000f\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0004\u0010\u0005J)\u0010\u000b\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\r\u0010\u0005J\u001b\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0011\u0010\u0005J\u000f\u0010\u0012\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0012\u0010\u0005J\u0017\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0017\u0010\u0016J\u000f\u0010\u0018\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0018\u0010\u0005J\u0017\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u0019H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ'\u0010 \u001a\u00020\u00032\u0006\u0010\u001d\u001a\u00020\u00192\u0006\u0010\u001e\u001a\u00020\u00192\u0006\u0010\u001f\u001a\u00020\u0019H\u0016¢\u0006\u0004\b \u0010!J\u0017\u0010\"\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\"\u0010#R\"\u0010*\u001a\u00020$8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0018\u0010%\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)¨\u0006,"}, d2 = {"Lcom/truecaller/flashsdk/core/FlashMediaService;", "Landroid/app/Service;", "Le/a/y/c/f;", "Ls1/s;", "onCreate", "()V", "Landroid/content/Intent;", "intent", "", "flags", "startId", "onStartCommand", "(Landroid/content/Intent;II)I", "onDestroy", "Landroid/os/IBinder;", "onBind", "(Landroid/content/Intent;)Landroid/os/IBinder;", "d", "e", "Lcom/truecaller/flashsdk/models/ImageFlash;", "flash", "f", "(Lcom/truecaller/flashsdk/models/ImageFlash;)V", C22021b.f61237c, "a", "", "message", "l", "(Ljava/lang/String;)V", "downloadUrl", "fileName", "notificationTitle", AbstractC2405c.f7629a, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "g", "(Landroid/content/Intent;)V", "Le/a/y/c/e;", "Le/a/y/c/e;", "getPresenter", "()Le/a/y/c/e;", "setPresenter", "(Le/a/y/c/e;)V", "presenter", "<init>", "flash_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/core/FlashMediaService.class */
public final class FlashMediaService extends Service implements AbstractC21636f {
    @Inject

    /* renamed from: a */
    public AbstractC21635e f11955a;

    @Override // p193e.p194a.p1365y.p1382c.AbstractC21636f
    /* renamed from: a */
    public void mo9291a() {
        Intent intent = new Intent("action_image_flash");
        intent.putExtra("extra_state", "state_uploaded");
        m35415g(intent);
    }

    @Override // p193e.p194a.p1365y.p1382c.AbstractC21636f
    /* renamed from: b */
    public void mo9290b(ImageFlash imageFlash) {
        l.e(imageFlash, "flash");
        Intent intent = new Intent("action_image_flash");
        intent.putExtra("extra_state", "state_uploading_failed");
        intent.putExtra("extra_image_flash", imageFlash);
        m35415g(intent);
    }

    @Override // p193e.p194a.p1365y.p1382c.AbstractC21636f
    /* renamed from: c */
    public void mo9289c(String str, String str2, String str3) {
        l.e(str, "downloadUrl");
        l.e(str2, "fileName");
        l.e(str3, "notificationTitle");
        Object systemService = getSystemService("download");
        Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.app.DownloadManager");
        DownloadManager downloadManager = (DownloadManager) systemService;
        DownloadManager.Request request = new DownloadManager.Request(Uri.parse(str));
        request.setAllowedNetworkTypes(3).setAllowedOverRoaming(true).setTitle(str3).setDestinationInExternalPublicDir(Environment.DIRECTORY_DOWNLOADS, str2).setMimeType(ContentFormat.IMAGE_JPEG).setVisibleInDownloadsUi(true).setNotificationVisibility(1).allowScanningByMediaScanner();
        downloadManager.enqueue(request);
    }

    @Override // p193e.p194a.p1365y.p1382c.AbstractC21636f
    /* renamed from: d */
    public void mo9288d() {
        Intent intent = new Intent("action_image_flash");
        intent.putExtra("extra_state", "state_flash_failed");
        m35415g(intent);
    }

    @Override // p193e.p194a.p1365y.p1382c.AbstractC21636f
    /* renamed from: e */
    public void mo9287e() {
        Intent intent = new Intent("action_image_flash");
        intent.putExtra("extra_state", "state_flash_sent");
        m35415g(intent);
    }

    @Override // p193e.p194a.p1365y.p1382c.AbstractC21636f
    /* renamed from: f */
    public void mo9286f(ImageFlash imageFlash) {
        l.e(imageFlash, "flash");
        Intent intent = new Intent("action_image_flash");
        intent.putExtra("extra_state", "state_uploading_failed");
        intent.putExtra("extra_image_flash", imageFlash);
        m35415g(intent);
    }

    /* renamed from: g */
    public final void m35415g(Intent intent) {
        C27062a.m968b(this).m966d(intent);
    }

    @Override // p193e.p194a.p1365y.p1382c.AbstractC21636f
    /* renamed from: l */
    public void mo9285l(String str) {
        l.e(str, "message");
        Toast.makeText(this, str, 0).show();
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        C21632c c21632c = C21632c.f60288b;
        AbstractC21635e abstractC21635e = (AbstractC21635e) ((C21667b.C21669b) C21632c.m9331a().mo9200o(new C21698r())).f60420c.get();
        this.f11955a = abstractC21635e;
        if (abstractC21635e != null) {
            abstractC21635e.mo9029Y0(this);
        } else {
            l.l("presenter");
            throw null;
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        AbstractC21635e abstractC21635e = this.f11955a;
        if (abstractC21635e != null) {
            abstractC21635e.mo9806c();
        } else {
            l.l("presenter");
            throw null;
        }
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        if (intent != null) {
            AbstractC21635e abstractC21635e = this.f11955a;
            if (abstractC21635e != null) {
                return abstractC21635e.mo9280n4(intent.getAction(), (Flash) intent.getParcelableExtra("extra_flash"), (ImageFlash) intent.getParcelableExtra("extra_image_flash"));
            }
            l.l("presenter");
            throw null;
        }
        return 2;
    }
}
