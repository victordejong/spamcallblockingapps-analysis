package zendesk.support.request;

import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.p001v4.app.Fragment;
import android.support.p001v4.app.FragmentManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/HeadlessFragment.class */
public class HeadlessFragment<E> extends Fragment {
    private static final String TAG = "ZendeskHeadlessFragment";
    private E data;

    private E getData() {
        return this.data;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> E getData(FragmentManager fragmentManager) {
        Fragment findFragmentByTag = fragmentManager.findFragmentByTag(TAG);
        if (findFragmentByTag instanceof HeadlessFragment) {
            return (E) ((HeadlessFragment) findFragmentByTag).getData();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> void install(FragmentManager fragmentManager, E e) {
        HeadlessFragment headlessFragment = new HeadlessFragment();
        headlessFragment.setData(e);
        fragmentManager.beginTransaction().add(headlessFragment, TAG).commit();
    }

    private void setData(E e) {
        this.data = e;
    }

    @Override // android.support.p001v4.app.Fragment
    @Nullable
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, Bundle bundle) {
        setRetainInstance(true);
        return null;
    }
}
