package com.callapp.contacts.widget.referandearn;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import com.appsflyer.internal.referrer.Payload;
import com.bumptech.glide.e.a.j;
import com.bumptech.glide.e.c;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.api.helper.instantmessaging.EmailSenderHelper;
import com.callapp.contacts.api.helper.instantmessaging.InstagramImSenderHelper;
import com.callapp.contacts.api.helper.instantmessaging.MessengerImSenderHelper;
import com.callapp.contacts.api.helper.instantmessaging.ShareData;
import com.callapp.contacts.api.helper.instantmessaging.SignalSenderHelper;
import com.callapp.contacts.api.helper.instantmessaging.SmsSenderHelper;
import com.callapp.contacts.api.helper.instantmessaging.TelegramSenderHelper;
import com.callapp.contacts.api.helper.instantmessaging.TwitterImSenderHelper;
import com.callapp.contacts.api.helper.instantmessaging.ViberSenderHelper;
import com.callapp.contacts.api.helper.instantmessaging.WeChatSenderHelper;
import com.callapp.contacts.api.helper.instantmessaging.WhatsApp4BSenderHelper;
import com.callapp.contacts.api.helper.instantmessaging.WhatsAppSenderHelper;
import com.callapp.contacts.api.helper.instantmessaging.basetypes.BaseImSenderHelper;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.popup.ActivityResult;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.invites.ReferAndEarnDataManager;
import com.callapp.contacts.model.invites.ReferAndEarnUserData;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.IoUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.contacts.widget.referandearn.ReferAndEarnShareOptionsFragment;
import com.callapp.framework.util.StringUtils;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.a.n;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.v;
import net.pubnative.lite.sdk.models.APIAsset;
import net.pubnative.lite.sdk.mraid.MRAIDNativeFeature;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\n\u0018�� 12\u00020\u00012\u00020\u0002:\u000512345B\u0005¢\u0006\u0002\u0010\u0003J\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\rJ\b\u0010\u0017\u001a\u00020\u0018H\u0002J\u000e\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00180\u001aH\u0002J,\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\u0006\u0010\u001f\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\u00072\b\u0010!\u001a\u0004\u0018\u00010\"H\u0016J\u0010\u0010#\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020$H\u0016J&\u0010%\u001a\u0004\u0018\u00010&2\u0006\u0010'\u001a\u00020(2\b\u0010)\u001a\u0004\u0018\u00010*2\b\u0010+\u001a\u0004\u0018\u00010,H\u0016J\b\u0010-\u001a\u00020\u001cH\u0016J\b\u0010.\u001a\u00020\u001cH\u0016J\u0012\u0010/\u001a\u00020\u001c2\b\u00100\u001a\u0004\u0018\u00010\u0006H\u0002R\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\n\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n��R \u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\fX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e¢\u0006\u0002\n��¨\u00066"}, d2 = {"Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;", "Landroidx/fragment/app/Fragment;", "Lcom/callapp/contacts/manager/popup/ActivityResult;", "()V", "analyticsDataMap", "Ljava/util/HashMap;", "", "", "contactData", "Lcom/callapp/contacts/model/contact/ContactData;", Constants.EXTRA_ENTRY_POINT, "futureTarget", "Lcom/bumptech/glide/request/FutureTarget;", "Landroid/graphics/Bitmap;", "getFutureTarget", "()Lcom/bumptech/glide/request/FutureTarget;", "setFutureTarget", "(Lcom/bumptech/glide/request/FutureTarget;)V", "referAndEarnShareOptionsFragmentListener", "Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragmentListener;", "getBitmapFromView", "Landroid/net/Uri;", "bmp", "getCopyData", "Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppAppData;", "getInstalledApps", "Ljava/util/ArrayList;", "onActivityResult", "", "context", "Landroid/app/Activity;", "requestCode", "resultCode", "data", "Landroid/content/Intent;", "onAttach", "Landroid/content/Context;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "viewGroup", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "onDetach", "shareCallApp", "name", "Companion", "ItemType", "ListAdapter", "ShareCallAppAppData", "ShareCallAppViewHolder", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment.class */
public final class ReferAndEarnShareOptionsFragment extends Fragment implements ActivityResult {

    /* renamed from: a  reason: collision with root package name */
    public static final Companion f16892a = new Companion(null);
    private static final List<BaseImSenderHelper> g = n.c(new SmsSenderHelper(), new WhatsAppSenderHelper(), new WhatsApp4BSenderHelper(), new InstagramImSenderHelper(), new TwitterImSenderHelper(), new TelegramSenderHelper(), new EmailSenderHelper(), new MessengerImSenderHelper(), new SignalSenderHelper(), new ViberSenderHelper(), new WeChatSenderHelper());

    /* renamed from: b  reason: collision with root package name */
    private ReferAndEarnShareOptionsFragmentListener f16893b;

    /* renamed from: c  reason: collision with root package name */
    private ContactData f16894c;

    /* renamed from: d  reason: collision with root package name */
    private String f16895d;
    private c<Bitmap> e;
    private final HashMap<String, Integer> f = new HashMap<>();

    @Metadata(bv = {1, 0, 3}, d1 = {"��<\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00042\b\b\u0002\u0010\u000b\u001a\u00020\fH\u0007J\u0010\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007J\u001a\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0014\u001a\u00020\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0015"}, d2 = {"Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$Companion;", "", "()V", "EXTRA_CONTACT_DATA", "", "EXTRA_ENTRY_POINT", "supportedPackages", "", "Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/BaseImSenderHelper;", "getReferLink", Payload.SOURCE, "encoded", "", "isAnyChannelAvailable", "context", "Landroid/content/Context;", "newInstance", "Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;", "contactData", "Lcom/callapp/contacts/model/contact/ContactData;", Constants.EXTRA_ENTRY_POINT, "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static ReferAndEarnShareOptionsFragment a(ContactData contactData, String entryPoint) {
            p.d(entryPoint, "entryPoint");
            ReferAndEarnShareOptionsFragment referAndEarnShareOptionsFragment = new ReferAndEarnShareOptionsFragment();
            Bundle bundle = new Bundle();
            bundle.putSerializable("extra_contact_data", contactData);
            bundle.putString("extra_entry_point", entryPoint);
            v vVar = v.f38654a;
            referAndEarnShareOptionsFragment.setArguments(bundle);
            return referAndEarnShareOptionsFragment;
        }

        public static String a(String source, boolean z) {
            p.d(source, "source");
            String encode = URLEncoder.encode(Prefs.hr.get(), "utf-8");
            p.b(encode, "URLEncoder.encode(Prefs.…nLinkCode.get(), \"utf-8\")");
            String encode2 = URLEncoder.encode(source, "utf-8");
            p.b(encode2, "URLEncoder.encode(source, \"utf-8\")");
            String str = "https://play.google.com/store/apps/details?id=com.callapp.contacts&rdid=com.callapp.contacts&referrer=ref_key%3D" + encode;
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append("%26utm_source%3Dinvite%26utm_campaign%3D" + encode2);
            String sb2 = sb.toString();
            String str2 = sb2;
            if (z) {
                str2 = URLEncoder.encode(sb2, "utf-8");
                p.b(str2, "URLEncoder.encode(link, \"utf-8\")");
            }
            return str2;
        }

        public static boolean a(Context context) {
            p.d(context, "context");
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null) {
                return false;
            }
            for (BaseImSenderHelper baseImSenderHelper : ReferAndEarnShareOptionsFragment.g) {
                if (packageManager.getPackageInfo(baseImSenderHelper.getPackageName(), 1) != null) {
                    return true;
                }
            }
            return false;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ItemType;", "", "(Ljava/lang/String;I)V", "SENDER_HELPER", "OTHER", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ItemType.class */
    public enum ItemType {
        SENDER_HELPER,
        OTHER
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0004\u0018��2\f\u0012\b\u0012\u00060\u0002R\u00020\u00030\u0001B\u0013\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\u0007J\b\u0010\b\u001a\u00020\tH\u0016J\u001c\u0010\n\u001a\u00020\u000b2\n\u0010\f\u001a\u00060\u0002R\u00020\u00032\u0006\u0010\r\u001a\u00020\tH\u0016J\u001c\u0010\u000e\u001a\u00060\u0002R\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\tH\u0016R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0012"}, d2 = {"Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ListAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppViewHolder;", "Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;", "list", "", "Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppAppData;", "(Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;Ljava/util/List;)V", "getItemCount", "", "onBindViewHolder", "", "holder", "position", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ListAdapter.class */
    public final class ListAdapter extends RecyclerView.a<ShareCallAppViewHolder> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ReferAndEarnShareOptionsFragment f16896a;

        /* renamed from: b  reason: collision with root package name */
        private final List<ShareCallAppAppData> f16897b;

        public ListAdapter(ReferAndEarnShareOptionsFragment referAndEarnShareOptionsFragment, List<ShareCallAppAppData> list) {
            p.d(list, "list");
            this.f16896a = referAndEarnShareOptionsFragment;
            this.f16897b = list;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.a
        public final int getItemCount() {
            return this.f16897b.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.a
        public final /* synthetic */ void onBindViewHolder(ShareCallAppViewHolder shareCallAppViewHolder, int i) {
            final ShareCallAppViewHolder holder = shareCallAppViewHolder;
            p.d(holder, "holder");
            final ShareCallAppAppData shareCallAppAppData = this.f16897b.get(i);
            p.d(shareCallAppAppData, "shareCallAppAppData");
            holder.s.setText(shareCallAppAppData.getName());
            holder.s.setTextColor(ThemeUtils.getColor(2131100140));
            Drawable icon = shareCallAppAppData.getIcon();
            if (icon != null) {
                holder.r.setImageDrawable(icon);
            }
            Integer iconRes = shareCallAppAppData.getIconRes();
            if (iconRes != null) {
                holder.r.setImageResource(iconRes.intValue());
            }
            holder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.widget.referandearn.ReferAndEarnShareOptionsFragment$ShareCallAppViewHolder$bind$3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ReferAndEarnShareOptionsFragmentListener referAndEarnShareOptionsFragmentListener;
                    ContactData contactData;
                    ReferAndEarnShareOptionsFragmentListener referAndEarnShareOptionsFragmentListener2;
                    ReferAndEarnShareOptionsFragmentListener referAndEarnShareOptionsFragmentListener3;
                    AnalyticsManager analyticsManager = AnalyticsManager.get();
                    BaseImSenderHelper senderHelper = shareCallAppAppData.getSenderHelper();
                    Singletons.SenderType senderType = null;
                    analyticsManager.a(Constants.REFER_AND_EARN, "InviteClick", senderHelper != null ? senderHelper.getAnalyticsNameLabel() : null);
                    if (shareCallAppAppData.getItemType() == ReferAndEarnShareOptionsFragment.ItemType.SENDER_HELPER) {
                        BaseImSenderHelper senderHelper2 = shareCallAppAppData.getSenderHelper();
                        if (senderHelper2 != null) {
                            senderType = senderHelper2.getType();
                        }
                        if (senderType != null && ReferAndEarnShareOptionsFragment.ShareCallAppViewHolder.WhenMappings.f16902a[senderType.ordinal()] == 1) {
                            referAndEarnShareOptionsFragmentListener3 = ReferAndEarnShareOptionsFragment.ShareCallAppViewHolder.this.t.f16893b;
                            if (referAndEarnShareOptionsFragmentListener3 != null) {
                                referAndEarnShareOptionsFragmentListener3.t_();
                                return;
                            }
                            return;
                        }
                        ShareData.Builder builder = new ShareData.Builder(null, null, null, null, null, 31, null);
                        Context context = ReferAndEarnShareOptionsFragment.ShareCallAppViewHolder.this.t.requireContext();
                        p.b(context, "requireContext()");
                        p.d(context, "context");
                        ShareData.Builder builder2 = builder;
                        builder2.f14206b = context;
                        ShareData.Builder builder3 = builder2;
                        builder3.f14208d = ReferAndEarnShareOptionsFragment.ShareCallAppViewHolder.this.t;
                        ReferAndEarnShareOptionsFragment activityResult = ReferAndEarnShareOptionsFragment.ShareCallAppViewHolder.this.t;
                        p.d(activityResult, "activityResult");
                        ShareData.Builder builder4 = builder3;
                        builder4.f14207c = activityResult;
                        contactData = ReferAndEarnShareOptionsFragment.ShareCallAppViewHolder.this.t.f16894c;
                        if (contactData != null) {
                            ReferAndEarnDataManager.Companion companion = ReferAndEarnDataManager.Companion;
                            String a2 = contactData.getPhone().a();
                            p.b(a2, "it.phone.asGlobalNumber()");
                            companion.updateReferStatus(a2, contactData.getNameOrNumber(), ReferAndEarnUserData.STATUS.PENDING);
                            builder4.setContactData(contactData);
                        }
                        Uri a3 = ReferAndEarnShareOptionsFragment.a(ReferAndEarnShareOptionsFragment.ShareCallAppViewHolder.this.t.getFutureTarget().get());
                        if (a3 != null) {
                            builder4.setImageUri(a3);
                        }
                        BaseImSenderHelper senderHelper3 = shareCallAppAppData.getSenderHelper();
                        if (senderHelper3 != null) {
                            senderHelper3.share(new ShareData(builder4.f14205a, builder4.f14206b, builder4.f14207c, builder4.f14208d, builder4.e, null));
                        }
                        referAndEarnShareOptionsFragmentListener2 = ReferAndEarnShareOptionsFragment.ShareCallAppViewHolder.this.t.f16893b;
                        if (referAndEarnShareOptionsFragmentListener2 != null) {
                            referAndEarnShareOptionsFragmentListener2.c();
                            return;
                        }
                        return;
                    }
                    referAndEarnShareOptionsFragmentListener = ReferAndEarnShareOptionsFragment.ShareCallAppViewHolder.this.t.f16893b;
                    if (referAndEarnShareOptionsFragmentListener != null) {
                        ReferAndEarnShareOptionsFragment.Companion companion2 = ReferAndEarnShareOptionsFragment.f16892a;
                        String a4 = ReferAndEarnShareOptionsFragment.Companion.a("copy", false);
                        Context requireContext = ReferAndEarnShareOptionsFragment.ShareCallAppViewHolder.this.t.requireContext();
                        p.b(requireContext, "requireContext()");
                        referAndEarnShareOptionsFragmentListener.a(a4, requireContext);
                    }
                }
            });
        }

        @Override // androidx.recyclerview.widget.RecyclerView.a
        public final /* synthetic */ ShareCallAppViewHolder onCreateViewHolder(ViewGroup parent, int i) {
            p.d(parent, "parent");
            LayoutInflater inflater = LayoutInflater.from(parent.getContext());
            ReferAndEarnShareOptionsFragment referAndEarnShareOptionsFragment = this.f16896a;
            p.b(inflater, "inflater");
            return new ShareCallAppViewHolder(referAndEarnShareOptionsFragment, inflater, parent);
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018��2\u00020\u0001B;\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u0010J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\tHÆ\u0003J\t\u0010\u001c\u001a\u00020\u000bHÆ\u0003JF\u0010\u001d\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\b\b\u0002\u0010\n\u001a\u00020\u000bHÆ\u0001¢\u0006\u0002\u0010\u001eJ\u0013\u0010\u001f\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\"\u001a\u00020\u0007HÖ\u0001J\t\u0010#\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n��\u001a\u0004\b\r\u0010\u000eR\u0015\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\n\n\u0002\u0010\u0011\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n��\u001a\u0004\b\u0012\u0010\u0013R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0014\u0010\u0015R\u0013\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\b\n��\u001a\u0004\b\u0016\u0010\u0017¨\u0006$"}, d2 = {"Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppAppData;", "", "name", "", APIAsset.ICON, "Landroid/graphics/drawable/Drawable;", "iconRes", "", "senderHelper", "Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/BaseImSenderHelper;", "itemType", "Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ItemType;", "(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/BaseImSenderHelper;Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ItemType;)V", "getIcon", "()Landroid/graphics/drawable/Drawable;", "getIconRes", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getItemType", "()Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ItemType;", "getName", "()Ljava/lang/String;", "getSenderHelper", "()Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/BaseImSenderHelper;", "component1", "component2", "component3", "component4", "component5", "copy", "(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/BaseImSenderHelper;Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ItemType;)Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppAppData;", "equals", "", "other", "hashCode", "toString", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppAppData.class */
    public static final class ShareCallAppAppData {

        /* renamed from: a  reason: collision with root package name */
        private final String f16898a;

        /* renamed from: b  reason: collision with root package name */
        private final Drawable f16899b;

        /* renamed from: c  reason: collision with root package name */
        private final Integer f16900c;

        /* renamed from: d  reason: collision with root package name */
        private final BaseImSenderHelper f16901d;
        private final ItemType e;

        public ShareCallAppAppData(String name, Drawable drawable, Integer num, BaseImSenderHelper baseImSenderHelper, ItemType itemType) {
            p.d(name, "name");
            p.d(itemType, "itemType");
            this.f16898a = name;
            this.f16899b = drawable;
            this.f16900c = num;
            this.f16901d = baseImSenderHelper;
            this.e = itemType;
        }

        public /* synthetic */ ShareCallAppAppData(String str, Drawable drawable, Integer num, BaseImSenderHelper baseImSenderHelper, ItemType itemType, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i & 2) != 0 ? null : drawable, (i & 4) != 0 ? null : num, (i & 8) != 0 ? null : baseImSenderHelper, (i & 16) != 0 ? ItemType.SENDER_HELPER : itemType);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ShareCallAppAppData)) {
                return false;
            }
            ShareCallAppAppData shareCallAppAppData = (ShareCallAppAppData) obj;
            return p.a((Object) this.f16898a, (Object) shareCallAppAppData.f16898a) && p.a(this.f16899b, shareCallAppAppData.f16899b) && p.a(this.f16900c, shareCallAppAppData.f16900c) && p.a(this.f16901d, shareCallAppAppData.f16901d) && p.a(this.e, shareCallAppAppData.e);
        }

        public final Drawable getIcon() {
            return this.f16899b;
        }

        public final Integer getIconRes() {
            return this.f16900c;
        }

        public final ItemType getItemType() {
            return this.e;
        }

        public final String getName() {
            return this.f16898a;
        }

        public final BaseImSenderHelper getSenderHelper() {
            return this.f16901d;
        }

        public final int hashCode() {
            String str = this.f16898a;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            Drawable drawable = this.f16899b;
            int hashCode2 = drawable != null ? drawable.hashCode() : 0;
            Integer num = this.f16900c;
            int hashCode3 = num != null ? num.hashCode() : 0;
            BaseImSenderHelper baseImSenderHelper = this.f16901d;
            int hashCode4 = baseImSenderHelper != null ? baseImSenderHelper.hashCode() : 0;
            ItemType itemType = this.e;
            if (itemType != null) {
                i = itemType.hashCode();
            }
            return (((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i;
        }

        public final String toString() {
            return "ShareCallAppAppData(name=" + this.f16898a + ", icon=" + this.f16899b + ", iconRes=" + this.f16900c + ", senderHelper=" + this.f16901d + ", itemType=" + this.e + ")";
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\b\u0086\u0004\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u000e\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eR\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n��¨\u0006\u000f"}, d2 = {"Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "inflater", "Landroid/view/LayoutInflater;", "parent", "Landroid/view/ViewGroup;", "(Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V", "shareIcon", "Landroid/widget/ImageView;", "shareTitle", "Landroid/widget/TextView;", "bind", "", "shareCallAppAppData", "Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppAppData;", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppViewHolder.class */
    public final class ShareCallAppViewHolder extends RecyclerView.v {
        ImageView r;
        TextView s;
        final /* synthetic */ ReferAndEarnShareOptionsFragment t;

        @Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 4, 2})
        /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppViewHolder$WhenMappings.class */
        public final /* synthetic */ class WhenMappings {

            /* renamed from: a  reason: collision with root package name */
            public static final /* synthetic */ int[] f16902a;

            static {
                int[] iArr = new int[Singletons.SenderType.values().length];
                f16902a = iArr;
                iArr[Singletons.SenderType.SMS.ordinal()] = 1;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ShareCallAppViewHolder(ReferAndEarnShareOptionsFragment referAndEarnShareOptionsFragment, LayoutInflater inflater, ViewGroup parent) {
            super(inflater.inflate(2131559016, parent, false));
            p.d(inflater, "inflater");
            p.d(parent, "parent");
            this.t = referAndEarnShareOptionsFragment;
            View findViewById = this.itemView.findViewById(2131363847);
            p.b(findViewById, "itemView.findViewById(R.id.shareIcon)");
            this.r = (ImageView) findViewById;
            View findViewById2 = this.itemView.findViewById(2131363849);
            p.b(findViewById2, "itemView.findViewById(R.id.shareTitle)");
            this.s = (TextView) findViewById2;
        }
    }

    public ReferAndEarnShareOptionsFragment() {
        c<Bitmap> futureTargetForResourceTarget = GlideUtils.getFutureTargetForResourceTarget(2131230893);
        p.b(futureTargetForResourceTarget, "GlideUtils.getFutureTarg…wable.callapp_invite_img)");
        this.e = futureTargetForResourceTarget;
    }

    public static Uri a(Bitmap bitmap) {
        try {
            File cacheFolder = IoUtils.getCacheFolder();
            File file = new File(cacheFolder, String.valueOf(System.currentTimeMillis()) + ".png");
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            if (bitmap != null) {
                bitmap.compress(Bitmap.CompressFormat.PNG, 90, fileOutputStream);
            }
            fileOutputStream.close();
            return IoUtils.a(CallAppApplication.get(), file);
        } catch (IOException e) {
            return null;
        }
    }

    public static final String a(String str, boolean z) {
        return Companion.a(str, z);
    }

    public static final /* synthetic */ void a(ReferAndEarnShareOptionsFragment referAndEarnShareOptionsFragment, String str) {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("text/*");
        intent.putExtra("android.intent.extra.TEXT", Activities.a(2131887550, str, Companion.a("more", false)));
        Activities.a(referAndEarnShareOptionsFragment.getActivity(), intent, referAndEarnShareOptionsFragment);
        ReferAndEarnShareOptionsFragmentListener referAndEarnShareOptionsFragmentListener = referAndEarnShareOptionsFragment.f16893b;
        if (referAndEarnShareOptionsFragmentListener != null) {
            referAndEarnShareOptionsFragmentListener.c();
        }
    }

    private final ShareCallAppAppData getCopyData() {
        String string = CallAppApplication.get().getString(2131886663);
        p.b(string, "CallAppApplication.get().getString(R.string.copy)");
        return new ShareCallAppAppData(string, null, 2131231616, null, ItemType.OTHER, 10, null);
    }

    private final ArrayList<ShareCallAppAppData> getInstalledApps() {
        ArrayList<ShareCallAppAppData> arrayList = new ArrayList<>();
        Context requireContext = requireContext();
        p.b(requireContext, "requireContext()");
        PackageManager packageManager = requireContext.getPackageManager();
        if (packageManager != null) {
            for (BaseImSenderHelper baseImSenderHelper : g) {
                try {
                    PackageInfo packageInfo = packageManager.getPackageInfo(baseImSenderHelper.getPackageName(), 1);
                    arrayList.add(new ShareCallAppAppData(packageInfo.applicationInfo.loadLabel(packageManager).toString(), packageInfo.applicationInfo.loadIcon(packageManager), null, baseImSenderHelper, null, 20, null));
                    if (!StringUtils.b(MRAIDNativeFeature.SMS, baseImSenderHelper.getAnalyticsNameLabel()) && !StringUtils.b("em", baseImSenderHelper.getAnalyticsNameLabel())) {
                        HashMap<String, Integer> hashMap = this.f;
                        String analyticsNameLabel = baseImSenderHelper.getAnalyticsNameLabel();
                        p.b(analyticsNameLabel, "pack.analyticsNameLabel");
                        hashMap.put(analyticsNameLabel, 1);
                    }
                } catch (Exception e) {
                    HashMap<String, Integer> hashMap2 = this.f;
                    String analyticsNameLabel2 = baseImSenderHelper.getAnalyticsNameLabel();
                    p.b(analyticsNameLabel2, "pack.analyticsNameLabel");
                    hashMap2.put(analyticsNameLabel2, 0);
                }
            }
        }
        AnalyticsManager.get().a(Constants.REFER_AND_EARN, "ViewInviteOptions", (("ch:" + this.f.toString()) + "ep:") + this.f16895d);
        arrayList.add(getCopyData());
        return arrayList;
    }

    public final c<Bitmap> getFutureTarget() {
        return this.e;
    }

    @Override // com.callapp.contacts.manager.popup.ActivityResult
    public final void onActivityResult(Activity activity, int i, int i2, Intent intent) {
    }

    @Override // androidx.fragment.app.Fragment
    public final void onAttach(Context context) {
        Fragment parentFragment;
        p.d(context, "context");
        super.onAttach(context);
        try {
            parentFragment = getParentFragment();
        } catch (ClassCastException e) {
        }
        if (parentFragment != null) {
            this.f16893b = (ReferAndEarnShareOptionsFragmentListener) parentFragment;
            Bundle arguments = getArguments();
            if (arguments != null) {
                this.f16894c = (ContactData) arguments.getSerializable("extra_contact_data");
                this.f16895d = arguments.getString("extra_entry_point");
                return;
            }
            return;
        }
        throw new NullPointerException("null cannot be cast to non-null type com.callapp.contacts.widget.referandearn.ReferAndEarnShareOptionsFragmentListener");
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x009e, code lost:
        if (r0 == null) goto L_0x00a1;
     */
    @Override // androidx.fragment.app.Fragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View onCreateView(android.view.LayoutInflater r11, android.view.ViewGroup r12, android.os.Bundle r13) {
        /*
            Method dump skipped, instructions count: 421
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.widget.referandearn.ReferAndEarnShareOptionsFragment.onCreateView(android.view.LayoutInflater, android.view.ViewGroup, android.os.Bundle):android.view.View");
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroy() {
        this.e.cancel(false);
        GlideUtils.b(CallAppApplication.get()).a((j<?>) this.e);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDetach() {
        super.onDetach();
        this.f16893b = null;
    }
}
