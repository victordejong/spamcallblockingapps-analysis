.class abstract Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter;
.super Lcom/callapp/contacts/activity/contact/details/presenter/BasePresenter;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/event/listener/DestroyListener;
.implements Lcom/callapp/contacts/model/contact/ContactDataChangeListener;


# static fields
.field private static final MAX_PROGRESS_WHEEL_TO_HIDE_DELAY_MILLIS:I = 0x251c

.field private static final START_PREGRESS_WHEEL_DELAY_MILLIS:I = 0x1f4

.field private static final STOP_PREGRESS_WHEEL_DELAY_MILLIS:I = 0x5dc


# instance fields
.field private progressWheel:Lcom/pnikosis/materialishprogress/ProgressWheel;

.field private showProgressWheelRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/BasePresenter;-><init>()V

    .line 24
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter$1;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter;->showProgressWheelRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter;)Lcom/pnikosis/materialishprogress/ProgressWheel;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter;->progressWheel:Lcom/pnikosis/materialishprogress/ProgressWheel;

    return-object p0
.end method

.method static synthetic access$100(Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter;->hideProgressWheel(I)V

    return-void
.end method

.method private hideProgressWheel(I)V
    .locals 4

    .line 71
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter;->showProgressWheelRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 72
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter;->showProgressWheelRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->c(Ljava/lang/Runnable;)V

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter;->progressWheel:Lcom/pnikosis/materialishprogress/ProgressWheel;

    if-eqz v0, :cond_2

    if-gtz p1, :cond_1

    .line 77
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    new-instance v0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter$2;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter$2;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter;)V

    invoke-interface {p1, v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->safeRunOnUIThread(Ljava/lang/Runnable;)V

    return-void

    .line 84
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter$3;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter$3;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;J)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected abstract getProgressWheel()Lcom/pnikosis/materialishprogress/ProgressWheel;
.end method

.method public onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    .line 63
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter;->progressWheel:Lcom/pnikosis/materialishprogress/ProgressWheel;

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v0, 0x0

    .line 64
    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->genomeData:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v1, p1, v0

    const/4 v0, 0x1

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->photoUrl:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v1, p1, v0

    invoke-static {p2, p1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x5dc

    .line 65
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter;->hideProgressWheel(I)V

    :cond_0
    return-void
.end method

.method public onCreate(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V
    .locals 3

    .line 45
    invoke-interface {p1, p0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->addDestroyListener(Lcom/callapp/contacts/event/listener/DestroyListener;)V

    .line 47
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter;->getProgressWheel()Lcom/pnikosis/materialishprogress/ProgressWheel;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter;->progressWheel:Lcom/pnikosis/materialishprogress/ProgressWheel;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 49
    invoke-virtual {p1, v0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->setVisibility(I)V

    .line 50
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter;->showProgressWheelRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 56
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter;->showProgressWheelRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->c(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter;->showProgressWheelRunnable:Ljava/lang/Runnable;

    .line 58
    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter;->progressWheel:Lcom/pnikosis/materialishprogress/ProgressWheel;

    return-void
.end method
