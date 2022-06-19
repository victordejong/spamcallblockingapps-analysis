.class Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$3;->a:Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$3;->a:Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->f(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$3;->a:Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->g(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$3;->a:Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->g(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;)Landroid/widget/ImageView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 187
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$3;->a:Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->f(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method
