.class Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$7$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$7;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$7;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$7;)V
    .locals 0

    .line 418
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$7$1;->a:Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$7;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 2

    .line 421
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/callapp/contacts/inCallService/AudioModeProvider;->get()Lcom/callapp/contacts/inCallService/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/inCallService/AudioModeProvider;->isMoreThenOneBluetoothDevices()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$7$1;->a:Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$7;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$7;->a:Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->p(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;)Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/AudioRouteSelectorDialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/AudioRouteSelectorDialogListener;->a()V

    goto :goto_0

    .line 424
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$7$1;->a:Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$7;

    iget-object v1, v1, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$7;->a:Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->q(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v1

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->b(Landroid/content/Context;)V

    .line 426
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v0

    if-nez v0, :cond_1

    .line 427
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$7$1;->a:Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$7;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$7;->a:Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->b()V

    .line 428
    invoke-static {}, Lcom/callapp/contacts/manager/ProximityManager;->get()Lcom/callapp/contacts/manager/ProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/ProximityManager;->b()V

    :cond_1
    return-void
.end method
