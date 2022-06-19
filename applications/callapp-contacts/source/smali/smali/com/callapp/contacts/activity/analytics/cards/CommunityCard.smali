.class public Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;
.super Lcom/callapp/contacts/activity/analytics/cards/base/AnalyticsWrapperCard;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/analytics/cards/CommunityCardDialog$UserClickOnConfirmPhone;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;,
        Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityContributionLevel;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/analytics/cards/base/AnalyticsWrapperCard<",
        "Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;",
        "Lcom/callapp/contacts/activity/analytics/data/items/CommunityCardItem;",
        ">;",
        "Lcom/callapp/contacts/activity/analytics/cards/CommunityCardDialog$UserClickOnConfirmPhone;"
    }
.end annotation


# static fields
.field public static ADVANCED:I = 0x23

.field public static MASTER:I = 0x46


# instance fields
.field private ADVANCED_DIALOG:I

.field private MASTER_DIALOG:I

.field private advanced:Landroid/widget/TextView;

.field private alreadyBounded:Z

.field private beginner:Landroid/widget/TextView;

.field private communitiyVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

.field private communityCardDate:Lcom/callapp/contacts/activity/analytics/data/items/CommunityCardItem;

.field private communityCardHolder:Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;

.field private contact:Lcom/callapp/contacts/model/contact/ContactData;

.field public level:Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityContributionLevel;

.field private master:Landroid/widget/TextView;

.field private mode:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

.field private phoneAuthCallBack:Lcom/callapp/contacts/manager/PhoneVerifierManager$PhoneVerifierCallback;

.field private presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

.field private shouldShowAnimation:Z

.field private totalContribution:I

.field private userImageUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V
    .locals 1

    const v0, 0x7f0d0059

    .line 74
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/analytics/cards/base/AnalyticsWrapperCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;I)V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->userImageUrl:Ljava/lang/String;

    const/16 v0, 0x22

    .line 54
    iput v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->ADVANCED_DIALOG:I

    const/16 v0, 0x45

    .line 55
    iput v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->MASTER_DIALOG:I

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->shouldShowAnimation:Z

    .line 58
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->alreadyBounded:Z

    .line 63
    new-instance v0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$1;-><init>(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->phoneAuthCallBack:Lcom/callapp/contacts/manager/PhoneVerifierManager$PhoneVerifierCallback;

    .line 75
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    .line 76
    invoke-static {}, Lcom/callapp/contacts/manager/PhoneVerifierManager;->get()Lcom/callapp/contacts/manager/PhoneVerifierManager;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->phoneAuthCallBack:Lcom/callapp/contacts/manager/PhoneVerifierManager$PhoneVerifierCallback;

    .line 1088
    iput-object v0, p1, Lcom/callapp/contacts/manager/PhoneVerifierManager;->a:Lcom/callapp/contacts/manager/PhoneVerifierManager$PhoneVerifierCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->refreshCardData()V

    return-void
.end method

.method static synthetic access$102(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->shouldShowAnimation:Z

    return p1
.end method

.method static synthetic access$200(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->alreadyBounded:Z

    return p0
.end method

.method static synthetic access$2200(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;Lcom/callapp/contacts/model/contact/ContactData;ZZ)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->openDialog(Lcom/callapp/contacts/model/contact/ContactData;ZZ)V

    return-void
.end method

.method static synthetic access$2400(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;)Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->userImageUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;)Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->communityCardHolder:Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;

    return-object p0
.end method

.method static synthetic access$300(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;)Lcom/callapp/contacts/model/contact/ContactData;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    return-object p0
.end method

.method static synthetic access$400(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->totalContribution:I

    return p0
.end method

.method static synthetic access$500(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityContributionLevel;Lcom/callapp/contacts/model/contact/ContactData;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->handleGraph(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityContributionLevel;Lcom/callapp/contacts/model/contact/ContactData;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;)Lcom/mopub/mobileads/InlineVisibilityTracker;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->communitiyVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    return-object p0
.end method

.method static synthetic access$602(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;Lcom/mopub/mobileads/InlineVisibilityTracker;)Lcom/mopub/mobileads/InlineVisibilityTracker;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->communitiyVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    return-object p1
.end method

.method private handleGraph(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityContributionLevel;Lcom/callapp/contacts/model/contact/ContactData;I)V
    .locals 2

    if-eqz p2, :cond_9

    .line 238
    sget-object v0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityContributionLevel;->ADVANCED:Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityContributionLevel;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityContributionLevel;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0803ab

    goto :goto_0

    :cond_0
    const v0, 0x7f0804c5

    .line 239
    :goto_0
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->updateGraphData(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityContributionLevel;)V

    .line 240
    sget p1, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->ADVANCED:I

    const/high16 v1, 0x41200000    # 10.0f

    if-ge p3, p1, :cond_3

    const/16 p1, 0xa

    if-ge p3, p1, :cond_1

    if-lez p3, :cond_1

    goto :goto_1

    :cond_1
    int-to-float v1, p3

    .line 243
    :goto_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->communityCardHolder:Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;

    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;->o(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;)Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;->setProgress(F)V

    .line 244
    iget p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->ADVANCED_DIALOG:I

    if-ne p3, p1, :cond_2

    .line 245
    sget-object p1, Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$InsightsPremuimDialogType;->ADVANCED:Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$InsightsPremuimDialogType;

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->showPopUpBelowGraph(Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$InsightsPremuimDialogType;)V

    :cond_2
    return-void

    .line 248
    :cond_3
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/manager/UserProfileManager;->getUserVerifiedPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/callapp/framework/phone/Phone;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 251
    sget p1, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->MASTER:I

    if-le p3, p1, :cond_4

    goto :goto_2

    :cond_4
    move p1, p3

    .line 252
    :goto_2
    iget-object p2, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->communityCardHolder:Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;

    invoke-static {p2}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;->o(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;)Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;->setProgress(I)V

    .line 253
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->communityCardHolder:Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;

    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;->p(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;)Lcom/callapp/contacts/widget/ProfilePictureView;

    move-result-object p1

    invoke-static {v0}, Lcom/callapp/contacts/util/ViewUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(Landroid/graphics/drawable/Drawable;)Lcom/callapp/contacts/widget/ProfilePictureView;

    move-result-object p1

    .line 254
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/widget/ProfilePictureView;->c(I)Lcom/callapp/contacts/widget/ProfilePictureView;

    move-result-object p1

    const/high16 p2, 0x41a00000    # 20.0f

    .line 255
    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/widget/ProfilePictureView;->b(I)Lcom/callapp/contacts/widget/ProfilePictureView;

    move-result-object p1

    const/4 p2, 0x0

    .line 256
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/widget/ProfilePictureView;->d(I)Lcom/callapp/contacts/widget/ProfilePictureView;

    move-result-object p1

    const/4 p2, 0x2

    .line 257
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/widget/ProfilePictureView;->setBadgeBorderWidth(I)V

    .line 258
    iget p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->MASTER_DIALOG:I

    if-ne p3, p1, :cond_5

    .line 259
    sget-object p1, Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$InsightsPremuimDialogType;->MASTER:Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$InsightsPremuimDialogType;

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->showPopUpBelowGraph(Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$InsightsPremuimDialogType;)V

    .line 261
    :cond_5
    sget p1, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->ADVANCED:I

    if-ne p3, p1, :cond_6

    .line 262
    sget-object p1, Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$InsightsPremuimDialogType;->ADVANCED:Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$InsightsPremuimDialogType;

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->showPopUpGift(Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$InsightsPremuimDialogType;)V

    .line 264
    :cond_6
    sget p1, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->MASTER:I

    if-ne p3, p1, :cond_7

    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->gL:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 265
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->cO:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    const/4 p2, 0x1

    .line 2039
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->b(I)Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    .line 266
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->gL:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 267
    sget-object p1, Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$InsightsPremuimDialogType;->MASTER:Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$InsightsPremuimDialogType;

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->showPopUpGift(Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$InsightsPremuimDialogType;)V

    :cond_7
    return-void

    .line 270
    :cond_8
    sget-object p1, Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$InsightsPremuimDialogType;->CONFIRM:Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$InsightsPremuimDialogType;

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->showPopUpBelowGraph(Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$InsightsPremuimDialogType;)V

    :cond_9
    return-void
.end method

.method private openDialog(Lcom/callapp/contacts/model/contact/ContactData;ZZ)V
    .locals 3

    .line 136
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Insights"

    const-string v2, "ViewInsightsCommunityPopup"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 138
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/UserProfileManager;->getUserVerifiedPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/framework/phone/Phone;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 142
    :goto_0
    new-instance v0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCardDialog;

    invoke-direct {v0, p1, p0, p2, p3}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCardDialog;-><init>(ZLcom/callapp/contacts/activity/analytics/cards/CommunityCardDialog$UserClickOnConfirmPhone;ZZ)V

    .line 143
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p1

    iget-object p2, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {p2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method

.method private refreshCardData()V
    .locals 4

    .line 353
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContainerMode()Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->mode:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    if-ne v0, v1, :cond_0

    .line 354
    new-instance v0, Lcom/callapp/contacts/activity/analytics/data/items/CommunityCardItem;

    invoke-static {}, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager;->getNumberOfContactConfirm()I

    move-result v1

    invoke-static {}, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager;->getNumberOfSpammersReport()I

    move-result v2

    invoke-static {}, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager;->getNumberOfProfilePhotoChecked()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/callapp/contacts/activity/analytics/data/items/CommunityCardItem;-><init>(III)V

    const/4 v1, 0x1

    .line 355
    invoke-virtual {p0, v0, v1}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->updateCardData(Lcom/callapp/contacts/activity/analytics/data/items/CommunityCardItem;Z)V

    :cond_0
    return-void
.end method

.method private showPopUpBelowGraph(Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$InsightsPremuimDialogType;)V
    .locals 2

    .line 302
    new-instance v0, Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog;

    invoke-direct {v0, p1, p0}, Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog;-><init>(Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$InsightsPremuimDialogType;Lcom/callapp/contacts/activity/analytics/cards/CommunityCardDialog$UserClickOnConfirmPhone;)V

    .line 303
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p1

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method

.method private showPopUpGift(Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$InsightsPremuimDialogType;)V
    .locals 2

    .line 307
    new-instance v0, Lcom/callapp/contacts/activity/analytics/cards/CommunityFreeGiftDialog;

    invoke-direct {v0, p1}, Lcom/callapp/contacts/activity/analytics/cards/CommunityFreeGiftDialog;-><init>(Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$InsightsPremuimDialogType;)V

    .line 308
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p1

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method

.method private updateGraphData(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityContributionLevel;)V
    .locals 5

    .line 277
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->beginner:Landroid/widget/TextView;

    .line 278
    sget-object v1, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$5;->a:[I

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityContributionLevel;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    const v2, 0x7f0601ec

    const v3, 0x7f0601cc

    if-eq p1, v1, :cond_2

    const/4 v4, 0x2

    if-eq p1, v4, :cond_1

    const/4 v4, 0x3

    if-eq p1, v4, :cond_0

    goto :goto_0

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->master:Landroid/widget/TextView;

    .line 292
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->beginner:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 293
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->advanced:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 294
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->master:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->advanced:Landroid/widget/TextView;

    .line 286
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->beginner:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 287
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->master:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 288
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->advanced:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 280
    :cond_2
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->advanced:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 281
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->master:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 282
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->beginner:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    const/4 p1, 0x0

    .line 297
    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    return-void
.end method


# virtual methods
.method public getHeaderTitle()Ljava/lang/String;
    .locals 1

    const v0, 0x7f1201b8

    .line 105
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getListenFields()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation

    .line 99
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->phone:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    const/16 v0, 0x5a

    return v0
.end method

.method public loadHeaderImage()V
    .locals 2

    .line 322
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->communityCardHolder:Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    new-instance v1, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$4;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$4;-><init>(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;)V

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->safeRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onAnalyticsRefreshCard(Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;)V
    .locals 0

    .line 361
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->mode:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    .line 362
    invoke-direct {p0}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->refreshCardData()V

    return-void
.end method

.method protected onBindViewHolder(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;)V
    .locals 6

    const/4 v0, 0x1

    .line 149
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->alreadyBounded:Z

    const/4 v1, 0x0

    .line 150
    iput v1, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->totalContribution:I

    .line 151
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->loadHeaderImage()V

    .line 152
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;->a(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->beginner:Landroid/widget/TextView;

    const v3, 0x7f1200eb

    .line 153
    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->beginner:Landroid/widget/TextView;

    const v3, 0x7f0601ec

    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;->b(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->advanced:Landroid/widget/TextView;

    const v4, 0x7f12008e

    .line 156
    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->advanced:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 158
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;->c(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->master:Landroid/widget/TextView;

    .line 159
    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 160
    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->master:Landroid/widget/TextView;

    const v4, 0x7f120423

    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;->d(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;)Landroid/widget/LinearLayout;

    move-result-object v2

    const v4, 0x7f060026

    invoke-static {v4}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 162
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;->e(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;)Landroid/widget/TextView;

    move-result-object v2

    const v4, 0x7f120213

    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;->f(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;)Landroid/widget/TextView;

    move-result-object v2

    const v4, 0x7f12021a

    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;->g(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;)Landroid/widget/TextView;

    move-result-object v2

    const v4, 0x7f120219

    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;->h(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;)Landroid/widget/TextView;

    move-result-object v2

    const v4, 0x7f120241

    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;->h(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 167
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;->i(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 168
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;->j(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;)Landroid/widget/TextView;

    move-result-object v2

    const v4, 0x7f12054e

    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;->j(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 170
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;->k(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;)Landroid/widget/TextView;

    move-result-object v2

    const v4, 0x7f12067e

    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;->k(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 175
    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->communityCardDate:Lcom/callapp/contacts/activity/analytics/data/items/CommunityCardItem;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/analytics/data/items/CommunityCardItem;->getContactConfirm()I

    move-result v2

    const-string v3, "1K"

    const/16 v4, 0x3e8

    if-ge v2, v4, :cond_0

    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->communityCardDate:Lcom/callapp/contacts/activity/analytics/data/items/CommunityCardItem;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/analytics/data/items/CommunityCardItem;->getContactConfirm()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 176
    :goto_0
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;->l(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget v2, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->totalContribution:I

    iget-object v5, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->communityCardDate:Lcom/callapp/contacts/activity/analytics/data/items/CommunityCardItem;

    invoke-virtual {v5}, Lcom/callapp/contacts/activity/analytics/data/items/CommunityCardItem;->getContactConfirm()I

    move-result v5

    add-int/2addr v2, v5

    iput v2, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->totalContribution:I

    .line 178
    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->communityCardDate:Lcom/callapp/contacts/activity/analytics/data/items/CommunityCardItem;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/analytics/data/items/CommunityCardItem;->getProfilePhotoChecked()I

    move-result v2

    if-ge v2, v4, :cond_1

    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->communityCardDate:Lcom/callapp/contacts/activity/analytics/data/items/CommunityCardItem;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/analytics/data/items/CommunityCardItem;->getProfilePhotoChecked()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v3

    .line 179
    :goto_1
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;->m(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget v2, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->totalContribution:I

    iget-object v5, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->communityCardDate:Lcom/callapp/contacts/activity/analytics/data/items/CommunityCardItem;

    invoke-virtual {v5}, Lcom/callapp/contacts/activity/analytics/data/items/CommunityCardItem;->getProfilePhotoChecked()I

    move-result v5

    add-int/2addr v2, v5

    iput v2, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->totalContribution:I

    .line 181
    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->communityCardDate:Lcom/callapp/contacts/activity/analytics/data/items/CommunityCardItem;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/analytics/data/items/CommunityCardItem;->getSpammersReport()I

    move-result v2

    if-ge v2, v4, :cond_2

    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->communityCardDate:Lcom/callapp/contacts/activity/analytics/data/items/CommunityCardItem;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/analytics/data/items/CommunityCardItem;->getSpammersReport()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 182
    :cond_2
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;->n(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget v2, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->totalContribution:I

    iget-object v3, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->communityCardDate:Lcom/callapp/contacts/activity/analytics/data/items/CommunityCardItem;

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/analytics/data/items/CommunityCardItem;->getSpammersReport()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->totalContribution:I

    .line 190
    sget v3, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->ADVANCED:I

    if-lt v2, v3, :cond_3

    sget v3, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->MASTER:I

    if-ge v2, v3, :cond_3

    .line 191
    sget-object v2, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityContributionLevel;->ADVANCED:Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityContributionLevel;

    iput-object v2, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->level:Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityContributionLevel;

    goto :goto_2

    .line 192
    :cond_3
    sget v3, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->MASTER:I

    if-lt v2, v3, :cond_4

    .line 193
    sget-object v2, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityContributionLevel;->MASTER:Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityContributionLevel;

    iput-object v2, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->level:Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityContributionLevel;

    goto :goto_2

    .line 195
    :cond_4
    sget-object v2, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityContributionLevel;->BEGINNER:Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityContributionLevel;

    iput-object v2, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->level:Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityContributionLevel;

    .line 198
    :goto_2
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->gP:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityContributionLevel;->INIT:Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityContributionLevel;

    const-string v4, "Insights"

    if-ne v2, v3, :cond_5

    .line 199
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->level:Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityContributionLevel;

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityContributionLevel;->name()Ljava/lang/String;

    move-result-object v3

    const-string v5, "InsightsCommunityFirstStatus"

    invoke-virtual {v2, v4, v5, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->gP:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    iget-object v3, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->level:Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityContributionLevel;

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    goto :goto_3

    .line 203
    :cond_5
    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->level:Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityContributionLevel;

    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->gP:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v3

    if-eq v2, v3, :cond_6

    .line 204
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->level:Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityContributionLevel;

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityContributionLevel;->name()Ljava/lang/String;

    move-result-object v3

    const-string v5, "InsightsCommunityStatusChange"

    invoke-virtual {v2, v4, v5, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->gP:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    iget-object v3, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->level:Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityContributionLevel;

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    .line 210
    :cond_6
    :goto_3
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;->o(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;)Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;

    move-result-object v2

    sget v3, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->MASTER:I

    int-to-float v3, v3

    const/high16 v4, 0x40c00000    # 6.0f

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;->setMax(F)V

    .line 212
    new-instance v2, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$3;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$3;-><init>(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;)V

    .line 1408
    iget-object v3, p1, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iget-boolean v2, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->shouldShowAnimation:Z

    if-eqz v2, :cond_7

    .line 219
    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->level:Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityContributionLevel;

    iget-object v3, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    iget v4, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->totalContribution:I

    invoke-direct {p0, v2, v3, v4}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->handleGraph(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityContributionLevel;Lcom/callapp/contacts/model/contact/ContactData;I)V

    .line 221
    :cond_7
    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->level:Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityContributionLevel;

    sget-object v3, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityContributionLevel;->BEGINNER:Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityContributionLevel;

    if-ne v2, v3, :cond_8

    .line 222
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;->i(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;)Landroid/widget/TextView;

    move-result-object p1

    const v2, 0x7f1200e9

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 223
    :cond_8
    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->level:Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityContributionLevel;

    sget-object v3, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityContributionLevel;->ADVANCED:Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityContributionLevel;

    if-ne v2, v3, :cond_9

    .line 224
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;->i(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;)Landroid/widget/TextView;

    move-result-object p1

    const v2, 0x7f120094

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 226
    :cond_9
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;->i(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;)Landroid/widget/TextView;

    move-result-object p1

    const v2, 0x7f120425

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    :goto_4
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->gK:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 230
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->gK:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 231
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-direct {p0, p1, v0, v1}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->openDialog(Lcom/callapp/contacts/model/contact/ContactData;ZZ)V

    :cond_a
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Ljava/lang/Object;)V
    .locals 0

    .line 42
    check-cast p1, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->onBindViewHolder(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;)V

    return-void
.end method

.method public onClickConfirm()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/callapp/contacts/activity/analytics/ui/InsightActivity;

    if-eqz v0, :cond_0

    .line 82
    invoke-static {}, Lcom/callapp/contacts/manager/PhoneVerifierManager;->get()Lcom/callapp/contacts/manager/PhoneVerifierManager;

    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/analytics/ui/InsightActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/callapp/contacts/manager/PhoneVerifierManager;->a(Landroid/app/Activity;Z)V

    :cond_0
    return-void
.end method

.method public onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    .line 347
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhotoUrl()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->userImageUrl:Ljava/lang/String;

    .line 348
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    .line 349
    invoke-direct {p0}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->refreshCardData()V

    return-void
.end method

.method protected onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;
    .locals 7

    .line 115
    new-instance v0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;-><init>(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;Landroid/view/View;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->communityCardHolder:Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;

    .line 116
    new-instance v0, Lcom/mopub/mobileads/InlineVisibilityTracker;

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v2

    const/16 v5, 0x1f4

    const/16 v6, 0x1f4

    move-object v1, v0

    move-object v3, p1

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/mopub/mobileads/InlineVisibilityTracker;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;II)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->communitiyVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    .line 117
    new-instance p1, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$2;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$2;-><init>(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;)V

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/InlineVisibilityTracker;->setInlineVisibilityTrackerListener(Lcom/mopub/mobileads/InlineVisibilityTracker$InlineVisibilityTrackerListener;)V

    .line 130
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->communityCardHolder:Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;

    return-object p1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;)Ljava/lang/Object;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 313
    invoke-static {}, Lcom/callapp/contacts/manager/PhoneVerifierManager;->get()Lcom/callapp/contacts/manager/PhoneVerifierManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->phoneAuthCallBack:Lcom/callapp/contacts/manager/PhoneVerifierManager$PhoneVerifierCallback;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/PhoneVerifierManager;->a(Lcom/callapp/contacts/manager/PhoneVerifierManager$PhoneVerifierCallback;)V

    .line 314
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->communitiyVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {v0}, Lcom/mopub/mobileads/InlineVisibilityTracker;->destroy()V

    const/4 v0, 0x0

    .line 316
    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->communitiyVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    .line 318
    :cond_0
    invoke-super {p0}, Lcom/callapp/contacts/activity/analytics/cards/base/AnalyticsWrapperCard;->onDestroy()V

    return-void
.end method

.method public showShouldExpandButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected updateCardData(Lcom/callapp/contacts/activity/analytics/data/items/CommunityCardItem;Z)V
    .locals 0

    .line 341
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->communityCardDate:Lcom/callapp/contacts/activity/analytics/data/items/CommunityCardItem;

    const/4 p1, 0x1

    .line 342
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->showCard(Z)V

    return-void
.end method

.method public bridge synthetic updateCardData(Ljava/lang/Object;Z)V
    .locals 0

    .line 42
    check-cast p1, Lcom/callapp/contacts/activity/analytics/data/items/CommunityCardItem;

    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->updateCardData(Lcom/callapp/contacts/activity/analytics/data/items/CommunityCardItem;Z)V

    return-void
.end method
