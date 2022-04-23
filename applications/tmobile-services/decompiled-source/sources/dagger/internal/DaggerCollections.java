package dagger.internal;

import com.google.android.gms.common.api.Api;
import java.util.HashSet;
import java.util.LinkedHashMap;
/* loaded from: classes-dex2jar.jar:dagger/internal/DaggerCollections.class */
public final class DaggerCollections {
    private DaggerCollections() {
    }

    /* renamed from: a */
    private static int m4643a(int i) {
        return i < 3 ? i + 1 : i < 1073741824 ? (int) ((i / 0.75f) + 1.0f) : Api.BaseClientBuilder.API_PRIORITY_OTHER;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static <T> HashSet<T> m4642b(int i) {
        return new HashSet<>(m4643a(i));
    }

    /* renamed from: c */
    public static <K, V> LinkedHashMap<K, V> m4641c(int i) {
        return new LinkedHashMap<>(m4643a(i));
    }
}
