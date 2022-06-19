.class Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter;->hideProgressWheel(I)V
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

    .line 77
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter$2;->a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter$2;->a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter;->access$000(Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter;)Lcom/pnikosis/materialishprogress/ProgressWheel;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/pnikosis/materialishprogress/ProgressWheel;->setVisibility(I)V

    return-void
.end method
