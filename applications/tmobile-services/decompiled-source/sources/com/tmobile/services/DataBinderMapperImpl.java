package com.tmobile.services;

import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import androidx.databinding.DataBinderMapper;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.tmobile.services.databinding.ActivityOnboardingOptionsBindingImpl;
import com.tmobile.services.databinding.FragmentScamShieldFeaturesPageBindingImpl;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/DataBinderMapperImpl.class */
public class DataBinderMapperImpl extends DataBinderMapper {

    /* renamed from: a */
    private static final SparseIntArray f12570a;

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/DataBinderMapperImpl$InnerBrLookup.class */
    private static class InnerBrLookup {

        /* renamed from: a */
        static final SparseArray<String> f12571a;

        static {
            SparseArray<String> sparseArray = new SparseArray<>(1);
            f12571a = sparseArray;
            sparseArray.put(0, "_all");
        }

        private InnerBrLookup() {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/DataBinderMapperImpl$InnerLayoutIdLookup.class */
    private static class InnerLayoutIdLookup {

        /* renamed from: a */
        static final HashMap<String, Integer> f12572a;

        static {
            HashMap<String, Integer> hashMap = new HashMap<>(2);
            f12572a = hashMap;
            hashMap.put("layout/activity_onboarding_options_0", Integer.valueOf((int) C1517R.layout.activity_onboarding_options));
            f12572a.put("layout/fragment_scam_shield_features_page_0", Integer.valueOf((int) C1517R.layout.fragment_scam_shield_features_page));
        }

        private InnerLayoutIdLookup() {
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray(2);
        f12570a = sparseIntArray;
        sparseIntArray.put(C1517R.layout.activity_onboarding_options, 1);
        f12570a.put(C1517R.layout.fragment_scam_shield_features_page, 2);
    }

    @Override // androidx.databinding.DataBinderMapper
    /* renamed from: a */
    public List<DataBinderMapper> mo7661a() {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(new androidx.databinding.library.baseAdapters.DataBinderMapperImpl());
        return arrayList;
    }

    @Override // androidx.databinding.DataBinderMapper
    /* renamed from: b */
    public ViewDataBinding mo7660b(DataBindingComponent dataBindingComponent, View view, int i) {
        int i2 = f12570a.get(i);
        if (i2 <= 0) {
            return null;
        }
        Object tag = view.getTag();
        if (tag == null) {
            throw new RuntimeException("view must have a tag");
        } else if (i2 != 1) {
            if (i2 != 2) {
                return null;
            }
            if ("layout/fragment_scam_shield_features_page_0".equals(tag)) {
                return new FragmentScamShieldFeaturesPageBindingImpl(dataBindingComponent, view);
            }
            throw new IllegalArgumentException("The tag for fragment_scam_shield_features_page is invalid. Received: " + tag);
        } else if ("layout/activity_onboarding_options_0".equals(tag)) {
            return new ActivityOnboardingOptionsBindingImpl(dataBindingComponent, view);
        } else {
            throw new IllegalArgumentException("The tag for activity_onboarding_options is invalid. Received: " + tag);
        }
    }

    @Override // androidx.databinding.DataBinderMapper
    /* renamed from: c */
    public ViewDataBinding mo7659c(DataBindingComponent dataBindingComponent, View[] viewArr, int i) {
        if (viewArr == null || viewArr.length == 0 || f12570a.get(i) <= 0 || viewArr[0].getTag() != null) {
            return null;
        }
        throw new RuntimeException("view must have a tag");
    }
}
