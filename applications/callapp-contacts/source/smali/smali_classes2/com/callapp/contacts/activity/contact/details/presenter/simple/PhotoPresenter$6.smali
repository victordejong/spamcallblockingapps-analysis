.class Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->setPhotoResource(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;Ljava/lang/String;Z)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$6;->c:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$6;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$6;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 274
    new-instance v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$6;->c:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->access$1300(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)Landroid/widget/ViewSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$6;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$6;->c:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;

    invoke-static {v3}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->access$1500(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v3

    invoke-interface {v3}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$6;->c:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;

    .line 275
    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->access$1400(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1354
    iput-object v1, v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->g:Ljava/lang/Integer;

    .line 275
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$6;->c:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;

    .line 276
    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->access$1300(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)Landroid/widget/ViewSwitcher;

    move-result-object v1

    .line 1386
    iput-object v1, v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d:Landroid/widget/ViewSwitcher;

    .line 276
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$6;->c:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;

    .line 277
    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->access$1200(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a(ILandroid/graphics/PorterDuff$Mode;)Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 2371
    iput-boolean v1, v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->l:Z

    .line 278
    iget-boolean v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$6;->b:Z

    .line 2413
    iput-boolean v1, v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->p:Z

    .line 279
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$6;->c:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;

    .line 280
    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->access$1000(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)I

    move-result v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$6;->c:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;

    invoke-static {v2}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->access$1100(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->b(II)Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    move-result-object v0

    .line 281
    invoke-virtual {v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    return-void
.end method
