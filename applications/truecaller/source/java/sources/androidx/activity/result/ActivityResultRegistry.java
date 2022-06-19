package androidx.activity.result;

import android.content.Intent;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Random;
import p1727n3.p1728a.p1730e.AbstractC25373a;
import p1727n3.p1728a.p1730e.AbstractC25374b;
import p1727n3.p1728a.p1730e.p1731d.AbstractC25376a;
import p1727n3.p1807k.p1808a.C26416c;
import p1727n3.p1868v.AbstractC26992b0;
import p1727n3.p1868v.AbstractC27028u;
import p1727n3.p1868v.AbstractC27041z;
import p1727n3.p1868v.C26994c0;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes-dex2jar.jar:androidx/activity/result/ActivityResultRegistry.class */
public abstract class ActivityResultRegistry {

    /* renamed from: a */
    public Random f78a = new Random();

    /* renamed from: b */
    public final Map<Integer, String> f79b = new HashMap();

    /* renamed from: c */
    public final Map<String, Integer> f80c = new HashMap();

    /* renamed from: d */
    public final Map<String, C0029d> f81d = new HashMap();

    /* renamed from: e */
    public ArrayList<String> f82e = new ArrayList<>();

    /* renamed from: f */
    public final transient Map<String, C0028c<?>> f83f = new HashMap();

    /* renamed from: g */
    public final Map<String, Object> f84g = new HashMap();

    /* renamed from: h */
    public final Bundle f85h = new Bundle();

    /* renamed from: androidx.activity.result.ActivityResultRegistry$a */
    /* loaded from: classes-dex2jar.jar:androidx/activity/result/ActivityResultRegistry$a.class */
    public class C0026a extends AbstractC25374b<I> {

        /* renamed from: a */
        public final /* synthetic */ String f86a;

        /* renamed from: b */
        public final /* synthetic */ int f87b;

        /* renamed from: c */
        public final /* synthetic */ AbstractC25376a f88c;

        public C0026a(String str, int i, AbstractC25376a abstractC25376a) {
            ActivityResultRegistry.this = r4;
            this.f86a = str;
            this.f87b = i;
            this.f88c = abstractC25376a;
        }

        @Override // p1727n3.p1728a.p1730e.AbstractC25374b
        /* renamed from: a */
        public void mo3694a(I i, C26416c c26416c) {
            ActivityResultRegistry.this.f82e.add(this.f86a);
            Integer num = ActivityResultRegistry.this.f80c.get(this.f86a);
            ActivityResultRegistry.this.mo43172b(num != null ? num.intValue() : this.f87b, this.f88c, i, c26416c);
        }

        @Override // p1727n3.p1728a.p1730e.AbstractC25374b
        /* renamed from: b */
        public void mo3693b() {
            ActivityResultRegistry.this.m43168f(this.f86a);
        }
    }

    /* renamed from: androidx.activity.result.ActivityResultRegistry$b */
    /* loaded from: classes-dex2jar.jar:androidx/activity/result/ActivityResultRegistry$b.class */
    public class C0027b extends AbstractC25374b<I> {

        /* renamed from: a */
        public final /* synthetic */ String f90a;

        /* renamed from: b */
        public final /* synthetic */ int f91b;

        /* renamed from: c */
        public final /* synthetic */ AbstractC25376a f92c;

        public C0027b(String str, int i, AbstractC25376a abstractC25376a) {
            ActivityResultRegistry.this = r4;
            this.f90a = str;
            this.f91b = i;
            this.f92c = abstractC25376a;
        }

        @Override // p1727n3.p1728a.p1730e.AbstractC25374b
        /* renamed from: a */
        public void mo3694a(I i, C26416c c26416c) {
            ActivityResultRegistry.this.f82e.add(this.f90a);
            Integer num = ActivityResultRegistry.this.f80c.get(this.f90a);
            ActivityResultRegistry.this.mo43172b(num != null ? num.intValue() : this.f91b, this.f92c, i, c26416c);
        }

        @Override // p1727n3.p1728a.p1730e.AbstractC25374b
        /* renamed from: b */
        public void mo3693b() {
            ActivityResultRegistry.this.m43168f(this.f90a);
        }
    }

    /* renamed from: androidx.activity.result.ActivityResultRegistry$c */
    /* loaded from: classes-dex2jar.jar:androidx/activity/result/ActivityResultRegistry$c.class */
    public static class C0028c<O> {

        /* renamed from: a */
        public final AbstractC25373a<O> f94a;

        /* renamed from: b */
        public final AbstractC25376a<?, O> f95b;

        public C0028c(AbstractC25373a<O> abstractC25373a, AbstractC25376a<?, O> abstractC25376a) {
            this.f94a = abstractC25373a;
            this.f95b = abstractC25376a;
        }
    }

    /* renamed from: androidx.activity.result.ActivityResultRegistry$d */
    /* loaded from: classes-dex2jar.jar:androidx/activity/result/ActivityResultRegistry$d.class */
    public static class C0029d {

        /* renamed from: a */
        public final AbstractC27028u f96a;

        /* renamed from: b */
        public final ArrayList<AbstractC27041z> f97b = new ArrayList<>();

        public C0029d(AbstractC27028u abstractC27028u) {
            this.f96a = abstractC27028u;
        }
    }

    /* renamed from: a */
    public final boolean m43173a(int i, int i2, Intent intent) {
        AbstractC25373a<?> abstractC25373a;
        String str = this.f79b.get(Integer.valueOf(i));
        if (str == null) {
            return false;
        }
        this.f82e.remove(str);
        C0028c<?> c0028c = this.f83f.get(str);
        if (c0028c != null && (abstractC25373a = c0028c.f94a) != null) {
            abstractC25373a.mo3695a(c0028c.f95b.mo3690c(i2, intent));
            return true;
        }
        this.f84g.remove(str);
        this.f85h.putParcelable(str, new ActivityResult(i2, intent));
        return true;
    }

    /* renamed from: b */
    public abstract <I, O> void mo43172b(int i, AbstractC25376a<I, O> abstractC25376a, I i2, C26416c c26416c);

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: c */
    public final <I, O> AbstractC25374b<I> m43171c(String str, AbstractC25376a<I, O> abstractC25376a, AbstractC25373a<O> abstractC25373a) {
        int m43169e = m43169e(str);
        this.f83f.put(str, new C0028c<>(abstractC25373a, abstractC25376a));
        if (this.f84g.containsKey(str)) {
            Object obj = this.f84g.get(str);
            this.f84g.remove(str);
            abstractC25373a.mo3695a(obj);
        }
        ActivityResult activityResult = (ActivityResult) this.f85h.getParcelable(str);
        if (activityResult != null) {
            this.f85h.remove(str);
            abstractC25373a.mo3695a(abstractC25376a.mo3690c(activityResult.f76a, activityResult.f77b));
        }
        return new C0027b(str, m43169e, abstractC25376a);
    }

    /* renamed from: d */
    public final <I, O> AbstractC25374b<I> m43170d(String str, AbstractC26992b0 abstractC26992b0, AbstractC25376a<I, O> abstractC25376a, AbstractC25373a<O> abstractC25373a) {
        AbstractC27028u lifecycle = abstractC26992b0.getLifecycle();
        C26994c0 c26994c0 = (C26994c0) lifecycle;
        if (c26994c0.f75501c.compareTo(AbstractC27028u.EnumC27030b.STARTED) >= 0) {
            throw new IllegalStateException("LifecycleOwner " + abstractC26992b0 + " is attempting to register while current state is " + c26994c0.f75501c + ". LifecycleOwners must call register before they are STARTED.");
        }
        int m43169e = m43169e(str);
        C0029d c0029d = this.f81d.get(str);
        C0029d c0029d2 = c0029d;
        if (c0029d == null) {
            c0029d2 = new C0029d(lifecycle);
        }
        AbstractC27041z abstractC27041z = new 1(this, str, abstractC25373a, abstractC25376a);
        c0029d2.f96a.mo988a(abstractC27041z);
        c0029d2.f97b.add(abstractC27041z);
        this.f81d.put(str, c0029d2);
        return new C0026a(str, m43169e, abstractC25376a);
    }

    /* renamed from: e */
    public final int m43169e(String str) {
        Integer num = this.f80c.get(str);
        if (num != null) {
            return num.intValue();
        }
        int nextInt = this.f78a.nextInt(2147418112);
        while (true) {
            int i = nextInt + 65536;
            if (!this.f79b.containsKey(Integer.valueOf(i))) {
                this.f79b.put(Integer.valueOf(i), str);
                this.f80c.put(str, Integer.valueOf(i));
                return i;
            }
            nextInt = this.f78a.nextInt(2147418112);
        }
    }

    /* renamed from: f */
    public final void m43168f(String str) {
        Integer remove;
        if (!this.f82e.contains(str) && (remove = this.f80c.remove(str)) != null) {
            this.f79b.remove(remove);
        }
        this.f83f.remove(str);
        if (this.f84g.containsKey(str)) {
            StringBuilder m8692L = C22128a.m8692L("Dropping pending result for request ", str, ": ");
            m8692L.append(this.f84g.get(str));
            m8692L.toString();
            this.f84g.remove(str);
        }
        if (this.f85h.containsKey(str)) {
            StringBuilder m8692L2 = C22128a.m8692L("Dropping pending result for request ", str, ": ");
            m8692L2.append(this.f85h.getParcelable(str));
            m8692L2.toString();
            this.f85h.remove(str);
        }
        C0029d c0029d = this.f81d.get(str);
        if (c0029d != null) {
            Iterator<AbstractC27041z> it = c0029d.f97b.iterator();
            while (it.hasNext()) {
                c0029d.f96a.mo987b(it.next());
            }
            c0029d.f97b.clear();
            this.f81d.remove(str);
        }
    }
}
