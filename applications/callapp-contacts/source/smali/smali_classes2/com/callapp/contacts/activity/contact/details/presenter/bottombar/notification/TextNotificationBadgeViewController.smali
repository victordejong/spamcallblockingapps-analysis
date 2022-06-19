.class public Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/TextNotificationBadgeViewController;
.super Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/BaseNotificationBadgeViewController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/BaseNotificationBadgeViewController<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/BaseNotificationBadgeViewController$ShouldDisplay;Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/BaseNotificationBadgeViewController$Evaluate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/BaseNotificationBadgeViewController$ShouldDisplay;",
            "Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/BaseNotificationBadgeViewController$Evaluate<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 13
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d01ac

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/BaseNotificationBadgeViewController;-><init>(Landroid/view/View;Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/BaseNotificationBadgeViewController$ShouldDisplay;Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/BaseNotificationBadgeViewController$Evaluate;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .line 10
    check-cast p1, Ljava/lang/String;

    .line 1018
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/TextNotificationBadgeViewController;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0153

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
