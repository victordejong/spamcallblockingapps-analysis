package androidx.activity.result;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import androidx.activity.result.p006e.AbstractC0101a;
import androidx.core.app.C0554b;
import androidx.lifecycle.AbstractC0795f;
import androidx.lifecycle.Lifecycle;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Random;
/* renamed from: androidx.activity.result.c */
/* loaded from: classes-dex2jar.jar:androidx/activity/result/c.class */
public abstract class AbstractC0096c {

    /* renamed from: a */
    private Random f191a = new Random();

    /* renamed from: b */
    private final Map<Integer, String> f192b = new HashMap();

    /* renamed from: c */
    private final Map<String, Integer> f193c = new HashMap();

    /* renamed from: d */
    private final Map<String, C0099c> f194d = new HashMap();

    /* renamed from: e */
    ArrayList<String> f195e = new ArrayList<>();

    /* renamed from: f */
    final transient Map<String, C0098b<?>> f196f = new HashMap();

    /* renamed from: g */
    final Map<String, Object> f197g = new HashMap();

    /* renamed from: h */
    final Bundle f198h = new Bundle();

    /* renamed from: androidx.activity.result.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/activity/result/c$a.class */
    public class C0097a extends AbstractC0095b<I> {

        /* renamed from: a */
        final /* synthetic */ String f199a;

        /* renamed from: b */
        final /* synthetic */ int f200b;

        /* renamed from: c */
        final /* synthetic */ AbstractC0101a f201c;

        C0097a(String str, int i, AbstractC0101a abstractC0101a) {
            AbstractC0096c.this = r4;
            this.f199a = str;
            this.f200b = i;
            this.f201c = abstractC0101a;
        }

        @Override // androidx.activity.result.AbstractC0095b
        /* renamed from: b */
        public void mo35722b(I i, C0554b c0554b) {
            AbstractC0096c.this.f195e.add(this.f199a);
            AbstractC0096c.this.mo35728f(this.f200b, this.f201c, i, c0554b);
        }

        @Override // androidx.activity.result.AbstractC0095b
        /* renamed from: c */
        public void mo35721c() {
            AbstractC0096c.this.m35723k(this.f199a);
        }
    }

    /* renamed from: androidx.activity.result.c$b */
    /* loaded from: classes-dex2jar.jar:androidx/activity/result/c$b.class */
    public static class C0098b<O> {

        /* renamed from: a */
        final AbstractC0094a<O> f203a;

        /* renamed from: b */
        final AbstractC0101a<?, O> f204b;

        public C0098b(AbstractC0094a<O> abstractC0094a, AbstractC0101a<?, O> abstractC0101a) {
            this.f203a = abstractC0094a;
            this.f204b = abstractC0101a;
        }
    }

    /* renamed from: androidx.activity.result.c$c */
    /* loaded from: classes-dex2jar.jar:androidx/activity/result/c$c.class */
    public static class C0099c {

        /* renamed from: a */
        final Lifecycle f205a;

        /* renamed from: b */
        private final ArrayList<AbstractC0795f> f206b;

        /* renamed from: a */
        void m35720a() {
            Iterator<AbstractC0795f> it = this.f206b.iterator();
            while (it.hasNext()) {
                this.f205a.mo32396c(it.next());
            }
            this.f206b.clear();
        }
    }

    /* renamed from: a */
    private void m35733a(int i, String str) {
        this.f192b.put(Integer.valueOf(i), str);
        this.f193c.put(str, Integer.valueOf(i));
    }

    /* renamed from: d */
    private <O> void m35730d(String str, int i, Intent intent, C0098b<O> c0098b) {
        AbstractC0094a<O> abstractC0094a;
        if (c0098b != null && (abstractC0094a = c0098b.f203a) != null) {
            abstractC0094a.mo32734a(c0098b.f204b.mo32731c(i, intent));
            return;
        }
        this.f197g.remove(str);
        this.f198h.putParcelable(str, new ActivityResult(i, intent));
    }

    /* renamed from: e */
    private int m35729e() {
        int nextInt = this.f191a.nextInt(2147418112);
        while (true) {
            int i = nextInt + 65536;
            if (this.f192b.containsKey(Integer.valueOf(i))) {
                nextInt = this.f191a.nextInt(2147418112);
            } else {
                return i;
            }
        }
    }

    /* renamed from: j */
    private int m35724j(String str) {
        Integer num = this.f193c.get(str);
        if (num != null) {
            return num.intValue();
        }
        int m35729e = m35729e();
        m35733a(m35729e, str);
        return m35729e;
    }

    /* renamed from: b */
    public final boolean m35732b(int i, int i2, Intent intent) {
        String str = this.f192b.get(Integer.valueOf(i));
        if (str == null) {
            return false;
        }
        this.f195e.remove(str);
        m35730d(str, i2, intent, this.f196f.get(str));
        return true;
    }

    /* renamed from: c */
    public final <O> boolean m35731c(int i, @SuppressLint({"UnknownNullness"}) O o) {
        AbstractC0094a<?> abstractC0094a;
        String str = this.f192b.get(Integer.valueOf(i));
        if (str == null) {
            return false;
        }
        this.f195e.remove(str);
        C0098b<?> c0098b = this.f196f.get(str);
        if (c0098b != null && (abstractC0094a = c0098b.f203a) != null) {
            abstractC0094a.mo32734a(o);
            return true;
        }
        this.f198h.remove(str);
        this.f197g.put(str, o);
        return true;
    }

    /* renamed from: f */
    public abstract <I, O> void mo35728f(int i, AbstractC0101a<I, O> abstractC0101a, @SuppressLint({"UnknownNullness"}) I i2, C0554b c0554b);

    /* renamed from: g */
    public final void m35727g(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        ArrayList<Integer> integerArrayList = bundle.getIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS");
        ArrayList<String> stringArrayList = bundle.getStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS");
        if (stringArrayList == null || integerArrayList == null) {
            return;
        }
        int size = stringArrayList.size();
        for (int i = 0; i < size; i++) {
            m35733a(integerArrayList.get(i).intValue(), stringArrayList.get(i));
        }
        this.f195e = bundle.getStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS");
        this.f191a = (Random) bundle.getSerializable("KEY_COMPONENT_ACTIVITY_RANDOM_OBJECT");
        this.f198h.putAll(bundle.getBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT"));
    }

    /* renamed from: h */
    public final void m35726h(Bundle bundle) {
        bundle.putIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS", new ArrayList<>(this.f192b.keySet()));
        bundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS", new ArrayList<>(this.f192b.values()));
        bundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS", new ArrayList<>(this.f195e));
        bundle.putBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT", (Bundle) this.f198h.clone());
        bundle.putSerializable("KEY_COMPONENT_ACTIVITY_RANDOM_OBJECT", this.f191a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: i */
    public final <I, O> AbstractC0095b<I> m35725i(String str, AbstractC0101a<I, O> abstractC0101a, AbstractC0094a<O> abstractC0094a) {
        int m35724j = m35724j(str);
        this.f196f.put(str, new C0098b<>(abstractC0094a, abstractC0101a));
        if (this.f197g.containsKey(str)) {
            Object obj = this.f197g.get(str);
            this.f197g.remove(str);
            abstractC0094a.mo32734a(obj);
        }
        ActivityResult activityResult = (ActivityResult) this.f198h.getParcelable(str);
        if (activityResult != null) {
            this.f198h.remove(str);
            abstractC0094a.mo32734a(abstractC0101a.mo32731c(activityResult.m35747b(), activityResult.m35748a()));
        }
        return new C0097a(str, m35724j, abstractC0101a);
    }

    /* renamed from: k */
    public final void m35723k(String str) {
        Integer remove;
        if (!this.f195e.contains(str) && (remove = this.f193c.remove(str)) != null) {
            this.f192b.remove(remove);
        }
        this.f196f.remove(str);
        if (this.f197g.containsKey(str)) {
            Log.w("ActivityResultRegistry", "Dropping pending result for request " + str + ": " + this.f197g.get(str));
            this.f197g.remove(str);
        }
        if (this.f198h.containsKey(str)) {
            Log.w("ActivityResultRegistry", "Dropping pending result for request " + str + ": " + this.f198h.getParcelable(str));
            this.f198h.remove(str);
        }
        C0099c c0099c = this.f194d.get(str);
        if (c0099c != null) {
            c0099c.m35720a();
            this.f194d.remove(str);
        }
    }
}
