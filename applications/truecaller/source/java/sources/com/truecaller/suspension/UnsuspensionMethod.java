package com.truecaller.suspension;

import kotlin.Metadata;
import s1.z.c.f;
/* loaded from: classes14-dex2jar.jar:com/truecaller/suspension/UnsuspensionMethod.class */
public abstract class UnsuspensionMethod {

    /* loaded from: classes14-dex2jar.jar:com/truecaller/suspension/UnsuspensionMethod$Support.class */
    public static final class Support extends UnsuspensionMethod {

        /* renamed from: a */
        public final String f15165a;

        /* renamed from: b */
        public final Error f15166b;

        @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/truecaller/suspension/UnsuspensionMethod$Support$Error;", "", "<init>", "(Ljava/lang/String;I)V", "Feedback", "Recaptcha", "account-suspension_release"}, k = 1, mv = {1, 4, 1})
        /* loaded from: classes14-dex2jar.jar:com/truecaller/suspension/UnsuspensionMethod$Support$Error.class */
        public enum Error {
            Feedback,
            Recaptcha
        }

        public Support(String str, Error error) {
            super(null);
            this.f15165a = str;
            this.f15166b = error;
        }
    }

    /* renamed from: com.truecaller.suspension.UnsuspensionMethod$a */
    /* loaded from: classes14-dex2jar.jar:com/truecaller/suspension/UnsuspensionMethod$a.class */
    public static final class C4586a extends UnsuspensionMethod {

        /* renamed from: a */
        public static final C4586a f15167a = new C4586a();

        public C4586a() {
            super(null);
        }
    }

    /* renamed from: com.truecaller.suspension.UnsuspensionMethod$b */
    /* loaded from: classes14-dex2jar.jar:com/truecaller/suspension/UnsuspensionMethod$b.class */
    public static final class C4587b extends UnsuspensionMethod {

        /* renamed from: a */
        public final long f15168a;

        /* renamed from: b */
        public final boolean f15169b;

        public C4587b(long j, boolean z) {
            super(null);
            this.f15168a = j;
            this.f15169b = z;
        }
    }

    public UnsuspensionMethod(f fVar) {
    }
}
