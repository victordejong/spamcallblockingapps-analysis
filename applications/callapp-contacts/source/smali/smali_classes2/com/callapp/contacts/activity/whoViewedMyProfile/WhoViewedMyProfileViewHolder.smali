.class public Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;
.super Lcom/callapp/contacts/activity/base/BaseContactHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder$WhoViewedMyProfileAdapterDataLoadTask;
    }
.end annotation


# instance fields
.field private final A:Lcom/callapp/contacts/widget/ProfilePictureView;

.field private B:Lcom/callapp/contacts/model/contact/ContactData;

.field private final C:Landroid/widget/LinearLayout;

.field private final D:Landroid/widget/LinearLayout;

.field private final E:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final F:Landroid/widget/ImageView;

.field private final G:Lcom/callapp/contacts/activity/base/ScrollEvents;

.field private final H:Lcom/callapp/contacts/activity/contact/details/ContactAction;

.field private final u:Landroid/widget/TextView;

.field private final v:Landroid/widget/TextView;

.field private final w:Landroid/widget/TextView;

.field private final x:Landroid/widget/TextView;

.field private final y:Landroid/view/View;

.field private z:Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/callapp/contacts/activity/base/ScrollEvents;)V
    .locals 7

    .line 103
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/base/BaseContactHolder;-><init>(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;->B:Lcom/callapp/contacts/model/contact/ContactData;

    .line 104
    iput-object p2, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;->G:Lcom/callapp/contacts/activity/base/ScrollEvents;

    .line 105
    invoke-static {}, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->getIM()Lcom/callapp/contacts/activity/contact/details/ContactAction;

    move-result-object p2

    iput-object p2, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;->H:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    const v0, 0x7f0a01d8

    .line 106
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;->y:Landroid/view/View;

    const v1, 0x7f0a0ab6

    .line 107
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v1, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;->E:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 108
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07017a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setElevation(F)V

    .line 109
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result v2

    const/4 v3, 0x0

    const v4, 0x7f0800af

    if-eqz v2, :cond_0

    const v2, 0x7f060244

    .line 110
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v5

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-static {v1, v4, v5, v2, v3}, Lcom/callapp/contacts/util/ViewUtils;->b(Landroid/view/View;IIII)V

    goto :goto_0

    :cond_0
    const v2, 0x7f06010e

    .line 112
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v5

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-static {v1, v4, v5, v2, v3}, Lcom/callapp/contacts/util/ViewUtils;->b(Landroid/view/View;IIII)V

    :goto_0
    const v2, 0x7f060088

    .line 114
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    const v3, 0x7f0a06ed

    .line 115
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/widget/ProfilePictureView;

    iput-object v3, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;->A:Lcom/callapp/contacts/widget/ProfilePictureView;

    const v3, 0x7f0a0613

    .line 116
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;->u:Landroid/widget/TextView;

    const v4, 0x7f0601ec

    .line 117
    invoke-static {v4}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const v3, 0x7f0a0916

    .line 118
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;->v:Landroid/widget/TextView;

    const v4, 0x7f0601cc

    .line 119
    invoke-static {v4}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const v3, 0x7f0a06a9

    .line 120
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;->w:Landroid/widget/TextView;

    .line 121
    invoke-static {v4}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const v3, 0x7f0a042f

    .line 122
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;->x:Landroid/widget/TextView;

    .line 123
    invoke-static {v4}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const v3, 0x7f0a00c2

    .line 124
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v5, 0x7f120085

    .line 125
    invoke-static {v5}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    invoke-static {v4}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const v3, 0x7f0a04b7

    .line 127
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v5, 0x7f0a07dd

    .line 128
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;->D:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_1

    .line 131
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/contact/details/ContactAction;->getLargeIcon()I

    move-result p2

    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_1
    const p2, 0x7f0803b3

    .line 133
    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    const p2, 0x7f0a00c1

    .line 137
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-static {p2}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;->a(Landroid/widget/ImageView;)V

    const p2, 0x7f0a05ea

    .line 138
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 139
    invoke-static {v3}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;->a(Landroid/widget/ImageView;)V

    .line 141
    new-instance v6, Lcom/callapp/contacts/activity/whoViewedMyProfile/-$$Lambda$WhoViewedMyProfileViewHolder$JIA1PGo4Eo2NwmdsKo0P7qsmLEY;

    invoke-direct {v6, p0, v3}, Lcom/callapp/contacts/activity/whoViewedMyProfile/-$$Lambda$WhoViewedMyProfileViewHolder$JIA1PGo4Eo2NwmdsKo0P7qsmLEY;-><init>(Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-static {p2}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;->a(Landroid/widget/ImageView;)V

    const p2, 0x7f0a00c6

    .line 148
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;->C:Landroid/widget/LinearLayout;

    .line 149
    new-instance v3, Lcom/callapp/contacts/activity/whoViewedMyProfile/-$$Lambda$WhoViewedMyProfileViewHolder$0lBXqhVgvr1zkkZNdvmIXJLoK8M;

    invoke-direct {v3, p0}, Lcom/callapp/contacts/activity/whoViewedMyProfile/-$$Lambda$WhoViewedMyProfileViewHolder$0lBXqhVgvr1zkkZNdvmIXJLoK8M;-><init>(Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;)V

    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    new-instance p2, Lcom/callapp/contacts/activity/whoViewedMyProfile/-$$Lambda$WhoViewedMyProfileViewHolder$S2q1djB8KrdWCzWdeyR2FFqFUVs;

    invoke-direct {p2, p0}, Lcom/callapp/contacts/activity/whoViewedMyProfile/-$$Lambda$WhoViewedMyProfileViewHolder$S2q1djB8KrdWCzWdeyR2FFqFUVs;-><init>(Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;)V

    invoke-virtual {v5, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    new-instance p2, Lcom/callapp/contacts/activity/whoViewedMyProfile/-$$Lambda$WhoViewedMyProfileViewHolder$mFxEWJU2iMfmMZRJ-iiZLfM1pZY;

    invoke-direct {p2, p0}, Lcom/callapp/contacts/activity/whoViewedMyProfile/-$$Lambda$WhoViewedMyProfileViewHolder$mFxEWJU2iMfmMZRJ-iiZLfM1pZY;-><init>(Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;)V

    invoke-virtual {v1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a05ca

    .line 184
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v1, 0x7f120455

    .line 185
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    invoke-static {v4}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const p2, 0x7f0a019f

    .line 188
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;->F:Landroid/widget/ImageView;

    const v1, 0x7f0a0333

    .line 189
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const v1, 0x7f0600f3

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    const p1, 0x7f080427

    .line 190
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-static {p2, p1, v1}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;ILandroid/graphics/ColorFilter;)V

    .line 191
    new-instance p1, Lcom/callapp/contacts/activity/whoViewedMyProfile/-$$Lambda$WhoViewedMyProfileViewHolder$-zRbkpP10WU3FAogpcj3ImYnmPw;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/activity/whoViewedMyProfile/-$$Lambda$WhoViewedMyProfileViewHolder$-zRbkpP10WU3FAogpcj3ImYnmPw;-><init>(Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    new-instance p1, Lcom/callapp/contacts/activity/whoViewedMyProfile/-$$Lambda$WhoViewedMyProfileViewHolder$YYOvNKhtlaueyiZBQjS-N0TNjro;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/activity/whoViewedMyProfile/-$$Lambda$WhoViewedMyProfileViewHolder$YYOvNKhtlaueyiZBQjS-N0TNjro;-><init>(Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;)V

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 5

    .line 198
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "ViewProfile"

    const-string v1, "ClickViewProfileCall"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object p1, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;->F:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 200
    iget-object p1, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;->F:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;->z:Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;->z:Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v2

    iget-object v3, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;->B:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v3}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    iget-object v3, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;->B:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v3}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Lcom/callapp/framework/phone/Phone;J)Z

    move-result v2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;ZLcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    return-void
.end method

.method private static a(Landroid/widget/ImageView;)V
    .locals 3

    .line 245
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const v1, 0x7f0601cc

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method private synthetic a(Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 7

    const/4 v0, 0x1

    .line 142
    invoke-static {p2, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 143
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;->z:Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;

    sget-object v3, Lcom/callapp/contacts/action/Action$ContextType;->WHO_VIEW_PROFILE_ITEM:Lcom/callapp/contacts/action/Action$ContextType;

    sget-object v5, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$MENU_TYPE;->DROPPY:Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$MENU_TYPE;

    const-string v4, "WhoViewedMyProfile"

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lcom/callapp/contacts/util/ListsUtils;->b(Landroid/content/Context;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/action/Action$ContextType;Ljava/lang/String;Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$MENU_TYPE;Landroid/view/View;)V

    return-void
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 3

    .line 192
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Store"

    const-string v1, "Enter to plans screen - All Included"

    const-string v2, "ViewProfile"

    invoke-virtual {p1, v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;->y:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "PLAN_PAGE_SOURCE"

    const-string v1, "whoViewedMyProfile"

    .line 194
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    iget-object v0, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;->y:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic c(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x1

    .line 174
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 175
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Contact Details"

    const-string v2, "ContactScreen"

    const-string v3, "ViewProfile"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->CONTACTS:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    invoke-virtual {v0}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->ordinal()I

    move-result v0

    .line 178
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;->getAdapterPosition()I

    move-result v1

    const/16 v2, 0x9

    .line 177
    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/model/DataChangedInfo;->create(III)Lcom/callapp/contacts/model/DataChangedInfo;

    move-result-object v0

    .line 181
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;->z:Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;

    const-string v2, "WhoViewedMyProfileAdapter"

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v0, v3}, Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/content/Context;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Ljava/lang/String;Lcom/callapp/contacts/model/DataChangedInfo;Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;)V

    return-void
.end method

.method private synthetic d(Landroid/view/View;)V
    .locals 3

    .line 157
    iget-object v0, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;->B:Lcom/callapp/contacts/model/contact/ContactData;

    if-eqz v0, :cond_1

    .line 158
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "ViewProfile"

    const-string v2, "ClickViewProfileMessage"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;->H:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    if-eqz v0, :cond_0

    .line 161
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    iget-object v0, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;->H:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/ContactAction;->getType()Lcom/callapp/contacts/manager/Singletons$SenderType;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/manager/Singletons;->a(Lcom/callapp/contacts/manager/Singletons$SenderType;)Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/ImSender;

    move-result-object v0

    .line 162
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;->B:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-interface {v0, p1, v1}, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/ImSender;->openIm(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;)V

    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;->B:Lcom/callapp/contacts/model/contact/ContactData;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Lcom/callapp/contacts/model/contact/ContactData;Z)Landroid/content/Intent;

    move-result-object v0

    .line 167
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method private synthetic e(Landroid/view/View;)V
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;->B:Lcom/callapp/contacts/model/contact/ContactData;

    if-eqz v0, :cond_0

    .line 151
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "ViewProfile"

    const-string v2, "ClickViewProfileAddContact"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;->B:Lcom/callapp/contacts/model/contact/ContactData;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Lcom/callapp/contacts/model/contact/ContactData;Z)Landroid/content/Intent;

    move-result-object v0

    .line 153
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$-zRbkpP10WU3FAogpcj3ImYnmPw(Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;->b(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$0lBXqhVgvr1zkkZNdvmIXJLoK8M(Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;->e(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$JIA1PGo4Eo2NwmdsKo0P7qsmLEY(Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;->a(Landroid/widget/ImageView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$S2q1djB8KrdWCzWdeyR2FFqFUVs(Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;->d(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$YYOvNKhtlaueyiZBQjS-N0TNjro(Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$mFxEWJU2iMfmMZRJ-iiZLfM1pZY(Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;->c(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;)V
    .locals 7

    .line 205
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;->G:Lcom/callapp/contacts/activity/base/ScrollEvents;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;->getContactId()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v6

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;->a(Ljava/lang/String;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/base/ScrollEvents;JLcom/callapp/framework/phone/Phone;)V

    .line 206
    iput-object p1, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;->z:Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;

    .line 207
    iget-boolean v0, p1, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;->g:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 208
    iget-object v0, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 209
    iget-object v0, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;->D:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 210
    iget-object v0, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;->E:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setClickable(Z)V

    .line 211
    iget-object v0, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;->F:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 212
    iget-object v0, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;->y:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 213
    iget-object v0, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;->y:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 214
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Lcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;->B:Lcom/callapp/contacts/model/contact/ContactData;

    .line 215
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->isContactInDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 221
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;->u:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;->d:Ljava/lang/String;

    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v0, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;->v:Landroid/widget/TextView;

    new-instance v3, Ljava/util/Date;

    iget-wide v4, p1, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;->c:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-static {v3}, Lcom/callapp/contacts/util/date/DateUtils;->b(Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v0, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;->x:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;->f:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v0, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;->w:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/callapp/framework/phone/Phone;->b(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/framework/phone/Phone;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v0, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;->A:Lcom/callapp/contacts/widget/ProfilePictureView;

    iget-object v3, p1, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;->d:Ljava/lang/String;

    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/callapp/contacts/widget/ProfilePictureView;->setText(Ljava/lang/CharSequence;)V

    .line 1241
    iget-wide v3, p1, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;->c:J

    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->hD:Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/LongPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    .line 228
    iget-object p1, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;->E:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0800af

    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f060055

    goto :goto_2

    :cond_2
    const v1, 0x7f060054

    :goto_2
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-static {p1, v0, v1, v2, v2}, Lcom/callapp/contacts/util/ViewUtils;->b(Landroid/view/View;IIII)V

    return-void

    .line 231
    :cond_3
    iget-object p1, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;->C:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 232
    iget-object p1, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;->D:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 233
    iget-object p1, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;->E:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setClickable(Z)V

    .line 234
    iget-object p1, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;->F:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 235
    iget-object p1, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;->y:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    .line 236
    iget-object p1, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;->y:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
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

    .line 80
    sget-object v0, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->CONTACTS_ADAPTER_WITH_NAME_LOADED_FIELD:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getProfilePicture()Lcom/callapp/contacts/widget/ProfilePictureView;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;->A:Lcom/callapp/contacts/widget/ProfilePictureView;

    return-object v0
.end method

.method public final l()Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;
    .locals 2

    .line 75
    new-instance v0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder$WhoViewedMyProfileAdapterDataLoadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder$WhoViewedMyProfileAdapterDataLoadTask;-><init>(Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder$1;)V

    return-object v0
.end method
