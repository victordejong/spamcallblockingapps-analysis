.class Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;->collapse(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;Z)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter$7;->b:Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;

    iput-boolean p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter$7;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 258
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter$7;->a:Z

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter$7;->b:Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;->access$000(Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/widget/RetractableView;

    invoke-interface {v0}, Lcom/callapp/contacts/widget/RetractableView;->b()V

    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter$7;->b:Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;->access$000(Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/widget/RetractableView;

    invoke-interface {v0}, Lcom/callapp/contacts/widget/RetractableView;->c()V

    return-void
.end method
