.class Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter$1;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter$1$1;->a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter$1$1;->a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter$1;->a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter;->access$000(Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter;)Lcom/pnikosis/materialishprogress/ProgressWheel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter$1$1;->a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter$1;->a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter;->access$000(Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter;)Lcom/pnikosis/materialishprogress/ProgressWheel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 34
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter$1$1;->a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter$1;->a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter;->access$100(Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter;I)V

    :cond_0
    return-void
.end method
