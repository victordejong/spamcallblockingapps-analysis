package com.callapp.contacts.activity;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Pair;
import android.view.View;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.details.ContactDetailsActivity;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.asset.managers.StoreItemAssetManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.framework.phone.Phone;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/NonEditableContactDetailsActivity.class */
public class NonEditableContactDetailsActivity extends ContactDetailsActivity {
    public static boolean startActivity(Context context, long j, String str, boolean z) {
        Intent createIntent = ContactDetailsActivity.createIntent(context, j, str, null, z, null, "EditProfile", null);
        createIntent.setClass(context, NonEditableContactDetailsActivity.class);
        return Activities.a(context, createIntent);
    }

    @Override // com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity
    public StoreItemAssetManager.Builder getStoreItemAssetManager(StoreItemAssetManager.Builder builder) {
        builder.f14984b = new StoreItemAssetManager.AssetListener() { // from class: com.callapp.contacts.activity._$$Lambda$NonEditableContactDetailsActivity$zXR8ZBgmX2cf2FN__UCI6Hw3vD8
            @Override // com.callapp.contacts.manager.asset.managers.StoreItemAssetManager.AssetListener
            public final void onAssetReady(Object obj, String str) {
                NonEditableContactDetailsActivity.this.lambda$getStoreItemAssetManager$1$NonEditableContactDetailsActivity((String) obj, str);
            }
        };
        return builder;
    }

    @Override // com.callapp.contacts.activity.contact.details.ContactDetailsActivity, com.callapp.contacts.activity.base.BaseActivity
    public boolean isClickValid(View view) {
        if (view.getId() == 2131362049) {
            return true;
        }
        FeedbackManager.get().a(Activities.getString(2131886803), (Integer) null);
        return false;
    }

    public /* synthetic */ void lambda$getStoreItemAssetManager$1$NonEditableContactDetailsActivity(final String str, String str2) {
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity._$$Lambda$NonEditableContactDetailsActivity$c_d1HXAyxFKBd6dHY9UX_r6Lqlg
            @Override // java.lang.Runnable
            public final void run() {
                NonEditableContactDetailsActivity.this.lambda$null$0$NonEditableContactDetailsActivity(str);
            }
        });
    }

    public /* synthetic */ void lambda$null$0$NonEditableContactDetailsActivity(String str) {
        ViewUtils.a((View) this.coverImageView, true);
        GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(this.coverImageView, str, this);
        glideRequestBuilder.q = true;
        glideRequestBuilder.d();
    }

    @Override // com.callapp.contacts.activity.contact.details.ContactDetailsActivity
    public Pair<ContactData, Set<ContactField>> loadNewContact(Phone phone, long j) {
        this.presenterManager.a(this.presenterContainer);
        return Singletons.get().getContactLoaderManager().registerForContactDetailsStackForSelfContact(phone, j, this, ContactFieldEnumSets.ALL);
    }

    @Override // com.callapp.contacts.activity.contact.details.ContactDetailsActivity, com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        AnalyticsManager.get().b(Constants.NON_EDITABLE_USER_PROFILE);
        getBottomActionBar().setVisibility(8);
        ViewUtils.c(getRecyclerView(), 0);
        ViewUtils.f(getRecyclerView(), 0);
        findViewById(2131364179).setVisibility(8);
    }

    @Override // com.callapp.contacts.activity.contact.details.ContactDetailsActivity, com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        AnalyticsManager.get().a(Constants.CATEGORY_SCREEN, Constants.ACTION_SCREEN_CLOSE, Constants.NON_EDITABLE_USER_PROFILE);
        super.onDestroy();
    }

    @Override // com.callapp.contacts.activity.contact.details.ContactDetailsActivity
    public void releaseContact() {
        Singletons.get().getContactLoaderManager().unRegisterForContactDetailsStack(this.contact, this, false);
    }
}
