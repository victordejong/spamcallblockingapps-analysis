.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/TutorialsFragment$a;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/TutorialsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/TutorialsFragment;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/TutorialsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/TutorialsFragment$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/TutorialsFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/TutorialsFragment$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/TutorialsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "isLoadedAndParsed"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const v1, 0x1020004

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/TutorialsFragment$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/TutorialsFragment;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "videos"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/TutorialsFragment;->G(Lcom/flexaspect/android/everycallcontrol/ui/fragments/TutorialsFragment;Ljava/util/List;)Ljava/util/List;

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/TutorialsFragment$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/TutorialsFragment;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/TutorialsFragment;->F(Lcom/flexaspect/android/everycallcontrol/ui/fragments/TutorialsFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/TutorialsFragment$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/TutorialsFragment;

    invoke-virtual {p1}, Lyd;->l()Landroid/widget/ListView;

    move-result-object p1

    new-instance v0, Lb61;

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/TutorialsFragment$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/TutorialsFragment;

    invoke-static {v1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/TutorialsFragment;->H(Lcom/flexaspect/android/everycallcontrol/ui/fragments/TutorialsFragment;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/TutorialsFragment$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/TutorialsFragment;

    invoke-static {v2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/TutorialsFragment;->F(Lcom/flexaspect/android/everycallcontrol/ui/fragments/TutorialsFragment;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lb61;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/TutorialsFragment$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/TutorialsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/TutorialsFragment$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/TutorialsFragment;

    const v1, 0x7f1104e1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/TutorialsFragment$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/TutorialsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/TutorialsFragment$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/TutorialsFragment;

    const v1, 0x7f1102fc

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method
