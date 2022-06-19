package com.facebook.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import com.facebook.internal.p037u0.p040m.C1220a;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import java.util.Objects;
import kotlin.Metadata;
import s1.z.c.l;
@Metadata(d1 = {"��^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\b\b&\u0018��2\u00020\u0001:\u0001+B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\t\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\u000bJ\u0012\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0002J\u0006\u0010\u001c\u001a\u00020\u0019J\u0010\u0010\u001d\u001a\u00020\u00192\u0006\u0010\u001e\u001a\u00020\u001fH\u0004J\u0018\u0010 \u001a\u00020\u00192\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$H\u0016J\u0010\u0010%\u001a\u00020\u00192\u0006\u0010!\u001a\u00020\"H\u0016J\u0010\u0010&\u001a\u00020\u00192\u0006\u0010'\u001a\u00020\u001bH$J\b\u0010(\u001a\u00020\u0019H\u0002J\u0010\u0010)\u001a\u00020\u00192\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u0006\u0010*\u001a\u00020\u0015R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0002\u001a\u00020\u0003X\u0084\u0004¢\u0006\b\n��\u001a\u0004\b\f\u0010\rR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n��R\u0013\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\b\n��\u001a\u0004\b\u0012\u0010\u0013R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e¢\u0006\u0002\n��¨\u0006,"}, d2 = {"Lcom/facebook/internal/PlatformServiceClient;", "Landroid/content/ServiceConnection;", AnalyticsConstants.CONTEXT, "Landroid/content/Context;", "requestMessage", "", "replyMessage", "protocolVersion", "applicationId", "", "nonce", "(Landroid/content/Context;IIILjava/lang/String;Ljava/lang/String;)V", "getContext", "()Landroid/content/Context;", "handler", "Landroid/os/Handler;", "listener", "Lcom/facebook/internal/PlatformServiceClient$CompletedListener;", "getNonce", "()Ljava/lang/String;", "running", "", AnalyticsConstants.SENDER, "Landroid/os/Messenger;", "callback", "", "result", "Landroid/os/Bundle;", "cancel", "handleMessage", "message", "Landroid/os/Message;", "onServiceConnected", AnalyticsConstants.NAME, "Landroid/content/ComponentName;", "service", "Landroid/os/IBinder;", "onServiceDisconnected", "populateRequestBundle", RemoteMessageConst.DATA, "sendMessage", "setCompletedListener", AnalyticsConstants.START, "CompletedListener", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.internal.m0 */
/* loaded from: classes2-dex2jar.jar:com/facebook/internal/m0.class */
public abstract class AbstractServiceConnectionC1155m0 implements ServiceConnection {

    /* renamed from: a */
    public final Context f3155a;

    /* renamed from: b */
    public final Handler f3156b;

    /* renamed from: c */
    public AbstractC1157b f3157c;

    /* renamed from: d */
    public boolean f3158d;

    /* renamed from: e */
    public Messenger f3159e;

    /* renamed from: f */
    public final int f3160f;

    /* renamed from: g */
    public final int f3161g;

    /* renamed from: h */
    public final String f3162h;

    /* renamed from: i */
    public final int f3163i;

    /* renamed from: j */
    public final String f3164j;

    @Metadata(d1 = {"��\u0017\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��*\u0001��\b\n\u0018��2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0006"}, d2 = {"com/facebook/internal/PlatformServiceClient$1", "Landroid/os/Handler;", "handleMessage", "", "message", "Landroid/os/Message;", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.internal.m0$a */
    /* loaded from: classes2-dex2jar.jar:com/facebook/internal/m0$a.class */
    public static final class HandlerC1156a extends Handler {
        public HandlerC1156a() {
            AbstractServiceConnectionC1155m0.this = r4;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (C1220a.m41623b(this)) {
                return;
            }
            try {
                l.e(message, "message");
                AbstractServiceConnectionC1155m0 abstractServiceConnectionC1155m0 = AbstractServiceConnectionC1155m0.this;
                Objects.requireNonNull(abstractServiceConnectionC1155m0);
                l.e(message, "message");
                if (message.what != abstractServiceConnectionC1155m0.f3161g) {
                    return;
                }
                Bundle data = message.getData();
                if (data.getString("com.facebook.platform.status.ERROR_TYPE") != null) {
                    abstractServiceConnectionC1155m0.m41709a(null);
                } else {
                    abstractServiceConnectionC1155m0.m41709a(data);
                }
                try {
                    abstractServiceConnectionC1155m0.f3155a.unbindService(abstractServiceConnectionC1155m0);
                } catch (IllegalArgumentException e) {
                }
            } catch (Throwable th) {
                C1220a.m41624a(th, this);
            }
        }
    }

    @Metadata(d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\bæ\u0080\u0001\u0018��2\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&¨\u0006\u0006"}, d2 = {"Lcom/facebook/internal/PlatformServiceClient$CompletedListener;", "", "completed", "", "result", "Landroid/os/Bundle;", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.internal.m0$b */
    /* loaded from: classes2-dex2jar.jar:com/facebook/internal/m0$b.class */
    public interface AbstractC1157b {
    }

    public AbstractServiceConnectionC1155m0(Context context, int i, int i2, int i3, String str, String str2) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(str, "applicationId");
        Context applicationContext = context.getApplicationContext();
        this.f3155a = applicationContext != null ? applicationContext : context;
        this.f3160f = i;
        this.f3161g = i2;
        this.f3162h = str;
        this.f3163i = i3;
        this.f3164j = str2;
        this.f3156b = new HandlerC1156a();
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x0103, code lost:
        if (r0.length() == 0) goto L38;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m41709a(android.os.Bundle r8) {
        /*
            Method dump skipped, instructions count: 452
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.AbstractServiceConnectionC1155m0.m41709a(android.os.Bundle):void");
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        l.e(componentName, AnalyticsConstants.NAME);
        l.e(iBinder, "service");
        this.f3159e = new Messenger(iBinder);
        Bundle bundle = new Bundle();
        bundle.putString("com.facebook.platform.extra.APPLICATION_ID", this.f3162h);
        String str = this.f3164j;
        if (str != null) {
            bundle.putString("com.facebook.platform.extra.NONCE", str);
        }
        l.e(bundle, RemoteMessageConst.DATA);
        Message obtain = Message.obtain((Handler) null, this.f3160f);
        obtain.arg1 = this.f3163i;
        obtain.setData(bundle);
        obtain.replyTo = new Messenger(this.f3156b);
        try {
            Messenger messenger = this.f3159e;
            if (messenger == null) {
                return;
            }
            messenger.send(obtain);
        } catch (RemoteException e) {
            m41709a(null);
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        l.e(componentName, AnalyticsConstants.NAME);
        this.f3159e = null;
        try {
            this.f3155a.unbindService(this);
        } catch (IllegalArgumentException e) {
        }
        m41709a(null);
    }
}
