.class public abstract Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/BaseNotificationBadgeViewController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/viewcontroller/ViewController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/BaseNotificationBadgeViewController$Evaluate;,
        Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/BaseNotificationBadgeViewController$ShouldDisplay;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Type:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/callapp/contacts/activity/viewcontroller/ViewController;"
    }
.end annotation


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/BaseNotificationBadgeViewController$ShouldDisplay;

.field private final c:Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/BaseNotificationBadgeViewController$Evaluate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/BaseNotificationBadgeViewController$Evaluate<",
            "TType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/BaseNotificationBadgeViewController$ShouldDisplay;Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/BaseNotificationBadgeViewController$Evaluate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/BaseNotificationBadgeViewController$ShouldDisplay;",
            "Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/BaseNotificationBadgeViewController$Evaluate<",
            "TType;>;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/BaseNotificationBadgeViewController;->a:Landroid/view/View;

    .line 24
    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/BaseNotificationBadgeViewController;->b:Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/BaseNotificationBadgeViewController$ShouldDisplay;

    .line 25
    iput-object p3, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/BaseNotificationBadgeViewController;->c:Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/BaseNotificationBadgeViewController$Evaluate;

    .line 26
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/BaseNotificationBadgeViewController;->a()V

    return-void
.end method

.method private b(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TType;)V"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/BaseNotificationBadgeViewController;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 44
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/BaseNotificationBadgeViewController;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private c()V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/BaseNotificationBadgeViewController;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public synthetic a(I)Landroid/view/View;
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/activity/viewcontroller/ViewController$-CC;->$default$a(Lcom/callapp/contacts/activity/viewcontroller/ViewController;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/BaseNotificationBadgeViewController;->b:Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/BaseNotificationBadgeViewController$ShouldDisplay;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/BaseNotificationBadgeViewController$ShouldDisplay;->apply()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/BaseNotificationBadgeViewController;->c:Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/BaseNotificationBadgeViewController$Evaluate;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/BaseNotificationBadgeViewController$Evaluate;->apply()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/BaseNotificationBadgeViewController;->b(Ljava/lang/Object;)V

    return-void

    .line 38
    :cond_0
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/BaseNotificationBadgeViewController;->c()V

    return-void
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TType;)V"
        }
    .end annotation

    return-void
.end method

.method public synthetic b()V
    .locals 0

    invoke-static {p0}, Lcom/callapp/contacts/activity/viewcontroller/ViewController$-CC;->$default$b(Lcom/callapp/contacts/activity/viewcontroller/ViewController;)V

    return-void
.end method

.method public synthetic getContext()Landroid/content/Context;
    .locals 1

    invoke-static {p0}, Lcom/callapp/contacts/activity/viewcontroller/ViewController$-CC;->$default$getContext(Lcom/callapp/contacts/activity/viewcontroller/ViewController;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    invoke-static {p0}, Lcom/callapp/contacts/activity/viewcontroller/ViewController$-CC;->$default$getResources(Lcom/callapp/contacts/activity/viewcontroller/ViewController;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/notification/BaseNotificationBadgeViewController;->a:Landroid/view/View;

    return-object v0
.end method

.method public synthetic isViewShown()Z
    .locals 1

    invoke-static {p0}, Lcom/callapp/contacts/activity/viewcontroller/ViewController$-CC;->$default$isViewShown(Lcom/callapp/contacts/activity/viewcontroller/ViewController;)Z

    move-result v0

    return v0
.end method
