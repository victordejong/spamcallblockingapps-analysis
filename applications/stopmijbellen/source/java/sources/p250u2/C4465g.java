package p250u2;

import java.util.concurrent.Executors;
import p161l9.AbstractC3541a;
/* renamed from: u2.g */
/* loaded from: classes-dex2jar.jar:u2/g.class */
public final class C4465g implements AbstractC3541a {

    /* renamed from: u2.g$a */
    /* loaded from: classes-dex2jar.jar:u2/g$a.class */
    public static final class C4466a {

        /* renamed from: a */
        public static final C4465g f13844a = new C4465g();
    }

    @Override // p161l9.AbstractC3541a
    public Object get() {
        return new ExecutorC4467h(Executors.newSingleThreadExecutor());
    }
}
