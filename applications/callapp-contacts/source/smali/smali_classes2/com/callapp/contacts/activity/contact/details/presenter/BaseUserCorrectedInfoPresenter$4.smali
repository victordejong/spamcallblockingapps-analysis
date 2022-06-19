.class Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter;->collapse(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter;Z)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter$4;->b:Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter;

    iput-boolean p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter$4;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 124
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter$4;->a:Z

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter$4;->b:Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter;->access$000(Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/widget/RetractableView;

    invoke-interface {v0}, Lcom/callapp/contacts/widget/RetractableView;->b()V

    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter$4;->b:Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter;->access$000(Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/widget/RetractableView;

    invoke-interface {v0}, Lcom/callapp/contacts/widget/RetractableView;->c()V

    return-void
.end method
