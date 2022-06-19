.class Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->setPhotoUrl(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;ZLjava/lang/String;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$8;->c:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;

    iput-boolean p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$8;->a:Z

    iput-object p3, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$8;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 305
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$8;->c:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->access$1600(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)Landroid/widget/ViewSwitcher;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Z)V

    .line 306
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$8;->a:Z

    if-nez v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$8;->c:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$8;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->access$500(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
