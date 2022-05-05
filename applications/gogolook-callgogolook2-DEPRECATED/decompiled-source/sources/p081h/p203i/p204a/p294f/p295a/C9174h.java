package p081h.p203i.p204a.p294f.p295a;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import androidx.annotation.AnimatorRes;
import androidx.annotation.Nullable;
import androidx.annotation.StyleableRes;
import androidx.collection.SimpleArrayMap;
import java.util.ArrayList;
import java.util.List;
/* renamed from: h.i.a.f.a.h */
/* loaded from: classes2-dex2jar.jar:h/i/a/f/a/h.class */
public class C9174h {

    /* renamed from: a */
    public final SimpleArrayMap<String, C9175i> f20892a = new SimpleArrayMap<>();

    @Nullable
    /* renamed from: a */
    public static C9174h m15961a(Context context, @AnimatorRes int i) {
        try {
            Animator loadAnimator = AnimatorInflater.loadAnimator(context, i);
            if (loadAnimator instanceof AnimatorSet) {
                return m15956a(((AnimatorSet) loadAnimator).getChildAnimations());
            }
            if (loadAnimator == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(loadAnimator);
            return m15956a(arrayList);
        } catch (Exception e) {
            String str = "Can't load animation resource ID #0x" + Integer.toHexString(i);
            return null;
        }
    }

    @Nullable
    /* renamed from: a */
    public static C9174h m15960a(Context context, TypedArray typedArray, @StyleableRes int i) {
        int resourceId;
        if (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0) {
            return null;
        }
        return m15961a(context, resourceId);
    }

    /* renamed from: a */
    public static C9174h m15956a(List<Animator> list) {
        C9174h hVar = new C9174h();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            m15959a(hVar, list.get(i));
        }
        return hVar;
    }

    /* renamed from: a */
    public static void m15959a(C9174h hVar, Animator animator) {
        if (animator instanceof ObjectAnimator) {
            ObjectAnimator objectAnimator = (ObjectAnimator) animator;
            hVar.m15957a(objectAnimator.getPropertyName(), C9175i.m15952a((ValueAnimator) objectAnimator));
            return;
        }
        throw new IllegalArgumentException("Animator must be an ObjectAnimator: " + animator);
    }

    /* renamed from: a */
    public long m15962a() {
        int size = this.f20892a.size();
        long j = 0;
        for (int i = 0; i < size; i++) {
            C9175i valueAt = this.f20892a.valueAt(i);
            j = Math.max(j, valueAt.m15954a() + valueAt.m15951b());
        }
        return j;
    }

    /* renamed from: a */
    public C9175i m15958a(String str) {
        if (m15955b(str)) {
            return this.f20892a.get(str);
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: a */
    public void m15957a(String str, @Nullable C9175i iVar) {
        this.f20892a.put(str, iVar);
    }

    /* renamed from: b */
    public boolean m15955b(String str) {
        return this.f20892a.get(str) != null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C9174h.class != obj.getClass()) {
            return false;
        }
        return this.f20892a.equals(((C9174h) obj).f20892a);
    }

    public int hashCode() {
        return this.f20892a.hashCode();
    }

    public String toString() {
        return '\n' + C9174h.class.getName() + '{' + Integer.toHexString(System.identityHashCode(this)) + " timings: " + this.f20892a + "}\n";
    }
}
