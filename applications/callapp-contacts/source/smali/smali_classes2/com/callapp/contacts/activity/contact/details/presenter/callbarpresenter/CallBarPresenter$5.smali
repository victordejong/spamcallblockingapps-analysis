.class Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$5;
.super Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;
.source "SourceFile"


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

    .line 343
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$5;->a:Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;

    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 346
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 347
    invoke-static {}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->get()Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->isInRecorderTestMode()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$5;->a:Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->k(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;)Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/RecorderTestListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 348
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$5;->a:Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->k(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;)Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/RecorderTestListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/RecorderTestListener;->a()V

    return-void

    .line 350
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$5;->a:Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->a()V

    return-void
.end method
