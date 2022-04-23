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
    private ThemesCircleColorAdapter e;
    private TextView f;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/ChooseThemeFragment$ThemesCircleColorAdapter.class */
    final class ThemesCircleColorAdapter extends RecyclerView.a<ViewHolder> {

        /* renamed from: b  reason: collision with root package name */
        private View.OnClickListener f13084b;

        /* renamed from: c  reason: collision with root package name */
        private List<JSONStoreItemTheme> f13085c;

        /* renamed from: d  reason: collision with root package name */
        private DualCirclesCheckBox f13086d = null;
        private int e;

        ThemesCircleColorAdapter(List<JSONStoreItemTheme> list, DefaultInterfaceImplUtils.ClickListener clickListener) {
            this.f13085c = list;
            this.f13084b = clickListener;
        }

        final int getCheckedPosition() {
            return this.e;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.a
        public final int getItemCount() {
            return this.f13085c.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.a
        public final /* synthetic */ void onBindViewHolder(ViewHolder viewHolder, int i) {
            BaseChooseThemeFragment.ColorPallete colorPallete;
            BaseChooseThemeFragment.ColorPallete colorPallete2;
            ViewHolder viewHolder2 = viewHolder;
            JSONStoreItemTheme jSONStoreItemTheme = this.f13085c.get(i);
            int color = ThemeUtils.getColor(2131099890);
            if (jSONStoreItemTheme != null) {
                boolean z = ThemeUtils.a(jSONStoreItemTheme.getSku()) && ChooseThemeFragment.this.isLightTheme();
                viewHolder2.r.setTag(Integer.valueOf(i));
                if (z) {
                    viewHolder2.r.b(-1);
                    viewHolder2.r.a(color);
                } else {
                    DualCirclesCheckBox dualCirclesCheckBox = viewHolder2.r;
                    if (!ChooseThemeFragment.this.f13026b.isChecked()) {
                        Map<String, BaseChooseThemeFragment.ColorPallete> map = ChooseThemeFragment.this.f13025a;
                        colorPallete = map.get("light_" + jSONStoreItemTheme.getSku());
                    } else {
                        Map<String, BaseChooseThemeFragment.ColorPallete> map2 = ChooseThemeFragment.this.f13025a;
                        colorPallete = map2.get("dark_" + jSONStoreItemTheme.getSku());
                    }
                    dualCirclesCheckBox.b(colorPallete.f13037b);
                    DualCirclesCheckBox dualCirclesCheckBox2 = viewHolder2.r;
                    if (!ChooseThemeFragment.this.f13026b.isChecked()) {
                        Map<String, BaseChooseThemeFragment.ColorPallete> map3 = ChooseThemeFragment.this.f13025a;
                        colorPallete2 = map3.get("light_" + jSONStoreItemTheme.getSku());
                    } else {
                        Map<String, BaseChooseThemeFragment.ColorPallete> map4 = ChooseThemeFragment.this.f13025a;
                        colorPallete2 = map4.get("dark_" + jSONStoreItemTheme.getSku());
                    }
                    dualCirclesCheckBox2.a(colorPallete2.f13038c);
                }
                if (StoreUtils.a(jSONStoreItemTheme)) {
                    Drawable drawable = ViewUtils.getDrawable(2131231740);
                    if (drawable != null) {
                        drawable.setColorFilter(-1, PorterDuff.Mode.SRC_IN);
                    }
                    viewHolder2.r.setButtonDrawable(drawable);
                } else {
                    Drawable drawable2 = ViewUtils.getDrawable(2131232179);
                    if (drawable2 != null) {
                        if (z) {
                            drawable2.setColorFilter(color, PorterDuff.Mode.SRC_IN);
                        } else {
                            drawable2.setColorFilter(-1, PorterDuff.Mode.SRC_IN);
                        }
                        viewHolder2.r.setButtonDrawable(drawable2);
                    }
                }
                if (i == this.e) {
                    viewHolder2.r.setChecked(true);
                    this.f13086d = viewHolder2.r;
                } else {
                    viewHolder2.r.setChecked(false);
                }
                viewHolder2.r.setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.marketplace.ChooseThemeFragment.ThemesCircleColorAdapter.1
                    @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
                    public final void a(View view) {
                        DualCirclesCheckBox dualCirclesCheckBox3 = (DualCirclesCheckBox) view;
                        int intValue = ((Integer) dualCirclesCheckBox3.getTag()).intValue();
                        if (intValue != ThemesCircleColorAdapter.this.e) {
                            if (dualCirclesCheckBox3.isChecked()) {
                                if (ThemesCircleColorAdapter.this.f13086d != null) {
                                    ThemesCircleColorAdapter.this.f13086d.setChecked(false);
                                }
                                ThemesCircleColorAdapter.this.f13086d = dualCirclesCheckBox3;
                                ThemesCircleColorAdapter.this.e = intValue;
                            } else {
                                ThemesCircleColorAdapter.this.f13086d = null;
                            }
                            ThemesCircleColorAdapter.this.f13084b.onClick(view);
                        }
                    }
                });
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.a
        public final /* synthetic */ ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(2131558669, viewGroup, false);
            inflate.setOnClickListener(this.f13084b);
            return new ViewHolder(inflate);
        }

        public final void setDefaultTheme(String str) {
            this.e = ChooseThemeFragment.this.a(str);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/ChooseThemeFragment$ViewHolder.class */
    final class ViewHolder extends RecyclerView.v {
        DualCirclesCheckBox r;

        public ViewHolder(View view) {
            super(view);
            this.r = (DualCirclesCheckBox) view.findViewById(2131362386);
        }
    }

    static /* synthetic */ void a(ChooseThemeFragment chooseThemeFragment, JSONStoreItemTheme jSONStoreItemTheme, boolean z) {
        SparseIntArray a2 = ThemeUtils.a(z, 2131099784);
        if (StoreUtils.a(jSONStoreItemTheme)) {
            ViewUtils.a(chooseThemeFragment.f, Integer.valueOf(a2.get(2131099784)), Integer.valueOf(a2.get(2131099784)));
            chooseThemeFragment.f.setVisibility(0);
            return;
        }
        chooseThemeFragment.f.setVisibility(8);
    }

    @Override // com.callapp.contacts.activity.marketplace.BaseChooseThemeFragment
    protected final void a() {
        String str = StringUtils.a((CharSequence) Prefs.dh.get()) ? "default_1" : Prefs.dh.get();
        boolean isThemeLight = ThemeUtils.isThemeLight();
        a(getActivity(), a(str, isThemeLight), isThemeLight, 0);
        this.f13026b.setChecked(!isThemeLight);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getActivity(), 0, false);
        RecyclerView recyclerView = (RecyclerView) getActivity().findViewById(2131363648);
        recyclerView.setLayoutManager(linearLayoutManager);
        ThemesCircleColorAdapter themesCircleColorAdapter = new ThemesCircleColorAdapter(getThemes(), new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.marketplace.ChooseThemeFragment.1
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
            public final void a(View view) {
                JSONStoreItemTheme jSONStoreItemTheme = ChooseThemeFragment.this.getThemes().get(ChooseThemeFragment.this.e.getCheckedPosition());
                if (jSONStoreItemTheme != null) {
                    boolean z = !ChooseThemeFragment.this.f13026b.isChecked();
                    String a2 = ChooseThemeFragment.a(jSONStoreItemTheme.getSku(), z);
                    ChooseThemeFragment.a(ChooseThemeFragment.this, jSONStoreItemTheme, z);
                    ChooseThemeFragment chooseThemeFragment = ChooseThemeFragment.this;
                    chooseThemeFragment.a(chooseThemeFragment.getActivity(), a2, z, 250);
                }
            }
        });
        this.e = themesCircleColorAdapter;
        themesCircleColorAdapter.setDefaultTheme(str);
        recyclerView.setAdapter(this.e);
        this.f13026b.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.callapp.contacts.activity.marketplace.ChooseThemeFragment.2
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                boolean z2 = !ChooseThemeFragment.this.f13026b.isChecked();
                JSONStoreItemTheme jSONStoreItemTheme = ChooseThemeFragment.this.getThemes().get(ChooseThemeFragment.this.e.getCheckedPosition());
                if (jSONStoreItemTheme != null) {
                    ChooseThemeFragment.a(ChooseThemeFragment.this, jSONStoreItemTheme, z2);
                    String a2 = ChooseThemeFragment.a(jSONStoreItemTheme.getSku(), z2);
                    ChooseThemeFragment chooseThemeFragment = ChooseThemeFragment.this;
                    chooseThemeFragment.a(chooseThemeFragment.getActivity(), a2, z2, 250);
                    if (ChooseThemeFragment.this.e != null) {
                        ChooseThemeFragment.this.e.notifyDataSetChanged();
                    }
                }
            }
        });
        TextView textView = (TextView) getActivity().findViewById(2131362626);
        this.f = textView;
        textView.setText(Activities.getString(2131886787));
        this.f.setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.marketplace.ChooseThemeFragment.3
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
            public final void a(View view) {
                if (ChooseThemeFragment.this.e != null) {
                    List<JSONStoreItemTheme> themes = ChooseThemeFragment.this.getThemes();
                    if (CollectionUtils.b(themes)) {
                        ThemeDownloaderActivity.a(ChooseThemeFragment.this.getActivity(), themes.get(ChooseThemeFragment.this.e.getCheckedPosition()).getSku(), null);
                    }
                }
            }
        });
    }

    @Override // com.callapp.contacts.activity.base.BaseFragment
    public int getLayoutResourceId() {
        return 2131558668;
    }
}
