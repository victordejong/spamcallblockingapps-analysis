.class Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter$1;->a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 27
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter$1;->a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter;->access$000(Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter;)Lcom/pnikosis/materialishprogress/ProgressWheel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter$1;->a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter;->access$000(Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter;)Lcom/pnikosis/materialishprogress/ProgressWheel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pnikosis/materialishprogress/ProgressWheel;->setVisibility(I)V

    .line 29
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter$1$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter$1$1;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter$1;)V

    const-wide/16 v2, 0x251c

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method
