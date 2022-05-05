package androidx.fragment.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.C0317R;
import me.leolin.shortcutbadger.impl.ApexHomeBadger;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentLayoutInflaterFactory.class */
public class FragmentLayoutInflaterFactory implements LayoutInflater.Factory2 {
    public static final String TAG = "FragmentManager";
    public final FragmentManager mFragmentManager;

    public FragmentLayoutInflaterFactory(FragmentManager fragmentManager) {
        this.mFragmentManager = fragmentManager;
    }

    @Override // android.view.LayoutInflater.Factory2
    @Nullable
    public View onCreateView(@Nullable View view, @NonNull String str, @NonNull Context context, @NonNull AttributeSet attributeSet) {
        if (FragmentContainerView.class.getName().equals(str)) {
            return new FragmentContainerView(context, attributeSet, this.mFragmentManager);
        }
        Fragment fragment = null;
        if (!"fragment".equals(str)) {
            return null;
        }
        String attributeValue = attributeSet.getAttributeValue(null, ApexHomeBadger.CLASS);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0317R.styleable.Fragment);
        String str2 = attributeValue;
        if (attributeValue == null) {
            str2 = obtainStyledAttributes.getString(C0317R.styleable.Fragment_android_name);
        }
        int resourceId = obtainStyledAttributes.getResourceId(C0317R.styleable.Fragment_android_id, -1);
        String string = obtainStyledAttributes.getString(C0317R.styleable.Fragment_android_tag);
        obtainStyledAttributes.recycle();
        if (str2 == null || !FragmentFactory.isFragmentClass(context.getClassLoader(), str2)) {
            return null;
        }
        int id = view != null ? view.getId() : 0;
        if (id == -1 && resourceId == -1 && string == null) {
            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + str2);
        }
        if (resourceId != -1) {
            fragment = this.mFragmentManager.findFragmentById(resourceId);
        }
        Fragment fragment2 = fragment;
        if (fragment == null) {
            fragment2 = fragment;
            if (string != null) {
                fragment2 = this.mFragmentManager.findFragmentByTag(string);
            }
        }
        Fragment fragment3 = fragment2;
        if (fragment2 == null) {
            fragment3 = fragment2;
            if (id != -1) {
                fragment3 = this.mFragmentManager.findFragmentById(id);
            }
        }
        if (FragmentManager.isLoggingEnabled(2)) {
            String str3 = "onCreateView: id=0x" + Integer.toHexString(resourceId) + " fname=" + str2 + " existing=" + fragment3;
        }
        if (fragment3 == null) {
            fragment3 = this.mFragmentManager.getFragmentFactory().instantiate(context.getClassLoader(), str2);
            fragment3.mFromLayout = true;
            fragment3.mFragmentId = resourceId != 0 ? resourceId : id;
            fragment3.mContainerId = id;
            fragment3.mTag = string;
            fragment3.mInLayout = true;
            FragmentManager fragmentManager = this.mFragmentManager;
            fragment3.mFragmentManager = fragmentManager;
            FragmentHostCallback<?> fragmentHostCallback = fragmentManager.mHost;
            fragment3.mHost = fragmentHostCallback;
            fragment3.onInflate(fragmentHostCallback.getContext(), attributeSet, fragment3.mSavedFragmentState);
            this.mFragmentManager.addFragment(fragment3);
            this.mFragmentManager.moveToState(fragment3);
        } else if (!fragment3.mInLayout) {
            fragment3.mInLayout = true;
            FragmentHostCallback<?> fragmentHostCallback2 = this.mFragmentManager.mHost;
            fragment3.mHost = fragmentHostCallback2;
            fragment3.onInflate(fragmentHostCallback2.getContext(), attributeSet, fragment3.mSavedFragmentState);
        } else {
            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string + ", or parent id 0x" + Integer.toHexString(id) + " with another fragment for " + str2);
        }
        FragmentManager fragmentManager2 = this.mFragmentManager;
        if (fragmentManager2.mCurState >= 1 || !fragment3.mFromLayout) {
            this.mFragmentManager.moveToState(fragment3);
        } else {
            fragmentManager2.moveToState(fragment3, 1);
        }
        View view2 = fragment3.mView;
        if (view2 != null) {
            if (resourceId != 0) {
                view2.setId(resourceId);
            }
            if (fragment3.mView.getTag() == null) {
                fragment3.mView.setTag(string);
            }
            return fragment3.mView;
        }
        throw new IllegalStateException("Fragment " + str2 + " did not create a view.");
    }

    @Override // android.view.LayoutInflater.Factory
    @Nullable
    public View onCreateView(@NonNull String str, @NonNull Context context, @NonNull AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }
}
