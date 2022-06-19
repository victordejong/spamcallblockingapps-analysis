.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/SupportFragment;
.super Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment<",
        "Lk31;",
        ">;"
    }
.end annotation


# instance fields
.field public l:Landroid/app/AlertDialog;

.field public m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final n:I

.field public final o:I

.field public p:Lqu0;

.field public q:Landroid/widget/EditText;

.field public r:Landroid/widget/ImageView;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;-><init>()V

    invoke-static {}, Lfa1;->k()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/SupportFragment;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/SupportFragment;->n:I

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/SupportFragment;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/SupportFragment;->o:I

    new-instance v0, Lqu0;

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/SupportFragment;->m:Ljava/util/List;

    new-instance v2, Li31;

    invoke-direct {v2, p0}, Li31;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/SupportFragment;)V

    invoke-direct {v0, v1, v2}, Lqu0;-><init>(Ljava/util/List;Lst0;)V

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/SupportFragment;->p:Lqu0;

    return-void
.end method

.method public static synthetic J(Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/SupportFragment;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/SupportFragment;->Y(Z)V

    return-void
.end method

.method public static K(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    const v0, 0x7f0a02c9

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    :cond_0
    const p0, 0x7f0a02f6

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/kedlin/cca/ui/HelpOverlayViewContainer;

    invoke-virtual {p0}, Lcom/kedlin/cca/ui/HelpOverlayViewContainer;->Y()V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/kedlin/cca/ui/HelpOverlayViewContainer;->setHelpCode(I)V

    invoke-virtual {p0}, Lcom/kedlin/cca/ui/HelpOverlayViewContainer;->W()Lcom/kedlin/cca/ui/HelpOverlayView;

    move-result-object v1

    const-string v2, "welcome.html"

    invoke-virtual {v1, v2}, Lcom/kedlin/cca/ui/HelpOverlayView;->l(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/kedlin/cca/ui/HelpOverlayViewContainer;->W()Lcom/kedlin/cca/ui/HelpOverlayView;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v0, "intro_main_tabs.html"

    invoke-virtual {v1, v0}, Lcom/kedlin/cca/ui/HelpOverlayView;->l(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/kedlin/cca/ui/HelpOverlayViewContainer;->W()Lcom/kedlin/cca/ui/HelpOverlayView;

    move-result-object v0

    const-string v1, "intro_drawer.html"

    invoke-virtual {v0, v1}, Lcom/kedlin/cca/ui/HelpOverlayView;->l(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/kedlin/cca/ui/HelpOverlayView;->A()Ljava/lang/Runnable;

    move-result-object v1

    iput-object v1, v0, Lcom/kedlin/cca/ui/HelpOverlayView;->a:Ljava/lang/Runnable;

    invoke-virtual {v0}, Lcom/kedlin/cca/ui/HelpOverlayView;->t()Ljava/lang/Runnable;

    move-result-object v1

    iput-object v1, v0, Lcom/kedlin/cca/ui/HelpOverlayView;->b:Ljava/lang/Runnable;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kedlin/cca/ui/HelpOverlayViewContainer;->setVisibility(I)V

    return-void
.end method

.method public static L(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    const v0, 0x7f0a02c9

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    :cond_0
    const p0, 0x7f0a02f6

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/kedlin/cca/ui/HelpOverlayViewContainer;

    invoke-virtual {p0}, Lcom/kedlin/cca/ui/HelpOverlayViewContainer;->Y()V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/kedlin/cca/ui/HelpOverlayViewContainer;->setHelpCode(I)V

    invoke-virtual {p0}, Lcom/kedlin/cca/ui/HelpOverlayViewContainer;->W()Lcom/kedlin/cca/ui/HelpOverlayView;

    move-result-object v0

    const-string v1, "whatsnew.html"

    invoke-virtual {v0, v1}, Lcom/kedlin/cca/ui/HelpOverlayView;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kedlin/cca/ui/HelpOverlayViewContainer;->setVisibility(I)V

    return-void
.end method

.method public static synthetic N(Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/SupportFragment;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/SupportFragment;->W(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic O(Lpq0;Landroid/view/View;IIII)V
    .locals 0

    if-le p3, p5, :cond_0

    invoke-virtual {p0}, Lpq0;->b()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lpq0;->i()V

    :goto_0
    return-void
.end method

.method private synthetic P(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/SupportFragment;->V(Landroid/view/View;)V

    return-void
.end method

.method private synthetic R(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 7

    iget-object p3, p0, Lqb1;->c:Landroid/app/Activity;

    const-string v0, "support_report.txt"

    invoke-static {p3, v0, p1}, Lga1;->b(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lqb1;->c:Landroid/app/Activity;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/SupportFragment;->q:Landroid/widget/EditText;

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n\n"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const/4 p1, 0x0

    new-array v6, p1, [Ljava/lang/String;

    const-string v2, "android-support@callcontrol.com"

    const-string v3, "Report"

    invoke-static/range {v1 .. v6}, Lie1;->e(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/SupportFragment;->q:Landroid/widget/EditText;

    const-string p3, ""

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lqb1;->c:Landroid/app/Activity;

    const p3, 0x7f1104f9

    const/4 v0, 0x1

    invoke-static {p1, p3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public static synthetic T(Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/SupportFragment;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/SupportFragment;->U(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public F()V
    .locals 2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->j:Lfv0;

    check-cast v0, Lk31;

    iget-object v0, v0, Lk31;->g:Lve;

    new-instance v1, Le31;

    invoke-direct {v1, p0}, Le31;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/SupportFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->g(Lqe;Lwe;)V

    return-void
.end method

.method public M()Ljava/lang/String;
    .locals 1

    const-string v0, "Support"

    return-object v0
.end method

.method public synthetic Q(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/SupportFragment;->P(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public synthetic S(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/SupportFragment;->R(Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public final U(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/SupportFragment;->n:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lqb1;->c:Landroid/app/Activity;

    const-string p2, "https://www.callcontrol.com/support/call-control-android"

    invoke-static {p1, p2}, Lie1;->i(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/SupportFragment;->o:I

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lqb1;->c:Landroid/app/Activity;

    check-cast p1, Lcom/kedlin/cca/ui/CCAFragmentActivity;

    invoke-static {p1}, Loe1;->Z(Lcom/kedlin/cca/ui/CCAFragmentActivity;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    sget-object p1, Lta1;->I:Lta1;

    invoke-virtual {p1}, Lta1;->d()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p1, p0}, Lta1;->h(Landroidx/fragment/app/Fragment;)V

    return-void

    :cond_2
    iget-object p1, p0, Lqb1;->c:Landroid/app/Activity;

    check-cast p1, Lcom/kedlin/cca/ui/CCAFragmentActivity;

    const-class p2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/TutorialsFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, p2, v0}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->r(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    goto :goto_0

    :cond_3
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const-string v0, "TYPE"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p2, p0, Lqb1;->c:Landroid/app/Activity;

    check-cast p2, Lcom/kedlin/cca/ui/CCAFragmentActivity;

    const-class v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/QuestionFragment;

    invoke-virtual {p2, p0, v0, p1}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->r(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    :goto_0
    return-void
.end method

.method public final V(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Loe1;->w(Landroid/content/Context;Landroid/view/View;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/SupportFragment;->q:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/SupportFragment;->Y(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->j:Lfv0;

    check-cast v0, Lk31;

    invoke-virtual {v0, p1}, Lk31;->n(Landroid/view/View;)V

    return-void
.end method

.method public final W(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/SupportFragment;->l:Landroid/app/AlertDialog;

    if-nez v0, :cond_1

    iget-object v0, p0, Lqb1;->c:Landroid/app/Activity;

    invoke-static {v0}, Loe1;->i(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1104f8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1102bc

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110555

    new-instance v2, Lg31;

    invoke-direct {v2, p0, p1}, Lg31;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/SupportFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1101b0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/SupportFragment;->l:Landroid/app/AlertDialog;

    :cond_1
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/SupportFragment;->l:Landroid/app/AlertDialog;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/SupportFragment;->l:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :cond_2
    return-void
.end method

.method public final X(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0a053e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/SupportFragment;->p:Lqu0;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/SupportFragment;->p:Lqu0;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void
.end method

.method public final Y(Z)V
    .locals 3

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/SupportFragment;->q:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p1, :cond_0

    const v2, 0x7f080174

    goto :goto_0

    :cond_0
    const v2, 0x7f080382

    :goto_0
    invoke-static {v1, v2}, Lg8;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/SupportFragment;->r:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const/16 p1, 0x8

    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public f(Lta1;)Z
    .locals 3

    sget-object v0, Lta1;->I:Lta1;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lqb1;->c:Landroid/app/Activity;

    check-cast v0, Lcom/kedlin/cca/ui/CCAFragmentActivity;

    const-class v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/TutorialsFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->r(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    :cond_0
    invoke-super {p0, p1}, Lqb1;->f(Lta1;)Z

    move-result p1

    return p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/SupportFragment;->X(Landroid/view/View;)V

    const p2, 0x7f0a0288

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/SupportFragment;->q:Landroid/widget/EditText;

    const p2, 0x7f0a034e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/SupportFragment;->r:Landroid/widget/ImageView;

    const p2, 0x7f0a0466

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/core/widget/NestedScrollView;

    new-instance v0, Lpq0;

    const v1, 0x7f0a02cd

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {v0, v1}, Lpq0;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    new-instance v1, Lf31;

    invoke-direct {v1, v0}, Lf31;-><init>(Lpq0;)V

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    :cond_0
    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/SupportFragment;->q:Landroid/widget/EditText;

    new-instance v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/SupportFragment$a;

    invoke-direct {v1, p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/SupportFragment$a;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/SupportFragment;)V

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance p2, Lh31;

    invoke-direct {p2, p0, p1}, Lh31;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/SupportFragment;Landroid/view/View;)V

    invoke-virtual {v0, p2}, Lpq0;->g(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public v(Lsb1;)V
    .locals 1

    invoke-super {p0, p1}, Lqb1;->v(Lsb1;)V

    invoke-virtual {p1}, Lsb1;->b()Lsb1;

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/SupportFragment;->M()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lsb1;->p(Ljava/lang/String;)Lsb1;

    return-void
.end method

.method public y()V
    .locals 1

    const v0, 0x7f0d0177

    iput v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->k:I

    const-class v0, Lk31;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->h:Ljava/lang/Class;

    return-void
.end method
