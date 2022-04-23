package com.callapp.contacts.api.helper.instantmessaging;

import android.content.Context;
import android.net.Uri;
import androidx.fragment.app.Fragment;
import com.callapp.contacts.manager.popup.ActivityResult;
import com.callapp.contacts.model.contact.ContactData;
import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u000f\u0018��2\u00020\u0001:\u0001\u0019B9\b\u0002\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010\fR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n��\u001a\u0004\b\r\u0010\u000eR\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\b\n��\u001a\u0004\b\u000f\u0010\u0010R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n��\u001a\u0004\b\u0011\u0010\u0012R\u0013\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\b\n��\u001a\u0004\b\u0013\u0010\u0014R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018¨\u0006\u001a"}, d2 = {"Lcom/callapp/contacts/api/helper/instantmessaging/ShareData;", "", "imageUri", "Landroid/net/Uri;", "context", "Landroid/content/Context;", "activityResult", "Lcom/callapp/contacts/manager/popup/ActivityResult;", "fragment", "Landroidx/fragment/app/Fragment;", "contactData", "Lcom/callapp/contacts/model/contact/ContactData;", "(Landroid/net/Uri;Landroid/content/Context;Lcom/callapp/contacts/manager/popup/ActivityResult;Landroidx/fragment/app/Fragment;Lcom/callapp/contacts/model/contact/ContactData;)V", "getActivityResult", "()Lcom/callapp/contacts/manager/popup/ActivityResult;", "getContactData", "()Lcom/callapp/contacts/model/contact/ContactData;", "getContext", "()Landroid/content/Context;", "getFragment", "()Landroidx/fragment/app/Fragment;", "getImageUri", "()Landroid/net/Uri;", "setImageUri", "(Landroid/net/Uri;)V", "Builder", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/instantmessaging/ShareData.class */
public final class ShareData {

    /* renamed from: a  reason: collision with root package name */
    private Uri f14201a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f14202b;

    /* renamed from: c  reason: collision with root package name */
    private final ActivityResult f14203c;

    /* renamed from: d  reason: collision with root package name */
    private final Fragment f14204d;
    private final ContactData e;

    @Metadata(bv = {1, 0, 3}, d1 = {"��F\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n��\b\u0086\b\u0018��2\u00020\u0001BA\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010\fJ\u000e\u0010\u0006\u001a\u00020��2\u0006\u0010\u0006\u001a\u00020\u0007J\u0006\u0010!\u001a\u00020\"J\u000b\u0010#\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010'\u001a\u0004\u0018\u00010\u000bHÆ\u0003J\u0010\u0010\n\u001a\u00020��2\b\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u000e\u0010\u0004\u001a\u00020��2\u0006\u0010\u0004\u001a\u00020\u0005JE\u0010(\u001a\u00020��2\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000bHÆ\u0001J\u0013\u0010)\u001a\u00020*2\b\u0010+\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\u0010\u0010\b\u001a\u00020��2\b\u0010\b\u001a\u0004\u0018\u00010\tJ\t\u0010,\u001a\u00020-HÖ\u0001J\u000e\u0010\u0002\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020\u0003J\t\u0010.\u001a\u00020/HÖ\u0001R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001c\u0010\b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 ¨\u00060"}, d2 = {"Lcom/callapp/contacts/api/helper/instantmessaging/ShareData$Builder;", "", "imageUri", "Landroid/net/Uri;", "context", "Landroid/content/Context;", "activityResult", "Lcom/callapp/contacts/manager/popup/ActivityResult;", "fragment", "Landroidx/fragment/app/Fragment;", "contactData", "Lcom/callapp/contacts/model/contact/ContactData;", "(Landroid/net/Uri;Landroid/content/Context;Lcom/callapp/contacts/manager/popup/ActivityResult;Landroidx/fragment/app/Fragment;Lcom/callapp/contacts/model/contact/ContactData;)V", "getActivityResult", "()Lcom/callapp/contacts/manager/popup/ActivityResult;", "setActivityResult", "(Lcom/callapp/contacts/manager/popup/ActivityResult;)V", "getContactData", "()Lcom/callapp/contacts/model/contact/ContactData;", "setContactData", "(Lcom/callapp/contacts/model/contact/ContactData;)V", "getContext", "()Landroid/content/Context;", "setContext", "(Landroid/content/Context;)V", "getFragment", "()Landroidx/fragment/app/Fragment;", "setFragment", "(Landroidx/fragment/app/Fragment;)V", "getImageUri", "()Landroid/net/Uri;", "setImageUri", "(Landroid/net/Uri;)V", JsonPOJOBuilder.DEFAULT_BUILD_METHOD, "Lcom/callapp/contacts/api/helper/instantmessaging/ShareData;", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "", "toString", "", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/instantmessaging/ShareData$Builder.class */
    public static final class Builder {

        /* renamed from: a  reason: collision with root package name */
        public Uri f14205a;

        /* renamed from: b  reason: collision with root package name */
        public Context f14206b;

        /* renamed from: c  reason: collision with root package name */
        public ActivityResult f14207c;

        /* renamed from: d  reason: collision with root package name */
        public Fragment f14208d;
        public ContactData e;

        public Builder() {
            this(null, null, null, null, null, 31, null);
        }

        public Builder(Uri uri, Context context, ActivityResult activityResult, Fragment fragment, ContactData contactData) {
            this.f14205a = uri;
            this.f14206b = context;
            this.f14207c = activityResult;
            this.f14208d = fragment;
            this.e = contactData;
        }

        public /* synthetic */ Builder(Uri uri, Context context, ActivityResult activityResult, Fragment fragment, ContactData contactData, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : uri, (i & 2) != 0 ? null : context, (i & 4) != 0 ? null : activityResult, (i & 8) != 0 ? null : fragment, (i & 16) != 0 ? null : contactData);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Builder)) {
                return false;
            }
            Builder builder = (Builder) obj;
            return p.a(this.f14205a, builder.f14205a) && p.a(this.f14206b, builder.f14206b) && p.a(this.f14207c, builder.f14207c) && p.a(this.f14208d, builder.f14208d) && p.a(this.e, builder.e);
        }

        public final int hashCode() {
            Uri uri = this.f14205a;
            int i = 0;
            int hashCode = uri != null ? uri.hashCode() : 0;
            Context context = this.f14206b;
            int hashCode2 = context != null ? context.hashCode() : 0;
            ActivityResult activityResult = this.f14207c;
            int hashCode3 = activityResult != null ? activityResult.hashCode() : 0;
            Fragment fragment = this.f14208d;
            int hashCode4 = fragment != null ? fragment.hashCode() : 0;
            ContactData contactData = this.e;
            if (contactData != null) {
                i = contactData.hashCode();
            }
            return (((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i;
        }

        public final void setContactData(ContactData contactData) {
            this.e = contactData;
        }

        public final void setImageUri(Uri uri) {
            this.f14205a = uri;
        }

        public final String toString() {
            return "Builder(imageUri=" + this.f14205a + ", context=" + this.f14206b + ", activityResult=" + this.f14207c + ", fragment=" + this.f14208d + ", contactData=" + this.e + ")";
        }
    }

    private ShareData(Uri uri, Context context, ActivityResult activityResult, Fragment fragment, ContactData contactData) {
        this.f14201a = uri;
        this.f14202b = context;
        this.f14203c = activityResult;
        this.f14204d = fragment;
        this.e = contactData;
    }

    public /* synthetic */ ShareData(Uri uri, Context context, ActivityResult activityResult, Fragment fragment, ContactData contactData, DefaultConstructorMarker defaultConstructorMarker) {
        this(uri, context, activityResult, fragment, contactData);
    }

    public final ActivityResult getActivityResult() {
        return this.f14203c;
    }

    public final ContactData getContactData() {
        return this.e;
    }

    public final Context getContext() {
        return this.f14202b;
    }

    public final Uri getImageUri() {
        return this.f14201a;
    }
}
