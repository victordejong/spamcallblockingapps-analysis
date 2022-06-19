package com.linkedin.android.litr;

import android.media.MediaFormat;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.linkedin.android.litr.exception.InsufficientDiskSpaceException;
import com.linkedin.android.litr.exception.MediaTransformationException;
import com.linkedin.android.litr.exception.TrackTranscoderException;
import com.linkedin.android.litr.p459a.C16611a;
import com.linkedin.android.litr.p459a.C16612b;
import com.linkedin.android.litr.p466d.AbstractC16635d;
import com.linkedin.android.litr.p466d.AbstractC16636e;
import com.linkedin.android.litr.p469g.AbstractC16652c;
import com.linkedin.android.litr.p469g.C16653d;
import com.linkedin.android.litr.p470h.C16656b;
import com.linkedin.android.litr.p470h.C16657c;
import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
/* renamed from: com.linkedin.android.litr.d */
/* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/d.class */
class RunnableC16629d implements Runnable {

    /* renamed from: g */
    private static final String f58518g = "d";

    /* renamed from: a */
    List<AbstractC16652c> f58519a;

    /* renamed from: c */
    int f58521c;

    /* renamed from: h */
    private final List<C16619c> f58525h;

    /* renamed from: i */
    private final String f58526i;

    /* renamed from: j */
    private final C16608a f58527j;

    /* renamed from: b */
    float f58520b = BitmapDescriptorFactory.HUE_RED;

    /* renamed from: d */
    C16653d f58522d = new C16653d();

    /* renamed from: e */
    C16656b f58523e = new C16656b();

    /* renamed from: f */
    C16612b f58524f = new C16612b();

    public RunnableC16629d(String str, List<C16619c> list, int i, C16608a c16608a) {
        this.f58526i = str;
        this.f58525h = list;
        this.f58521c = i;
        this.f58527j = c16608a;
    }

    /* renamed from: a */
    private void m6869a() {
        m6866a(false);
        this.f58527j.m6907b(this.f58526i, this.f58524f.f58459a);
    }

    /* renamed from: a */
    private void m6867a(Throwable th) {
        m6866a(false);
        this.f58527j.m6909a(this.f58526i, th, this.f58524f.f58459a);
    }

    /* renamed from: a */
    private void m6866a(boolean z) {
        for (int i = 0; i < this.f58519a.size(); i++) {
            AbstractC16652c abstractC16652c = this.f58519a.get(i);
            abstractC16652c.mo6815c();
            this.f58524f.m6906a(i, abstractC16652c.m6820g());
        }
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        for (C16619c c16619c : this.f58525h) {
            hashSet.add(c16619c.f58480a);
            hashSet2.add(c16619c.f58484e);
        }
        Iterator it2 = hashSet.iterator();
        while (it2.hasNext()) {
            ((AbstractC16635d) it2.next()).mo6851f();
        }
        Iterator it3 = hashSet2.iterator();
        while (it3.hasNext()) {
            AbstractC16636e abstractC16636e = (AbstractC16636e) it3.next();
            abstractC16636e.mo6848a();
            if (!z) {
                m6868a(abstractC16636e.mo6845b());
            }
        }
        if (z) {
            this.f58527j.m6908a(this.f58526i, this.f58524f.f58459a);
        }
    }

    /* renamed from: a */
    private static boolean m6868a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return new File(str).delete();
    }

    /* renamed from: b */
    private void m6865b() throws TrackTranscoderException {
        for (AbstractC16652c abstractC16652c : this.f58519a) {
            abstractC16652c.mo6817a();
        }
    }

    /* renamed from: c */
    private void m6864c() {
        for (C16619c c16619c : this.f58525h) {
            c16619c.f58480a.mo6858a(c16619c.f58480a.mo6849h().f58545a);
        }
    }

    /* renamed from: d */
    private boolean m6863d() throws TrackTranscoderException {
        boolean z = true;
        for (int i = 0; i < this.f58519a.size(); i++) {
            AbstractC16652c abstractC16652c = this.f58519a.get(i);
            long currentTimeMillis = System.currentTimeMillis();
            z &= abstractC16652c.mo6816b() == 3;
            C16612b c16612b = this.f58524f;
            long currentTimeMillis2 = System.currentTimeMillis();
            c16612b.f58459a.get(i).f58458e += currentTimeMillis2 - currentTimeMillis;
        }
        float f = 0.0f;
        for (AbstractC16652c abstractC16652c2 : this.f58519a) {
            f += abstractC16652c2.m6821f();
        }
        float size = f / this.f58519a.size();
        int i2 = this.f58521c;
        if ((i2 == 0 && size != this.f58520b) || (i2 != 0 && size >= this.f58520b + (1.0f / i2))) {
            C16608a c16608a = this.f58527j;
            String str = this.f58526i;
            if (c16608a.f58451c == null) {
                c16608a.f58449a.mo6843a(str, size);
            } else {
                Message obtain = Message.obtain(c16608a.f58451c, 3);
                obtain.obj = null;
                c16608a.f58450b.putString("jobId", str);
                c16608a.f58450b.putFloat(EventConstants.PROGRESS, size);
                obtain.setData(c16608a.f58450b);
                obtain.sendToTarget();
            }
            this.f58520b = size;
        }
        return z;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean m6863d;
        try {
            for (C16619c c16619c : this.f58525h) {
                C16612b c16612b = this.f58524f;
                MediaFormat mo6859a = c16619c.f58480a.mo6859a(c16619c.f58486g);
                C16611a c16611a = new C16611a();
                c16611a.f58454a = mo6859a;
                c16612b.f58459a.add(c16611a);
            }
            long m6800a = C16657c.m6800a(this.f58525h);
            long j = ((float) m6800a) * 1.1f;
            long m6804a = C16656b.m6804a();
            if (m6804a != -1 && m6804a < j) {
                throw new InsufficientDiskSpaceException(m6800a, m6804a);
            }
            int size = this.f58525h.size();
            this.f58519a = new ArrayList(size);
            if (size <= 0) {
                throw new TrackTranscoderException(TrackTranscoderException.EnumC16646a.NO_TRACKS_FOUND);
            }
            for (int i = 0; i < size; i++) {
                C16619c c16619c2 = this.f58525h.get(i);
                AbstractC16652c m6818a = C16653d.m6818a(c16619c2.f58486g, c16619c2.f58487h, c16619c2.f58480a, c16619c2.f58481b, c16619c2.f58482c, c16619c2.f58483d, c16619c2.f58484e, c16619c2.f58485f);
                this.f58519a.add(m6818a);
                C16612b c16612b2 = this.f58524f;
                String mo6822e = m6818a.mo6822e();
                String mo6823d = m6818a.mo6823d();
                C16611a c16611a2 = c16612b2.f58459a.get(i);
                c16611a2.f58456c = mo6822e;
                c16611a2.f58457d = mo6823d;
            }
            m6865b();
            m6864c();
            C16608a c16608a = this.f58527j;
            String str = this.f58526i;
            if (c16608a.f58451c == null) {
                c16608a.f58449a.mo6844a(str);
            } else {
                Message obtain = Message.obtain(c16608a.f58451c, 0);
                obtain.obj = null;
                c16608a.f58450b.putString("jobId", str);
                obtain.setData(c16608a.f58450b);
                obtain.sendToTarget();
            }
            this.f58520b = BitmapDescriptorFactory.HUE_RED;
            while (true) {
                m6863d = m6863d();
                if (Thread.interrupted()) {
                    m6869a();
                    m6863d = false;
                    break;
                } else if (m6863d) {
                    break;
                }
            }
            m6866a(m6863d);
        } catch (MediaTransformationException e) {
            Log.e(f58518g, "Transformation job error", e);
            e.f58576a = this.f58526i;
            m6867a(e);
        } catch (RuntimeException e2) {
            Log.e(f58518g, "Transformation job error", e2);
            if (e2.getCause() instanceof InterruptedException) {
                m6869a();
            } else {
                m6867a(e2);
            }
        }
    }
}
