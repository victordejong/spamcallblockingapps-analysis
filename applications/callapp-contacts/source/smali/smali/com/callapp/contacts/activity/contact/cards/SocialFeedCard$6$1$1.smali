.class Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$6$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/base/ActivityLifecycleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$6$1;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$6$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$6$1;)V
    .locals 0

    .line 615
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$6$1$1;->a:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$6$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 1

    .line 618
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$6$1$1;->a:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$6$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$6$1;->a:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$6;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$6;->a:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/base/BaseActivity;

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/activity/base/BaseActivity;->unregisterActivityLifecycleListener(Lcom/callapp/contacts/activity/base/ActivityLifecycleListener;)V

    .line 620
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$6$1$1;->a:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$6$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$6$1;->a:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$6;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$6;->a:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$6$1$1;->a:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$6$1;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$6$1;->a:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$6;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$6;->a:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$6$1$1;->a:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$6$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$6$1;->a:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$6;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$6;->f:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 621
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$6$1$1;->a:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$6$1;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$6$1;->a:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$6;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$6;->e:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
