package com.callapp.contacts.activity.marketplace;

import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.activity.marketplace.BaseChooseThemeFragment;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemTheme;
import com.callapp.contacts.activity.marketplace.catalog.StoreUtils;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.widget.DualCirclesCheckBox;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/ChooseThemeFragment.class */
public class ChooseThemeFragment extends BaseChooseThemeFragment {

    /* renamed from: e */
    private ThemesCircleColorAdapter f23337e;

    /* renamed from: f */
    private TextView f23338f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter.class */
    public final class ThemesCircleColorAdapter extends RecyclerView.AbstractC2626a<ViewHolder> {

        /* renamed from: b */
        private View.OnClickListener f23343b;

        /* renamed from: c */
        private List<JSONStoreItemTheme> f23344c;

        /* renamed from: d */
        private DualCirclesCheckBox f23345d = null;

        /* renamed from: e */
        private int f23346e;

        ThemesCircleColorAdapter(List<JSONStoreItemTheme> list, DefaultInterfaceImplUtils.ClickListener clickListener) {
            ChooseThemeFragment.this = r4;
            this.f23344c = list;
            this.f23343b = clickListener;
        }

        final int getCheckedPosition() {
            return this.f23346e;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
        public final int getItemCount() {
            return this.f23344c.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
        public final /* synthetic */ void onBindViewHolder(ViewHolder viewHolder, int i) {
            BaseChooseThemeFragment.ColorPallete colorPallete;
            BaseChooseThemeFragment.ColorPallete colorPallete2;
            ViewHolder viewHolder2 = viewHolder;
            JSONStoreItemTheme jSONStoreItemTheme = this.f23344c.get(i);
            int color = ThemeUtils.getColor(2131099890);
            if (jSONStoreItemTheme != null) {
                boolean z = ThemeUtils.m27380a(jSONStoreItemTheme.getSku()) && ChooseThemeFragment.this.isLightTheme();
                viewHolder2.f23348r.setTag(Integer.valueOf(i));
                if (z) {
                    viewHolder2.f23348r.m26747b(-1);
                    viewHolder2.f23348r.m26750a(color);
                } else {
                    DualCirclesCheckBox dualCirclesCheckBox = viewHolder2.f23348r;
                    if (!ChooseThemeFragment.this.f23228b.isChecked()) {
                        Map<String, BaseChooseThemeFragment.ColorPallete> map = ChooseThemeFragment.this.f23227a;
                        colorPallete = map.get("light_" + jSONStoreItemTheme.getSku());
                    } else {
                        Map<String, BaseChooseThemeFragment.ColorPallete> map2 = ChooseThemeFragment.this.f23227a;
                        colorPallete = map2.get("dark_" + jSONStoreItemTheme.getSku());
                    }
                    dualCirclesCheckBox.m26747b(colorPallete.f23246b);
                    DualCirclesCheckBox dualCirclesCheckBox2 = viewHolder2.f23348r;
                    if (!ChooseThemeFragment.this.f23228b.isChecked()) {
                        Map<String, BaseChooseThemeFragment.ColorPallete> map3 = ChooseThemeFragment.this.f23227a;
                        colorPallete2 = map3.get("light_" + jSONStoreItemTheme.getSku());
                    } else {
                        Map<String, BaseChooseThemeFragment.ColorPallete> map4 = ChooseThemeFragment.this.f23227a;
                        colorPallete2 = map4.get("dark_" + jSONStoreItemTheme.getSku());
                    }
                    dualCirclesCheckBox2.m26750a(colorPallete2.f23247c);
                }
                if (StoreUtils.m29950a(jSONStoreItemTheme)) {
                    Drawable drawable = ViewUtils.getDrawable(2131231740);
                    if (drawable != null) {
                        drawable.setColorFilter(-1, PorterDuff.Mode.SRC_IN);
                    }
                    viewHolder2.f23348r.setButtonDrawable(drawable);
                } else {
                    Drawable drawable2 = ViewUtils.getDrawable(2131232179);
                    if (drawable2 != null) {
                        if (z) {
                            drawable2.setColorFilter(color, PorterDuff.Mode.SRC_IN);
                        } else {
                            drawable2.setColorFilter(-1, PorterDuff.Mode.SRC_IN);
                        }
                        viewHolder2.f23348r.setButtonDrawable(drawable2);
                    }
                }
                if (i == this.f23346e) {
                    viewHolder2.f23348r.setChecked(true);
                    this.f23345d = viewHolder2.f23348r;
                } else {
                    viewHolder2.f23348r.setChecked(false);
                }
                viewHolder2.f23348r.setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.marketplace.ChooseThemeFragment.ThemesCircleColorAdapter.1
                    @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
                    /* renamed from: a */
                    public final void mo26371a(View view) {
                        DualCirclesCheckBox dualCirclesCheckBox3 = (DualCirclesCheckBox) view;
                        int intValue = ((Integer) dualCirclesCheckBox3.getTag()).intValue();
                        if (intValue != ThemesCircleColorAdapter.this.f23346e) {
                            if (dualCirclesCheckBox3.isChecked()) {
                                if (ThemesCircleColorAdapter.this.f23345d != null) {
                                    ThemesCircleColorAdapter.this.f23345d.setChecked(false);
                                }
                                ThemesCircleColorAdapter.this.f23345d = dualCirclesCheckBox3;
                                ThemesCircleColorAdapter.this.f23346e = intValue;
                            } else {
                                ThemesCircleColorAdapter.this.f23345d = null;
                            }
                            ThemesCircleColorAdapter.this.f23343b.onClick(view);
                        }
                    }
                });
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
        public final /* synthetic */ ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(2131558669, viewGroup, false);
            inflate.setOnClickListener(this.f23343b);
            return new ViewHolder(inflate);
        }

        public final void setDefaultTheme(String str) {
            this.f23346e = ChooseThemeFragment.this.m30160a(str);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/ChooseThemeFragment$ViewHolder.class */
    final class ViewHolder extends RecyclerView.AbstractC2657v {

        /* renamed from: r */
        DualCirclesCheckBox f23348r;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewHolder(View view) {
            super(view);
            ChooseThemeFragment.this = r5;
            this.f23348r = (DualCirclesCheckBox) view.findViewById(2131362386);
        }
    }

    /* renamed from: a */
    static /* synthetic */ void m30135a(ChooseThemeFragment chooseThemeFragment, JSONStoreItemTheme jSONStoreItemTheme, boolean z) {
        SparseIntArray m27379a = ThemeUtils.m27379a(z, 2131099784);
        if (!StoreUtils.m29950a(jSONStoreItemTheme)) {
            chooseThemeFragment.f23338f.setVisibility(8);
            return;
        }
        ViewUtils.m27316a(chooseThemeFragment.f23338f, Integer.valueOf(m27379a.get(2131099784)), Integer.valueOf(m27379a.get(2131099784)));
        chooseThemeFragment.f23338f.setVisibility(0);
    }

    @Override // com.callapp.contacts.activity.marketplace.BaseChooseThemeFragment
    /* renamed from: a */
    protected final void mo29667a() {
        String str = StringUtils.m26059a((CharSequence) Prefs.f26416dh.get()) ? "default_1" : Prefs.f26416dh.get();
        boolean isThemeLight = ThemeUtils.isThemeLight();
        m30165a(getActivity(), m30159a(str, isThemeLight), isThemeLight, 0);
        this.f23228b.setChecked(!isThemeLight);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getActivity(), 0, false);
        RecyclerView recyclerView = (RecyclerView) getActivity().findViewById(2131363648);
        recyclerView.setLayoutManager(linearLayoutManager);
        ThemesCircleColorAdapter themesCircleColorAdapter = new ThemesCircleColorAdapter(getThemes(), new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.marketplace.ChooseThemeFragment.1
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
            /* renamed from: a */
            public final void mo26371a(View view) {
                JSONStoreItemTheme jSONStoreItemTheme = ChooseThemeFragment.this.getThemes().get(ChooseThemeFragment.this.f23337e.getCheckedPosition());
                if (jSONStoreItemTheme != null) {
                    boolean z = !ChooseThemeFragment.this.f23228b.isChecked();
                    String a = ChooseThemeFragment.m30159a(jSONStoreItemTheme.getSku(), z);
                    ChooseThemeFragment.m30135a(ChooseThemeFragment.this, jSONStoreItemTheme, z);
                    ChooseThemeFragment chooseThemeFragment = ChooseThemeFragment.this;
                    chooseThemeFragment.m30165a(chooseThemeFragment.getActivity(), a, z, 250);
                }
            }
        });
        this.f23337e = themesCircleColorAdapter;
        themesCircleColorAdapter.setDefaultTheme(str);
        recyclerView.setAdapter(this.f23337e);
        this.f23228b.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.callapp.contacts.activity.marketplace.ChooseThemeFragment.2
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                boolean z2 = !ChooseThemeFragment.this.f23228b.isChecked();
                JSONStoreItemTheme jSONStoreItemTheme = ChooseThemeFragment.this.getThemes().get(ChooseThemeFragment.this.f23337e.getCheckedPosition());
                if (jSONStoreItemTheme != null) {
                    ChooseThemeFragment.m30135a(ChooseThemeFragment.this, jSONStoreItemTheme, z2);
                    String a = ChooseThemeFragment.m30159a(jSONStoreItemTheme.getSku(), z2);
                    ChooseThemeFragment chooseThemeFragment = ChooseThemeFragment.this;
                    chooseThemeFragment.m30165a(chooseThemeFragment.getActivity(), a, z2, 250);
                    if (ChooseThemeFragment.this.f23337e == null) {
                        return;
                    }
                    ChooseThemeFragment.this.f23337e.notifyDataSetChanged();
                }
            }
        });
        TextView textView = (TextView) getActivity().findViewById(2131362626);
        this.f23338f = textView;
        textView.setText(Activities.getString(2131886787));
        this.f23338f.setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.marketplace.ChooseThemeFragment.3
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
            /* renamed from: a */
            public final void mo26371a(View view) {
                if (ChooseThemeFragment.this.f23337e != null) {
                    List<JSONStoreItemTheme> themes = ChooseThemeFragment.this.getThemes();
                    if (!CollectionUtils.m26068b(themes)) {
                        return;
                    }
                    ThemeDownloaderActivity.m30022a(ChooseThemeFragment.this.getActivity(), themes.get(ChooseThemeFragment.this.f23337e.getCheckedPosition()).getSku(), null);
                }
            }
        });
    }

    @Override // com.callapp.contacts.activity.base.BaseFragment
    public int getLayoutResourceId() {
        return 2131558668;
    }
}
