.class public Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder;
.super Lcom/callapp/contacts/activity/favorites/BaseFavoriteViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder$FavoritesAdapterDataLoadTask;
    }
.end annotation


# instance fields
.field private A:Landroidx/cardview/widget/CardView;

.field private B:Landroid/widget/FrameLayout;

.field private C:Landroid/widget/FrameLayout;

.field private w:Lcom/callapp/contacts/widget/ProfilePictureView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;

.field private z:Landroidx/cardview/widget/CardView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0a059c

    const/4 v1, 0x1

    .line 49
    invoke-direct {p0, p1, v0, v1}, Lcom/callapp/contacts/activity/favorites/BaseFavoriteViewHolder;-><init>(Landroid/view/View;IZ)V

    .line 50
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder;->C:Landroid/widget/FrameLayout;

    const v0, 0x7f0a06ed

    .line 51
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/widget/ProfilePictureView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder;->w:Lcom/callapp/contacts/widget/ProfilePictureView;

    const v0, 0x7f0a051b

    .line 52
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0614

    .line 53
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder;->x:Landroid/widget/TextView;

    const v1, 0x7f0a06ac

    .line 54
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder;->y:Landroid/widget/TextView;

    const v1, 0x7f060088

    .line 55
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    const v0, 0x7f0a015a

    .line 56
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder;->z:Landroidx/cardview/widget/CardView;

    const v0, 0x7f0a0959

    .line 57
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder;->A:Landroidx/cardview/widget/CardView;

    const v0, 0x7f0a051d

    .line 58
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder;->B:Landroid/widget/FrameLayout;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x1

    .line 2113
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 2114
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder;->t:Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    iget-object v1, p0, Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder;->t:Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    iget-object p0, p0, Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder;->t:Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->getContactId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Lcom/callapp/framework/phone/Phone;J)Z

    move-result p0

    const/4 v1, 0x0

    invoke-static {p1, v0, p0, v1}, Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/content/Context;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;ZLcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    .line 2115
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p0

    const-string p1, "Contact List"

    const-string v0, "Calling contact from favorites"

    const-string v1, "Clicked"

    invoke-virtual {p0, p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;I)Z
    .locals 2

    .line 2121
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Lcom/callapp/framework/phone/Phone;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2122
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p0

    const p1, 0x7f1204cc

    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 3111
    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p0, 0x0

    goto :goto_0

    .line 2125
    :cond_0
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->CONTACTS:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    invoke-virtual {v0}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->ordinal()I

    move-result v0

    const/16 v1, 0x8

    invoke-static {v0, p2, v1}, Lcom/callapp/contacts/model/DataChangedInfo;->create(III)Lcom/callapp/contacts/model/DataChangedInfo;

    move-result-object p2

    .line 2129
    sget-object v0, Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;->CALL_LOG_CONTACT_LIST:Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;

    const-string v1, "favorite"

    invoke-static {p0, p1, v1, p2, v0}, Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/content/Context;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Ljava/lang/String;Lcom/callapp/contacts/model/DataChangedInfo;Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;)V

    const/4 p0, 0x1

    .line 2133
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Open contact details from favorites. successful: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Contact List"

    const-string v1, "Clicked"

    invoke-virtual {p1, v0, p2, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;Lcom/callapp/contacts/activity/base/ScrollEvents;Z)V
    .locals 9

    if-eqz p1, :cond_3

    .line 74
    iget-object v0, p0, Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder;->w:Lcom/callapp/contacts/widget/ProfilePictureView;

    iget-object v1, p1, Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;->displayName:Ljava/lang/String;

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/ProfilePictureView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;->getCacheKey()Ljava/lang/String;

    move-result-object v3

    iget-wide v6, p1, Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;->contactId:J

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v8

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v2 .. v8}, Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder;->a(Ljava/lang/String;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/base/ScrollEvents;JLcom/callapp/framework/phone/Phone;)V

    .line 76
    iget-object p2, p0, Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder;->x:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;->displayName:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object p2, p0, Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder;->y:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1160
    iget-object p2, p0, Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder;->z:Landroidx/cardview/widget/CardView;

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    const/16 p3, 0x8

    .line 1162
    invoke-virtual {p2, p3}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 1164
    invoke-virtual {p2, p3}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 79
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder;->C:Landroid/widget/FrameLayout;

    new-instance p3, Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder$1;

    invoke-direct {p3, p0}, Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder$1;-><init>(Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder;)V

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object p2, p0, Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder;->B:Landroid/widget/FrameLayout;

    new-instance p3, Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder$2;

    invoke-direct {p3, p0, p1}, Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder$2;-><init>(Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder;Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;)V

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result p1

    const p2, 0x7f06010e

    const p3, 0x7f060244

    if-eqz p1, :cond_2

    .line 97
    iget-object p1, p0, Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder;->x:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    iget-object p1, p0, Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder;->y:Landroid/widget/TextView;

    const p2, 0x7f060113

    invoke-static {p2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    iget-object p1, p0, Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder;->A:Landroidx/cardview/widget/CardView;

    invoke-static {p3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 100
    iget-object p1, p0, Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder;->z:Landroidx/cardview/widget/CardView;

    const p2, 0x7f060111

    invoke-static {p2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    return-void

    .line 103
    :cond_2
    iget-object p1, p0, Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder;->x:Landroid/widget/TextView;

    invoke-static {p3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    iget-object p1, p0, Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder;->y:Landroid/widget/TextView;

    const p3, 0x7f06010f

    invoke-static {p3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 105
    iget-object p1, p0, Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder;->A:Landroidx/cardview/widget/CardView;

    const p3, 0x7f060112

    invoke-static {p3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 106
    iget-object p1, p0, Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder;->z:Landroidx/cardview/widget/CardView;

    invoke-static {p2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    :cond_3
    return-void
.end method

.method public getLoaderLoadFields()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation

    .line 68
    sget-object v0, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->CONTACTS_ADAPTER_LOAD_FIELD:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getProfilePicture()Lcom/callapp/contacts/widget/ProfilePictureView;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder;->w:Lcom/callapp/contacts/widget/ProfilePictureView;

    return-object v0
.end method

.method public final l()Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;
    .locals 2

    .line 63
    new-instance v0, Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder$FavoritesAdapterDataLoadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder$FavoritesAdapterDataLoadTask;-><init>(Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder;Lcom/callapp/contacts/activity/favorites/FavoriteViewHolder$1;)V

    return-object v0
.end method
