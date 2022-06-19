package com.truecaller.service;

import android.app.Service;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.truecaller.C2752R;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.HistoryEvent;
import com.truecaller.data.entity.Number;
import com.truecaller.log.AssertionUtil;
import com.truecaller.log.UnmutedException;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.UUID;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1451f.p1452a.C22234h;
import p193e.p1451f.p1452a.ComponentCallbacks2C22222c;
import p193e.p1451f.p1452a.p1457n.p1466q.p1467d.AbstractC22505m;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1041l0.AbstractC17348c;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1114o5.p1119c2.AbstractC18977k;
import p193e.p194a.p1114o5.p1119c2.C18995r0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1406z3.C21852d;
import p193e.p194a.p1406z3.C21853e;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p751f4.p762g.C14022p;
import p193e.p194a.p751f4.p762g.C14030t;
import p193e.p194a.p997k3.p1000l.AbstractC16498f;
import p193e.p194a.p997k3.p998j.AbstractC16480g;
import s1.k;
import w3.c.a.a.a.h;
/* loaded from: classes13-dex2jar.jar:com/truecaller/service/DialerNumberLookupService.class */
public class DialerNumberLookupService extends Service implements Handler.Callback {

    /* renamed from: a */
    public Messenger f14706a;

    /* renamed from: b */
    public Handler f14707b;

    /* renamed from: c */
    public AbstractC16498f f14708c;

    /* renamed from: d */
    public AbstractC19854f<AbstractC17348c> f14709d;

    /* renamed from: e */
    public AbstractC16480g f14710e;

    /* renamed from: f */
    public AbstractC8432l f14711f;

    /* renamed from: a */
    public final void m34769a(Bundle bundle, Contact contact, String str, Number number) {
        if (contact == null) {
            return;
        }
        bundle.putString("phoneNumber", number.m35477g());
        bundle.putString("normalizedNumber", number.m35479e());
        bundle.putInt(HiAnalyticsConstant.HaKey.BI_KEY_PHONETYPE, number.m35470o());
        bundle.putString("phoneLabel", number.m35469p());
        if (contact.m35574A0()) {
            bundle.putString("displayName", getString(C2752R.string.BlockCallerIDNative, new Object[]{contact.m35491w()}));
            bundle.putString("spamString", getString(2131886137, new Object[]{Integer.valueOf(contact.m35533a0())}));
        } else {
            bundle.putString("displayName", contact.m35491w());
        }
        Uri m22592B = C12864a2.m22592B(contact, false);
        if (m22592B != null) {
            bundle.putString("imageUrl", m22592B.toString());
        }
        bundle.putBoolean("isBusiness", h.m(contact.m35555N()));
        bundle.putBoolean("isSpam", contact.m35574A0());
        Resources resources = getResources();
        bundle.putString("spamLogo", resources.getResourceEntryName(C2752R.C2753drawable.partner_native_spam));
        if (!contact.m35495t0()) {
            AbstractC18977k.C18980c mo14263b = C18995r0.m14265a(this).mo14263b(this);
            bundle.putString("partnerLogo", resources.getResourceEntryName(mo14263b.f53122a));
            bundle.putString("identifiedByText", resources.getString(C2752R.string.IdentifiedByTruecaller));
            if (mo14263b.m14266a()) {
                bundle.putString("poweredByLogo", null);
                bundle.putString("poweredByText", resources.getString(C2752R.string.PoweredByTruecaller));
            }
        }
        try {
            HistoryEvent mo11831c = this.f14709d.mo11854a().mo16240h(str).mo11831c();
            if (mo11831c == null) {
                return;
            }
            long j = mo11831c.f11541h;
            if (j <= 0) {
                return;
            }
            bundle.putLong("lastCall", j);
        } catch (InterruptedException e) {
        }
    }

    /* renamed from: b */
    public void m34768b(String str, Bundle bundle, int i) {
        Number mo17319a;
        Contact contact;
        if (!bundle.isEmpty() || !this.f14711f.mo28580d() || (mo17319a = this.f14708c.mo17319a(str)) == null) {
            return;
        }
        try {
            C14022p c14022p = new C14022p(this, UUID.randomUUID(), "callerId");
            c14022p.f40566p = mo17319a.m35473l();
            C14022p m20845c = c14022p.m20845c(mo17319a.getCountryCode());
            m20845c.f40565o = i;
            m20845c.f40557g = true;
            m20845c.f40559i = true;
            m20845c.f40560j = true;
            m20845c.f40558h = true;
            C14030t mo20821a = m20845c.mo20821a();
            contact = mo20821a == null ? null : mo20821a.m20837a();
        } catch (IOException | RuntimeException e) {
            C10480a.m26057J1(e, "Search for " + mo17319a + " failed");
            contact = null;
        }
        m34769a(bundle, contact, str, mo17319a);
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        long clearCallingIdentity = Binder.clearCallingIdentity();
        Bundle bundle = new Bundle();
        Message obtain = Message.obtain();
        obtain.what = 3003;
        String string = message.getData().getString("phoneNumber");
        if (string != null) {
            k<Contact, Number> mo17344c = this.f14710e.mo17344c(string);
            Contact contact = (Contact) mo17344c.a;
            Number number = (Number) mo17344c.b;
            if (contact != null && number != null) {
                m34769a(bundle, contact, string, number);
            }
        }
        int i = message.what;
        if (1001 == i) {
            m34768b(string, bundle, 2);
        } else if (2002 == i) {
            m34768b(string, bundle, 1);
        }
        obtain.setData(bundle);
        try {
            Messenger messenger = message.replyTo;
            if (messenger != null) {
                messenger.send(obtain);
            }
        } catch (RemoteException e) {
        }
        String string2 = bundle.getString("imageUrl");
        if (!h.j(string2)) {
            Uri parse = Uri.parse(string2);
            Bitmap bitmap = null;
            try {
                C21852d<Bitmap> mo8415f = ((C21853e) ComponentCallbacks2C22222c.m8446e(this)).mo8415f();
                mo8415f.m8974j0(parse);
                bitmap = (Bitmap) ((C22234h) C17891a1.C17902k.m15597l(mo8415f.m8970n0(800, 800).m8977g0(AbstractC22505m.f62375a).mo8103e(), parse)).m8418X().get();
            } catch (Throwable th) {
            }
            Handler handler = this.f14707b;
            if (handler != null) {
                Message obtainMessage = handler.obtainMessage(4004);
                if (bitmap != null) {
                    Bundle bundle2 = new Bundle();
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    try {
                        bitmap.compress(Bitmap.CompressFormat.JPEG, 75, byteArrayOutputStream);
                    } catch (IllegalStateException e2) {
                        StringBuilder m8728C = C22128a.m8728C("Cannot compress bitmap: ");
                        m8728C.append(e2.getMessage());
                        AssertionUtil.reportThrowableButNeverCrash(new UnmutedException.C4147f(m8728C.toString()));
                    }
                    bundle2.putByteArray("image_data", byteArrayOutputStream.toByteArray());
                    obtainMessage.setData(bundle2);
                    try {
                        bitmap.recycle();
                    } catch (IllegalStateException e3) {
                        StringBuilder m8728C2 = C22128a.m8728C("Cannot recycle bitmap: ");
                        m8728C2.append(e3.getMessage());
                        AssertionUtil.reportThrowableButNeverCrash(new UnmutedException.C4147f(m8728C2.toString()));
                    }
                }
                try {
                    message.replyTo.send(obtainMessage);
                } catch (RemoteException e4) {
                }
            }
        }
        Binder.restoreCallingIdentity(clearCallingIdentity);
        return true;
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.f14706a.getBinder();
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        HandlerThread handlerThread = new HandlerThread("DialerLookup");
        handlerThread.start();
        this.f14707b = new Handler(handlerThread.getLooper(), this);
        this.f14706a = new Messenger(this.f14707b);
        AbstractC15539j2 mo10154s = ((AbstractC21187w1) getApplicationContext()).mo10154s();
        this.f14708c = mo10154s.mo12242q0();
        this.f14709d = mo10154s.mo12471Z0();
        this.f14710e = mo10154s.mo12787B7();
        this.f14711f = mo10154s.mo12809A();
    }

    @Override // android.app.Service
    public void onDestroy() {
        this.f14707b.getLooper().quit();
        this.f14707b = null;
        this.f14706a = null;
        super.onDestroy();
    }
}
