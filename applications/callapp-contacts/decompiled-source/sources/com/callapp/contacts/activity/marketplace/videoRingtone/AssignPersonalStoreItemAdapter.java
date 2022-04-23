package com.callapp.contacts.activity.marketplace.videoRingtone;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.activity.marketplace.PersonalStoreItemHelper;
import com.callapp.contacts.activity.marketplace.videoRingtone.AssignPersonalStoreItemAdapter;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.objectbox.PersonalStoreItemUrlData;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.contacts.widget.ProfilePictureView;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.a.n;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\b\u0018�� 72\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00020\u0001:\u0007456789:B\u001b\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u000e\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0011J\b\u0010\u0012\u001a\u00020\u0011H\u0016J\u0010\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0016\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019J\u001c\u0010\u001a\u001a\u00020\u00152\n\u0010\u001b\u001a\u0006\u0012\u0002\b\u00030\u00022\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u001c\u0010\u001c\u001a\u0006\u0012\u0002\b\u00030\u00022\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u0011H\u0016J&\u0010 \u001a\u00020\u00152\u0006\u0010!\u001a\u00020\u00192\u0006\u0010\"\u001a\u00020\u00112\u0006\u0010#\u001a\u00020\u00112\u0006\u0010$\u001a\u00020%J\u0014\u0010&\u001a\u00020\u00152\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004J&\u0010'\u001a\u00020\u00152\u0006\u0010(\u001a\u00020\u00112\u0016\u0010)\u001a\u0012\u0012\u0004\u0012\u00020+0*j\b\u0012\u0004\u0012\u00020+`,J\u001e\u0010-\u001a\u00020\u00152\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u0002012\u0006\u00102\u001a\u000203R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n��\u001a\u0004\b\t\u0010\nR \u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006;"}, d2 = {"Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter$BaseViewHolder;", "personalStoreItemList", "", "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;", "itemClickListener", "Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter$OnItemClickListener;", "(Ljava/util/List;Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter$OnItemClickListener;)V", "getItemClickListener", "()Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter$OnItemClickListener;", "getPersonalStoreItemList", "()Ljava/util/List;", "setPersonalStoreItemList", "(Ljava/util/List;)V", "getItemAtPosition", "position", "", "getItemCount", "getItemViewType", "heightLight", "", "highlight", "", "view", "Landroid/view/View;", "onBindViewHolder", "holder", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "setPersonalStoreItemBackgroundColor", "itemView", "backgroundColor", "strokeColor", "strokeWidth", "", "setPersonalStoreItemDataList", "setPersonalStoreItemDetailsData", "indexToUpdate", "personalStoreItemDetailsData", "Ljava/util/ArrayList;", "Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;", "Lkotlin/collections/ArrayList;", "setPersonalStoreItemImageCornerRadius", "context", "Landroid/content/Context;", "personalStoreItemImage", "Landroid/widget/ImageView;", "personalStoreItemUrl", "", "AssignPersonalStoreItemToAllViewHolder", "AssignPersonalStoreItemToContactsViewHolder", "BaseViewHolder", "Companion", "OnItemClickListener", "PlaceHolderAssignAllPersonalStoreItemViewHolder", "PlaceHolderAssignContactPersonalStoreItemViewHolder", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter.class */
public final class AssignPersonalStoreItemAdapter extends RecyclerView.a<BaseViewHolder<?>> {

    /* renamed from: a  reason: collision with root package name */
    public static final Companion f13318a = new Companion(null);

    /* renamed from: b  reason: collision with root package name */
    private List<? extends PersonalStoreItemUrlData> f13319b;

    /* renamed from: c  reason: collision with root package name */
    private final OnItemClickListener f13320c;

    @Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\b\u0086\u0004\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\nH\u0016¨\u0006\u000b"}, d2 = {"Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter$AssignPersonalStoreItemToAllViewHolder;", "Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter$BaseViewHolder;", "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;", "itemView", "Landroid/view/View;", "(Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter;Landroid/view/View;)V", "bind", "", "item", "highlight", "", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter$AssignPersonalStoreItemToAllViewHolder.class */
    public final class AssignPersonalStoreItemToAllViewHolder extends BaseViewHolder<PersonalStoreItemUrlData> {
        final /* synthetic */ AssignPersonalStoreItemAdapter r;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AssignPersonalStoreItemToAllViewHolder(AssignPersonalStoreItemAdapter assignPersonalStoreItemAdapter, View itemView) {
            super(itemView);
            p.d(itemView, "itemView");
            this.r = assignPersonalStoreItemAdapter;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\b\u0086\u0004\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\nH\u0016¨\u0006\u000b"}, d2 = {"Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter$AssignPersonalStoreItemToContactsViewHolder;", "Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter$BaseViewHolder;", "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;", "itemView", "Landroid/view/View;", "(Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter;Landroid/view/View;)V", "bind", "", "item", "highlight", "", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter$AssignPersonalStoreItemToContactsViewHolder.class */
    public final class AssignPersonalStoreItemToContactsViewHolder extends BaseViewHolder<PersonalStoreItemUrlData> {
        final /* synthetic */ AssignPersonalStoreItemAdapter r;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AssignPersonalStoreItemToContactsViewHolder(AssignPersonalStoreItemAdapter assignPersonalStoreItemAdapter, View itemView) {
            super(itemView);
            p.d(itemView, "itemView");
            this.r = assignPersonalStoreItemAdapter;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\b&\u0018��*\u0004\b��\u0010\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u001d\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00028��2\u0006\u0010\t\u001a\u00020\nH&¢\u0006\u0002\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter$BaseViewHolder;", "T", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "itemView", "Landroid/view/View;", "(Landroid/view/View;)V", "bind", "", "item", "highlight", "", "(Ljava/lang/Object;Z)V", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter$BaseViewHolder.class */
    public static abstract class BaseViewHolder<T> extends RecyclerView.v {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public BaseViewHolder(View itemView) {
            super(itemView);
            p.d(itemView, "itemView");
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��¨\u0006\n"}, d2 = {"Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter$Companion;", "", "()V", "TYPE_ASSIGNED_NONE", "", "TYPE_ASSIGNED_TO_ALL", "TYPE_ASSIGNED_TO_CONTACTS", "TYPE_DEFAULT_PERSONAL_STORE_ITEM", "TYPE_PLACEHOLDER_TO_ALL", "TYPE_PLACEHOLDER_TO_CONTACTS", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018��2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0018\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH&J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\rH&J\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\rH&J\u0010\u0010\u000f\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\rH&¨\u0006\u0010"}, d2 = {"Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter$OnItemClickListener;", "", "onAddClicked", "", "flowType", "", "onContactsSelected", "view", "Landroid/view/View;", "names", "", "onDeleteClicked", "personalStoreItemUrlData", "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;", "onEditContactClicked", "onShareClicked", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter$OnItemClickListener.class */
    public interface OnItemClickListener {
        void a(View view, String str);

        void a(PersonalStoreItemUrlData personalStoreItemUrlData);

        void b(int i);

        void b(PersonalStoreItemUrlData personalStoreItemUrlData);

        void c(PersonalStoreItemUrlData personalStoreItemUrlData);
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\b\u0086\u0004\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\nH\u0016¨\u0006\u000b"}, d2 = {"Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter$PlaceHolderAssignAllPersonalStoreItemViewHolder;", "Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter$BaseViewHolder;", "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;", "itemView", "Landroid/view/View;", "(Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter;Landroid/view/View;)V", "bind", "", "item", "highlight", "", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter$PlaceHolderAssignAllPersonalStoreItemViewHolder.class */
    public final class PlaceHolderAssignAllPersonalStoreItemViewHolder extends BaseViewHolder<PersonalStoreItemUrlData> {
        final /* synthetic */ AssignPersonalStoreItemAdapter r;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PlaceHolderAssignAllPersonalStoreItemViewHolder(AssignPersonalStoreItemAdapter assignPersonalStoreItemAdapter, View itemView) {
            super(itemView);
            p.d(itemView, "itemView");
            this.r = assignPersonalStoreItemAdapter;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\b\u0086\u0004\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\nH\u0016¨\u0006\u000b"}, d2 = {"Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter$PlaceHolderAssignContactPersonalStoreItemViewHolder;", "Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter$BaseViewHolder;", "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;", "itemView", "Landroid/view/View;", "(Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter;Landroid/view/View;)V", "bind", "", "item", "highlight", "", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter$PlaceHolderAssignContactPersonalStoreItemViewHolder.class */
    public final class PlaceHolderAssignContactPersonalStoreItemViewHolder extends BaseViewHolder<PersonalStoreItemUrlData> {
        final /* synthetic */ AssignPersonalStoreItemAdapter r;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PlaceHolderAssignContactPersonalStoreItemViewHolder(AssignPersonalStoreItemAdapter assignPersonalStoreItemAdapter, View itemView) {
            super(itemView);
            p.d(itemView, "itemView");
            this.r = assignPersonalStoreItemAdapter;
        }
    }

    public AssignPersonalStoreItemAdapter(List<? extends PersonalStoreItemUrlData> personalStoreItemList, OnItemClickListener itemClickListener) {
        p.d(personalStoreItemList, "personalStoreItemList");
        p.d(itemClickListener, "itemClickListener");
        this.f13319b = personalStoreItemList;
        this.f13320c = itemClickListener;
    }

    public static void a(Context context, ImageView personalStoreItemImage, String personalStoreItemUrl) {
        p.d(context, "context");
        p.d(personalStoreItemImage, "personalStoreItemImage");
        p.d(personalStoreItemUrl, "personalStoreItemUrl");
        GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(personalStoreItemImage, personalStoreItemUrl, context);
        glideRequestBuilder.s = true;
        glideRequestBuilder.q = true;
        glideRequestBuilder.d();
    }

    private static void a(View itemView, int i, int i2, float f) {
        p.d(itemView, "itemView");
        ViewUtils.b(itemView, 2131230831, i, i2, (int) Activities.a(f));
    }

    private static void a(boolean z, View view) {
        p.d(view, "view");
        if (z) {
            a(view, ThemeUtils.getColor(2131099775), ThemeUtils.getColor(2131099784), 2.0f);
        } else {
            a(view, ThemeUtils.getColor(2131099775), ThemeUtils.getColor(2131099891), 1.0f);
        }
    }

    public final PersonalStoreItemUrlData getItemAtPosition(int i) {
        return (PersonalStoreItemUrlData) this.f13319b.get(i);
    }

    public final OnItemClickListener getItemClickListener() {
        return this.f13320c;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public final int getItemCount() {
        return this.f13319b.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public final int getItemViewType(int i) {
        return ((PersonalStoreItemUrlData) this.f13319b.get(i)).getType();
    }

    public final List<PersonalStoreItemUrlData> getPersonalStoreItemList() {
        return this.f13319b;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public final /* synthetic */ void onBindViewHolder(BaseViewHolder<?> baseViewHolder, int i) {
        int i2;
        BaseViewHolder<?> holder = baseViewHolder;
        p.d(holder, "holder");
        final PersonalStoreItemUrlData item = (PersonalStoreItemUrlData) this.f13319b.get(i);
        if (holder instanceof PlaceHolderAssignContactPersonalStoreItemViewHolder) {
            final PlaceHolderAssignContactPersonalStoreItemViewHolder placeHolderAssignContactPersonalStoreItemViewHolder = (PlaceHolderAssignContactPersonalStoreItemViewHolder) holder;
            boolean z = PersonalStoreItemFragment.f13358b.getSelectedPersonalStoreItemIndex() == i;
            p.d(item, "item");
            placeHolderAssignContactPersonalStoreItemViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.marketplace.videoRingtone.AssignPersonalStoreItemAdapter$PlaceHolderAssignContactPersonalStoreItemViewHolder$bind$1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AnalyticsManager analyticsManager = AnalyticsManager.get();
                    StringBuilder sb = new StringBuilder();
                    PersonalStoreItemUrlData.PersonalStoreItemType personalStoreItemType = item.getPersonalStoreItemType();
                    p.b(personalStoreItemType, "item.personalStoreItemType");
                    sb.append(PersonalStoreItemHelper.a(personalStoreItemType));
                    sb.append(", - Add personal store item to contact from placeholder card");
                    analyticsManager.a(Constants.PERSONAL_STORE_ITEM, "Card clicked", sb.toString());
                    AssignPersonalStoreItemAdapter.PlaceHolderAssignContactPersonalStoreItemViewHolder.this.r.getItemClickListener().b(1);
                }
            });
            ImageView imageView = (ImageView) placeHolderAssignContactPersonalStoreItemViewHolder.itemView.findViewById(2131361984);
            ImageView imageView2 = (ImageView) placeHolderAssignContactPersonalStoreItemViewHolder.itemView.findViewById(2131363012);
            if (item.getPersonalStoreItemType() == PersonalStoreItemUrlData.PersonalStoreItemType.VIDEO_RINGTONE) {
                imageView2.setImageResource(2131231963);
                imageView.setImageResource(2131231430);
            } else {
                imageView2.setImageResource(2131231836);
                imageView.setImageResource(2131231429);
            }
            ViewUtils.b(imageView, 2131232141, ThemeUtils.getColor(2131099784), 0, 0);
            View itemView = placeHolderAssignContactPersonalStoreItemViewHolder.itemView;
            p.b(itemView, "itemView");
            a(z, itemView);
        } else if (holder instanceof PlaceHolderAssignAllPersonalStoreItemViewHolder) {
            final PlaceHolderAssignAllPersonalStoreItemViewHolder placeHolderAssignAllPersonalStoreItemViewHolder = (PlaceHolderAssignAllPersonalStoreItemViewHolder) holder;
            boolean z2 = PersonalStoreItemFragment.f13358b.getSelectedPersonalStoreItemIndex() == i;
            p.d(item, "item");
            ImageView videoImage = (ImageView) placeHolderAssignAllPersonalStoreItemViewHolder.itemView.findViewById(2131364509);
            TextView tvName = (TextView) placeHolderAssignAllPersonalStoreItemViewHolder.itemView.findViewById(2131364412);
            TextView tvAssign = (TextView) placeHolderAssignAllPersonalStoreItemViewHolder.itemView.findViewById(2131364404);
            ImageView imageView3 = (ImageView) placeHolderAssignAllPersonalStoreItemViewHolder.itemView.findViewById(2131361984);
            String personalStoreItemUrl = item.getPersonalStoreItemUrl();
            if (personalStoreItemUrl != null) {
                View itemView2 = placeHolderAssignAllPersonalStoreItemViewHolder.itemView;
                p.b(itemView2, "itemView");
                Context context = itemView2.getContext();
                p.b(context, "itemView.context");
                p.b(videoImage, "videoImage");
                a(context, videoImage, personalStoreItemUrl);
            }
            p.b(tvName, "tvName");
            tvName.setText(Activities.getString(2131886724));
            p.b(tvAssign, "tvAssign");
            tvAssign.setText(Activities.getString(2131886268));
            tvAssign.setTextColor(ThemeUtils.getColor(ThemeUtils.isThemeLight() ? 2131099713 : 2131099919));
            tvName.setTextColor(ThemeUtils.getColor(2131100140));
            placeHolderAssignAllPersonalStoreItemViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.marketplace.videoRingtone.AssignPersonalStoreItemAdapter$PlaceHolderAssignAllPersonalStoreItemViewHolder$bind$2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AnalyticsManager analyticsManager = AnalyticsManager.get();
                    StringBuilder sb = new StringBuilder();
                    PersonalStoreItemUrlData.PersonalStoreItemType personalStoreItemType = item.getPersonalStoreItemType();
                    p.b(personalStoreItemType, "item.personalStoreItemType");
                    sb.append(PersonalStoreItemHelper.a(personalStoreItemType));
                    sb.append(", - Add personal store item to all from placeholder card");
                    analyticsManager.a(Constants.PERSONAL_STORE_ITEM, "Card clicked", sb.toString());
                    AssignPersonalStoreItemAdapter.PlaceHolderAssignAllPersonalStoreItemViewHolder.this.r.getItemClickListener().b(2);
                }
            });
            if (item.getPersonalStoreItemType() == PersonalStoreItemUrlData.PersonalStoreItemType.VIDEO_RINGTONE) {
                ViewUtils.b(imageView3, 2131232141, ThemeUtils.getColor(2131099784), 0, 0);
                imageView3.setImageResource(2131231430);
            } else {
                imageView3.setImageResource(2131231429);
            }
            View itemView3 = placeHolderAssignAllPersonalStoreItemViewHolder.itemView;
            p.b(itemView3, "itemView");
            a(z2, itemView3);
        } else if (holder instanceof AssignPersonalStoreItemToAllViewHolder) {
            final AssignPersonalStoreItemToAllViewHolder assignPersonalStoreItemToAllViewHolder = (AssignPersonalStoreItemToAllViewHolder) holder;
            boolean z3 = PersonalStoreItemFragment.f13358b.getSelectedPersonalStoreItemIndex() == i;
            p.d(item, "item");
            ImageView videoImage2 = (ImageView) assignPersonalStoreItemToAllViewHolder.itemView.findViewById(2131364509);
            ImageView imageView4 = (ImageView) assignPersonalStoreItemToAllViewHolder.itemView.findViewById(2131362549);
            ImageView editVideo = (ImageView) assignPersonalStoreItemToAllViewHolder.itemView.findViewById(2131362678);
            ImageView shareVideo = (ImageView) assignPersonalStoreItemToAllViewHolder.itemView.findViewById(2131363850);
            TextView tvName2 = (TextView) assignPersonalStoreItemToAllViewHolder.itemView.findViewById(2131364412);
            TextView tvAssign2 = (TextView) assignPersonalStoreItemToAllViewHolder.itemView.findViewById(2131364404);
            tvName2.setTextColor(ThemeUtils.getColor(2131100140));
            tvAssign2.setTextColor(ThemeUtils.getColor(ThemeUtils.isThemeLight() ? 2131099713 : 2131099921));
            if (item.getPersonalStoreItemType() == PersonalStoreItemUrlData.PersonalStoreItemType.VIDEO_RINGTONE) {
                p.b(tvName2, "tvName");
                tvName2.setText(Activities.getString(2131886725));
            } else {
                p.b(tvName2, "tvName");
                tvName2.setText(Activities.getString(2131886720));
            }
            if (item.getPersonalStoreItemUserData().size() > 0) {
                p.b(editVideo, "editVideo");
                editVideo.setVisibility(8);
                p.b(tvAssign2, "tvAssign");
                tvAssign2.setText(Activities.getString(2131886268));
                if (StringUtils.h(item.getPersonalStoreItemUrl()) || !CollectionUtils.b(item.getPersonalStoreItemDetailsData()) || item.getPersonalStoreItemType() != PersonalStoreItemUrlData.PersonalStoreItemType.VIDEO_RINGTONE) {
                    p.b(shareVideo, "shareVideo");
                    shareVideo.setVisibility(8);
                } else {
                    p.b(shareVideo, "shareVideo");
                    shareVideo.setVisibility(0);
                }
            } else {
                p.b(shareVideo, "shareVideo");
                shareVideo.setVisibility(8);
                p.b(editVideo, "editVideo");
                editVideo.setVisibility(0);
                p.b(tvAssign2, "tvAssign");
                tvAssign2.setText(Activities.getString(2131887486));
            }
            String personalStoreItemUrl2 = item.getPersonalStoreItemUrl();
            if (personalStoreItemUrl2 != null) {
                View itemView4 = assignPersonalStoreItemToAllViewHolder.itemView;
                p.b(itemView4, "itemView");
                Context context2 = itemView4.getContext();
                p.b(context2, "itemView.context");
                p.b(videoImage2, "videoImage");
                a(context2, videoImage2, personalStoreItemUrl2);
            }
            imageView4.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.marketplace.videoRingtone.AssignPersonalStoreItemAdapter$AssignPersonalStoreItemToAllViewHolder$bind$2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AssignPersonalStoreItemAdapter.AssignPersonalStoreItemToAllViewHolder.this.r.getItemClickListener().a(item);
                }
            });
            editVideo.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.marketplace.videoRingtone.AssignPersonalStoreItemAdapter$AssignPersonalStoreItemToAllViewHolder$bind$3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AssignPersonalStoreItemAdapter.AssignPersonalStoreItemToAllViewHolder.this.r.getItemClickListener().b(item);
                }
            });
            shareVideo.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.marketplace.videoRingtone.AssignPersonalStoreItemAdapter$AssignPersonalStoreItemToAllViewHolder$bind$4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AssignPersonalStoreItemAdapter.AssignPersonalStoreItemToAllViewHolder.this.r.getItemClickListener().c(item);
                }
            });
            imageView4.setColorFilter(ThemeUtils.getColor(2131099882));
            editVideo.setColorFilter(ThemeUtils.getColor(2131099882));
            shareVideo.setColorFilter(ThemeUtils.getColor(2131099882));
            View itemView5 = assignPersonalStoreItemToAllViewHolder.itemView;
            p.b(itemView5, "itemView");
            a(z3, itemView5);
        } else if (holder instanceof AssignPersonalStoreItemToContactsViewHolder) {
            final AssignPersonalStoreItemToContactsViewHolder assignPersonalStoreItemToContactsViewHolder = (AssignPersonalStoreItemToContactsViewHolder) holder;
            boolean z4 = PersonalStoreItemFragment.f13358b.getSelectedPersonalStoreItemIndex() == i;
            p.d(item, "item");
            ImageView videoImage3 = (ImageView) assignPersonalStoreItemToContactsViewHolder.itemView.findViewById(2131364509);
            ProfilePictureView profilePictureView = (ProfilePictureView) assignPersonalStoreItemToContactsViewHolder.itemView.findViewById(2131363565);
            ImageView imageView5 = (ImageView) assignPersonalStoreItemToContactsViewHolder.itemView.findViewById(2131362678);
            ImageView shareVideo2 = (ImageView) assignPersonalStoreItemToContactsViewHolder.itemView.findViewById(2131363850);
            ImageView imageView6 = (ImageView) assignPersonalStoreItemToContactsViewHolder.itemView.findViewById(2131362549);
            TextView counterTextView = (TextView) assignPersonalStoreItemToContactsViewHolder.itemView.findViewById(2131362489);
            final View counterTextContainer = assignPersonalStoreItemToContactsViewHolder.itemView.findViewById(2131362488);
            ViewUtils.c(counterTextContainer, 2131232390, ThemeUtils.getColor(2131099784));
            View.OnClickListener assignPersonalStoreItemAdapter$AssignPersonalStoreItemToContactsViewHolder$bind$onContactClickListener$1 = new View.OnClickListener() { // from class: com.callapp.contacts.activity.marketplace.videoRingtone.AssignPersonalStoreItemAdapter$AssignPersonalStoreItemToContactsViewHolder$bind$onContactClickListener$1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AssignPersonalStoreItemAdapter.OnItemClickListener itemClickListener = AssignPersonalStoreItemAdapter.AssignPersonalStoreItemToContactsViewHolder.this.r.getItemClickListener();
                    View counterTextContainer2 = counterTextContainer;
                    p.b(counterTextContainer2, "counterTextContainer");
                    List<String> names = item.getNames();
                    p.b(names, "item.names");
                    itemClickListener.a(counterTextContainer2, n.a(names, org.apache.commons.lang3.StringUtils.LF, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 62));
                }
            };
            int size = item.getPersonalStoreItemUserData().size();
            p.b(counterTextContainer, "counterTextContainer");
            if (size > 1) {
                counterTextContainer.setOnClickListener(assignPersonalStoreItemAdapter$AssignPersonalStoreItemToContactsViewHolder$bind$onContactClickListener$1);
                p.b(counterTextView, "counterTextView");
                counterTextView.setText(String.valueOf(size));
                i2 = 0;
            } else {
                i2 = 8;
            }
            counterTextContainer.setVisibility(i2);
            profilePictureView.setOnClickListener(assignPersonalStoreItemAdapter$AssignPersonalStoreItemToContactsViewHolder$bind$onContactClickListener$1);
            imageView6.setColorFilter(ThemeUtils.getColor(2131099882));
            imageView5.setColorFilter(ThemeUtils.getColor(2131099882));
            shareVideo2.setColorFilter(ThemeUtils.getColor(2131099882));
            String personalStoreItemUrl3 = item.getPersonalStoreItemUrl();
            if (personalStoreItemUrl3 != null) {
                View itemView6 = assignPersonalStoreItemToContactsViewHolder.itemView;
                p.b(itemView6, "itemView");
                Context context3 = itemView6.getContext();
                p.b(context3, "itemView.context");
                p.b(videoImage3, "videoImage");
                a(context3, videoImage3, personalStoreItemUrl3);
                if (StringUtils.h(personalStoreItemUrl3) || !CollectionUtils.b(item.getPersonalStoreItemDetailsData()) || item.getPersonalStoreItemType() != PersonalStoreItemUrlData.PersonalStoreItemType.VIDEO_RINGTONE) {
                    p.b(shareVideo2, "shareVideo");
                    shareVideo2.setVisibility(8);
                } else {
                    p.b(shareVideo2, "shareVideo");
                    shareVideo2.setVisibility(0);
                }
            }
            if (CollectionUtils.b(item.getPhotoUrls())) {
                GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(item.getPhotoUrls().get(0));
                glideRequestBuilder.l = true;
                glideRequestBuilder.j = true;
                profilePictureView.a(glideRequestBuilder);
            } else {
                profilePictureView.a();
                if (CollectionUtils.b(item.getNames())) {
                    profilePictureView.setText(StringUtils.r(item.getNames().get(0)));
                }
            }
            imageView6.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.marketplace.videoRingtone.AssignPersonalStoreItemAdapter$AssignPersonalStoreItemToContactsViewHolder$bind$2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AssignPersonalStoreItemAdapter.AssignPersonalStoreItemToContactsViewHolder.this.r.getItemClickListener().a(item);
                }
            });
            imageView5.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.marketplace.videoRingtone.AssignPersonalStoreItemAdapter$AssignPersonalStoreItemToContactsViewHolder$bind$3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AssignPersonalStoreItemAdapter.AssignPersonalStoreItemToContactsViewHolder.this.r.getItemClickListener().b(item);
                }
            });
            shareVideo2.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.marketplace.videoRingtone.AssignPersonalStoreItemAdapter$AssignPersonalStoreItemToContactsViewHolder$bind$4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AssignPersonalStoreItemAdapter.AssignPersonalStoreItemToContactsViewHolder.this.r.getItemClickListener().c(item);
                }
            });
            View itemView7 = assignPersonalStoreItemToContactsViewHolder.itemView;
            p.b(itemView7, "itemView");
            a(z4, itemView7);
        } else {
            throw new IllegalArgumentException();
        }
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [androidx.recyclerview.widget.RecyclerView$v, com.callapp.contacts.activity.marketplace.videoRingtone.AssignPersonalStoreItemAdapter$BaseViewHolder<?>] */
    @Override // androidx.recyclerview.widget.RecyclerView.a
    public final /* synthetic */ BaseViewHolder<?> onCreateViewHolder(ViewGroup parent, int i) {
        PlaceHolderAssignContactPersonalStoreItemViewHolder placeHolderAssignContactPersonalStoreItemViewHolder;
        p.d(parent, "parent");
        if (i == Integer.MIN_VALUE) {
            View view = LayoutInflater.from(parent.getContext()).inflate(2131558977, parent, false);
            p.b(view, "view");
            placeHolderAssignContactPersonalStoreItemViewHolder = new PlaceHolderAssignContactPersonalStoreItemViewHolder(this, view);
        } else if (i == 100) {
            View view2 = LayoutInflater.from(parent.getContext()).inflate(2131558976, parent, false);
            p.b(view2, "view");
            placeHolderAssignContactPersonalStoreItemViewHolder = new PlaceHolderAssignAllPersonalStoreItemViewHolder(this, view2);
        } else if (i == Integer.MAX_VALUE || i == 0) {
            View view3 = LayoutInflater.from(parent.getContext()).inflate(2131559124, parent, false);
            p.b(view3, "view");
            placeHolderAssignContactPersonalStoreItemViewHolder = new AssignPersonalStoreItemToAllViewHolder(this, view3);
        } else if (i == 1) {
            View view4 = LayoutInflater.from(parent.getContext()).inflate(2131558974, parent, false);
            p.b(view4, "view");
            placeHolderAssignContactPersonalStoreItemViewHolder = new AssignPersonalStoreItemToContactsViewHolder(this, view4);
        } else {
            throw new IllegalArgumentException("Invalid view type");
        }
        return (RecyclerView.v) placeHolderAssignContactPersonalStoreItemViewHolder;
    }

    public final void setPersonalStoreItemDataList(List<? extends PersonalStoreItemUrlData> personalStoreItemList) {
        p.d(personalStoreItemList, "personalStoreItemList");
        this.f13319b = personalStoreItemList;
        notifyDataSetChanged();
    }

    public final void setPersonalStoreItemDetailsData(int i, ArrayList<PersonalStoreItemDetailsData> personalStoreItemDetailsData) {
        p.d(personalStoreItemDetailsData, "personalStoreItemDetailsData");
        ((PersonalStoreItemUrlData) this.f13319b.get(i)).setPersonalStoreItemDetailsData(personalStoreItemDetailsData);
        notifyItemChanged(i);
    }
}
