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
import com.android.billingclient.api.C3341g;
import com.android.billingclient.api.C3344i;
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

    /* renamed from: b */
    public SwitchCompat f23228b;

    /* renamed from: d */
    public ThemeChangeEvents f23230d;

    /* renamed from: e */
    private Map<String, Integer> f23231e;

    /* renamed from: f */
    private List<JSONStoreItemTheme> f23232f;

    /* renamed from: g */
    private ColorPallete f23233g;

    /* renamed from: h */
    private SparseIntArray f23234h;

    /* renamed from: j */
    private AddValueAnimatorObjects f23236j;

    /* renamed from: k */
    private BillingManager f23237k;

    /* renamed from: a */
    protected final Map<String, ColorPallete> f23227a = new HashMap();

    /* renamed from: i */
    private String f23235i = null;

    /* renamed from: c */
    protected boolean f23229c = ThemeUtils.isThemeLight();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.activity.marketplace.BaseChooseThemeFragment$1 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1.class */
    public class C66561 implements BillingManager.BillingUpdatesListener {

        /* renamed from: a */
        final /* synthetic */ SimpleProgressDialog f23238a;

        C66561(SimpleProgressDialog simpleProgressDialog) {
            BaseChooseThemeFragment.this = r4;
            this.f23238a = simpleProgressDialog;
        }

        @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
        /* renamed from: a */
        public final void mo26177a() {
            if (BaseChooseThemeFragment.this.f23237k != null) {
                BaseChooseThemeFragment.this.f23237k.m28298a();
            }
        }

        @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
        /* renamed from: a */
        public /* synthetic */ void mo26176a(C3341g c3341g, List list) {
            BillingManager.BillingUpdatesListener._CC.$default$a(this, c3341g, list);
        }

        @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
        /* renamed from: a */
        public final void mo26175a(List<C3344i> list) {
            CatalogManager.get().m29979a(BaseChooseThemeFragment.this.f23237k, list).m29956a(new CatalogManager.OnCatalogAttributesLoaded() { // from class: com.callapp.contacts.activity.marketplace.BaseChooseThemeFragment.1.1
                @Override // com.callapp.contacts.activity.marketplace.catalog.CatalogManager.DoneWithPayload
                public /* synthetic */ void onDone(CatalogManager.CatalogAttributes catalogAttributes) {
                    BaseChooseThemeFragment.this.f23232f = catalogAttributes.getThemes();
                    BaseChooseThemeFragment.m30157b(BaseChooseThemeFragment.this, BaseChooseThemeFragment.this.f23232f);
                    CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.marketplace.BaseChooseThemeFragment.1.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            FragmentActivity activity = BaseChooseThemeFragment.this.getActivity();
                            if (activity != null) {
                                BaseChooseThemeFragment.this.f23228b = (SwitchCompat) activity.findViewById(2131364109);
                                LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{ViewUtils.getDrawable(2131231936), ViewUtils.getDrawable(2131231935)});
                                layerDrawable.setId(0, 0);
                                layerDrawable.setId(1, 1);
                                BaseChooseThemeFragment.this.f23228b.setThumbDrawable(layerDrawable);
                                int color = ThemeUtils.getColor(2131099784);
                                TextView textView = (TextView) BaseChooseThemeFragment.this.getActivity().findViewById(2131364423);
                                textView.setTextColor(color);
                                textView.setText(Activities.getString(2131886555));
                                TextView textView2 = (TextView) BaseChooseThemeFragment.this.getActivity().findViewById(2131364419);
                                textView2.setTextColor(color);
                                textView2.setText(Activities.getString(2131886554));
                                Drawable drawable = ThemeUtils.getDrawable(2131232196);
                                ViewUtils.m27320a(BaseChooseThemeFragment.this.getActivity().findViewById(2131363830), drawable);
                                ViewUtils.m27320a(BaseChooseThemeFragment.this.getActivity().findViewById(2131362121), drawable);
                                BaseChooseThemeFragment.this.mo29667a();
                            }
                            C66561.this.f23238a.dismiss();
                        }
                    });
                }
            });
        }

        @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
        /* renamed from: b */
        public /* synthetic */ void mo26174b(List list) {
            BillingManager.BillingUpdatesListener._CC.$default$b(this, list);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$AddValueAnimatorObjects.class */
    public interface AddValueAnimatorObjects {
        /* renamed from: a */
        List<ValueAnimator> mo30018a(SparseIntArray sparseIntArray, SparseIntArray sparseIntArray2);
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ColorPallete.class */
    public class ColorPallete {

        /* renamed from: a */
        int f23245a;

        /* renamed from: b */
        int f23246b;

        /* renamed from: c */
        int f23247c;

        /* renamed from: d */
        int f23248d;

        /* renamed from: e */
        int f23249e;

        /* renamed from: f */
        int f23250f;

        /* renamed from: g */
        int f23251g;

        /* renamed from: h */
        int f23252h;

        /* renamed from: i */
        int f23253i;

        /* renamed from: j */
        int f23254j;

        /* renamed from: k */
        int f23255k;

        /* renamed from: l */
        int f23256l;

        /* renamed from: m */
        int f23257m;

        /* renamed from: n */
        int f23258n;

        /* renamed from: o */
        int f23259o;

        /* renamed from: p */
        int f23260p;

        /* renamed from: q */
        int f23261q;

        /* renamed from: r */
        int f23262r;

        /* renamed from: s */
        int f23263s;

        /* renamed from: t */
        int f23264t;

        ColorPallete() {
            BaseChooseThemeFragment.this = r4;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$ThemeChangeEvents.class */
    public interface ThemeChangeEvents {
        /* renamed from: a */
        void mo30017a();
    }

    /* renamed from: a */
    private static int m30161a(ResourcesMapper resourcesMapper, int i) {
        int color = resourcesMapper.getColor(i);
        int i2 = color;
        if (color == 16777216) {
            i2 = ThemeUtils.getColor(i);
        }
        return i2;
    }

    /* renamed from: a */
    private ColorPallete m30162a(JSONStoreItemTheme jSONStoreItemTheme, final boolean z, boolean z2) {
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
        colorPallete.f23245a = m30161a(resourcesMapper, 2131099786);
        colorPallete.f23246b = m30161a(resourcesMapper, 2131099784);
        colorPallete.f23247c = m30161a(resourcesMapper, 2131099785);
        colorPallete.f23248d = m30161a(resourcesMapper, 2131099890);
        colorPallete.f23249e = m30161a(resourcesMapper, 2131100140);
        colorPallete.f23250f = m30161a(resourcesMapper, 2131100108);
        colorPallete.f23251g = m30161a(resourcesMapper, 2131099686);
        colorPallete.f23254j = m30161a(resourcesMapper, 2131099878);
        colorPallete.f23252h = m30161a(resourcesMapper, 2131099882);
        colorPallete.f23253i = m30161a(resourcesMapper, 2131099885);
        colorPallete.f23260p = m30161a(resourcesMapper, 2131099891);
        colorPallete.f23263s = m30161a(resourcesMapper, 2131099815);
        colorPallete.f23264t = m30161a(resourcesMapper, 2131099943);
        colorPallete.f23261q = colorPallete.f23251g;
        colorPallete.f23262r = colorPallete.f23250f;
        if (z) {
            if (z2) {
                colorPallete.f23257m = m30161a(resourcesMapper, 2131099890);
                colorPallete.f23255k = m30161a(resourcesMapper, 2131099914);
                colorPallete.f23256l = -1;
                colorPallete.f23258n = -1;
                colorPallete.f23259o = colorPallete.f23257m;
            } else {
                colorPallete.f23257m = -1;
                colorPallete.f23255k = -1;
                colorPallete.f23256l = colorPallete.f23246b;
                colorPallete.f23258n = colorPallete.f23246b;
                colorPallete.f23259o = colorPallete.f23247c;
            }
        } else if (z2) {
            colorPallete.f23257m = -1;
            colorPallete.f23255k = colorPallete.f23246b;
            colorPallete.f23256l = -1;
            colorPallete.f23258n = colorPallete.f23246b;
            colorPallete.f23259o = colorPallete.f23247c;
        } else {
            colorPallete.f23257m = -1;
            colorPallete.f23255k = -1;
            colorPallete.f23256l = colorPallete.f23246b;
            colorPallete.f23258n = colorPallete.f23246b;
            colorPallete.f23259o = colorPallete.f23247c;
        }
        return colorPallete;
    }

    /* renamed from: a */
    public static String m30159a(String str, boolean z) {
        return z ? "light_".concat(String.valueOf(str)) : "dark_".concat(String.valueOf(str));
    }

    /* renamed from: b */
    static /* synthetic */ void m30157b(BaseChooseThemeFragment baseChooseThemeFragment, List list) {
        if (!CollectionUtils.m26076a(list)) {
            for (int i = 0; i < list.size(); i++) {
                JSONStoreItemTheme jSONStoreItemTheme = (JSONStoreItemTheme) list.get(i);
                boolean isMainDefaultTheme = jSONStoreItemTheme.isMainDefaultTheme();
                String sku = jSONStoreItemTheme.getSku();
                baseChooseThemeFragment.f23227a.put("light_".concat(String.valueOf(sku)), baseChooseThemeFragment.m30162a(jSONStoreItemTheme, true, isMainDefaultTheme));
                baseChooseThemeFragment.f23227a.put("dark_".concat(String.valueOf(sku)), baseChooseThemeFragment.m30162a(jSONStoreItemTheme, false, isMainDefaultTheme));
            }
        }
    }

    /* renamed from: a */
    public final int m30160a(String str) {
        if (this.f23231e == null) {
            this.f23231e = new HashMap();
            List<JSONStoreItemTheme> themes = getThemes();
            if (CollectionUtils.m26068b(themes)) {
                for (int i = 0; i < themes.size(); i++) {
                    this.f23231e.put(themes.get(i).getSku(), Integer.valueOf(i));
                }
            }
        }
        Integer num = this.f23231e.get(str);
        if (num != null) {
            return num.intValue();
        }
        return 0;
    }

    /* renamed from: a */
    protected abstract void mo29667a();

    /* renamed from: a */
    public final void m30165a(Activity activity, String str, boolean z, int i) {
        ColorPallete colorPallete = this.f23227a.get(str);
        if (this.f23233g == null) {
            this.f23233g = colorPallete;
        }
        SparseIntArray m27379a = ThemeUtils.m27379a(z, 2131099785, 2131099784, 2131100140, 2131099891, 2131099686, 2131100108);
        if (this.f23234h == null) {
            this.f23234h = m27379a;
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
        AnimatorSet.Builder with = animatorSet.play(CallappAnimationUtils.m27177a((Object) activity.findViewById(2131363710), 2, this.f23234h.get(2131099891), m27379a.get(2131099891))).with(CallappAnimationUtils.m27177a((Object) activity.findViewById(2131364423), 6, this.f23234h.get(2131099784), m27379a.get(2131099784))).with(CallappAnimationUtils.m27177a((Object) activity.findViewById(2131364419), 6, this.f23234h.get(2131099784), m27379a.get(2131099784))).with(CallappAnimationUtils.m27177a(((LayerDrawable) this.f23228b.f1401a).findDrawableByLayerId(1), 7, this.f23234h.get(2131099686), m27379a.get(2131099686))).with(CallappAnimationUtils.m27177a(this.f23228b.f1402b, 7, this.f23234h.get(2131100108), m27379a.get(2131100108))).with(CallappAnimationUtils.m27177a((Object) activity.findViewById(2131362119), 2, this.f23234h.get(2131099686), m27379a.get(2131099686))).with(CallappAnimationUtils.m27177a((Object) activity.findViewById(2131363104), 2, this.f23233g.f23263s, colorPallete.f23263s)).with(CallappAnimationUtils.m27177a((Object) activity.findViewById(2131363105), 2, this.f23233g.f23264t, colorPallete.f23264t)).with(CallappAnimationUtils.m27177a((Object) activity.findViewById(2131362465), 2, this.f23233g.f23251g, colorPallete.f23251g)).with(CallappAnimationUtils.m27177a((Object) activity.findViewById(2131363008), 2, this.f23233g.f23254j, colorPallete.f23254j)).with(CallappAnimationUtils.m27177a((Object) activity.findViewById(2131363008), 3, this.f23233g.f23252h, colorPallete.f23252h)).with(CallappAnimationUtils.m27177a((Object) activity.findViewById(2131363009), 3, this.f23233g.f23253i, colorPallete.f23253i)).with(CallappAnimationUtils.m27177a((Object) activity.findViewById(2131363006), 3, this.f23233g.f23255k, colorPallete.f23255k)).with(CallappAnimationUtils.m27177a((Object) activity.findViewById(2131363007), 3, this.f23233g.f23256l, colorPallete.f23256l));
        AddValueAnimatorObjects addValueAnimatorObjects = this.f23236j;
        if (addValueAnimatorObjects != null) {
            List<ValueAnimator> mo30018a = addValueAnimatorObjects.mo30018a(this.f23234h, m27379a);
            if (CollectionUtils.m26068b(mo30018a)) {
                for (ValueAnimator valueAnimator : mo30018a) {
                    with.with(valueAnimator);
                }
            }
        }
        for (int i2 = 0; i2 < 3; i2++) {
            with.with(CallappAnimationUtils.m27177a((Object) new View[]{findViewById, findViewById2, findViewById3}[i2], 2, this.f23233g.f23249e, colorPallete.f23249e)).with(CallappAnimationUtils.m27177a((Object) new View[]{findViewById4, findViewById5, findViewById6}[i2], 2, this.f23233g.f23250f, colorPallete.f23250f)).with(CallappAnimationUtils.m27177a((Object) new DualCirclesCheckBox[]{dualCirclesCheckBox, dualCirclesCheckBox2, dualCirclesCheckBox3}[i2], 4, this.f23233g.f23246b, colorPallete.f23246b)).with(CallappAnimationUtils.m27177a((Object) new ImageView[]{imageView, imageView2, imageView3}[i2], 3, this.f23233g.f23246b, colorPallete.f23246b));
        }
        animatorSet.start();
        this.f23233g = colorPallete;
        this.f23234h = m27379a;
        this.f23235i = str;
        this.f23229c = z;
    }

    /* renamed from: b */
    public final boolean m30156b(String str) {
        JSONStoreItemTheme jSONStoreItemTheme;
        if (StringUtils.m26045b((CharSequence) str)) {
            int m30160a = m30160a(str);
            List<JSONStoreItemTheme> themes = getThemes();
            if (CollectionUtils.m26068b(themes) && (jSONStoreItemTheme = themes.get(m30160a)) != null) {
                return StoreUtils.m29950a(jSONStoreItemTheme);
            }
            return false;
        }
        return false;
    }

    public String getLastChosenThemeSku() {
        if (StringUtils.m26045b((CharSequence) this.f23235i)) {
            if (this.f23229c) {
                this.f23235i = this.f23235i.replace("light_", "");
            } else {
                this.f23235i = this.f23235i.replace("dark_", "");
            }
            return this.f23235i;
        }
        return null;
    }

    public List<JSONStoreItemTheme> getThemes() {
        return this.f23232f;
    }

    public boolean isLightTheme() {
        return this.f23229c;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        BillingManager billingManager = this.f23237k;
        if (billingManager != null) {
            billingManager.m28290b();
        }
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        SimpleProgressDialog simpleProgressDialog = new SimpleProgressDialog();
        simpleProgressDialog.setMessage(Activities.getString(2131887415));
        PopupManager.get().m28209a(getActivity(), simpleProgressDialog);
        this.f23237k = new BillingManager(new C66561(simpleProgressDialog));
    }

    public void setAdditionalAnimatorsListener(AddValueAnimatorObjects addValueAnimatorObjects) {
        this.f23236j = addValueAnimatorObjects;
    }

    public void setThemeChangeEventsListener(ThemeChangeEvents themeChangeEvents) {
        this.f23230d = themeChangeEvents;
    }
}
