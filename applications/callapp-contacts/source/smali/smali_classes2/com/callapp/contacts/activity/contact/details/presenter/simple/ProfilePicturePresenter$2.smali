.class Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;->onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

.field final synthetic b:Lcom/callapp/contacts/model/contact/ContactData;

.field final synthetic c:Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter$2;->c:Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter$2;->a:Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    iput-object p3, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter$2;->b:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 92
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter$2;->c:Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;->access$000(Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;)Lcom/callapp/contacts/widget/ProfilePictureView;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter$2;->a:Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    const/16 v2, 0x12c

    .line 1491
    iput v2, v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->k:I

    const/4 v2, 0x1

    .line 2449
    iput-boolean v2, v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->j:Z

    .line 94
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter$2;->b:Lcom/callapp/contacts/model/contact/ContactData;

    .line 95
    invoke-virtual {v3}, Lcom/callapp/contacts/model/contact/ContactData;->getPhotoBGColor()Ljava/lang/Integer;

    move-result-object v3

    .line 3354
    iput-object v3, v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->g:Ljava/lang/Integer;

    .line 3371
    iput-boolean v2, v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->l:Z

    .line 96
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter$2;->c:Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;

    .line 97
    invoke-static {v2}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;->access$300(Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;)I

    move-result v2

    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter$2;->c:Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;

    invoke-static {v3}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;->access$400(Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->b(II)Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter$2;->c:Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;

    .line 98
    invoke-static {v2}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;->access$100(Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v2

    invoke-interface {v2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/callapp/contacts/util/glide/CallAppRequestListener;

    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter$2;->a:Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-virtual {v3}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->getPhotoUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter$2;->c:Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;

    invoke-static {v4}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;->access$200(Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v4

    invoke-interface {v4}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/callapp/contacts/util/glide/CallAppRequestListener;-><init>(Ljava/lang/String;Lcom/callapp/contacts/model/contact/ContactData;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 3496
    :goto_0
    iput-object v2, v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->n:Lcom/bumptech/glide/e/g;

    .line 92
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;)Z

    return-void
.end method
