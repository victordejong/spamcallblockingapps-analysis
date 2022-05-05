package androidx.appcompat.widget;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Build;
import android.util.TypedValue;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.appcompat.C0042R;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.core.view.ActionProvider;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ShareActionProvider.class */
public class ShareActionProvider extends ActionProvider {

    /* renamed from: c */
    private int f1273c;

    /* renamed from: d */
    private final ShareMenuItemOnMenuItemClickListener f1274d;

    /* renamed from: e */
    final Context f1275e;

    /* renamed from: f */
    String f1276f;

    /* renamed from: g */
    OnShareTargetSelectedListener f1277g;

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ShareActionProvider$OnShareTargetSelectedListener.class */
    public interface OnShareTargetSelectedListener {
        /* renamed from: a */
        boolean m21306a(ShareActionProvider shareActionProvider, Intent intent);
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ShareActionProvider$ShareActivityChooserModelPolicy.class */
    private class ShareActivityChooserModelPolicy implements ActivityChooserModel.OnChooseActivityListener {

        /* renamed from: a */
        final /* synthetic */ ShareActionProvider f1278a;

        @Override // androidx.appcompat.widget.ActivityChooserModel.OnChooseActivityListener
        /* renamed from: a */
        public boolean mo21305a(ActivityChooserModel activityChooserModel, Intent intent) {
            ShareActionProvider shareActionProvider = this.f1278a;
            OnShareTargetSelectedListener onShareTargetSelectedListener = shareActionProvider.f1277g;
            if (onShareTargetSelectedListener == null) {
                return false;
            }
            onShareTargetSelectedListener.m21306a(shareActionProvider, intent);
            return false;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener.class */
    private class ShareMenuItemOnMenuItemClickListener implements MenuItem.OnMenuItemClickListener {

        /* renamed from: f */
        final /* synthetic */ ShareActionProvider f1279f;

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            ShareActionProvider shareActionProvider = this.f1279f;
            Intent b = ActivityChooserModel.m21693d(shareActionProvider.f1275e, shareActionProvider.f1276f).m21695b(menuItem.getItemId());
            if (b == null) {
                return true;
            }
            String action = b.getAction();
            if ("android.intent.action.SEND".equals(action) || "android.intent.action.SEND_MULTIPLE".equals(action)) {
                this.f1279f.m21307l(b);
            }
            this.f1279f.f1275e.startActivity(b);
            return true;
        }
    }

    @Override // androidx.core.view.ActionProvider
    /* renamed from: a */
    public boolean mo19329a() {
        return true;
    }

    @Override // androidx.core.view.ActionProvider
    /* renamed from: c */
    public View mo19327c() {
        ActivityChooserView activityChooserView = new ActivityChooserView(this.f1275e);
        if (!activityChooserView.isInEditMode()) {
            activityChooserView.setActivityChooserModel(ActivityChooserModel.m21693d(this.f1275e, this.f1276f));
        }
        TypedValue typedValue = new TypedValue();
        this.f1275e.getTheme().resolveAttribute(C0042R.attr.actionModeShareDrawable, typedValue, true);
        activityChooserView.setExpandActivityOverflowButtonDrawable(AppCompatResources.m22069d(this.f1275e, typedValue.resourceId));
        activityChooserView.setProvider(this);
        activityChooserView.setDefaultActionButtonContentDescription(C0042R.string.abc_shareactionprovider_share_with_application);
        activityChooserView.setExpandActivityOverflowButtonContentDescription(C0042R.string.abc_shareactionprovider_share_with);
        return activityChooserView;
    }

    @Override // androidx.core.view.ActionProvider
    /* renamed from: f */
    public void mo19324f(SubMenu subMenu) {
        subMenu.clear();
        ActivityChooserModel d = ActivityChooserModel.m21693d(this.f1275e, this.f1276f);
        PackageManager packageManager = this.f1275e.getPackageManager();
        int f = d.m21691f();
        int min = Math.min(f, this.f1273c);
        for (int i = 0; i < min; i++) {
            ResolveInfo e = d.m21692e(i);
            subMenu.add(0, i, i, e.loadLabel(packageManager)).setIcon(e.loadIcon(packageManager)).setOnMenuItemClickListener(this.f1274d);
        }
        if (min < f) {
            SubMenu addSubMenu = subMenu.addSubMenu(0, min, min, this.f1275e.getString(C0042R.string.abc_activity_chooser_view_see_all));
            for (int i2 = 0; i2 < f; i2++) {
                ResolveInfo e2 = d.m21692e(i2);
                addSubMenu.add(0, i2, i2, e2.loadLabel(packageManager)).setIcon(e2.loadIcon(packageManager)).setOnMenuItemClickListener(this.f1274d);
            }
        }
    }

    /* renamed from: l */
    void m21307l(Intent intent) {
        if (Build.VERSION.SDK_INT >= 21) {
            intent.addFlags(134742016);
        } else {
            intent.addFlags(524288);
        }
    }
}
