.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/TutorialsFragment;
.super Lrb1;
.source ""


# instance fields
.field public s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpe1;",
            ">;"
        }
    .end annotation
.end field

.field public t:Ljava/lang/Thread;

.field public u:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lrb1;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/TutorialsFragment;->t:Ljava/lang/Thread;

    return-void
.end method

.method public static synthetic F(Lcom/flexaspect/android/everycallcontrol/ui/fragments/TutorialsFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/TutorialsFragment;->s:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic G(Lcom/flexaspect/android/everycallcontrol/ui/fragments/TutorialsFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/TutorialsFragment;->s:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic H(Lcom/flexaspect/android/everycallcontrol/ui/fragments/TutorialsFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lrb1;->p:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public D(Lsb1;)V
    .locals 1

    const v0, 0x7f1104a8

    invoke-virtual {p1, v0}, Lsb1;->o(I)Lsb1;

    move-result-object p1

    invoke-virtual {p1}, Lsb1;->b()Lsb1;

    return-void
.end method

.method public m(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lyd;->m(Landroid/widget/ListView;Landroid/view/View;IJ)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/TutorialsFragment;->s:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpe1;

    invoke-virtual {p1}, Lpe1;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lrb1;->p:Landroid/app/Activity;

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/TutorialsFragment;->s:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lpe1;

    invoke-virtual {p2}, Lpe1;->b()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity;->G(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p1, Lr71$a;->T:Lr71$a;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Lr71$a;->k(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    new-instance p3, Lcom/flexaspect/android/everycallcontrol/ui/fragments/TutorialsFragment$a;

    invoke-direct {p3, p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/TutorialsFragment$a;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/TutorialsFragment;)V

    iput-object p3, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/TutorialsFragment;->u:Landroid/os/Handler;

    const p3, 0x7f0d0191

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/TutorialsFragment;->t:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/TutorialsFragment;->u:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/TutorialsFragment;->t:Ljava/lang/Thread;

    :cond_0
    invoke-super {p0}, Lrb1;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lrb1;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lje1;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/TutorialsFragment;->u:Landroid/os/Handler;

    const-string v1, "https://www.googleapis.com/youtube/v3/playlistItems?part=snippet%2C+id&maxResults=10&playlistId=PLkjZ8bkbnXw9goOA9E26Vb0hDIpXn-SAX&key=AIzaSyAm6ldbyfQjxSkc8EeBKjtrZekasWH7rBo"

    invoke-direct {p2, v0, v1}, Lje1;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/TutorialsFragment;->t:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
