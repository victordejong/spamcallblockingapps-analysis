package androidx.activity.result;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import androidx.lifecycle.AbstractC0516f;
import androidx.lifecycle.AbstractC0522h;
import androidx.lifecycle.AbstractC0524j;
import androidx.lifecycle.C0525k;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Random;
import p026c0.C0779c;
import p065d.AbstractC2130a;
/* loaded from: classes-dex2jar.jar:androidx/activity/result/ActivityResultRegistry.class */
public abstract class ActivityResultRegistry {

    /* renamed from: a */
    public Random f240a = new Random();

    /* renamed from: b */
    public final Map<Integer, String> f241b = new HashMap();

    /* renamed from: c */
    public final Map<String, Integer> f242c = new HashMap();

    /* renamed from: d */
    public final Map<String, C0109d> f243d = new HashMap();

    /* renamed from: e */
    public ArrayList<String> f244e = new ArrayList<>();

    /* renamed from: f */
    public final transient Map<String, C0108c<?>> f245f = new HashMap();

    /* renamed from: g */
    public final Map<String, Object> f246g = new HashMap();

    /* renamed from: h */
    public final Bundle f247h = new Bundle();

    /* renamed from: androidx.activity.result.ActivityResultRegistry$a */
    /* loaded from: classes-dex2jar.jar:androidx/activity/result/ActivityResultRegistry$a.class */
    public class C0106a extends AbstractC0113c<I> {

        /* renamed from: a */
        public final /* synthetic */ String f252a;

        /* renamed from: b */
        public final /* synthetic */ int f253b;

        /* renamed from: c */
        public final /* synthetic */ AbstractC2130a f254c;

        public C0106a(String str, int i, AbstractC2130a abstractC2130a) {
            ActivityResultRegistry.this = r4;
            this.f252a = str;
            this.f253b = i;
            this.f254c = abstractC2130a;
        }

        @Override // androidx.activity.result.AbstractC0113c
        /* renamed from: a */
        public void mo8218a(I i, C0779c c0779c) {
            ActivityResultRegistry.this.f244e.add(this.f252a);
            Integer num = ActivityResultRegistry.this.f242c.get(this.f252a);
            ActivityResultRegistry.this.mo8737b(num != null ? num.intValue() : this.f253b, this.f254c, i, c0779c);
        }

        @Override // androidx.activity.result.AbstractC0113c
        /* renamed from: b */
        public void mo8217b() {
            ActivityResultRegistry.this.m8733f(this.f252a);
        }
    }

    /* renamed from: androidx.activity.result.ActivityResultRegistry$b */
    /* loaded from: classes-dex2jar.jar:androidx/activity/result/ActivityResultRegistry$b.class */
    public class C0107b extends AbstractC0113c<I> {

        /* renamed from: a */
        public final /* synthetic */ String f256a;

        /* renamed from: b */
        public final /* synthetic */ int f257b;

        /* renamed from: c */
        public final /* synthetic */ AbstractC2130a f258c;

        public C0107b(String str, int i, AbstractC2130a abstractC2130a) {
            ActivityResultRegistry.this = r4;
            this.f256a = str;
            this.f257b = i;
            this.f258c = abstractC2130a;
        }

        @Override // androidx.activity.result.AbstractC0113c
        /* renamed from: a */
        public void mo8218a(I i, C0779c c0779c) {
            ActivityResultRegistry.this.f244e.add(this.f256a);
            Integer num = ActivityResultRegistry.this.f242c.get(this.f256a);
            ActivityResultRegistry.this.mo8737b(num != null ? num.intValue() : this.f257b, this.f258c, i, c0779c);
        }

        @Override // androidx.activity.result.AbstractC0113c
        /* renamed from: b */
        public void mo8217b() {
            ActivityResultRegistry.this.m8733f(this.f256a);
        }
    }

    /* renamed from: androidx.activity.result.ActivityResultRegistry$c */
    /* loaded from: classes-dex2jar.jar:androidx/activity/result/ActivityResultRegistry$c.class */
    public static class C0108c<O> {

        /* renamed from: a */
        public final AbstractC0112b<O> f260a;

        /* renamed from: b */
        public final AbstractC2130a<?, O> f261b;

        public C0108c(AbstractC0112b<O> abstractC0112b, AbstractC2130a<?, O> abstractC2130a) {
            this.f260a = abstractC0112b;
            this.f261b = abstractC2130a;
        }
    }

    /* renamed from: androidx.activity.result.ActivityResultRegistry$d */
    /* loaded from: classes-dex2jar.jar:androidx/activity/result/ActivityResultRegistry$d.class */
    public static class C0109d {

        /* renamed from: a */
        public final AbstractC0516f f262a;

        /* renamed from: b */
        public final ArrayList<AbstractC0522h> f263b = new ArrayList<>();

        public C0109d(AbstractC0516f abstractC0516f) {
            this.f262a = abstractC0516f;
        }
    }

    /* renamed from: a */
    public final boolean m8738a(int i, int i2, Intent intent) {
        AbstractC0112b<?> abstractC0112b;
        String str = this.f241b.get(Integer.valueOf(i));
        if (str == null) {
            return false;
        }
        this.f244e.remove(str);
        C0108c<?> c0108c = this.f245f.get(str);
        if (c0108c != null && (abstractC0112b = c0108c.f260a) != null) {
            abstractC0112b.mo151b(c0108c.f261b.mo3847c(i2, intent));
            return true;
        }
        this.f246g.remove(str);
        this.f247h.putParcelable(str, new C0110a(i2, intent));
        return true;
    }

    /* renamed from: b */
    public abstract <I, O> void mo8737b(int i, AbstractC2130a<I, O> abstractC2130a, @SuppressLint({"UnknownNullness"}) I i2, C0779c c0779c);

    /* renamed from: c */
    public final <I, O> AbstractC0113c<I> m8736c(final String str, AbstractC0524j abstractC0524j, final AbstractC2130a<I, O> abstractC2130a, final AbstractC0112b<O> abstractC0112b) {
        AbstractC0516f lifecycle = abstractC0524j.getLifecycle();
        C0525k c0525k = (C0525k) lifecycle;
        if (c0525k.f2038b.compareTo(AbstractC0516f.EnumC0519c.STARTED) >= 0) {
            throw new IllegalStateException("LifecycleOwner " + abstractC0524j + " is attempting to register while current state is " + c0525k.f2038b + ". LifecycleOwners must call register before they are STARTED.");
        }
        int m8734e = m8734e(str);
        C0109d c0109d = this.f243d.get(str);
        C0109d c0109d2 = c0109d;
        if (c0109d == null) {
            c0109d2 = new C0109d(lifecycle);
        }
        AbstractC0522h abstractC0522h = new AbstractC0522h() { // from class: androidx.activity.result.ActivityResultRegistry.1
            @Override // androidx.lifecycle.AbstractC0522h
            /* renamed from: d */
            public void mo7489d(AbstractC0524j abstractC0524j2, AbstractC0516f.EnumC0518b enumC0518b) {
                if (!AbstractC0516f.EnumC0518b.ON_START.equals(enumC0518b)) {
                    if (AbstractC0516f.EnumC0518b.ON_STOP.equals(enumC0518b)) {
                        ActivityResultRegistry.this.f245f.remove(str);
                        return;
                    } else if (!AbstractC0516f.EnumC0518b.ON_DESTROY.equals(enumC0518b)) {
                        return;
                    } else {
                        ActivityResultRegistry.this.m8733f(str);
                        return;
                    }
                }
                ActivityResultRegistry.this.f245f.put(str, new C0108c<>(abstractC0112b, abstractC2130a));
                if (ActivityResultRegistry.this.f246g.containsKey(str)) {
                    Object obj = ActivityResultRegistry.this.f246g.get(str);
                    ActivityResultRegistry.this.f246g.remove(str);
                    abstractC0112b.mo151b(obj);
                }
                C0110a c0110a = (C0110a) ActivityResultRegistry.this.f247h.getParcelable(str);
                if (c0110a == null) {
                    return;
                }
                ActivityResultRegistry.this.f247h.remove(str);
                abstractC0112b.mo151b(abstractC2130a.mo3847c(c0110a.f264a, c0110a.f265b));
            }
        };
        c0109d2.f262a.mo7992a(abstractC0522h);
        c0109d2.f263b.add(abstractC0522h);
        this.f243d.put(str, c0109d2);
        return new C0106a(str, m8734e, abstractC2130a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: d */
    public final <I, O> AbstractC0113c<I> m8735d(String str, AbstractC2130a<I, O> abstractC2130a, AbstractC0112b<O> abstractC0112b) {
        int m8734e = m8734e(str);
        this.f245f.put(str, new C0108c<>(abstractC0112b, abstractC2130a));
        if (this.f246g.containsKey(str)) {
            Object obj = this.f246g.get(str);
            this.f246g.remove(str);
            abstractC0112b.mo151b(obj);
        }
        C0110a c0110a = (C0110a) this.f247h.getParcelable(str);
        if (c0110a != null) {
            this.f247h.remove(str);
            abstractC0112b.mo151b(abstractC2130a.mo3847c(c0110a.f264a, c0110a.f265b));
        }
        return new C0107b(str, m8734e, abstractC2130a);
    }

    /* renamed from: e */
    public final int m8734e(String str) {
        Integer num = this.f242c.get(str);
        if (num != null) {
            return num.intValue();
        }
        int nextInt = this.f240a.nextInt(2147418112);
        while (true) {
            int i = nextInt + 65536;
            if (!this.f241b.containsKey(Integer.valueOf(i))) {
                this.f241b.put(Integer.valueOf(i), str);
                this.f242c.put(str, Integer.valueOf(i));
                return i;
            }
            nextInt = this.f240a.nextInt(2147418112);
        }
    }

    /* renamed from: f */
    public final void m8733f(String str) {
        Integer remove;
        if (!this.f244e.contains(str) && (remove = this.f242c.remove(str)) != null) {
            this.f241b.remove(remove);
        }
        this.f245f.remove(str);
        if (this.f246g.containsKey(str)) {
            Log.w("ActivityResultRegistry", "Dropping pending result for request " + str + ": " + this.f246g.get(str));
            this.f246g.remove(str);
        }
        if (this.f247h.containsKey(str)) {
            Log.w("ActivityResultRegistry", "Dropping pending result for request " + str + ": " + this.f247h.getParcelable(str));
            this.f247h.remove(str);
        }
        C0109d c0109d = this.f243d.get(str);
        if (c0109d != null) {
            Iterator<AbstractC0522h> it2 = c0109d.f263b.iterator();
            while (it2.hasNext()) {
                c0109d.f262a.mo7991b(it2.next());
            }
            c0109d.f263b.clear();
            this.f243d.remove(str);
        }
    }
}
