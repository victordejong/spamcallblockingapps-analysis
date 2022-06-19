.class public Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;
.super Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/missedcall/MissedCallMoreManager$OnMissedCallMoreDialogItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder$OnDeleteClickListener;
    }
.end annotation


# instance fields
.field private A:Landroid/widget/FrameLayout;

.field private B:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder$OnDeleteClickListener;

.field private C:Landroidx/cardview/widget/CardView;

.field private D:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;

.field private E:Landroid/widget/LinearLayout;

.field private final s:Landroid/widget/ImageView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;

.field private w:Lcom/callapp/contacts/widget/ProfilePictureView;

.field private x:Lcom/callapp/contacts/widget/FourEventsIconsViewGroup;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder$OnDeleteClickListener;)V
    .locals 5

    .line 73
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a01ea

    .line 74
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->C:Landroidx/cardview/widget/CardView;

    const v0, 0x7f0a02d9

    .line 75
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->E:Landroid/widget/LinearLayout;

    const v0, 0x7f0a05d7

    .line 76
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->t:Landroid/widget/TextView;

    const v0, 0x7f0a05d9

    .line 77
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->v:Landroid/widget/TextView;

    const v0, 0x7f0a05d8

    .line 78
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->u:Landroid/widget/TextView;

    const v0, 0x7f0a06ed

    .line 79
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/widget/ProfilePictureView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->w:Lcom/callapp/contacts/widget/ProfilePictureView;

    const v0, 0x7f0a0431

    .line 80
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup;

    iput-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->x:Lcom/callapp/contacts/widget/FourEventsIconsViewGroup;

    const v0, 0x7f0a05da

    .line 81
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->y:Landroid/widget/TextView;

    const v0, 0x7f0a05db

    .line 82
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->z:Landroid/widget/ImageView;

    const v0, 0x7f0a05ee

    .line 83
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->A:Landroid/widget/FrameLayout;

    const v0, 0x7f0a0658

    .line 84
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->s:Landroid/widget/ImageView;

    .line 85
    iput-object p2, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->B:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder$OnDeleteClickListener;

    const/4 p2, 0x1

    .line 1090
    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->getScreenWidth(I)I

    move-result p2

    int-to-double v0, p2

    const-wide v2, 0x3fe999999999999aL    # 0.8

    mul-double v0, v0, v2

    double-to-int p2, v0

    .line 1092
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070250

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 1093
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, p2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1097
    iget-object p2, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->C:Landroidx/cardview/widget/CardView;

    invoke-virtual {p2}, Landroidx/cardview/widget/CardView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07016d

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iget-object v2, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->C:Landroidx/cardview/widget/CardView;

    invoke-virtual {v2}, Landroidx/cardview/widget/CardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iget-object v3, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->C:Landroidx/cardview/widget/CardView;

    invoke-virtual {v3}, Landroidx/cardview/widget/CardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07017a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iget-object v4, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->C:Landroidx/cardview/widget/CardView;

    invoke-virtual {v4}, Landroidx/cardview/widget/CardView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {v1, p2, v2, v3, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 1098
    iget-object p2, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->C:Landroidx/cardview/widget/CardView;

    invoke-virtual {p2, v1}, Landroidx/cardview/widget/CardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1099
    iget-object p2, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->C:Landroidx/cardview/widget/CardView;

    invoke-virtual {p2}, Landroidx/cardview/widget/CardView;->requestLayout()V

    .line 1101
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result p2

    const v0, 0x7f06010e

    const v1, 0x7f060244

    if-eqz p2, :cond_0

    .line 1102
    iget-object p2, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->C:Landroidx/cardview/widget/CardView;

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 1103
    iget-object p2, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->t:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const p2, 0x7f06002c

    .line 1104
    invoke-static {p2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    .line 1107
    :cond_0
    iget-object p2, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->C:Landroidx/cardview/widget/CardView;

    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 1108
    iget-object p2, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->t:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1109
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 1112
    :goto_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->C:Landroidx/cardview/widget/CardView;

    invoke-virtual {p1}, Landroidx/cardview/widget/CardView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07018f

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroidx/cardview/widget/CardView;->setRadius(F)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;)Lcom/callapp/contacts/widget/ProfilePictureView;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->w:Lcom/callapp/contacts/widget/ProfilePictureView;

    return-object p0
.end method

.method private synthetic a(Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;Landroid/app/Activity;)V
    .locals 2

    .line 234
    iget-object p3, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->z:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p3, v0, p1, v1, p2}, Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;ZLcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    return-void
.end method

.method private synthetic a(Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x1

    .line 225
    invoke-static {p3, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 226
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;->getMissedCallType()I

    move-result p3

    const-string v1, "ClickCallButton"

    const/4 v2, 0x3

    if-ne p3, v2, :cond_0

    .line 227
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p3

    const-string v2, "MissCall"

    invoke-virtual {p3, v2, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 228
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;->getMissedCallType()I

    move-result p3

    const/16 v2, 0x28

    if-ne p3, v2, :cond_1

    .line 229
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p3

    const-string v2, "NoAnswer"

    invoke-virtual {p3, v2, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :cond_1
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/popup/OptInWithTopImagePopup;->b()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 232
    iget-object p3, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->z:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p3

    new-instance v1, Lcom/callapp/contacts/activity/missedcall/card/-$$Lambda$MissedCallCardItemHolder$xTnF8RZjhGHYOwVPPkX3uWBiMhc;

    invoke-direct {v1, p0, p1, p2}, Lcom/callapp/contacts/activity/missedcall/card/-$$Lambda$MissedCallCardItemHolder$xTnF8RZjhGHYOwVPPkX3uWBiMhc;-><init>(Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    new-instance v2, Lcom/callapp/contacts/activity/missedcall/card/-$$Lambda$MissedCallCardItemHolder$AVOwXnpbOp1waStZ9gszooj3Hd8;

    invoke-direct {v2, p0, p1, p2}, Lcom/callapp/contacts/activity/missedcall/card/-$$Lambda$MissedCallCardItemHolder$AVOwXnpbOp1waStZ9gszooj3Hd8;-><init>(Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    invoke-static {p3, v1, v2}, Lcom/callapp/contacts/popup/OptInWithTopImagePopup;->b(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    goto :goto_1

    .line 237
    :cond_2
    iget-object p3, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->z:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    invoke-static {p3, v1, p1, v0, p2}, Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;ZLcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    :goto_1
    return v0
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->s:Landroid/widget/ImageView;

    return-object p0
.end method

.method private synthetic b(Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;Landroid/app/Activity;)V
    .locals 2

    .line 233
    iget-object p3, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->z:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p3, v0, p1, v1, p2}, Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;ZLcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    return-void
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->z:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic lambda$AVOwXnpbOp1waStZ9gszooj3Hd8(Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->a(Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic lambda$xDRcfFTEO1O0FR7HNuA4MgpJFaE(Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->a(Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$xTnF8RZjhGHYOwVPPkX3uWBiMhc(Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->b(Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V
    .locals 11

    .line 116
    iput-object p1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->D:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;

    .line 117
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;->getMissedCallNumber()I

    move-result v0

    .line 118
    iget-object v1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->t:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->E:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->t:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 121
    iget-object v2, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->E:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->u:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 122
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;->getMissedCallType()I

    move-result v3

    const/16 v4, 0x28

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v3, v5, :cond_1

    .line 123
    iget-object v3, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->u:Landroid/widget/TextView;

    const v8, 0x7f12045e

    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v8, v9}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v3, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->y:Landroid/widget/TextView;

    const v8, 0x7f120459

    invoke-static {v8}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v3, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->C:Landroidx/cardview/widget/CardView;

    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result v8

    if-eqz v8, :cond_0

    const v8, 0x7f060244

    goto :goto_0

    :cond_0
    const v8, 0x7f06010e

    :goto_0
    invoke-static {v8}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v8

    invoke-virtual {v3, v8}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    if-ge v1, v2, :cond_3

    .line 127
    iget-object v1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->E:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->t:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 128
    iget-object v1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->E:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->t:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_2

    .line 130
    :cond_1
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;->getMissedCallType()I

    move-result v3

    if-ne v3, v4, :cond_3

    if-ne v0, v7, :cond_2

    .line 132
    iget-object v3, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->u:Landroid/widget/TextView;

    const v8, 0x7f1202b3

    invoke-static {v8}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 134
    :cond_2
    iget-object v3, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->u:Landroid/widget/TextView;

    const v8, 0x7f1202b1

    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v8, v9}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    :goto_1
    iget-object v3, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->y:Landroid/widget/TextView;

    const v8, 0x7f120129

    invoke-static {v8}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v3, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->C:Landroidx/cardview/widget/CardView;

    const v8, 0x7f06006c

    invoke-static {v8}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v8

    invoke-virtual {v3, v8}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    if-ge v2, v1, :cond_3

    .line 140
    iget-object v2, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->E:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->u:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 141
    iget-object v2, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->E:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->u:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 145
    :cond_3
    :goto_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 146
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;->getMissedCallType()I

    move-result v2

    if-ne v2, v5, :cond_4

    :goto_3
    if-ge v6, v0, :cond_5

    .line 148
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 150
    :cond_4
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;->getMissedCallType()I

    move-result v2

    if-ne v2, v4, :cond_5

    :goto_4
    if-ge v6, v0, :cond_5

    .line 152
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 155
    :cond_5
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->x:Lcom/callapp/contacts/widget/FourEventsIconsViewGroup;

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/CallLogUtils;->a(Ljava/util/List;Lcom/callapp/contacts/widget/FourEventsIconsViewGroup;)V

    .line 156
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->v:Landroid/widget/TextView;

    new-instance v1, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;->getLastMissedCallDate()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;->getLastMissedCallDate()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/callapp/contacts/util/CallLogUtils;->a(J)I

    move-result v2

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/CallLogUtils;->b(Ljava/util/Date;I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->w:Lcom/callapp/contacts/widget/ProfilePictureView;

    new-instance v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;->getProfileImageView()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Ljava/lang/String;)V

    .line 1371
    iput-boolean v7, v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->l:Z

    .line 158
    new-instance v2, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder$1;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder$1;-><init>(Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;)V

    .line 1496
    iput-object v2, v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->n:Lcom/bumptech/glide/e/g;

    .line 158
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;)Z

    .line 178
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 181
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->w:Lcom/callapp/contacts/widget/ProfilePictureView;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/ProfilePictureView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 183
    :cond_6
    iget-object v1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->w:Lcom/callapp/contacts/widget/ProfilePictureView;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/widget/ProfilePictureView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    :goto_5
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->y:Landroid/widget/TextView;

    const v1, 0x7f060088

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2245
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->z:Landroid/widget/ImageView;

    new-instance v1, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder$4;-><init>(Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3224
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->z:Landroid/widget/ImageView;

    new-instance v1, Lcom/callapp/contacts/activity/missedcall/card/-$$Lambda$MissedCallCardItemHolder$xDRcfFTEO1O0FR7HNuA4MgpJFaE;

    invoke-direct {v1, p0, p1, p2}, Lcom/callapp/contacts/activity/missedcall/card/-$$Lambda$MissedCallCardItemHolder$xDRcfFTEO1O0FR7HNuA4MgpJFaE;-><init>(Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 188
    iget-object p2, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->A:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder$2;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder$2;-><init>(Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;)V

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    sget-object p2, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->RECENT_CALLS:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    invoke-virtual {p2}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->ordinal()I

    move-result p2

    sget v0, Lcom/callapp/contacts/model/DataChangedInfo;->POSITION_ALL:I

    invoke-static {p2, v0, v7}, Lcom/callapp/contacts/model/DataChangedInfo;->create(III)Lcom/callapp/contacts/model/DataChangedInfo;

    move-result-object p2

    .line 209
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->C:Landroidx/cardview/widget/CardView;

    new-instance v1, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder$3;-><init>(Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;Lcom/callapp/contacts/model/DataChangedInfo;)V

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onDeleteClick()V
    .locals 4

    .line 261
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->B:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder$OnDeleteClickListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->D:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;

    if-eqz v1, :cond_0

    .line 262
    sget-object v1, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;->DELETE:Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    iget-object v2, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->D:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;->getMissedCallType()I

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder$OnDeleteClickListener;->a(Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;I)V

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->D:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;->getMissedCallType()I

    move-result v0

    const/4 v1, 0x3

    const-string v2, "Delete"

    const-string v3, "ClickMoreOptions"

    if-ne v0, v1, :cond_1

    .line 266
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "MissCall"

    invoke-virtual {v0, v1, v3, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->D:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;->getMissedCallType()I

    move-result v0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_2

    .line 268
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "NoAnswer"

    invoke-virtual {v0, v1, v3, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onDontShowClick()V
    .locals 4

    .line 287
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->B:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder$OnDeleteClickListener;

    if-eqz v0, :cond_0

    .line 288
    sget-object v1, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;->DONT_SHOW:Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    iget-object v2, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->D:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;->getMissedCallType()I

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder$OnDeleteClickListener;->a(Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;I)V

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->D:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;->getMissedCallType()I

    move-result v0

    const/4 v1, 0x3

    const-string v2, "DontShow"

    const-string v3, "ClickMoreOptions"

    if-ne v0, v1, :cond_1

    .line 291
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "MissCall"

    invoke-virtual {v0, v1, v3, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->D:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;->getMissedCallType()I

    move-result v0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_2

    .line 293
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "NoAnswer"

    invoke-virtual {v0, v1, v3, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onShowLessClick()V
    .locals 4

    .line 274
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->B:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder$OnDeleteClickListener;

    if-eqz v0, :cond_0

    .line 275
    sget-object v1, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;->SHOW_LESS:Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    iget-object v2, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->D:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;->getMissedCallType()I

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder$OnDeleteClickListener;->a(Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;I)V

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->D:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;->getMissedCallType()I

    move-result v0

    const/4 v1, 0x3

    const-string v2, "ShowLess"

    const-string v3, "ClickMoreOptions"

    if-ne v0, v1, :cond_1

    .line 279
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "MissCall"

    invoke-virtual {v0, v1, v3, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->D:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;->getMissedCallType()I

    move-result v0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_2

    .line 281
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "NoAnswer"

    invoke-virtual {v0, v1, v3, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
