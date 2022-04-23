package com.facebook.internal;

import android.app.Activity;
import android.util.Log;
import androidx.appcompat.widget.ActivityChooserModel;
import java.util.Iterator;
import java.util.List;
import p081h.p154f.AbstractC6129i;
import p081h.p154f.C6131k;
import p081h.p154f.C6135n;
/* renamed from: com.facebook.internal.h */
/* loaded from: classes-dex2jar.jar:com/facebook/internal/h.class */
public abstract class AbstractC2414h<CONTENT, RESULT> implements AbstractC6129i<CONTENT, RESULT> {

    /* renamed from: e */
    public static final Object f3012e = new Object();

    /* renamed from: a */
    public final Activity f3013a;

    /* renamed from: b */
    public final C2486r f3014b;

    /* renamed from: c */
    public List<AbstractC2414h<CONTENT, RESULT>.AbstractC2415a> f3015c;

    /* renamed from: d */
    public int f3016d;

    /* renamed from: com.facebook.internal.h$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/h$a.class */
    public abstract class AbstractC2415a {
        public AbstractC2415a(AbstractC2414h hVar) {
        }

        /* renamed from: a */
        public abstract C2371a mo33974a(CONTENT content);

        /* renamed from: a */
        public Object mo33978a() {
            return AbstractC2414h.f3012e;
        }

        /* renamed from: a */
        public abstract boolean mo33973a(CONTENT content, boolean z);
    }

    public AbstractC2414h(Activity activity, int i) {
        C2416h0.m34791a(activity, ActivityChooserModel.ATTRIBUTE_ACTIVITY);
        this.f3013a = activity;
        this.f3014b = null;
        this.f3016d = i;
    }

    public AbstractC2414h(C2486r rVar, int i) {
        C2416h0.m34791a(rVar, "fragmentWrapper");
        this.f3014b = rVar;
        this.f3013a = null;
        this.f3016d = i;
        if (rVar.m34605a() == null) {
            throw new IllegalArgumentException("Cannot use a fragment that is not attached to an activity");
        }
    }

    /* renamed from: a */
    public final C2371a m34797a(CONTENT content, Object obj) {
        boolean z = obj == f3012e;
        C2371a aVar = null;
        Iterator<AbstractC2414h<CONTENT, RESULT>.AbstractC2415a> it = m34799a().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            AbstractC2414h<CONTENT, RESULT>.AbstractC2415a next = it.next();
            if (z || C2408g0.m34858a(next.mo33978a(), obj)) {
                if (next.mo33973a(content, true)) {
                    try {
                        aVar = next.mo33974a(content);
                        break;
                    } catch (C6131k e) {
                        aVar = mo33997b();
                        C2406g.m34879b(aVar, e);
                    }
                }
            }
        }
        C2371a aVar2 = aVar;
        if (aVar == null) {
            aVar2 = mo33997b();
            C2406g.m34888a(aVar2);
        }
        return aVar2;
    }

    /* renamed from: a */
    public final List<AbstractC2414h<CONTENT, RESULT>.AbstractC2415a> m34799a() {
        if (this.f3015c == null) {
            this.f3015c = mo33991d();
        }
        return this.f3015c;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:18:? A[RETURN, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m34798a(android.content.Intent r6, int r7) {
        /*
            r5 = this;
            r0 = r5
            android.app.Activity r0 = r0.f3013a
            r8 = r0
            java.lang.String r0 = "Failed to find Activity or Fragment to startActivityForResult "
            r9 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0016
            r0 = r8
            r1 = r6
            r2 = r7
            r0.startActivityForResult(r1, r2)
            goto L_0x0054
        L_0x0016:
            r0 = r5
            com.facebook.internal.r r0 = r0.f3014b
            r10 = r0
            r0 = r9
            r8 = r0
            r0 = r10
            if (r0 == 0) goto L_0x0056
            r0 = r10
            android.app.Fragment r0 = r0.m34603b()
            if (r0 == 0) goto L_0x003b
            r0 = r5
            com.facebook.internal.r r0 = r0.f3014b
            android.app.Fragment r0 = r0.m34603b()
            r1 = r6
            r2 = r7
            r0.startActivityForResult(r1, r2)
            goto L_0x0054
        L_0x003b:
            r0 = r9
            r8 = r0
            r0 = r5
            com.facebook.internal.r r0 = r0.f3014b
            androidx.fragment.app.Fragment r0 = r0.m34602c()
            if (r0 == 0) goto L_0x0056
            r0 = r5
            com.facebook.internal.r r0 = r0.f3014b
            androidx.fragment.app.Fragment r0 = r0.m34602c()
            r1 = r6
            r2 = r7
            r0.startActivityForResult(r1, r2)
        L_0x0054:
            r0 = 0
            r8 = r0
        L_0x0056:
            r0 = r8
            if (r0 == 0) goto L_0x006a
            h.f.v r0 = p081h.p154f.EnumC6151v.DEVELOPER_ERRORS
            r1 = 6
            r2 = r5
            java.lang.Class r2 = r2.getClass()
            java.lang.String r2 = r2.getName()
            r3 = r8
            com.facebook.internal.C2503y.m34559a(r0, r1, r2, r3)
        L_0x006a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.AbstractC2414h.m34798a(android.content.Intent, int):void");
    }

    /* renamed from: a */
    public void mo34178a(CONTENT content) {
        mo34276b(content, f3012e);
    }

    /* renamed from: b */
    public abstract C2371a mo33997b();

    /* renamed from: b */
    public void mo34276b(CONTENT content, Object obj) {
        C2371a a = m34797a((AbstractC2414h<CONTENT, RESULT>) content, obj);
        if (a != null) {
            C2486r rVar = this.f3014b;
            if (rVar != null) {
                C2406g.m34884a(a, rVar);
            } else {
                C2406g.m34887a(a, this.f3013a);
            }
        } else {
            Log.e("FacebookDialog", "No code path should ever result in a null appCall");
            if (C6135n.m23732s()) {
                throw new IllegalStateException("No code path should ever result in a null appCall");
            }
        }
    }

    /* renamed from: c */
    public Activity m34796c() {
        Activity activity = this.f3013a;
        if (activity != null) {
            return activity;
        }
        C2486r rVar = this.f3014b;
        if (rVar != null) {
            return rVar.m34605a();
        }
        return null;
    }

    /* renamed from: d */
    public abstract List<AbstractC2414h<CONTENT, RESULT>.AbstractC2415a> mo33991d();

    /* renamed from: e */
    public int m34795e() {
        return this.f3016d;
    }
}
