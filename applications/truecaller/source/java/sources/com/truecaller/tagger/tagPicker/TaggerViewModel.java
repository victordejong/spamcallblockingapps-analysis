package com.truecaller.tagger.tagPicker;

import androidx.lifecycle.LiveData;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.truecaller.data.entity.Contact;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.v.i0;
import p1727n3.p1868v.AbstractC27040y0;
import p1727n3.p1868v.C27010k0;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p1187r2.AbstractC19844a;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1187r2.AbstractC19870l;
import p193e.p194a.p372b0.p426p.C8551c;
import p193e.p194a.p798g5.AbstractC14535n;
import p193e.p194a.p798g5.AbstractC14537p;
import p193e.p194a.p798g5.p799b0.C14462a;
import p193e.p194a.p798g5.p800c0.AbstractC14466a;
import p193e.p194a.p798g5.p802e0.C14479d;
import p193e.p194a.p798g5.p802e0.C14502s;
import s1.o;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010 \n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000f\b\u0007\u0018��2\u00020\u0001B1\b\u0007\u0012\u0006\u0010%\u001a\u00020\"\u0012\u0006\u00106\u001a\u000203\u0012\b\b\u0001\u0010\u001a\u001a\u00020\u0017\u0012\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012¢\u0006\u0004\b@\u0010AJ\u0017\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J!\u0010\n\u001a\u00020\t2\b\u0010\u0007\u001a\u0004\u0018\u00010\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\tH\u0014¢\u0006\u0004\b\f\u0010\rR\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00130\u00128\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0016\u0010\u001a\u001a\u00020\u00178\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R6\u0010!\u001a\"\u0012\u001e\u0012\u001c\u0012\u0006\u0012\u0004\u0018\u00010\u001d\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u001e\u0012\u0004\u0012\u00020\u001f0\u001c0\u001b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010 R\u0016\u0010%\u001a\u00020\"8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$R;\u0010-\u001a$\u0012 \u0012\u001e\u0012\u001a\u0012\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010(\u0012\u0004\u0012\u00020\u001f0\u001c0'0&8\u0006@\u0006¢\u0006\f\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,R\u001c\u00102\u001a\b\u0012\u0004\u0012\u00020/0.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u00101R\u0016\u00106\u001a\u0002038\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b4\u00105RB\u0010:\u001a\"\u0012\u001e\u0012\u001c\u0012\u0006\u0012\u0004\u0018\u00010\u001d\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u001e\u0012\u0004\u0012\u00020\u001f0\u001c0&8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010*\u001a\u0004\b7\u0010,\"\u0004\b8\u00109R\u001f\u0010=\u001a\b\u0012\u0004\u0012\u00020/0&8\u0006@\u0006¢\u0006\f\n\u0004\b;\u0010*\u001a\u0004\b<\u0010,R8\u0010?\u001a$\u0012 \u0012\u001e\u0012\u001a\u0012\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010(\u0012\u0004\u0012\u00020\u001f0\u001c0'0.8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b>\u00101¨\u0006B"}, d2 = {"Lcom/truecaller/tagger/tagPicker/TaggerViewModel;", "Ln3/v/y0;", "", "id", "Le/a/b0/p/c;", "d", "(J)Le/a/b0/p/c;", "selectedParentTag", "selectedChildTag", "Ls1/s;", "e", "(Le/a/b0/p/c;Le/a/b0/p/c;)V", "onCleared", "()V", "Le/a/r2/a;", "a", "Le/a/r2/a;", "updateHandle", "Le/a/r2/f;", "Le/a/g5/n;", "k", "Le/a/r2/f;", "tagDataSaver", "Le/a/r2/l;", "j", "Le/a/r2/l;", "actorsThreads", "Ln3/v/i0;", "Ls1/o;", "", "", "", "Ln3/v/i0;", "_tagLiveData", "Le/a/g5/c0/a;", "h", "Le/a/g5/c0/a;", "tagRepository", "Landroidx/lifecycle/LiveData;", "Le/a/g5/b0/a;", "Lcom/truecaller/data/entity/Contact;", "g", "Landroidx/lifecycle/LiveData;", "getCloseEvent", "()Landroidx/lifecycle/LiveData;", "closeEvent", "Ln3/v/k0;", "Le/a/g5/e0/d;", C22021b.f61237c, "Ln3/v/k0;", "_tagInitialData", "Le/a/g5/p;", "i", "Le/a/g5/p;", "tagDisplayUtil", "getTagLiveData", "setTagLiveData", "(Landroidx/lifecycle/LiveData;)V", "tagLiveData", AbstractC2405c.f7629a, "getTagInitialData", "tagInitialData", "f", "_closeEvent", "<init>", "(Le/a/g5/c0/a;Le/a/g5/p;Le/a/r2/l;Le/a/r2/f;)V", "tagger_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes14-dex2jar.jar:com/truecaller/tagger/tagPicker/TaggerViewModel.class */
public final class TaggerViewModel extends AbstractC27040y0 {

    /* renamed from: a */
    public AbstractC19844a f15286a;

    /* renamed from: b */
    public C27010k0<C14479d> f15287b;

    /* renamed from: c */
    public final LiveData<C14479d> f15288c;

    /* renamed from: d */
    public final i0<o<String, List<C8551c>, Boolean>> f15289d;

    /* renamed from: e */
    public LiveData<o<String, List<C8551c>, Boolean>> f15290e;

    /* renamed from: f */
    public final C27010k0<C14462a<o<C8551c, Contact, Boolean>>> f15291f;

    /* renamed from: g */
    public final LiveData<C14462a<o<C8551c, Contact, Boolean>>> f15292g;

    /* renamed from: h */
    public final AbstractC14466a f15293h;

    /* renamed from: i */
    public final AbstractC14537p f15294i;

    /* renamed from: j */
    public final AbstractC19870l f15295j;

    /* renamed from: k */
    public final AbstractC19854f<AbstractC14535n> f15296k;

    @Inject
    public TaggerViewModel(AbstractC14466a abstractC14466a, AbstractC14537p abstractC14537p, AbstractC19870l abstractC19870l, AbstractC19854f<AbstractC14535n> abstractC19854f) {
        l.e(abstractC14466a, "tagRepository");
        l.e(abstractC14537p, "tagDisplayUtil");
        l.e(abstractC19870l, "actorsThreads");
        l.e(abstractC19854f, "tagDataSaver");
        this.f15293h = abstractC14466a;
        this.f15294i = abstractC14537p;
        this.f15295j = abstractC19870l;
        this.f15296k = abstractC19854f;
        C27010k0<C14479d> c27010k0 = new C27010k0<>();
        this.f15287b = c27010k0;
        this.f15288c = c27010k0;
        i0<o<String, List<C8551c>, Boolean>> i0Var = new i0<>();
        this.f15289d = i0Var;
        this.f15290e = i0Var;
        C27010k0<C14462a<o<C8551c, Contact, Boolean>>> c27010k02 = new C27010k0<>();
        this.f15291f = c27010k02;
        this.f15292g = c27010k02;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v4, types: [e.a.g5.c0.a] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* renamed from: c */
    public static void m34621c(TaggerViewModel taggerViewModel, long j, String str, boolean z, int i) {
        ?? r9 = j;
        if ((i & 1) != 0) {
            r9 = 0;
        }
        if ((i & 2) != 0) {
            str = null;
        }
        if ((i & 4) != 0) {
            z = false;
        }
        taggerViewModel.f15289d.m(taggerViewModel.f15293h.mo20068a(r9, str), new C14502s(taggerViewModel, str, z));
    }

    /* renamed from: d */
    public final C8551c m34620d(long j) {
        return this.f15293h.mo20067y1(j);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x003f, code lost:
        if ((!s1.z.c.l.a(r11, r12)) == false) goto L16;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v57, types: [long] */
    /* JADX WARN: Type inference failed for: r0v60, types: [long] */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v4 */
    /* JADX WARN: Type inference failed for: r15v5 */
    /* JADX WARN: Type inference failed for: r15v6 */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v1 */
    /* JADX WARN: Type inference failed for: r17v2 */
    /* JADX WARN: Type inference failed for: r19v0 */
    /* JADX WARN: Type inference failed for: r19v1 */
    /* JADX WARN: Type inference failed for: r19v2 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m34619e(p193e.p194a.p372b0.p426p.C8551c r11, p193e.p194a.p372b0.p426p.C8551c r12) {
        /*
            Method dump skipped, instructions count: 367
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.tagger.tagPicker.TaggerViewModel.m34619e(e.a.b0.p.c, e.a.b0.p.c):void");
    }

    @Override // p1727n3.p1868v.AbstractC27040y0
    public void onCleared() {
        super.onCleared();
        AbstractC19844a abstractC19844a = this.f15286a;
        if (abstractC19844a != null) {
            abstractC19844a.mo11832b();
        }
        this.f15286a = null;
    }
}
