package gogolook.callgogolook2.messaging.p078ui;

import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.style.TextAppearanceSpan;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import gogolook.callgogolook2.R$color;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.R$style;
import gogolook.callgogolook2.util.control.VersionManager;
import java.util.HashSet;
import java.util.Set;
import p459j.p460a.p474c0.p491g.AbstractActionMode$CallbackC12096m;
import p459j.p460a.p474c0.p499h.C12140a0;
import p459j.p460a.p474c0.p499h.C12153d0;
import p459j.p460a.p474c0.p499h.C12163g;
import p459j.p460a.p518j.AbstractC12474a;
import p459j.p460a.p582w0.C13878a3;
import p459j.p460a.p582w0.C13937c3;
/* renamed from: gogolook.callgogolook2.messaging.ui.BugleActionBarActivity */
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/BugleActionBarActivity.class */
public class BugleActionBarActivity extends AppCompatActivity implements C12140a0.AbstractC12141a, AbstractC12474a {

    /* renamed from: b */
    public boolean f11449b;

    /* renamed from: c */
    public C4686a f11450c;

    /* renamed from: d */
    public Menu f11451d;

    /* renamed from: e */
    public int f11452e;

    /* renamed from: g */
    public boolean f11454g;

    /* renamed from: a */
    public final Set<C12140a0.AbstractC12142b> f11448a = new HashSet();

    /* renamed from: f */
    public int f11453f = 0;

    /* renamed from: gogolook.callgogolook2.messaging.ui.BugleActionBarActivity$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/BugleActionBarActivity$a.class */
    public class C4686a extends ActionMode {

        /* renamed from: a */
        public CharSequence f11455a;

        /* renamed from: b */
        public CharSequence f11456b;

        /* renamed from: c */
        public View f11457c;

        /* renamed from: d */
        public final ActionMode.Callback f11458d;

        /* renamed from: e */
        public int f11459e;

        public C4686a(ActionMode.Callback callback) {
            this.f11458d = callback;
        }

        /* renamed from: a */
        public ActionMode.Callback m27385a() {
            return this.f11458d;
        }

        /* renamed from: a */
        public void m27384a(int i) {
            this.f11459e = i;
        }

        /* renamed from: a */
        public void m27383a(ActionBar actionBar) {
            actionBar.setDisplayOptions(4);
            if (BugleActionBarActivity.this.f11450c == null || !(BugleActionBarActivity.this.f11450c instanceof C4686a) || !(BugleActionBarActivity.this.f11450c.m27385a() instanceof AbstractActionMode$CallbackC12096m)) {
                actionBar.setDisplayShowCustomEnabled(false);
                actionBar.setDisplayShowTitleEnabled(false);
            } else {
                View customView = actionBar.getCustomView();
                View view = customView;
                if (customView == null) {
                    view = BugleActionBarActivity.this.getLayoutInflater().inflate(R$layout.action_button_container, (ViewGroup) null, false);
                    ActionBar.LayoutParams layoutParams = new ActionBar.LayoutParams(-2, -1);
                    layoutParams.gravity = 8388629;
                    actionBar.setCustomView(view, layoutParams);
                }
                View findViewById = view.findViewById(R$id.action_button_container);
                ((AbstractActionMode$CallbackC12096m) BugleActionBarActivity.this.f11450c.m27385a()).m7173a(BugleActionBarActivity.this.f11450c, BugleActionBarActivity.this.f11451d, findViewById == null ? (ViewGroup) view : (ViewGroup) findViewById);
                actionBar.setDisplayShowCustomEnabled(true);
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                spannableStringBuilder.append((CharSequence) String.valueOf(m27382b())).append((CharSequence) " ").append((CharSequence) BugleActionBarActivity.this.getString(R$string.multi_select_title));
                spannableStringBuilder.setSpan(new TextAppearanceSpan(BugleActionBarActivity.this, R$style.AppTheme_ActionBar_ActionMode_TitleTextStyle), 0, spannableStringBuilder.length(), 33);
                if ((actionBar.getDisplayOptions() & 8) > 0) {
                    actionBar.setTitle(spannableStringBuilder);
                } else if (view != null && (view instanceof ViewGroup)) {
                    TextView textView = (TextView) view.findViewById(R$id.custom_view_title);
                    TextView textView2 = (TextView) view.findViewById(R$id.custom_view_subtitle);
                    TextView textView3 = textView;
                    if (textView == null) {
                        textView3 = textView2;
                    }
                    if (textView3 != null) {
                        textView3.setText(spannableStringBuilder);
                        textView3.setVisibility(0);
                        if (!(textView2 == null || textView3 == textView2)) {
                            textView2.setVisibility(8);
                        }
                    } else {
                        actionBar.setDisplayShowTitleEnabled(true);
                        actionBar.setTitle(spannableStringBuilder);
                    }
                }
            }
            BugleActionBarActivity.this.f11450c.m27385a().onPrepareActionMode(BugleActionBarActivity.this.f11450c, BugleActionBarActivity.this.f11451d);
            actionBar.setBackgroundDrawable(new ColorDrawable(BugleActionBarActivity.this.getResources().getColor(R$color.contextual_action_bar_background_color)));
            actionBar.setDisplayHomeAsUpEnabled(true);
            actionBar.setHomeAsUpIndicator(R$drawable.abs_delete_btn);
        }

        /* renamed from: b */
        public int m27382b() {
            return this.f11459e;
        }

        @Override // android.view.ActionMode
        public void finish() {
            BugleActionBarActivity.this.f11450c = null;
            this.f11458d.onDestroyActionMode(this);
            BugleActionBarActivity.this.supportInvalidateOptionsMenu();
            BugleActionBarActivity.this.m27391b();
        }

        @Override // android.view.ActionMode
        public View getCustomView() {
            return this.f11457c;
        }

        @Override // android.view.ActionMode
        public Menu getMenu() {
            return BugleActionBarActivity.this.f11451d;
        }

        @Override // android.view.ActionMode
        public MenuInflater getMenuInflater() {
            return BugleActionBarActivity.this.getMenuInflater();
        }

        @Override // android.view.ActionMode
        public CharSequence getSubtitle() {
            return this.f11456b;
        }

        @Override // android.view.ActionMode
        public CharSequence getTitle() {
            return this.f11455a;
        }

        @Override // android.view.ActionMode
        public void invalidate() {
            BugleActionBarActivity.this.m27391b();
        }

        @Override // android.view.ActionMode
        public void setCustomView(View view) {
            this.f11457c = view;
        }

        @Override // android.view.ActionMode
        public void setSubtitle(int i) {
            this.f11456b = BugleActionBarActivity.this.getResources().getString(i);
        }

        @Override // android.view.ActionMode
        public void setSubtitle(CharSequence charSequence) {
            this.f11456b = charSequence;
        }

        @Override // android.view.ActionMode
        public void setTitle(int i) {
            this.f11455a = BugleActionBarActivity.this.getResources().getString(i);
        }

        @Override // android.view.ActionMode
        public void setTitle(CharSequence charSequence) {
            this.f11455a = charSequence;
        }
    }

    /* renamed from: D */
    public void m27396D() {
        C13937c3.m3014a(this);
        finish();
    }

    /* renamed from: E */
    public boolean m27395E() {
        return this.f11454g;
    }

    /* renamed from: F */
    public boolean m27394F() {
        return VersionManager.m25991e(4) || C13878a3.m3257E();
    }

    /* renamed from: a */
    public void mo27176a(ActionBar actionBar) {
        actionBar.setElevation(0.0f);
        actionBar.setDisplayShowCustomEnabled(false);
        actionBar.setHomeAsUpIndicator(R$drawable.ab_back_btn);
    }

    @Override // p459j.p460a.p474c0.p499h.C12140a0.AbstractC12141a
    /* renamed from: a */
    public void mo7037a(C12140a0.AbstractC12142b bVar) {
        this.f11448a.remove(bVar);
    }

    /* renamed from: b */
    public final void m27391b() {
        C4686a aVar = this.f11450c;
        if (aVar != null) {
            aVar.m27383a(getSupportActionBar());
        } else {
            mo27176a(getSupportActionBar());
        }
    }

    @Override // p459j.p460a.p474c0.p499h.C12140a0.AbstractC12141a
    /* renamed from: b */
    public void mo7036b(C12140a0.AbstractC12142b bVar) {
        this.f11448a.add(bVar);
    }

    /* renamed from: c */
    public void m27389c() {
        C4686a aVar = this.f11450c;
        if (aVar != null) {
            aVar.finish();
            this.f11450c = null;
            m27391b();
        }
    }

    @Override // p459j.p460a.p474c0.p499h.C12140a0.AbstractC12141a
    /* renamed from: c */
    public void mo7035c(int i) {
        int i2 = getResources().getDisplayMetrics().heightPixels;
        if (i2 != this.f11452e) {
            this.f11452e = i2;
            C12153d0.m6983d("MessagingApp", getLocalClassName() + ".onDisplayHeightChanged  screenHeight: " + i2 + " lastScreenHeight: " + this.f11452e + " Skipped, appears to be orientation change.");
            return;
        }
        ActionBar supportActionBar = getSupportActionBar();
        int i3 = i2;
        if (supportActionBar != null) {
            i3 = i2;
            if (supportActionBar.isShowing()) {
                i3 = i2 - supportActionBar.getHeight();
            }
        }
        int size = View.MeasureSpec.getSize(i);
        boolean z = this.f11449b;
        this.f11449b = i3 - size > 100;
        if (C12153d0.m6992a("MessagingApp", 2)) {
            C12153d0.m6983d("MessagingApp", getLocalClassName() + ".onDisplayHeightChanged imeWasOpen: " + z + " mImeOpen: " + this.f11449b + " screenHeight: " + i3 + " height: " + size);
        }
        if (z != this.f11449b) {
            for (C12140a0.AbstractC12142b bVar : this.f11448a) {
                bVar.mo7033a(this.f11449b);
            }
        }
    }

    /* renamed from: e */
    public void m27388e(int i) {
        C4686a aVar = this.f11450c;
        if (aVar != null && (aVar instanceof C4686a) && (aVar.m27385a() instanceof AbstractActionMode$CallbackC12096m)) {
            this.f11450c.m27384a(i);
            m27391b();
        }
    }

    /* renamed from: i */
    public ActionMode.Callback m27387i() {
        C4686a aVar = this.f11450c;
        if (aVar == null) {
            return null;
        }
        return aVar.m27385a();
    }

    /* renamed from: k */
    public ActionMode m27386k() {
        return this.f11450c;
    }

    @Override // p459j.p460a.p474c0.p499h.C12140a0.AbstractC12141a
    /* renamed from: m */
    public boolean mo7034m() {
        return this.f11449b;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f11453f++;
        this.f11452e = getResources().getDisplayMetrics().heightPixels;
        if (C12153d0.m6992a("MessagingApp", 2)) {
            C12153d0.m6983d("MessagingApp", getLocalClassName() + ".onCreate");
        }
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        ActionBar supportActionBar;
        this.f11451d = menu;
        C4686a aVar = this.f11450c;
        if (aVar == null || !aVar.m27385a().onCreateActionMode(this.f11450c, menu)) {
            return false;
        }
        if (!(this.f11450c.m27385a() instanceof AbstractActionMode$CallbackC12096m) || (supportActionBar = getSupportActionBar()) == null) {
            return true;
        }
        View customView = supportActionBar.getCustomView();
        View view = customView;
        if (customView == null) {
            view = getLayoutInflater().inflate(R$layout.action_button_container, (ViewGroup) null, false);
            ActionBar.LayoutParams layoutParams = new ActionBar.LayoutParams(-2, -1);
            layoutParams.gravity = 8388629;
            supportActionBar.setCustomView(view, layoutParams);
        }
        View findViewById = view.findViewById(R$id.action_button_container);
        ((AbstractActionMode$CallbackC12096m) this.f11450c.m27385a()).m7173a(this.f11450c, menu, findViewById == null ? (ViewGroup) view : (ViewGroup) findViewById);
        return true;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.f11454g = true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        C4686a aVar = this.f11450c;
        if (aVar != null && aVar.m27385a().onActionItemClicked(this.f11450c, menuItem)) {
            return true;
        }
        if (menuItem.getItemId() != 16908332 || this.f11450c == null) {
            return super.onOptionsItemSelected(menuItem);
        }
        m27389c();
        return true;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        C4686a aVar = this.f11450c;
        if (aVar != null) {
            aVar.finish();
        }
        super.onPause();
        if (C12153d0.m6992a("MessagingApp", 2)) {
            C12153d0.m6983d("MessagingApp", getLocalClassName() + ".onPause");
        }
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        ActionBar supportActionBar;
        this.f11451d = menu;
        C4686a aVar = this.f11450c;
        if (aVar == null || !aVar.m27385a().onPrepareActionMode(this.f11450c, menu)) {
            return super.onPrepareOptionsMenu(menu);
        }
        if (!(this.f11450c.m27385a() instanceof AbstractActionMode$CallbackC12096m) || (supportActionBar = getSupportActionBar()) == null) {
            return true;
        }
        View customView = supportActionBar.getCustomView();
        View view = customView;
        if (customView == null) {
            view = getLayoutInflater().inflate(R$layout.action_button_container, (ViewGroup) null, false);
            ActionBar.LayoutParams layoutParams = new ActionBar.LayoutParams(-2, -1);
            layoutParams.gravity = 8388629;
            supportActionBar.setCustomView(view, layoutParams);
        }
        View findViewById = view.findViewById(R$id.action_button_container);
        ((AbstractActionMode$CallbackC12096m) this.f11450c.m27385a()).m7173a(this.f11450c, menu, findViewById == null ? (ViewGroup) view : (ViewGroup) findViewById);
        return true;
    }

    @Override // android.app.Activity
    public void onRestart() {
        super.onRestart();
        super.onStop();
        if (C12153d0.m6992a("MessagingApp", 2)) {
            C12153d0.m6983d("MessagingApp", getLocalClassName() + ".onRestart");
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (m27394F()) {
            m27396D();
        }
        this.f11453f--;
        if (C12153d0.m6992a("MessagingApp", 2)) {
            C12153d0.m6983d("MessagingApp", getLocalClassName() + ".onResume");
        }
        C12163g.m6946b(this, this);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        if (C12153d0.m6992a("MessagingApp", 2)) {
            C12153d0.m6983d("MessagingApp", getLocalClassName() + ".onStart");
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        if (C12153d0.m6992a("MessagingApp", 2)) {
            C12153d0.m6983d("MessagingApp", getLocalClassName() + ".onStop");
        }
    }

    @Override // android.app.Activity
    public ActionMode startActionMode(ActionMode.Callback callback) {
        this.f11450c = new C4686a(callback);
        supportInvalidateOptionsMenu();
        m27391b();
        return this.f11450c;
    }
}
