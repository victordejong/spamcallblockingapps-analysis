.class public Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/FlagNotificationBadgeViewController;
.super Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/BaseNotificationBadgeViewController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/BaseNotificationBadgeViewController<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/BaseNotificationBadgeViewController$ShouldDisplay;)V
    .locals 2

    .line 12
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d01ab

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    sget-object v0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/-$$Lambda$FlagNotificationBadgeViewController$TTmthmn-ClSpJhFfaRMYaLVslNU;->INSTANCE:Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/-$$Lambda$FlagNotificationBadgeViewController$TTmthmn-ClSpJhFfaRMYaLVslNU;

    invoke-direct {p0, p1, p2, v0}, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/BaseNotificationBadgeViewController;-><init>(Landroid/view/View;Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/BaseNotificationBadgeViewController$ShouldDisplay;Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/BaseNotificationBadgeViewController$Evaluate;)V

    return-void
.end method

.method private static synthetic c()Ljava/lang/Boolean;
    .locals 1

    .line 12
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static synthetic lambda$TTmthmn-ClSpJhFfaRMYaLVslNU()Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/FlagNotificationBadgeViewController;->c()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
