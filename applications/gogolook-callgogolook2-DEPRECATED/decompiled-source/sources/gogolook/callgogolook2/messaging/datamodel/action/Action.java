package gogolook.callgogolook2.messaging.datamodel.action;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;
import p459j.p460a.p474c0.p475c.AbstractC11528g;
import p459j.p460a.p474c0.p475c.C11529h;
import p459j.p460a.p474c0.p475c.p476w.C11569a;
import p459j.p460a.p474c0.p475c.p476w.C11576c;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/action/Action.class */
public abstract class Action implements Parcelable {

    /* renamed from: d */
    public static final AtomicLong f11188d = new AtomicLong(System.currentTimeMillis() * 1000);

    /* renamed from: a */
    public final String f11189a;

    /* renamed from: b */
    public Bundle f11190b;

    /* renamed from: c */
    public final List<Action> f11191c;

    public Action() {
        this.f11191c = new LinkedList();
        this.f11189a = m27751a(getClass().getSimpleName());
        this.f11190b = new Bundle();
    }

    public Action(Parcel parcel) {
        this.f11191c = new LinkedList();
        this.f11189a = parcel.readString();
        this.f11190b = parcel.readBundle(Action.class.getClassLoader());
    }

    public Action(String str) {
        this.f11191c = new LinkedList();
        this.f11189a = str;
        this.f11190b = new Bundle();
    }

    /* renamed from: a */
    public static String m27751a(@NonNull String str) {
        return str + ":" + m27741y();
    }

    /* renamed from: y */
    public static long m27741y() {
        long incrementAndGet;
        synchronized (Action.class) {
            try {
                incrementAndGet = f11188d.incrementAndGet();
            } catch (Throwable th) {
                throw th;
            }
        }
        return incrementAndGet;
    }

    /* renamed from: a */
    public Bundle mo27662a() throws C11529h {
        return null;
    }

    /* renamed from: a */
    public Object mo27660a(Bundle bundle) {
        return null;
    }

    /* renamed from: a */
    public void m27757a(int i, long j) {
        AbstractC11528g.m9264a(this, i, j);
    }

    /* renamed from: a */
    public void m27756a(Parcel parcel, int i) {
        parcel.writeString(this.f11189a);
        parcel.writeBundle(this.f11190b);
    }

    /* renamed from: a */
    public void m27755a(Action action) {
        this.f11191c.add(action);
    }

    /* renamed from: a */
    public void m27754a(C11569a aVar) {
        C11569a.m9100a(this.f11189a, aVar);
        AbstractC11528g.m9265a(this);
    }

    /* renamed from: a */
    public void m27753a(C11576c cVar) {
        cVar.m9080a(this.f11191c);
        this.f11191c.clear();
    }

    /* renamed from: a */
    public final void m27752a(Object obj) {
        boolean c = m27749c();
        C11569a.m9096b(this, 3, c, obj);
        if (!c) {
            C11569a.m9097b(this, 3, obj, true);
        }
    }

    /* renamed from: b */
    public Object mo27648b() {
        return null;
    }

    /* renamed from: b */
    public final void m27750b(Bundle bundle) {
        C11569a.m9098b(this, 6, 7);
        C11569a.m9097b(this, 7, mo27660a(bundle), true);
    }

    /* renamed from: c */
    public boolean m27749c() {
        return !this.f11191c.isEmpty();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: q */
    public final void m27748q() {
        C11569a.m9098b(this, 5, 6);
    }

    /* renamed from: r */
    public final void m27747r() {
        C11569a.m9098b(this, 4, 5);
    }

    /* renamed from: s */
    public final void m27746s() {
        C11569a.m9098b(this, 2, 3);
    }

    /* renamed from: t */
    public final void m27745t() {
        C11569a.m9098b(this, 1, 2);
    }

    /* renamed from: u */
    public Object mo27664u() {
        return null;
    }

    /* renamed from: v */
    public final void m27744v() {
        C11569a.m9097b(this, 0, mo27664u(), false);
    }

    /* renamed from: w */
    public void m27743w() {
        this.f11191c.add(this);
    }

    /* renamed from: x */
    public void m27742x() {
        AbstractC11528g.m9265a(this);
    }
}
