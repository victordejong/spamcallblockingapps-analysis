package com.linkedin.android.litr;

import android.media.MediaFormat;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.linkedin.android.litr.a.a;
import com.linkedin.android.litr.d.e;
import com.linkedin.android.litr.exception.InsufficientDiskSpaceException;
import com.linkedin.android.litr.exception.MediaTransformationException;
import com.linkedin.android.litr.exception.TrackTranscoderException;
import com.linkedin.android.litr.g.c;
import com.linkedin.android.litr.h.b;
import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
/* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/d.class */
class d implements Runnable {
    private static final String g = "d";

    /* renamed from: a  reason: collision with root package name */
    List<c> f33694a;

    /* renamed from: c  reason: collision with root package name */
    int f33696c;
    private final List<c> h;
    private final String i;
    private final a j;

    /* renamed from: b  reason: collision with root package name */
    float f33695b = BitmapDescriptorFactory.HUE_RED;

    /* renamed from: d  reason: collision with root package name */
    com.linkedin.android.litr.g.d f33697d = new com.linkedin.android.litr.g.d();
    b e = new b();
    com.linkedin.android.litr.a.b f = new com.linkedin.android.litr.a.b();

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(String str, List<c> list, int i, a aVar) {
        this.i = str;
        this.h = list;
        this.f33696c = i;
        this.j = aVar;
    }

    private void a() {
        a(false);
        this.j.b(this.i, this.f.f33661a);
    }

    private void a(Throwable th) {
        a(false);
        this.j.a(this.i, th, this.f.f33661a);
    }

    private void a(boolean z) {
        for (int i = 0; i < this.f33694a.size(); i++) {
            c cVar = this.f33694a.get(i);
            cVar.c();
            this.f.a(i, cVar.g());
        }
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        for (c cVar2 : this.h) {
            hashSet.add(cVar2.f33677a);
            hashSet2.add(cVar2.e);
        }
        Iterator it2 = hashSet.iterator();
        while (it2.hasNext()) {
            ((com.linkedin.android.litr.d.d) it2.next()).f();
        }
        Iterator it3 = hashSet2.iterator();
        while (it3.hasNext()) {
            e eVar = (e) it3.next();
            eVar.a();
            if (!z) {
                a(eVar.b());
            }
        }
        if (z) {
            this.j.a(this.i, this.f.f33661a);
        }
    }

    private static boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return new File(str).delete();
    }

    private void b() throws TrackTranscoderException {
        for (c cVar : this.f33694a) {
            cVar.a();
        }
    }

    private void c() {
        for (c cVar : this.h) {
            cVar.f33677a.a(cVar.f33677a.h().f33710a);
        }
    }

    private boolean d() throws TrackTranscoderException {
        boolean z = true;
        for (int i = 0; i < this.f33694a.size(); i++) {
            c cVar = this.f33694a.get(i);
            long currentTimeMillis = System.currentTimeMillis();
            z &= cVar.b() == 3;
            com.linkedin.android.litr.a.b bVar = this.f;
            long currentTimeMillis2 = System.currentTimeMillis();
            bVar.f33661a.get(i).e += currentTimeMillis2 - currentTimeMillis;
        }
        float f = BitmapDescriptorFactory.HUE_RED;
        for (c cVar2 : this.f33694a) {
            f += cVar2.f();
        }
        float size = f / this.f33694a.size();
        int i2 = this.f33696c;
        if ((i2 == 0 && size != this.f33695b) || (i2 != 0 && size >= this.f33695b + (1.0f / i2))) {
            a aVar = this.j;
            String str = this.i;
            if (aVar.f33655c == null) {
                aVar.f33653a.a(str, size);
            } else {
                Message obtain = Message.obtain(aVar.f33655c, 3);
                obtain.obj = null;
                aVar.f33654b.putString("jobId", str);
                aVar.f33654b.putFloat(EventConstants.PROGRESS, size);
                obtain.setData(aVar.f33654b);
                obtain.sendToTarget();
            }
            this.f33695b = size;
        }
        return z;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            for (c cVar : this.h) {
                com.linkedin.android.litr.a.b bVar = this.f;
                MediaFormat a2 = cVar.f33677a.a(cVar.g);
                a aVar = new a();
                aVar.f33656a = a2;
                bVar.f33661a.add(aVar);
            }
            long a3 = com.linkedin.android.litr.h.c.a(this.h);
            long j = ((float) a3) * 1.1f;
            long a4 = b.a();
            if (a4 == -1 || a4 >= j) {
                int size = this.h.size();
                this.f33694a = new ArrayList(size);
                if (size > 0) {
                    boolean d2 = false;
                    for (int i = 0; i < size; i++) {
                        c cVar2 = this.h.get(i);
                        c a5 = com.linkedin.android.litr.g.d.a(cVar2.g, cVar2.h, cVar2.f33677a, cVar2.f33678b, cVar2.f33679c, cVar2.f33680d, cVar2.e, cVar2.f);
                        this.f33694a.add(a5);
                        com.linkedin.android.litr.a.b bVar2 = this.f;
                        String e = a5.e();
                        String d3 = a5.d();
                        a aVar2 = bVar2.f33661a.get(i);
                        aVar2.f33658c = e;
                        aVar2.f33659d = d3;
                    }
                    b();
                    c();
                    a aVar3 = this.j;
                    String str = this.i;
                    if (aVar3.f33655c == null) {
                        aVar3.f33653a.a(str);
                    } else {
                        Message obtain = Message.obtain(aVar3.f33655c, 0);
                        obtain.obj = null;
                        aVar3.f33654b.putString("jobId", str);
                        obtain.setData(aVar3.f33654b);
                        obtain.sendToTarget();
                    }
                    this.f33695b = BitmapDescriptorFactory.HUE_RED;
                    while (true) {
                        d2 = d();
                        if (!Thread.interrupted()) {
                            if (d2) {
                                break;
                            }
                        } else {
                            a();
                            break;
                        }
                    }
                    a(d2);
                    return;
                }
                throw new TrackTranscoderException(TrackTranscoderException.a.NO_TRACKS_FOUND);
            }
            throw new InsufficientDiskSpaceException(a3, a4);
        } catch (MediaTransformationException e2) {
            Log.e(g, "Transformation job error", e2);
            e2.f33736a = this.i;
            a(e2);
        } catch (RuntimeException e3) {
            Log.e(g, "Transformation job error", e3);
            if (e3.getCause() instanceof InterruptedException) {
                a();
            } else {
                a(e3);
            }
        }
    }
}
