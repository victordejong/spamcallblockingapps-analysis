package androidx.activity.result;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import androidx.activity.result.AbstractC0136c;
import androidx.activity.result.p016a.AbstractC0130a;
import androidx.core.app.C0734b;
import androidx.lifecycle.AbstractC1253j;
import androidx.lifecycle.AbstractC1261n;
import androidx.lifecycle.AbstractC1263p;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Random;
/* renamed from: androidx.activity.result.c */
/* loaded from: classes-dex2jar.jar:androidx/activity/result/c.class */
public abstract class AbstractC0136c {

    /* renamed from: b */
    public Random f256b = new Random();

    /* renamed from: c */
    public final Map<Integer, String> f257c = new HashMap();

    /* renamed from: a */
    private final Map<String, Integer> f255a = new HashMap();

    /* renamed from: h */
    private final Map<String, C0140b> f262h = new HashMap();

    /* renamed from: d */
    public ArrayList<String> f258d = new ArrayList<>();

    /* renamed from: e */
    public final transient Map<String, C0139a<?>> f259e = new HashMap();

    /* renamed from: f */
    public final Map<String, Object> f260f = new HashMap();

    /* renamed from: g */
    public final Bundle f261g = new Bundle();

    /* renamed from: androidx.activity.result.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/activity/result/c$a.class */
    public static final class C0139a<O> {

        /* renamed from: a */
        public final AbstractC0129a<O> f271a;

        /* renamed from: b */
        final AbstractC0130a<?, O> f272b;

        public C0139a(AbstractC0129a<O> abstractC0129a, AbstractC0130a<?, O> abstractC0130a) {
            this.f271a = abstractC0129a;
            this.f272b = abstractC0130a;
        }
    }

    /* renamed from: androidx.activity.result.c$b */
    /* loaded from: classes-dex2jar.jar:androidx/activity/result/c$b.class */
    public static final class C0140b {

        /* renamed from: a */
        final AbstractC1253j f273a;

        /* renamed from: b */
        private final ArrayList<AbstractC1261n> f274b = new ArrayList<>();

        C0140b(AbstractC1253j abstractC1253j) {
            this.f273a = abstractC1253j;
        }

        /* renamed from: a */
        final void m46377a() {
            Iterator<AbstractC1261n> it2 = this.f274b.iterator();
            while (it2.hasNext()) {
                this.f273a.removeObserver(it2.next());
            }
            this.f274b.clear();
        }

        /* renamed from: a */
        final void m46376a(AbstractC1261n abstractC1261n) {
            this.f273a.addObserver(abstractC1261n);
            this.f274b.add(abstractC1261n);
        }
    }

    /* renamed from: a */
    private int m46386a() {
        int nextInt = this.f256b.nextInt(2147418112);
        while (true) {
            int i = nextInt + 65536;
            if (this.f257c.containsKey(Integer.valueOf(i))) {
                nextInt = this.f256b.nextInt(2147418112);
            } else {
                return i;
            }
        }
    }

    /* renamed from: a */
    private <O> void m46381a(String str, int i, Intent intent, C0139a<O> c0139a) {
        if (c0139a != null && c0139a.f271a != null) {
            c0139a.f271a.mo43667a(c0139a.f272b.mo43666a(i, intent));
            return;
        }
        this.f260f.remove(str);
        this.f261g.putParcelable(str, new ActivityResult(i, intent));
    }

    /* renamed from: b */
    private int m46378b(String str) {
        Integer num = this.f255a.get(str);
        if (num != null) {
            return num.intValue();
        }
        int m46386a = m46386a();
        m46383a(m46386a, str);
        return m46386a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public final <I, O> AbstractC0135b<I> m46380a(final String str, final AbstractC0130a<I, O> abstractC0130a, AbstractC0129a<O> abstractC0129a) {
        final int m46378b = m46378b(str);
        this.f259e.put(str, new C0139a<>(abstractC0129a, abstractC0130a));
        if (this.f260f.containsKey(str)) {
            Object obj = this.f260f.get(str);
            this.f260f.remove(str);
            abstractC0129a.mo43667a(obj);
        }
        ActivityResult activityResult = (ActivityResult) this.f261g.getParcelable(str);
        if (activityResult != null) {
            this.f261g.remove(str);
            abstractC0129a.mo43667a(abstractC0130a.mo43666a(activityResult.getResultCode(), activityResult.getData()));
        }
        return new AbstractC0135b<I>() { // from class: androidx.activity.result.c.2
            @Override // androidx.activity.result.AbstractC0135b
            /* renamed from: a */
            public final void mo43771a() {
                AbstractC0136c.this.m46382a(str);
            }

            @Override // androidx.activity.result.AbstractC0135b
            /* renamed from: a */
            public final void mo43770a(I i, C0734b c0734b) {
                AbstractC0136c.this.f258d.add(str);
                AbstractC0136c.this.mo46384a(m46378b, (AbstractC0130a<AbstractC0130a, O>) abstractC0130a, (AbstractC0130a) i, c0734b);
            }
        };
    }

    /* renamed from: a */
    public final <I, O> AbstractC0135b<I> m46379a(final String str, AbstractC1263p abstractC1263p, final AbstractC0130a<I, O> abstractC0130a, final AbstractC0129a<O> abstractC0129a) {
        AbstractC1253j lifecycle = abstractC1263p.getLifecycle();
        if (lifecycle.getCurrentState().isAtLeast(AbstractC1253j.EnumC1256b.STARTED)) {
            throw new IllegalStateException("LifecycleOwner " + abstractC1263p + " is attempting to register while current state is " + lifecycle.getCurrentState() + ". LifecycleOwners must call register before they are STARTED.");
        }
        final int m46378b = m46378b(str);
        C0140b c0140b = this.f262h.get(str);
        C0140b c0140b2 = c0140b;
        if (c0140b == null) {
            c0140b2 = new C0140b(lifecycle);
        }
        c0140b2.m46376a(new AbstractC1261n() { // from class: androidx.activity.result.ActivityResultRegistry$1
            @Override // androidx.lifecycle.AbstractC1261n
            /* renamed from: a */
            public final void mo39588a(AbstractC1263p abstractC1263p2, AbstractC1253j.EnumC1255a enumC1255a) {
                if (!AbstractC1253j.EnumC1255a.ON_START.equals(enumC1255a)) {
                    if (AbstractC1253j.EnumC1255a.ON_STOP.equals(enumC1255a)) {
                        AbstractC0136c.this.f259e.remove(str);
                        return;
                    } else if (!AbstractC1253j.EnumC1255a.ON_DESTROY.equals(enumC1255a)) {
                        return;
                    } else {
                        AbstractC0136c.this.m46382a(str);
                        return;
                    }
                }
                AbstractC0136c.this.f259e.put(str, new AbstractC0136c.C0139a<>(abstractC0129a, abstractC0130a));
                if (AbstractC0136c.this.f260f.containsKey(str)) {
                    Object obj = AbstractC0136c.this.f260f.get(str);
                    AbstractC0136c.this.f260f.remove(str);
                    abstractC0129a.mo43667a(obj);
                }
                ActivityResult activityResult = (ActivityResult) AbstractC0136c.this.f261g.getParcelable(str);
                if (activityResult == null) {
                    return;
                }
                AbstractC0136c.this.f261g.remove(str);
                abstractC0129a.mo43667a(abstractC0130a.mo43666a(activityResult.getResultCode(), activityResult.getData()));
            }
        });
        this.f262h.put(str, c0140b2);
        return new AbstractC0135b<I>() { // from class: androidx.activity.result.c.1
            @Override // androidx.activity.result.AbstractC0135b
            /* renamed from: a */
            public final void mo43771a() {
                AbstractC0136c.this.m46382a(str);
            }

            @Override // androidx.activity.result.AbstractC0135b
            /* renamed from: a */
            public final void mo43770a(I i, C0734b c0734b) {
                AbstractC0136c.this.f258d.add(str);
                AbstractC0136c.this.mo46384a(m46378b, (AbstractC0130a<AbstractC0130a, O>) abstractC0130a, (AbstractC0130a) i, c0734b);
            }
        };
    }

    /* renamed from: a */
    public abstract <I, O> void mo46384a(int i, AbstractC0130a<I, O> abstractC0130a, I i2, C0734b c0734b);

    /* renamed from: a */
    public final void m46383a(int i, String str) {
        this.f257c.put(Integer.valueOf(i), str);
        this.f255a.put(str, Integer.valueOf(i));
    }

    /* renamed from: a */
    public final void m46382a(String str) {
        Integer remove;
        if (!this.f258d.contains(str) && (remove = this.f255a.remove(str)) != null) {
            this.f257c.remove(remove);
        }
        this.f259e.remove(str);
        if (this.f260f.containsKey(str)) {
            Log.w("ActivityResultRegistry", "Dropping pending result for request " + str + ": " + this.f260f.get(str));
            this.f260f.remove(str);
        }
        if (this.f261g.containsKey(str)) {
            Log.w("ActivityResultRegistry", "Dropping pending result for request " + str + ": " + this.f261g.getParcelable(str));
            this.f261g.remove(str);
        }
        C0140b c0140b = this.f262h.get(str);
        if (c0140b != null) {
            c0140b.m46377a();
            this.f262h.remove(str);
        }
    }

    /* renamed from: a */
    public final boolean m46385a(int i, int i2, Intent intent) {
        String str = this.f257c.get(Integer.valueOf(i));
        if (str == null) {
            return false;
        }
        this.f258d.remove(str);
        m46381a(str, i2, intent, this.f259e.get(str));
        return true;
    }
}
