package com.android.contacts.j;

import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.util.Log;
import com.asus.updatesdk.BuildConfig;
/* loaded from: classes-dex2jar.jar:com/android/contacts/j/d.class */
public final class d extends HandlerThread implements Handler.Callback {

    /* renamed from: a  reason: collision with root package name */
    public Handler f1518a;

    /* renamed from: b  reason: collision with root package name */
    private f f1519b;
    private Handler c;

    public d(f fVar, Handler handler) {
        super("ContactsSearcher");
        this.f1519b = fVar;
        this.c = handler;
    }

    private void a() {
        if (this.f1518a == null) {
            this.f1518a = new Handler(getLooper(), this);
        }
    }

    public final void a(String str) {
        synchronized (this) {
            String str2 = str;
            if (str == null) {
                str2 = new String(BuildConfig.FLAVOR);
            }
            a();
            this.f1518a.removeMessages(0);
            Message obtainMessage = this.f1518a.obtainMessage();
            Bundle bundle = new Bundle();
            bundle.putString("QueryString", str2);
            bundle.putInt("SearchMode", 0);
            obtainMessage.what = 0;
            obtainMessage.setData(bundle);
            this.f1518a.sendMessageDelayed(obtainMessage, 200L);
        }
    }

    public final void a(String str, boolean z) {
        synchronized (this) {
            String str2 = str;
            if (str == null) {
                str2 = new String(BuildConfig.FLAVOR);
            }
            a();
            this.f1518a.removeMessages(0);
            Message obtainMessage = this.f1518a.obtainMessage();
            Bundle bundle = new Bundle();
            bundle.putString("QueryString", str2);
            obtainMessage.what = 0;
            obtainMessage.setData(bundle);
            if (z) {
                this.f1518a.sendMessageDelayed(obtainMessage, 200L);
            } else {
                this.f1518a.sendMessage(obtainMessage);
            }
        }
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        a[] a2;
        this.c.removeMessages(0);
        String string = message.getData().getString("QueryString");
        int i = message.getData().getInt("SearchMode", 0);
        f fVar = this.f1519b;
        if (fVar.f1525b == null) {
            a2 = new a[0];
        } else {
            l.a();
            a2 = fVar.f1525b.a(string, i);
        }
        f fVar2 = this.f1519b;
        if (fVar2.f != null) {
            synchronized (fVar2.f) {
                try {
                    fVar2.f.clear();
                    if (a2 != null) {
                        for (a aVar : a2) {
                            fVar2.f.add(aVar);
                        }
                    }
                } catch (NullPointerException e) {
                    Log.e("SmartDialUnbundle", "querierUpdateNewResult Exception:" + e.toString());
                }
            }
        }
        Message obtainMessage = this.c.obtainMessage();
        Bundle bundle = new Bundle();
        bundle.putString("QueryString", string);
        obtainMessage.what = 0;
        obtainMessage.setData(bundle);
        this.c.sendMessage(obtainMessage);
        return true;
    }
}
