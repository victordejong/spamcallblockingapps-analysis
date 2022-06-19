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
import androidx.fragment.app.AbstractC1121s;
import androidx.p061m.AbstractC1286a;
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
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018�� \u000e2\u00020\u0001:\u0001\u000eB\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0005\u001a\u00020\u0006H\u0014J\b\u0010\u0007\u001a\u00020\bH\u0016J\u0012\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0014J\b\u0010\r\u001a\u00020\nH\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.¢\u0006\u0002\n��¨\u0006\u000f"}, m4298d2 = {"Lcom/callapp/contacts/widget/referandearn/ReferAndEarnActivity;", "Lcom/callapp/contacts/activity/base/BaseActivity;", "()V", "binding", "Lcom/callapp/contacts/databinding/ReferAndEarnLayoutBinding;", "getLayoutResourceId", "", "getViewBinder", "Landroidx/viewbinding/ViewBinding;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "Companion", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/referandearn/ReferAndEarnActivity.class */
public final class ReferAndEarnActivity extends BaseActivity {

    /* renamed from: a */
    public static final Companion f29335a = new Companion(null);

    /* renamed from: b */
    private ReferAndEarnLayoutBinding f29336b;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��¨\u0006\u0005"}, m4298d2 = {"Lcom/callapp/contacts/widget/referandearn/ReferAndEarnActivity$Companion;", "", "()V", "EXTRA_ENTRY_POINT", "", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
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
    public final AbstractC1286a getViewBinder() {
        ReferAndEarnLayoutBinding referAndEarnLayoutBinding = this.f29336b;
        if (referAndEarnLayoutBinding == null) {
            C18524p.m3848a("binding");
        }
        return referAndEarnLayoutBinding;
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        ReferAndEarnLayoutBinding m29052a = ReferAndEarnLayoutBinding.m29052a(getLayoutInflater());
        C18524p.m3843b(m29052a, "ReferAndEarnLayoutBinding.inflate(layoutInflater)");
        this.f29336b = m29052a;
        super.onCreate(bundle);
        AbstractC1121s m43765a = getSupportFragmentManager().m43765a();
        ReferAndEarnTrophyView.Companion companion = ReferAndEarnTrophyView.f29397b;
        m43765a.m43535b(2131363660, ReferAndEarnTrophyView.Companion.m26325a(ReferAndEarnTrophyView.TrophyViewType.EXPENDED), null).mo43536b();
        getSupportFragmentManager().m43765a().m43535b(2131363118, new ReferAndEarnFragment(), null).mo43536b();
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.mo46238a(Activities.getString(2131887530));
            supportActionBar.mo46233b(ViewUtils.getDrawable(2131231943));
            supportActionBar.mo46237a(true);
            supportActionBar.mo46241a(new ColorDrawable(ThemeUtils.getColor(2131099784)));
        }
        ReferAndEarnLayoutBinding referAndEarnLayoutBinding = this.f29336b;
        if (referAndEarnLayoutBinding == null) {
            C18524p.m3848a("binding");
        }
        referAndEarnLayoutBinding.f25127b.f25121e.setBackgroundColor(ThemeUtils.isThemeLight() ? ThemeUtils.getColor(2131100097) : ThemeUtils.getColor(2131100096));
        DialogMessageWithTopImageNew.Companion companion2 = DialogMessageWithTopImageNew.f27121a;
        ReferAndEarnLayoutBinding referAndEarnLayoutBinding2 = this.f29336b;
        if (referAndEarnLayoutBinding2 == null) {
            C18524p.m3848a("binding");
        }
        DialogMessageWithTopImageNew.Companion.m27968a(referAndEarnLayoutBinding2.f25127b.f25117a, 2131232141, Integer.valueOf(ThemeUtils.getColor(2131100214)), Integer.valueOf(ThemeUtils.getColor(2131100214)), 2, Integer.valueOf(ThemeUtils.getColor(2131100228)), new SpannableString(Activities.getString(2131887538)), null, true, true);
        String string = Activities.getString(2131887551);
        String string2 = Activities.getString(2131887552);
        Boolean bool = Prefs.f26339cJ.get();
        C18524p.m3843b(bool, "Prefs.isPremium.get()");
        String str = string2;
        String str2 = string;
        if (bool.booleanValue()) {
            Boolean bool2 = Prefs.f26340cK.get();
            C18524p.m3843b(bool2, "Prefs.hasFreeStoreSku.get()");
            str = string2;
            str2 = string;
            if (bool2.booleanValue()) {
                str2 = Activities.getString(2131887531);
                str = Activities.getString(2131887532);
            }
        }
        ReferAndEarnLayoutBinding referAndEarnLayoutBinding3 = this.f29336b;
        if (referAndEarnLayoutBinding3 == null) {
            C18524p.m3848a("binding");
        }
        TextView textView = referAndEarnLayoutBinding3.f25127b.f25123g;
        C18524p.m3843b(textView, "binding.referAndEarnActi…erAndEarnStoreUnlockTitle");
        textView.setText(str2);
        ReferAndEarnLayoutBinding referAndEarnLayoutBinding4 = this.f29336b;
        if (referAndEarnLayoutBinding4 == null) {
            C18524p.m3848a("binding");
        }
        referAndEarnLayoutBinding4.f25127b.f25123g.setTextColor(ThemeUtils.getColor(2131100140));
        ReferAndEarnLayoutBinding referAndEarnLayoutBinding5 = this.f29336b;
        if (referAndEarnLayoutBinding5 == null) {
            C18524p.m3848a("binding");
        }
        TextView textView2 = referAndEarnLayoutBinding5.f25127b.f25122f;
        C18524p.m3843b(textView2, "binding.referAndEarnActi…ndEarnStoreUnlockSubTitle");
        textView2.setText(str);
        ReferAndEarnLayoutBinding referAndEarnLayoutBinding6 = this.f29336b;
        if (referAndEarnLayoutBinding6 == null) {
            C18524p.m3848a("binding");
        }
        referAndEarnLayoutBinding6.f25127b.f25122f.setTextColor(ThemeUtils.getColor(2131100140));
        ReferAndEarnLayoutBinding referAndEarnLayoutBinding7 = this.f29336b;
        if (referAndEarnLayoutBinding7 == null) {
            C18524p.m3848a("binding");
        }
        ImageView imageView = referAndEarnLayoutBinding7.f25127b.f25120d;
        C18524p.m3843b(imageView, "binding.referAndEarnActivityLayout.info");
        imageView.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(2131100108), PorterDuff.Mode.SRC_IN));
        String stringExtra = getIntent().hasExtra("EXTRA_ENTRY_POINT") ? getIntent().getStringExtra("EXTRA_ENTRY_POINT") : "ref";
        ReferAndEarnLayoutBinding referAndEarnLayoutBinding8 = this.f29336b;
        if (referAndEarnLayoutBinding8 == null) {
            C18524p.m3848a("binding");
        }
        final String str3 = stringExtra;
        referAndEarnLayoutBinding8.f25127b.f25123g.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.widget.referandearn.ReferAndEarnActivity$onCreate$2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShareCallAppDialogFragment.Companion companion3 = ShareCallAppDialogFragment.f29434g;
                String str4 = str3;
                C18524p.m3851a((Object) str4);
                ShareCallAppDialogFragment.Companion.m26293a(null, 0, str4, 1).mo19242a(ReferAndEarnActivity.this.getSupportFragmentManager(), ShareCallAppDialogFragment.f29434g.getTAG());
            }
        });
        ReferAndEarnLayoutBinding referAndEarnLayoutBinding9 = this.f29336b;
        if (referAndEarnLayoutBinding9 == null) {
            C18524p.m3848a("binding");
        }
        final String str4 = stringExtra;
        referAndEarnLayoutBinding9.f25127b.f25117a.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.widget.referandearn.ReferAndEarnActivity$onCreate$3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShareCallAppDialogFragment.Companion companion3 = ShareCallAppDialogFragment.f29434g;
                String str5 = str4;
                C18524p.m3851a((Object) str5);
                ShareCallAppDialogFragment.Companion.m26293a(null, 0, str5, 2).mo19242a(ReferAndEarnActivity.this.getSupportFragmentManager(), ShareCallAppDialogFragment.f29434g.getTAG());
                AnalyticsManager.get().m28450a(Constants.REFER_AND_EARN, "ClickMoreGifts");
            }
        });
        AnalyticsManager.get().mo28441b(Constants.INVITE_SCREEN);
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        AnalyticsManager.get().m28449a(Constants.CATEGORY_SCREEN, Constants.ACTION_SCREEN_CLOSE, Constants.INVITE_SCREEN);
        super.onDestroy();
    }
}
