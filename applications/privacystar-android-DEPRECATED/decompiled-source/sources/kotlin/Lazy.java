package kotlin;

import com.google.firebase.analytics.FirebaseAnalytics;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0014\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\b\u0004\n\u0002\u0010\u000b\n��\bf\u0018��*\u0006\b��\u0010\u0001 \u00012\u00020\u0002J\b\u0010\u0006\u001a\u00020\u0007H&R\u0012\u0010\u0003\u001a\u00028��X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006\b"}, m254d2 = {"Lkotlin/Lazy;", "T", "", FirebaseAnalytics.Param.VALUE, "getValue", "()Ljava/lang/Object;", "isInitialized", "", "kotlin-stdlib"}, m253k = 1, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:kotlin/Lazy.class */
public interface Lazy<T> {
    T getValue();

    boolean isInitialized();
}
