package p459j.p460a.p582w0;

import android.text.TextUtils;
import p660rx.Single;
import p660rx.SingleSubscriber;
import p660rx.functions.Action1;
import p660rx.schedulers.Schedulers;
/* renamed from: j.a.w0.p */
/* loaded from: classes3-dex2jar.jar:j/a/w0/p.class */
public class C14111p {

    /* renamed from: j.a.w0.p$a */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/p$a.class */
    public static final class C14112a implements Action1<String> {
        /* renamed from: a */
        public void call(String str) {
            if (TextUtils.isEmpty(str)) {
            }
        }
    }

    /* renamed from: j.a.w0.p$b */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/p$b.class */
    public static final class C14113b implements Action1<String> {
        /* renamed from: a */
        public void call(String str) {
            if (TextUtils.isEmpty(str)) {
            }
        }
    }

    /* renamed from: j.a.w0.p$c */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/p$c.class */
    public static final class C14114c implements Action1<Throwable> {
        /* renamed from: a */
        public void call(Throwable th) {
            C13973d4.m2952a(th);
        }
    }

    /* renamed from: j.a.w0.p$d */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/p$d.class */
    public static final class C14115d implements Single.OnSubscribe<String> {
        /* renamed from: a */
        public void call(SingleSubscriber<? super String> singleSubscriber) {
            singleSubscriber.onSuccess(C14217x3.m2118p());
        }
    }

    /* renamed from: a */
    public static void m2472a() {
        m2471a(new C14113b());
    }

    /* renamed from: a */
    public static void m2471a(Action1<String> action1) {
        Single.create(new C14115d()).subscribeOn(Schedulers.m0io()).subscribe(action1, new C14114c());
    }

    /* renamed from: a */
    public static void m2470a(boolean z) {
        m2471a(new C14112a());
    }
}
