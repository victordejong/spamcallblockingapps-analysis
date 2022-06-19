.class Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/task/OutcomeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$6;->doTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$6;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$6;)V
    .locals 0

    .line 609
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$6$1;->a:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 614
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$6$1;->a:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$6;

    iget-boolean p1, p1, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$6;->d:Z

    if-eqz p1, :cond_1

    .line 615
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$6$1;->a:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$6;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$6;->a:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/base/BaseActivity;

    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$6$1$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$6$1$1;-><init>(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$6$1;)V

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/base/BaseActivity;->registerActivityLifecycleListener(Lcom/callapp/contacts/activity/base/ActivityLifecycleListener;)V

    return-void

    .line 632
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p1

    const/16 v0, 0x50

    const-string v1, "failed to open profile"

    .line 1206
    invoke-virtual {p1, v1, v0}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method
