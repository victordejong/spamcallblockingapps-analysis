.class Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardViewHolder;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardViewHolder;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter$3;->b:Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter$3;->a:Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getSocialImagesList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImage;",
            ">;"
        }
    .end annotation

    .line 335
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 336
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter$3;->b:Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;->c(Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 337
    :try_start_0
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter$3;->b:Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;

    invoke-static {v2}, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;->d(Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/e/b;

    .line 338
    iget-object v4, v3, Landroidx/core/e/b;->a:Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 340
    iget-object v3, v3, Landroidx/core/e/b;->b:Ljava/lang/Object;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 343
    :cond_1
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 326
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Contact Details"

    const-string v1, "Social images card clicked"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter$3;->getSocialImagesList()Ljava/util/List;

    move-result-object p1

    .line 328
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter$3;->b:Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;

    iget-object v1, v1, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;->c:Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;->access$900(Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v1

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/callapp/contacts/activity/GalleryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 329
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter$3;->a:Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardViewHolder;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardViewHolder;->getAdapterPosition()I

    move-result v1

    const-string v2, "PHOTO_CLICKED_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 330
    check-cast p1, Ljava/util/ArrayList;

    const-string v1, "PHOTO_LIST"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 331
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter$3;->b:Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;->c:Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;->access$1000(Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void
.end method
