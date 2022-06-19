.class Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;->onPositiveBtnClicked(Lcom/callapp/framework/phone/Phone;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/framework/phone/Phone;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;Lcom/callapp/framework/phone/Phone;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter$1;->b:Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter$1;->a:Lcom/callapp/framework/phone/Phone;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 4

    .line 67
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter$1$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter$1$1;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter$1;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;J)V

    return-void
.end method
