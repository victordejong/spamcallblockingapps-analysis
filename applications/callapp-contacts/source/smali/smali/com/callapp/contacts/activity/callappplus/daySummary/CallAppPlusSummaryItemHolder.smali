.class public Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder;
.super Lcom/callapp/contacts/activity/base/BaseContactHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder$OnProfilePictureListener;,
        Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder$CallAppPlusSummeryAdapterDataLoadTask;
    }
.end annotation


# instance fields
.field private u:Lcom/callapp/contacts/widget/ProfilePictureView;

.field private v:Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder$OnProfilePictureListener;

.field private w:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder$OnProfilePictureListener;)V
    .locals 2

    .line 63
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/base/BaseContactHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a06ed

    .line 64
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/widget/ProfilePictureView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder;->u:Lcom/callapp/contacts/widget/ProfilePictureView;

    const/4 v1, 0x1

    .line 65
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/ProfilePictureView;->setClickable(Z)V

    const v0, 0x7f0a0613

    .line 66
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder;->w:Landroid/widget/TextView;

    .line 67
    iput-object p2, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder;->v:Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder$OnProfilePictureListener;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder;)Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder$OnProfilePictureListener;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder;->v:Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder$OnProfilePictureListener;

    return-object p0
.end method

.method private setOnClickListener(Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;)V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder;->u:Lcom/callapp/contacts/widget/ProfilePictureView;

    new-instance v1, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder$1;-><init>(Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder;Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/ProfilePictureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;)V
    .locals 7

    .line 71
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;->getContactId()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder;->a(Ljava/lang/String;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/base/ScrollEvents;JLcom/callapp/framework/phone/Phone;)V

    .line 72
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder;->w:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;->isNeedToShowBorder()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder;->u:Lcom/callapp/contacts/widget/ProfilePictureView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(ZZ)V

    .line 75
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder;->u:Lcom/callapp/contacts/widget/ProfilePictureView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/ProfilePictureView;->setAlpha(F)V

    .line 76
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder;->w:Landroid/widget/TextView;

    const v1, 0x7f06010e

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 77
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder;->w:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder;->w:Landroid/widget/TextView;

    const v1, 0x7f060244

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder;->u:Lcom/callapp/contacts/widget/ProfilePictureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(ZZ)V

    .line 85
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder;->u:Lcom/callapp/contacts/widget/ProfilePictureView;

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/ProfilePictureView;->setAlpha(F)V

    .line 86
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder;->w:Landroid/widget/TextView;

    const v1, 0x7f06010d

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder;->w:Landroid/widget/TextView;

    const v1, 0x7f06010f

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    :goto_0
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 96
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder;->u:Lcom/callapp/contacts/widget/ProfilePictureView;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/ProfilePictureView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 98
    :cond_3
    iget-object v1, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder;->u:Lcom/callapp/contacts/widget/ProfilePictureView;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/widget/ProfilePictureView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    :goto_1
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder;->setOnClickListener(Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;)V

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder;->u:Lcom/callapp/contacts/widget/ProfilePictureView;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;->getBadgeDrawableId()I

    move-result v1

    invoke-static {v1}, Lcom/callapp/contacts/util/ViewUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(Landroid/graphics/drawable/Drawable;)Lcom/callapp/contacts/widget/ProfilePictureView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :catch_0
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;->getBadgeColor()I

    move-result p1

    .line 107
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder;->u:Lcom/callapp/contacts/widget/ProfilePictureView;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(I)Lcom/callapp/contacts/widget/ProfilePictureView;

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

    .line 34
    sget-object v0, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->CONTACTS_ADAPTER_WITH_NAME_LOADED_FIELD:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getProfilePicture()Lcom/callapp/contacts/widget/ProfilePictureView;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder;->u:Lcom/callapp/contacts/widget/ProfilePictureView;

    return-object v0
.end method

.method public final l()Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;
    .locals 2

    .line 29
    new-instance v0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder$CallAppPlusSummeryAdapterDataLoadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder$CallAppPlusSummeryAdapterDataLoadTask;-><init>(Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder;Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder$1;)V

    return-object v0
.end method
