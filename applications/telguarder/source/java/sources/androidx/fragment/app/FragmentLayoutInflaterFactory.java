package androidx.fragment.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import androidx.fragment.C0308R;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentLayoutInflaterFactory.class */
public class FragmentLayoutInflaterFactory implements LayoutInflater.Factory2 {
    private static final String TAG = "FragmentManager";
    private final FragmentManager mFragmentManager;

    public FragmentLayoutInflaterFactory(FragmentManager fragmentManager) {
        this.mFragmentManager = fragmentManager;
    }

    @Override // android.view.LayoutInflater.Factory2
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        if (FragmentContainerView.class.getName().equals(str)) {
            return new FragmentContainerView(context, attributeSet, this.mFragmentManager);
        }
        boolean equals = "fragment".equals(str);
        Fragment fragment = null;
        if (!equals) {
            return null;
        }
        String attributeValue = attributeSet.getAttributeValue(null, "class");
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0308R.styleable.Fragment);
        String str2 = attributeValue;
        if (attributeValue == null) {
            str2 = obtainStyledAttributes.getString(C0308R.styleable.Fragment_android_name);
        }
        int resourceId = obtainStyledAttributes.getResourceId(C0308R.styleable.Fragment_android_id, -1);
        String string = obtainStyledAttributes.getString(C0308R.styleable.Fragment_android_tag);
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
            Log.v(TAG, "onCreateView: id=0x" + Integer.toHexString(resourceId) + " fname=" + str2 + " existing=" + fragment3);
        }
        if (fragment3 == null) {
            fragment3 = this.mFragmentManager.getFragmentFactory().instantiate(context.getClassLoader(), str2);
            fragment3.mFromLayout = true;
            fragment3.mFragmentId = resourceId != 0 ? resourceId : id;
            fragment3.mContainerId = id;
            fragment3.mTag = string;
            fragment3.mInLayout = true;
            fragment3.mFragmentManager = this.mFragmentManager;
            fragment3.mHost = this.mFragmentManager.mHost;
            fragment3.onInflate(this.mFragmentManager.mHost.getContext(), attributeSet, fragment3.mSavedFragmentState);
            this.mFragmentManager.addFragment(fragment3);
            this.mFragmentManager.moveToState(fragment3);
        } else if (fragment3.mInLayout) {
            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string + ", or parent id 0x" + Integer.toHexString(id) + " with another fragment for " + str2);
        } else {
            fragment3.mInLayout = true;
            fragment3.mHost = this.mFragmentManager.mHost;
            fragment3.onInflate(this.mFragmentManager.mHost.getContext(), attributeSet, fragment3.mSavedFragmentState);
        }
        if (this.mFragmentManager.mCurState >= 1 || !fragment3.mFromLayout) {
            this.mFragmentManager.moveToState(fragment3);
        } else {
            this.mFragmentManager.moveToState(fragment3, 1);
        }
        if (fragment3.mView != null) {
            if (resourceId != 0) {
                fragment3.mView.setId(resourceId);
            }
            if (fragment3.mView.getTag() == null) {
                fragment3.mView.setTag(string);
            }
            return fragment3.mView;
        }
        throw new IllegalStateException("Fragment " + str2 + " did not create a view.");
    }

    @Override // android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }
}
