.class Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;->onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;Ljava/lang/String;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter$3;->b:Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 157
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter$3;->b:Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter$3;->b:Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;->access$000(Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter$3;->b:Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter$3;->b:Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/widget/RetractableView;

    invoke-interface {v0}, Lcom/callapp/contacts/widget/RetractableView;->isCollapsed()Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f120349

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 159
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter$3;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 160
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter$3;->b:Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;->updateText(Ljava/lang/String;)V

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter$3;->b:Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;->collapseCorrectedInfoViewForHelpUsIdentifyNumber()V

    :cond_2
    return-void
.end method
