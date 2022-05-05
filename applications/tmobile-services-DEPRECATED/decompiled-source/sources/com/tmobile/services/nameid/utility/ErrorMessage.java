package com.tmobile.services.nameid.utility;

import androidx.annotation.StringRes;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b6\u0018��:\u0004\u0003\u0004\u0005\u0006B\t\b\u0002¢\u0006\u0004\b\u0001\u0010\u0002\u0082\u0001\u0004\u0007\b\t\n¨\u0006\u000b"}, d2 = {"Lcom/tmobile/services/nameid/utility/ErrorMessage;", "<init>", "()V", "CallCare", "General", "ProcessingError", "Retryable", "Lcom/tmobile/services/nameid/utility/ErrorMessage$General;", "Lcom/tmobile/services/nameid/utility/ErrorMessage$CallCare;", "Lcom/tmobile/services/nameid/utility/ErrorMessage$ProcessingError;", "Lcom/tmobile/services/nameid/utility/ErrorMessage$Retryable;", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/ErrorMessage.class */
public abstract class ErrorMessage {

    @Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\n\b\u0086\b\u0018��2\u00020\u0001B/\u0012\b\b\u0001\u0010\b\u001a\u00020\u0002\u0012\b\b\u0001\u0010\t\u001a\u00020\u0002\u0012\b\b\u0001\u0010\n\u001a\u00020\u0002\u0012\b\b\u0001\u0010\u000b\u001a\u00020\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0007\u0010\u0004J8\u0010\f\u001a\u00020��2\b\b\u0003\u0010\b\u001a\u00020\u00022\b\b\u0003\u0010\t\u001a\u00020\u00022\b\b\u0003\u0010\n\u001a\u00020\u00022\b\b\u0003\u0010\u000b\u001a\u00020\u0002HÆ\u0001¢\u0006\u0004\b\f\u0010\rJ\u001a\u0010\u0011\u001a\u00020\u00102\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eHÖ\u0003¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010\u0013\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0013\u0010\u0004J\u0010\u0010\u0015\u001a\u00020\u0014HÖ\u0001¢\u0006\u0004\b\u0015\u0010\u0016R\u0019\u0010\n\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\n\u0010\u0017\u001a\u0004\b\u0018\u0010\u0004R\u0019\u0010\t\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\u0017\u001a\u0004\b\u0019\u0010\u0004R\u0019\u0010\u000b\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u0017\u001a\u0004\b\u001a\u0010\u0004R\u0019\u0010\b\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\u0017\u001a\u0004\b\u001b\u0010\u0004¨\u0006\u001e"}, d2 = {"Lcom/tmobile/services/nameid/utility/ErrorMessage$CallCare;", "Lcom/tmobile/services/nameid/utility/ErrorMessage;", "", "component1", "()I", "component2", "component3", "component4", "title", "bodyStart", "bodyEnd", "buttonText", "copy", "(IIII)Lcom/tmobile/services/nameid/utility/ErrorMessage$CallCare;", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "hashCode", "", "toString", "()Ljava/lang/String;", "I", "getBodyEnd", "getBodyStart", "getButtonText", "getTitle", "<init>", "(IIII)V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/ErrorMessage$CallCare.class */
    public static final class CallCare extends ErrorMessage {

        /* renamed from: a */
        private final int f14302a;

        /* renamed from: b */
        private final int f14303b;

        /* renamed from: c */
        private final int f14304c;

        /* renamed from: d */
        private final int f14305d;

        public CallCare(@StringRes int i, @StringRes int i2, @StringRes int i3, @StringRes int i4) {
            super(null);
            this.f14302a = i;
            this.f14303b = i2;
            this.f14304c = i3;
            this.f14305d = i4;
        }

        /* renamed from: a */
        public final int m5731a() {
            return this.f14304c;
        }

        /* renamed from: b */
        public final int m5730b() {
            return this.f14303b;
        }

        /* renamed from: c */
        public final int m5729c() {
            return this.f14305d;
        }

        /* renamed from: d */
        public final int m5728d() {
            return this.f14302a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CallCare)) {
                return false;
            }
            CallCare callCare = (CallCare) obj;
            return this.f14302a == callCare.f14302a && this.f14303b == callCare.f14303b && this.f14304c == callCare.f14304c && this.f14305d == callCare.f14305d;
        }

        public int hashCode() {
            return (((((this.f14302a * 31) + this.f14303b) * 31) + this.f14304c) * 31) + this.f14305d;
        }

        @NotNull
        public String toString() {
            return "CallCare(title=" + this.f14302a + ", bodyStart=" + this.f14303b + ", bodyEnd=" + this.f14304c + ", buttonText=" + this.f14305d + ")";
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\b\b\u0086\b\u0018��2\u00020\u0001B\u001b\u0012\b\b\u0001\u0010\u0006\u001a\u00020\u0002\u0012\b\b\u0001\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0004J$\u0010\b\u001a\u00020��2\b\b\u0003\u0010\u0006\u001a\u00020\u00022\b\b\u0003\u0010\u0007\u001a\u00020\u0002HÆ\u0001¢\u0006\u0004\b\b\u0010\tJ\u001a\u0010\r\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\nHÖ\u0003¢\u0006\u0004\b\r\u0010\u000eJ\u0010\u0010\u000f\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u000f\u0010\u0004J\u0010\u0010\u0011\u001a\u00020\u0010HÖ\u0001¢\u0006\u0004\b\u0011\u0010\u0012R\u0019\u0010\u0007\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0013\u001a\u0004\b\u0014\u0010\u0004R\u0019\u0010\u0006\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0013\u001a\u0004\b\u0015\u0010\u0004¨\u0006\u0018"}, d2 = {"Lcom/tmobile/services/nameid/utility/ErrorMessage$General;", "Lcom/tmobile/services/nameid/utility/ErrorMessage;", "", "component1", "()I", "component2", "title", "body", "copy", "(II)Lcom/tmobile/services/nameid/utility/ErrorMessage$General;", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "hashCode", "", "toString", "()Ljava/lang/String;", "I", "getBody", "getTitle", "<init>", "(II)V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/ErrorMessage$General.class */
    public static final class General extends ErrorMessage {

        /* renamed from: a */
        private final int f14306a;

        /* renamed from: b */
        private final int f14307b;

        public General(@StringRes int i, @StringRes int i2) {
            super(null);
            this.f14306a = i;
            this.f14307b = i2;
        }

        /* renamed from: a */
        public final int m5727a() {
            return this.f14307b;
        }

        /* renamed from: b */
        public final int m5726b() {
            return this.f14306a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof General)) {
                return false;
            }
            General general = (General) obj;
            return this.f14306a == general.f14306a && this.f14307b == general.f14307b;
        }

        public int hashCode() {
            return (this.f14306a * 31) + this.f14307b;
        }

        @NotNull
        public String toString() {
            return "General(title=" + this.f14306a + ", body=" + this.f14307b + ")";
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/tmobile/services/nameid/utility/ErrorMessage$ProcessingError;", "Lcom/tmobile/services/nameid/utility/ErrorMessage;", "<init>", "()V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/ErrorMessage$ProcessingError.class */
    public static final class ProcessingError extends ErrorMessage {
        public ProcessingError() {
            super(null);
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0007\u0018��2\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"Lcom/tmobile/services/nameid/utility/ErrorMessage$Retryable;", "Lcom/tmobile/services/nameid/utility/ErrorMessage;", "", "count", "I", "getCount", "()I", "<init>", "(I)V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/ErrorMessage$Retryable.class */
    public static final class Retryable extends ErrorMessage {
        public Retryable() {
            this(0, 1, null);
        }

        public Retryable(int i) {
            super(null);
        }

        public /* synthetic */ Retryable(int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? 1 : i);
        }
    }

    private ErrorMessage() {
    }

    public /* synthetic */ ErrorMessage(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }
}
