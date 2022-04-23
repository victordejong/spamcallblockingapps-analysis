package com.callapp.contacts.widget.referandearn;

import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.text.SpannableString;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.ActionBar;
import androidx.fragment.app.s;
import androidx.m.a;
import com.callapp.contacts.activity.base.BaseActivity;
import com.callapp.contacts.databinding.ReferAndEarnLayoutBinding;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.popup.contact.DialogMessageWithTopImageNew;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.widget.referandearn.ReferAndEarnTrophyView;
import com.callapp.contacts.widget.referandearn.ShareCallAppDialogFragment;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018�� \u000e2\u00020\u0001:\u0001\u000eB\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0005\u001a\u00020\u0006H\u0014J\b\u0010\u0007\u001a\u00020\bH\u0016J\u0012\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0014J\b\u0010\r\u001a\u00020\nH\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.¢\u0006\u0002\n��¨\u0006\u000f"}, d2 = {"Lcom/callapp/contacts/widget/referandearn/ReferAndEarnActivity;", "Lcom/callapp/contacts/activity/base/BaseActivity;", "()V", "binding", "Lcom/callapp/contacts/databinding/ReferAndEarnLayoutBinding;", "getLayoutResourceId", "", "getViewBinder", "Landroidx/viewbinding/ViewBinding;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "Companion", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/referandearn/ReferAndEarnActivity.class */
public final class ReferAndEarnActivity extends BaseActivity {

    /* renamed from: a  reason: collision with root package name */
    public static final Companion f16856a = new Companion(null);

    /* renamed from: b  reason: collision with root package name */
    private ReferAndEarnLayoutBinding f16857b;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��¨\u0006\u0005"}, d2 = {"Lcom/callapp/contacts/widget/referandearn/ReferAndEarnActivity$Companion;", "", "()V", "EXTRA_ENTRY_POINT", "", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/referandearn/ReferAndEarnActivity$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity
    public final int getLayoutResourceId() {
        return 0;
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity
    public final a getViewBinder() {
        ReferAndEarnLayoutBinding referAndEarnLayoutBinding = this.f16857b;
        if (referAndEarnLayoutBinding == null) {
            p.a("binding");
        }
        return referAndEarnLayoutBinding;
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        ReferAndEarnLayoutBinding a2 = ReferAndEarnLayoutBinding.a(getLayoutInflater());
        p.b(a2, "ReferAndEarnLayoutBinding.inflate(layoutInflater)");
        this.f16857b = a2;
        super.onCreate(bundle);
        s a3 = getSupportFragmentManager().a();
        ReferAndEarnTrophyView.Companion companion = ReferAndEarnTrophyView.f16906b;
        a3.b(2131363660, ReferAndEarnTrophyView.Companion.a(ReferAndEarnTrophyView.TrophyViewType.EXPENDED), null).b();
        getSupportFragmentManager().a().b(2131363118, new ReferAndEarnFragment(), null).b();
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.a(Activities.getString(2131887530));
            supportActionBar.b(ViewUtils.getDrawable(2131231943));
            supportActionBar.a(true);
            supportActionBar.a(new ColorDrawable(ThemeUtils.getColor(2131099784)));
        }
        ReferAndEarnLayoutBinding referAndEarnLayoutBinding = this.f16857b;
        if (referAndEarnLayoutBinding == null) {
            p.a("binding");
        }
        referAndEarnLayoutBinding.f14361b.e.setBackgroundColor(ThemeUtils.isThemeLight() ? ThemeUtils.getColor(2131100097) : ThemeUtils.getColor(2131100096));
        DialogMessageWithTopImageNew.Companion companion2 = DialogMessageWithTopImageNew.f15494a;
        ReferAndEarnLayoutBinding referAndEarnLayoutBinding2 = this.f16857b;
        if (referAndEarnLayoutBinding2 == null) {
            p.a("binding");
        }
        DialogMessageWithTopImageNew.Companion.a(referAndEarnLayoutBinding2.f14361b.f14356a, 2131232141, Integer.valueOf(ThemeUtils.getColor(2131100214)), Integer.valueOf(ThemeUtils.getColor(2131100214)), 2, Integer.valueOf(ThemeUtils.getColor(2131100228)), new SpannableString(Activities.getString(2131887538)), null, true, true);
        String string = Activities.getString(2131887551);
        String string2 = Activities.getString(2131887552);
        Boolean bool = Prefs.cJ.get();
        p.b(bool, "Prefs.isPremium.get()");
        String str = string2;
        String str2 = string;
        if (bool.booleanValue()) {
            Boolean bool2 = Prefs.cK.get();
            p.b(bool2, "Prefs.hasFreeStoreSku.get()");
            str = string2;
            str2 = string;
            if (bool2.booleanValue()) {
                str2 = Activities.getString(2131887531);
                str = Activities.getString(2131887532);
            }
        }
        ReferAndEarnLayoutBinding referAndEarnLayoutBinding3 = this.f16857b;
        if (referAndEarnLayoutBinding3 == null) {
            p.a("binding");
        }
        TextView textView = referAndEarnLayoutBinding3.f14361b.g;
        p.b(textView, "binding.referAndEarnActi…erAndEarnStoreUnlockTitle");
        textView.setText(str2);
        ReferAndEarnLayoutBinding referAndEarnLayoutBinding4 = this.f16857b;
        if (referAndEarnLayoutBinding4 == null) {
            p.a("binding");
        }
        referAndEarnLayoutBinding4.f14361b.g.setTextColor(ThemeUtils.getColor(2131100140));
        ReferAndEarnLayoutBinding referAndEarnLayoutBinding5 = this.f16857b;
        if (referAndEarnLayoutBinding5 == null) {
            p.a("binding");
        }
        TextView textView2 = referAndEarnLayoutBinding5.f14361b.f;
        p.b(textView2, "binding.referAndEarnActi…ndEarnStoreUnlockSubTitle");
        textView2.setText(str);
        ReferAndEarnLayoutBinding referAndEarnLayoutBinding6 = this.f16857b;
        if (referAndEarnLayoutBinding6 == null) {
            p.a("binding");
        }
        referAndEarnLayoutBinding6.f14361b.f.setTextColor(ThemeUtils.getColor(2131100140));
        ReferAndEarnLayoutBinding referAndEarnLayoutBinding7 = this.f16857b;
        if (referAndEarnLayoutBinding7 == null) {
            p.a("binding");
        }
        ImageView imageView = referAndEarnLayoutBinding7.f14361b.f14359d;
        p.b(imageView, "binding.referAndEarnActivityLayout.info");
        imageView.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(2131100108), PorterDuff.Mode.SRC_IN));
        final String stringExtra = getIntent().hasExtra("EXTRA_ENTRY_POINT") ? getIntent().getStringExtra("EXTRA_ENTRY_POINT") : "ref";
        ReferAndEarnLayoutBinding referAndEarnLayoutBinding8 = this.f16857b;
        if (referAndEarnLayoutBinding8 == null) {
            p.a("binding");
        }
        referAndEarnLayoutBinding8.f14361b.g.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.widget.referandearn.ReferAndEarnActivity$onCreate$2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShareCallAppDialogFragment.Companion companion3 = ShareCallAppDialogFragment.g;
                String str3 = stringExtra;
                p.a((Object) str3);
                ShareCallAppDialogFragment.Companion.a(null, 0, str3, 1).a(ReferAndEarnActivity.this.getSupportFragmentManager(), ShareCallAppDialogFragment.g.getTAG());
            }
        });
        ReferAndEarnLayoutBinding referAndEarnLayoutBinding9 = this.f16857b;
        if (referAndEarnLayoutBinding9 == null) {
            p.a("binding");
        }
        referAndEarnLayoutBinding9.f14361b.f14356a.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.widget.referandearn.ReferAndEarnActivity$onCreate$3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShareCallAppDialogFragment.Companion companion3 = ShareCallAppDialogFragment.g;
                String str3 = stringExtra;
                p.a((Object) str3);
                ShareCallAppDialogFragment.Companion.a(null, 0, str3, 2).a(ReferAndEarnActivity.this.getSupportFragmentManager(), ShareCallAppDialogFragment.g.getTAG());
                AnalyticsManager.get().a(Constants.REFER_AND_EARN, "ClickMoreGifts");
            }
        });
        AnalyticsManager.get().b(Constants.INVITE_SCREEN);
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        AnalyticsManager.get().a(Constants.CATEGORY_SCREEN, Constants.ACTION_SCREEN_CLOSE, Constants.INVITE_SCREEN);
        super.onDestroy();
    }
}
