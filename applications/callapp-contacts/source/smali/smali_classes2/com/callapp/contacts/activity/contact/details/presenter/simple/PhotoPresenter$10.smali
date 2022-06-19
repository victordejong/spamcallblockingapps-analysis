.class Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->setFullImage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;Ljava/lang/String;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$10;->b:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$10;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 328
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$10;->b:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->access$1600(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)Landroid/widget/ViewSwitcher;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$10;->b:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->access$2000(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v1

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhotoBGColor()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$10;->b:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->access$2100(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v1

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhotoBGColor()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const v1, 0x7f060244

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setBackgroundColor(I)V

    .line 330
    new-instance v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$10;->b:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->access$1600(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)Landroid/widget/ViewSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$10;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$10;->b:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;

    invoke-static {v3}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->access$2500(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v3

    invoke-interface {v3}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$10;->b:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;

    .line 331
    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->access$2300(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v1

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$10;->b:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->access$2400(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v1

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhotoDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a(Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$10;->b:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->access$1600(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)Landroid/widget/ViewSwitcher;

    move-result-object v1

    .line 1386
    iput-object v1, v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d:Landroid/widget/ViewSwitcher;

    .line 331
    new-instance v1, Lcom/callapp/contacts/util/glide/CallAppRequestListener;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$10;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$10;->b:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;

    .line 332
    invoke-static {v3}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->access$2200(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v3

    invoke-interface {v3}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/callapp/contacts/util/glide/CallAppRequestListener;-><init>(Ljava/lang/String;Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 1496
    iput-object v1, v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->n:Lcom/bumptech/glide/e/g;

    .line 334
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$10;->b:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->access$300(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 2396
    iput-boolean v2, v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->m:Z

    goto :goto_2

    .line 3376
    :cond_2
    iput-boolean v2, v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->q:Z

    .line 339
    :goto_2
    invoke-virtual {v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    return-void
.end method
