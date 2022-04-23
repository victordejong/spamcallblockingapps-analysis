package com.callapp.contacts.activity.marketplace;

import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Bundle;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.SwitchCompat;
import androidx.fragment.app.FragmentActivity;
import com.android.billingclient.api.g;
import com.android.billingclient.api.i;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.base.BaseFragment;
import com.callapp.contacts.activity.marketplace.catalog.CatalogManager;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemTheme;
import com.callapp.contacts.activity.marketplace.catalog.StoreUtils;
import com.callapp.contacts.manager.inAppBilling.BillingManager;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.popup.contact.SimpleProgressDialog;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ResourceRuntimeReplace.ResourcesMapper;
import com.callapp.contacts.util.ResourceRuntimeReplace.ThemeAttributes;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.animation.CallappAnimationUtils;
import com.callapp.contacts.widget.DualCirclesCheckBox;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/BaseChooseThemeFragment.class */
public abstract class BaseChooseThemeFragment extends BaseFragment {

    /* renamed from: b  reason: collision with root package name */
    public SwitchCompat f13026b;

    /* renamed from: d  reason: collision with root package name */
    public ThemeChangeEvents f13028d;
    private Map<String, Integer> e;
    private List<JSONStoreItemTheme> f;
    private ColorPallete g;
    private SparseIntArray h;
    private AddValueAnimatorObjects j;
    private BillingManager k;

    /* renamed from: a  reason: collision with root package name */
    protected final Map<String, ColorPallete> f13025a = new HashMap();
    private String i = null;

    /* renamed from: c  reason: collision with root package name */
    protected boolean f13027c = ThemeUtils.isThemeLight();

    /* renamed from: com.callapp.contacts.activity.marketplace.BaseChooseThemeFragment$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1.class */
    class AnonymousClass1 implements BillingManager.BillingUpdatesListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SimpleProgressDialog f13029a;

        AnonymousClass1(SimpleProgressDialog simpleProgressDialog) {
            this.f13029a = simpleProgressDialog;
        }

        @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
        public final void a() {
            if (BaseChooseThemeFragment.this.k != null) {
                BaseChooseThemeFragment.this.k.a();
            }
        }

        @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
        public /* synthetic */ void a(g gVar, List list) {
            BillingManager.BillingUpdatesListener._CC.$default$a(this, gVar, list);
        }

        @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
        public final void a(List<i> list) {
            CatalogManager.get().a(BaseChooseThemeFragment.this.k, list).a(new CatalogManager.OnCatalogAttributesLoaded() { // from class: com.callapp.contacts.activity.marketplace.BaseChooseThemeFragment.1.1
                @Override // com.callapp.contacts.activity.marketplace.catalog.CatalogManager.DoneWithPayload
                public /* synthetic */ void onDone(CatalogManager.CatalogAttributes catalogAttributes) {
                    BaseChooseThemeFragment.this.f = catalogAttributes.getThemes();
                    BaseChooseThemeFragment.b(BaseChooseThemeFragment.this, BaseChooseThemeFragment.this.f);
                    CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.marketplace.BaseChooseThemeFragment.1.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            FragmentActivity activity = BaseChooseThemeFragment.this.getActivity();
                            if (activity != null) {
                                BaseChooseThemeFragment.this.f13026b = (SwitchCompat) activity.findViewById(2131364109);
                                LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{ViewUtils.getDrawable(2131231936), ViewUtils.getDrawable(2131231935)});
                                layerDrawable.setId(0, 0);
                                layerDrawable.setId(1, 1);
                                BaseChooseThemeFragment.this.f13026b.setThumbDrawable(layerDrawable);
                                int color = ThemeUtils.getColor(2131099784);
                                TextView textView = (TextView) BaseChooseThemeFragment.this.getActivity().findViewById(2131364423);
                                textView.setTextColor(color);
                                textView.setText(Activities.getString(2131886555));
                                TextView textView2 = (TextView) BaseChooseThemeFragment.this.getActivity().findViewById(2131364419);
                                textView2.setTextColor(color);
                                textView2.setText(Activities.getString(2131886554));
                                Drawable drawable = ThemeUtils.getDrawable(2131232196);
                                ViewUtils.a(BaseChooseThemeFragment.this.getActivity().findViewById(2131363830), drawable);
                                ViewUtils.a(BaseChooseThemeFragment.this.getActivity().findViewById(2131362121), drawable);
                                BaseChooseThemeFragment.this.a();
                            }
                            AnonymousClass1.this.f13029a.dismiss();
                        }
                    });
                }
            });
        }

        @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
        public /* synthetic */ void b(List list) {
            BillingManager.BillingUpdatesListener._CC.$default$b(this, list);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$AddValueAnimatorObjects.class */
    public interface AddValueAnimatorObjects {
        List<ValueAnimator> a(SparseIntArray sparseIntArray, SparseIntArray sparseIntArray2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete.class */
    public class ColorPallete {

        /* renamed from: a  reason: collision with root package name */
        int f13036a;

        /* renamed from: b  reason: collision with root package name */
        int f13037b;

        /* renamed from: c  reason: collision with root package name */
        int f13038c;

        /* renamed from: d  reason: collision with root package name */
        int f13039d;
        int e;
        int f;
        int g;
        int h;
        int i;
        int j;
        int k;
        int l;
        int m;
        int n;
        int o;
        int p;
        int q;
        int r;
        int s;
        int t;

        ColorPallete() {
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ThemeChangeEvents.class */
    public interface ThemeChangeEvents {
        void a();
    }

    private static int a(ResourcesMapper resourcesMapper, int i) {
        int color = resourcesMapper.getColor(i);
        int i2 = color;
        if (color == 16777216) {
            i2 = ThemeUtils.getColor(i);
        }
        return i2;
    }

    private ColorPallete a(JSONStoreItemTheme jSONStoreItemTheme, final boolean z, boolean z2) {
        ColorPallete colorPallete = new ColorPallete();
        final Map<String, String> colorMap = jSONStoreItemTheme.getColorMap();
        ResourcesMapper resourcesMapper = new ResourcesMapper(new ThemeAttributes(z, z2) { // from class: com.callapp.contacts.activity.marketplace.BaseChooseThemeFragment.2
            @Override // com.callapp.contacts.util.ResourceRuntimeReplace.ThemeAttributes
            public int getColorPrimary() {
                return Color.parseColor(z ? (String) colorMap.get(JSONStoreItemTheme.KEY_PRIMARY_COLOR) : (String) colorMap.get(JSONStoreItemTheme.KEY_DARK_PRIMARY_COLOR));
            }

            @Override // com.callapp.contacts.util.ResourceRuntimeReplace.ThemeAttributes
            public int getColorPrimaryDark() {
                return Color.parseColor(z ? (String) colorMap.get(JSONStoreItemTheme.KEY_PRIMARY_COLOR_DARK) : (String) colorMap.get(JSONStoreItemTheme.KEY_DARK_PRIMARY_COLOR_DARK));
            }

            @Override // com.callapp.contacts.util.ResourceRuntimeReplace.ThemeAttributes
            public int getColorPrimaryLight() {
                return Color.parseColor(z ? (String) colorMap.get(JSONStoreItemTheme.KEY_PRIMARY_COLOR_LIGHT) : (String) colorMap.get(JSONStoreItemTheme.KEY_DARK_PRIMARY_COLOR_LIGHT));
            }
        });
        colorPallete.f13036a = a(resourcesMapper, 2131099786);
        colorPallete.f13037b = a(resourcesMapper, 2131099784);
        colorPallete.f13038c = a(resourcesMapper, 2131099785);
        colorPallete.f13039d = a(resourcesMapper, 2131099890);
        colorPallete.e = a(resourcesMapper, 2131100140);
        colorPallete.f = a(resourcesMapper, 2131100108);
        colorPallete.g = a(resourcesMapper, 2131099686);
        colorPallete.j = a(resourcesMapper, 2131099878);
        colorPallete.h = a(resourcesMapper, 2131099882);
        colorPallete.i = a(resourcesMapper, 2131099885);
        colorPallete.p = a(resourcesMapper, 2131099891);
        colorPallete.s = a(resourcesMapper, 2131099815);
        colorPallete.t = a(resourcesMapper, 2131099943);
        colorPallete.q = colorPallete.g;
        colorPallete.r = colorPallete.f;
        if (z) {
            if (z2) {
                colorPallete.m = a(resourcesMapper, 2131099890);
                colorPallete.k = a(resourcesMapper, 2131099914);
                colorPallete.l = -1;
                colorPallete.n = -1;
                colorPallete.o = colorPallete.m;
            } else {
                colorPallete.m = -1;
                colorPallete.k = -1;
                colorPallete.l = colorPallete.f13037b;
                colorPallete.n = colorPallete.f13037b;
                colorPallete.o = colorPallete.f13038c;
            }
        } else if (z2) {
            colorPallete.m = -1;
            colorPallete.k = colorPallete.f13037b;
            colorPallete.l = -1;
            colorPallete.n = colorPallete.f13037b;
            colorPallete.o = colorPallete.f13038c;
        } else {
            colorPallete.m = -1;
            colorPallete.k = -1;
            colorPallete.l = colorPallete.f13037b;
            colorPallete.n = colorPallete.f13037b;
            colorPallete.o = colorPallete.f13038c;
        }
        return colorPallete;
    }

    public static String a(String str, boolean z) {
        return z ? "light_".concat(String.valueOf(str)) : "dark_".concat(String.valueOf(str));
    }

    static /* synthetic */ void b(BaseChooseThemeFragment baseChooseThemeFragment, List list) {
        if (!CollectionUtils.a(list)) {
            for (int i = 0; i < list.size(); i++) {
                JSONStoreItemTheme jSONStoreItemTheme = (JSONStoreItemTheme) list.get(i);
                boolean isMainDefaultTheme = jSONStoreItemTheme.isMainDefaultTheme();
                String sku = jSONStoreItemTheme.getSku();
                baseChooseThemeFragment.f13025a.put("light_".concat(String.valueOf(sku)), baseChooseThemeFragment.a(jSONStoreItemTheme, true, isMainDefaultTheme));
                baseChooseThemeFragment.f13025a.put("dark_".concat(String.valueOf(sku)), baseChooseThemeFragment.a(jSONStoreItemTheme, false, isMainDefaultTheme));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int a(String str) {
        if (this.e == null) {
            this.e = new HashMap();
            List<JSONStoreItemTheme> themes = getThemes();
            if (CollectionUtils.b(themes)) {
                for (int i = 0; i < themes.size(); i++) {
                    this.e.put(themes.get(i).getSku(), Integer.valueOf(i));
                }
            }
        }
        Integer num = this.e.get(str);
        if (num != null) {
            return num.intValue();
        }
        return 0;
    }

    protected abstract void a();

    public final void a(Activity activity, String str, boolean z, int i) {
        ColorPallete colorPallete = this.f13025a.get(str);
        if (this.g == null) {
            this.g = colorPallete;
        }
        SparseIntArray a2 = ThemeUtils.a(z, 2131099785, 2131099784, 2131100140, 2131099891, 2131099686, 2131100108);
        if (this.h == null) {
            this.h = a2;
        }
        View findViewById = activity.findViewById(2131364072);
        View findViewById2 = activity.findViewById(2131364073);
        View findViewById3 = activity.findViewById(2131364074);
        View findViewById4 = activity.findViewById(2131364027);
        View findViewById5 = activity.findViewById(2131364028);
        View findViewById6 = activity.findViewById(2131364029);
        DualCirclesCheckBox dualCirclesCheckBox = (DualCirclesCheckBox) activity.findViewById(2131362435);
        DualCirclesCheckBox dualCirclesCheckBox2 = (DualCirclesCheckBox) activity.findViewById(2131362436);
        DualCirclesCheckBox dualCirclesCheckBox3 = (DualCirclesCheckBox) activity.findViewById(2131362437);
        ImageView imageView = (ImageView) activity.findViewById(2131363002);
        ImageView imageView2 = (ImageView) activity.findViewById(2131363003);
        ImageView imageView3 = (ImageView) activity.findViewById(2131363004);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.setDuration(i);
        AnimatorSet.Builder with = animatorSet.play(CallappAnimationUtils.a((Object) activity.findViewById(2131363710), 2, this.h.get(2131099891), a2.get(2131099891))).with(CallappAnimationUtils.a((Object) activity.findViewById(2131364423), 6, this.h.get(2131099784), a2.get(2131099784))).with(CallappAnimationUtils.a((Object) activity.findViewById(2131364419), 6, this.h.get(2131099784), a2.get(2131099784))).with(CallappAnimationUtils.a(((LayerDrawable) this.f13026b.f1017a).findDrawableByLayerId(1), 7, this.h.get(2131099686), a2.get(2131099686))).with(CallappAnimationUtils.a(this.f13026b.f1018b, 7, this.h.get(2131100108), a2.get(2131100108))).with(CallappAnimationUtils.a((Object) activity.findViewById(2131362119), 2, this.h.get(2131099686), a2.get(2131099686))).with(CallappAnimationUtils.a((Object) activity.findViewById(2131363104), 2, this.g.s, colorPallete.s)).with(CallappAnimationUtils.a((Object) activity.findViewById(2131363105), 2, this.g.t, colorPallete.t)).with(CallappAnimationUtils.a((Object) activity.findViewById(2131362465), 2, this.g.g, colorPallete.g)).with(CallappAnimationUtils.a((Object) activity.findViewById(2131363008), 2, this.g.j, colorPallete.j)).with(CallappAnimationUtils.a((Object) activity.findViewById(2131363008), 3, this.g.h, colorPallete.h)).with(CallappAnimationUtils.a((Object) activity.findViewById(2131363009), 3, this.g.i, colorPallete.i)).with(CallappAnimationUtils.a((Object) activity.findViewById(2131363006), 3, this.g.k, colorPallete.k)).with(CallappAnimationUtils.a((Object) activity.findViewById(2131363007), 3, this.g.l, colorPallete.l));
        AddValueAnimatorObjects addValueAnimatorObjects = this.j;
        if (addValueAnimatorObjects != null) {
            List<ValueAnimator> a3 = addValueAnimatorObjects.a(this.h, a2);
            if (CollectionUtils.b(a3)) {
                for (ValueAnimator valueAnimator : a3) {
                    with.with(valueAnimator);
                }
            }
        }
        for (int i2 = 0; i2 < 3; i2++) {
            with.with(CallappAnimationUtils.a((Object) new View[]{findViewById, findViewById2, findViewById3}[i2], 2, this.g.e, colorPallete.e)).with(CallappAnimationUtils.a((Object) new View[]{findViewById4, findViewById5, findViewById6}[i2], 2, this.g.f, colorPallete.f)).with(CallappAnimationUtils.a((Object) new DualCirclesCheckBox[]{dualCirclesCheckBox, dualCirclesCheckBox2, dualCirclesCheckBox3}[i2], 4, this.g.f13037b, colorPallete.f13037b)).with(CallappAnimationUtils.a((Object) new ImageView[]{imageView, imageView2, imageView3}[i2], 3, this.g.f13037b, colorPallete.f13037b));
        }
        animatorSet.start();
        this.g = colorPallete;
        this.h = a2;
        this.i = str;
        this.f13027c = z;
    }

    public final boolean b(String str) {
        JSONStoreItemTheme jSONStoreItemTheme;
        if (!StringUtils.b((CharSequence) str)) {
            return false;
        }
        int a2 = a(str);
        List<JSONStoreItemTheme> themes = getThemes();
        if (!CollectionUtils.b(themes) || (jSONStoreItemTheme = themes.get(a2)) == null) {
            return false;
        }
        return StoreUtils.a(jSONStoreItemTheme);
    }

    public String getLastChosenThemeSku() {
        if (!StringUtils.b((CharSequence) this.i)) {
            return null;
        }
        if (this.f13027c) {
            this.i = this.i.replace("light_", "");
        } else {
            this.i = this.i.replace("dark_", "");
        }
        return this.i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public List<JSONStoreItemTheme> getThemes() {
        return this.f;
    }

    public boolean isLightTheme() {
        return this.f13027c;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        BillingManager billingManager = this.k;
        if (billingManager != null) {
            billingManager.b();
        }
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        SimpleProgressDialog simpleProgressDialog = new SimpleProgressDialog();
        simpleProgressDialog.setMessage(Activities.getString(2131887415));
        PopupManager.get().a(getActivity(), simpleProgressDialog);
        this.k = new BillingManager(new AnonymousClass1(simpleProgressDialog));
    }

    public void setAdditionalAnimatorsListener(AddValueAnimatorObjects addValueAnimatorObjects) {
        this.j = addValueAnimatorObjects;
    }

    public void setThemeChangeEventsListener(ThemeChangeEvents themeChangeEvents) {
        this.f13028d = themeChangeEvents;
    }
}
