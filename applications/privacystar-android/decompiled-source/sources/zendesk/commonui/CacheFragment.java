package zendesk.commonui;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.p001v4.app.Fragment;
import android.support.p001v4.app.FragmentActivity;
import android.support.p001v4.app.FragmentManager;
import java.util.HashMap;
import java.util.Map;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3-dex2jar.jar:zendesk/commonui/CacheFragment.class */
public class CacheFragment extends Fragment {
    private static final String TAG = "CacheFragment";
    private final Map<String, Object> cache = new HashMap();

    /* loaded from: classes3-dex2jar.jar:zendesk/commonui/CacheFragment$Supplier.class */
    public interface Supplier<T> {
        @NonNull
        T get();
    }

    public static CacheFragment from(FragmentActivity fragmentActivity) {
        FragmentManager supportFragmentManager = fragmentActivity.getSupportFragmentManager();
        Fragment findFragmentByTag = supportFragmentManager.findFragmentByTag(TAG);
        if (findFragmentByTag instanceof CacheFragment) {
            return (CacheFragment) findFragmentByTag;
        }
        CacheFragment cacheFragment = new CacheFragment();
        cacheFragment.setRetainInstance(true);
        supportFragmentManager.beginTransaction().add(cacheFragment, TAG).commit();
        return cacheFragment;
    }

    public boolean contains(@NonNull String str) {
        return this.cache.containsKey(str);
    }

    @Nullable
    public <T> T get(@NonNull String str) {
        try {
            return (T) this.cache.get(str);
        } catch (Exception e) {
            return null;
        }
    }

    @NonNull
    public <T> T getOrDefault(@NonNull String str, @NonNull T t) {
        T t2 = (T) get(str);
        return t2 != null ? t2 : t;
    }

    @NonNull
    public <T> T getOrDefault(@NonNull String str, @NonNull Supplier<T> supplier) {
        T t = (T) get(str);
        if (t != null) {
            return t;
        }
        T t2 = supplier.get();
        put(str, t2);
        return t2;
    }

    public <T> void put(@NonNull String str, @NonNull T t) {
        this.cache.put(str, t);
    }

    public void remove(@NonNull String str) {
        this.cache.remove(str);
    }
}
