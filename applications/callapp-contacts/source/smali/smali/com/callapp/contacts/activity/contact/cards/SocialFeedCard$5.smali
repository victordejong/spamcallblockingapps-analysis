.class final Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->showAndConfirmProfile(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/DataSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

.field final synthetic b:Lcom/callapp/contacts/model/contact/ContactData;

.field final synthetic c:Lcom/callapp/contacts/model/contact/DataSource;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/DataSource;)V
    .locals 0

    .line 596
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$5;->a:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$5;->b:Lcom/callapp/contacts/model/contact/ContactData;

    iput-object p3, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$5;->c:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 599
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$5;->a:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/api/helper/common/ActivityWithContact;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$5;->b:Lcom/callapp/contacts/model/contact/ContactData;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$5;->c:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->a(Lcom/callapp/contacts/api/helper/common/ActivityWithContact;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/DataSource;)V

    return-void
.end method
