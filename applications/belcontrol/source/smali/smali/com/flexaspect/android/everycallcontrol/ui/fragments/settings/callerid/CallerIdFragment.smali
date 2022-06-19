.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;
.super Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;
.source ""

# interfaces
.implements Lm91$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment<",
        "Lu21;",
        ">;",
        "Lm91$b;"
    }
.end annotation


# static fields
.field public static q:I = 0x1500

.field public static r:I = 0x1558

.field public static s:I = 0x1559

.field public static t:Z = false

.field public static u:Z = false


# instance fields
.field public n:Landroid/widget/TextView;

.field public o:Lfd;

.field public p:Landroid/app/Dialog;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;-><init>()V

    new-instance v0, Lrw0;

    invoke-direct {v0}, Lrw0;-><init>()V

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;->o:Lfd;

    return-void
.end method

.method private synthetic R(Lkq0;Landroid/content/DialogInterface;)V
    .locals 2

    invoke-virtual {p1}, Lkq0;->d()Lk01;

    move-result-object p2

    sget-object v0, Lr71$a;->v:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v1

    invoke-interface {p2, v1}, Lk01;->a(Z)V

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result p2

    invoke-virtual {p1, p2}, Lkq0;->g(Z)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;->m:Lnu0;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void
.end method

.method private synthetic T(Lkq0;Landroid/view/View;)V
    .locals 2

    sget-object p2, Lr71$a;->v:Lr71$a;

    invoke-virtual {p2}, Lr71$a;->a()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Loe1;->W(Z)V

    invoke-virtual {p1}, Lkq0;->d()Lk01;

    move-result-object v0

    invoke-virtual {p2}, Lr71$a;->a()Z

    move-result v1

    invoke-interface {v0, v1}, Lk01;->a(Z)V

    invoke-virtual {p2}, Lr71$a;->a()Z

    move-result p2

    invoke-virtual {p1, p2}, Lkq0;->g(Z)V

    sget-object p1, Lq71$a;->g:Lq71$a;

    invoke-static {p1}, Lq71$a;->e(Lq71$a;)V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;->M()V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;->m:Lnu0;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void
.end method

.method private synthetic V(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;->m:Lnu0;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void
.end method

.method private synthetic X(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lqb1;->c:Landroid/app/Activity;

    invoke-static {p1}, Lfa1;->A(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lqb1;->c:Landroid/app/Activity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Loe1;->a0(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private synthetic Z(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;->m:Lnu0;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void
.end method

.method private synthetic b0(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lqb1;->c:Landroid/app/Activity;

    invoke-static {p1}, Loe1;->v(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;->m:Lnu0;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void
.end method

.method private synthetic d0(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;->m:Lnu0;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void
.end method

.method private synthetic f0(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lqb1;->c:Landroid/app/Activity;

    invoke-static {p1}, Loe1;->v(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;->m:Lnu0;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void
.end method

.method private synthetic h0(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;->m:Lnu0;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void
.end method

.method private synthetic j0(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lqb1;->c:Landroid/app/Activity;

    invoke-static {p1}, Lfa1;->A(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lqb1;->c:Landroid/app/Activity;

    invoke-static {p1}, Loe1;->v(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private synthetic l0(Ljava/util/List;I)V
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkq0;

    invoke-virtual {p0, v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;->N(Lkq0;)V

    sget-object v0, Lr71$a;->j:Lr71$a;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lr71$a;->k(Ljava/lang/Boolean;)V

    invoke-static {}, Lr71;->g()Z

    move-result v0

    add-int/lit8 p2, p2, 0x2

    invoke-virtual {p0, v0, p2, p1}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;->J(ZILjava/util/List;)V

    return-void
.end method

.method private synthetic n0(ILkq0;)V
    .locals 1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;->m:Lnu0;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemChanged(ILjava/lang/Object;)V

    return-void
.end method

.method private synthetic p0(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p3, p2, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;->Q(IZLjava/util/List;)V

    return-void
.end method

.method private synthetic r0(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;->m:Lnu0;

    new-instance v1, Lh21;

    invoke-direct {v1, p0, p1}, Lh21;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;Ljava/util/List;)V

    invoke-virtual {v0, p1, v1}, Lnu0;->g(Ljava/util/List;Lst0;)V

    return-void
.end method

.method private synthetic t0(Lkq0;)V
    .locals 2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;->m:Lnu0;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemChanged(ILjava/lang/Object;)V

    return-void
.end method

.method private synthetic v0(Lkq0;)V
    .locals 2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;->m:Lnu0;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemChanged(ILjava/lang/Object;)V

    return-void
.end method

.method private synthetic x0(Landroid/view/View;)V
    .locals 1

    sget p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;->s:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;->C0(ZI)V

    return-void
.end method

.method private synthetic z0(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    const-class v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/theme/ThemeFragment;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v1}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->r(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    return-void
.end method


# virtual methods
.method public synthetic A0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;->z0(Landroid/view/View;)V

    return-void
.end method

.method public final B0(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;->C0(ZI)V

    return-void
.end method

.method public final C0(ZI)V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_3

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v2, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0, v1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    sget p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;->q:I

    const/4 v0, 0x1

    if-ne p2, p1, :cond_2

    sput-boolean v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;->t:Z

    goto :goto_0

    :cond_2
    sget p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;->r:I

    if-ne p2, p1, :cond_3

    sput-boolean v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;->u:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public final D0(Landroid/view/View;)V
    .locals 8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0a005e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a005d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v4, 0x7f0a0260

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1102a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;->P()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;->E0(Landroid/view/View;ILjava/lang/String;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lb21;

    invoke-direct {v1, p0}, Lb21;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0682

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;->n:Landroid/widget/TextView;

    sget-object v0, Lr71$a;->w:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v1, Lv21;->c:Lv21;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lr71$a;->o(Ljava/lang/String;)V

    :cond_1
    const v4, 0x7f0a0634

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f110232

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v1}, Lv21;->valueOf(Ljava/lang/String;)Lv21;

    move-result-object v1

    invoke-virtual {v1}, Lv21;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;->E0(Landroid/view/View;ILjava/lang/String;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lp21;

    invoke-direct {v0, p0}, Lp21;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final E0(Landroid/view/View;ILjava/lang/String;Ljava/lang/String;Z)Landroid/view/View;
    .locals 1

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    if-eqz p5, :cond_0

    const p5, 0x7f0a034d

    invoke-virtual {p1, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const p5, 0x7f0a0351

    invoke-virtual {p1, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5, p2}, Landroid/view/View;->setVisibility(I)V

    const p5, 0x7f0a035c

    invoke-virtual {p1, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    const/4 v0, 0x0

    invoke-virtual {p5, v0}, Landroid/view/View;->setVisibility(I)V

    const p5, 0x7f0a05c5

    invoke-virtual {p1, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5, p2}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x7f0a069f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const p5, 0x7f0a0682

    invoke-virtual {p1, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p5, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method public F()V
    .locals 2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->j:Lfv0;

    check-cast v0, Lu21;

    iget-object v0, v0, Lu21;->g:Lve;

    new-instance v1, Li21;

    invoke-direct {v1, p0}, Li21;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->g(Lqe;Lwe;)V

    return-void
.end method

.method public final M()V
    .locals 3

    invoke-static {}, Lq71$a;->a()Lq71$a;

    move-result-object v0

    sget-object v1, Lr71$a;->Y:Lr71$a;

    invoke-virtual {v1}, Lr71$a;->a()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lfa1;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lfa1;->t()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lq71$a;->a()Lq71$a;

    move-result-object v1

    sget-object v2, Lq71$a;->f:Lq71$a;

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-static {}, Lfa1;->t()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lq71$a;->a()Lq71$a;

    move-result-object v1

    sget-object v2, Lq71$a;->d:Lq71$a;

    if-ne v1, v2, :cond_2

    sget-object v1, Lr71$a;->v:Lr71$a;

    invoke-virtual {v1}, Lr71$a;->a()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    sget-object v0, Lq71$a;->f:Lq71$a;

    :cond_2
    invoke-static {v0}, Lq71$a;->e(Lq71$a;)V

    return-void
.end method

.method public final N(Lkq0;)V
    .locals 5

    invoke-static {}, Lfa1;->t()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    sget-object v0, Lr71$a;->v:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lq71$a;->a()Lq71$a;

    move-result-object v2

    sget-object v3, Lq71$a;->d:Lq71$a;

    if-ne v2, v3, :cond_0

    sget-object v2, Lr71$a;->Y:Lr71$a;

    invoke-virtual {v2}, Lr71$a;->a()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Low0;

    iget-object v1, p0, Lqb1;->c:Landroid/app/Activity;

    sget-object v2, Low0$b;->l:Low0$b;

    new-instance v3, Lc21;

    invoke-direct {v3, p0, p1}, Lc21;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;Lkq0;)V

    new-instance v4, Lm21;

    invoke-direct {v4, p0, p1}, Lm21;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;Lkq0;)V

    invoke-direct {v0, v1, v2, v3, v4}, Low0;-><init>(Landroid/content/Context;Low0$b;Landroid/content/DialogInterface$OnCancelListener;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;->p:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    :cond_0
    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-static {v1}, Loe1;->W(Z)V

    invoke-virtual {p1}, Lkq0;->d()Lk01;

    move-result-object v1

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v2

    invoke-interface {v1, v2}, Lk01;->a(Z)V

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v0

    invoke-virtual {p1, v0}, Lkq0;->g(Z)V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;->M()V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;->m:Lnu0;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    goto :goto_0

    :cond_1
    new-instance p1, Low0;

    iget-object v0, p0, Lqb1;->c:Landroid/app/Activity;

    sget-object v2, Low0$b;->g:Low0$b;

    new-instance v3, Lr21;

    invoke-direct {v3, p0}, Lr21;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;)V

    new-instance v4, Ls21;

    invoke-direct {v4, p0}, Ls21;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;)V

    invoke-direct {p1, v0, v2, v3, v4}, Low0;-><init>(Landroid/content/Context;Low0$b;Landroid/content/DialogInterface$OnCancelListener;Landroid/view/View$OnClickListener;)V

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;->p:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    iget-object p1, p0, Lqb1;->c:Landroid/app/Activity;

    check-cast p1, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    iput-boolean v1, p1, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->a:Z

    :goto_0
    return-void
.end method

.method public O()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110198

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final P()I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f110538

    goto :goto_0

    :cond_0
    const v0, 0x7f1100b5

    :goto_0
    return v0
.end method

.method public final Q(IZLjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List<",
            "Lkq0;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkq0;

    invoke-virtual {v0}, Lkq0;->d()Lk01;

    move-result-object v0

    sget-object v1, Lt21;->d:Lt21;

    if-ne v0, v1, :cond_5

    invoke-static {}, Lfa1;->e()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-static {}, Lfa1;->t()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lq71$a;->a()Lq71$a;

    move-result-object p1

    invoke-virtual {p1}, Lq71$a;->d()Lq71$a;

    move-result-object p1

    sget-object p2, Lq71$a;->f:Lq71$a;

    if-eq p1, p2, :cond_2

    sget-object p2, Lq71$a;->g:Lq71$a;

    if-ne p1, p2, :cond_0

    invoke-static {}, Lfa1;->z()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Low0;

    iget-object p2, p0, Lqb1;->c:Landroid/app/Activity;

    invoke-static {}, Lfa1;->z()Z

    move-result p3

    if-eqz p3, :cond_1

    sget-object p3, Low0$b;->k:Low0$b;

    goto :goto_0

    :cond_1
    sget-object p3, Low0$b;->m:Low0$b;

    :goto_0
    new-instance v0, Ln21;

    invoke-direct {v0, p0}, Ln21;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;)V

    new-instance v1, Lf21;

    invoke-direct {v1, p0}, Lf21;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;)V

    invoke-direct {p1, p2, p3, v0, v1}, Low0;-><init>(Landroid/content/Context;Low0$b;Landroid/content/DialogInterface$OnCancelListener;Landroid/view/View$OnClickListener;)V

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;->p:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    :cond_2
    :goto_1
    new-instance p1, Low0;

    iget-object p2, p0, Lqb1;->c:Landroid/app/Activity;

    sget-object p3, Low0$b;->j:Low0$b;

    new-instance v0, Lj21;

    invoke-direct {v0, p0}, Lj21;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;)V

    new-instance v1, Lg21;

    invoke-direct {v1, p0}, Lg21;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;)V

    invoke-direct {p1, p2, p3, v0, v1}, Low0;-><init>(Landroid/content/Context;Low0$b;Landroid/content/DialogInterface$OnCancelListener;Landroid/view/View$OnClickListener;)V

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;->p:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    :cond_3
    new-instance p1, Low0;

    iget-object p2, p0, Lqb1;->c:Landroid/app/Activity;

    sget-object p3, Low0$b;->g:Low0$b;

    new-instance v0, Lq21;

    invoke-direct {v0, p0}, Lq21;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;)V

    new-instance v1, Lo21;

    invoke-direct {v1, p0}, Lo21;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;)V

    invoke-direct {p1, p2, p3, v0, v1}, Low0;-><init>(Landroid/content/Context;Low0$b;Landroid/content/DialogInterface$OnCancelListener;Landroid/view/View$OnClickListener;)V

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;->p:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    :cond_4
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lk21;

    invoke-direct {v0, p0, p3, p1}, Lk21;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;Ljava/util/List;I)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_5
    sget-object v1, Lt21;->f:Lt21;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_9

    sget-object v0, Lr71$a;->O0:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lr71$a;->M0:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    sget-object v0, Lr71$a;->N0:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz p2, :cond_7

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;->o:Lfd;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Lnd;

    move-result-object p2

    const-string p3, "purchase_dlg"

    invoke-virtual {p1, p2, p3}, Lfd;->show(Lnd;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    sget-object v0, Lr71$a;->k:Lr71$a;

    invoke-static {}, Lr71;->h()Z

    move-result v1

    if-eqz v1, :cond_8

    if-eqz p2, :cond_8

    const/4 v2, 0x1

    :cond_8
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p2}, Lr71$a;->k(Ljava/lang/Boolean;)V

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result p2

    invoke-virtual {p0, p2, p1, p3}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;->J(ZILjava/util/List;)V

    :goto_2
    return-void

    :cond_9
    sget-object v1, Lt21;->g:Lt21;

    if-ne v0, v1, :cond_c

    if-eqz p2, :cond_b

    sget-object p2, Lr71$a;->v:Lr71$a;

    invoke-virtual {p2}, Lr71$a;->a()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-virtual {p0, v2, p1, p3}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;->J(ZILjava/util/List;)V

    iget-object p1, p0, Lqb1;->c:Landroid/app/Activity;

    invoke-static {p1}, Loe1;->i(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f110661

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f110555

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_a
    sget p2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;->q:I

    invoke-virtual {p0, p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;->B0(I)V

    sget-object p2, Lr71$a;->j:Lr71$a;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->j:Lfv0;

    check-cast v0, Lu21;

    invoke-virtual {v0}, Lu21;->m()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_3

    :cond_b
    sget-object p2, Lr71$a;->j:Lr71$a;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_3
    invoke-virtual {p2, v0}, Lr71$a;->k(Ljava/lang/Boolean;)V

    invoke-static {}, Lr71;->g()Z

    move-result p2

    invoke-virtual {p0, p2, p1, p3}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;->J(ZILjava/util/List;)V

    return-void

    :cond_c
    sget-object v1, Lt21;->h:Lt21;

    if-ne v0, v1, :cond_f

    if-eqz p2, :cond_e

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-le p2, v0, :cond_d

    sget p2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;->r:I

    invoke-virtual {p0, p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;->B0(I)V

    :cond_d
    sget-object p2, Lr71$a;->u:Lr71$a;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->j:Lfv0;

    check-cast v0, Lu21;

    invoke-virtual {v0}, Lu21;->n()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_4

    :cond_e
    sget-object p2, Lr71$a;->u:Lr71$a;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_4
    invoke-virtual {p2, v0}, Lr71$a;->k(Ljava/lang/Boolean;)V

    sget-object p2, Lr71$a;->u:Lr71$a;

    invoke-virtual {p2}, Lr71$a;->a()Z

    move-result p2

    invoke-virtual {p0, p2, p1, p3}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;->J(ZILjava/util/List;)V

    :cond_f
    return-void
.end method

.method public synthetic S(Lkq0;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;->R(Lkq0;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public synthetic U(Lkq0;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;->T(Lkq0;Landroid/view/View;)V

    return-void
.end method

.method public synthetic W(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;->V(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public synthetic Y(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;->X(Landroid/view/View;)V

    return-void
.end method

.method public synthetic a0(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;->Z(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public synthetic c0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;->b0(Landroid/view/View;)V

    return-void
.end method

.method public synthetic e0(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;->d0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public synthetic g0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;->f0(Landroid/view/View;)V

    return-void
.end method

.method public i(Lm91$c;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm91$c;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    sget-object p2, Lm91$c;->d:Lm91$c;

    if-ne p1, p2, :cond_3

    invoke-static {}, Lr71;->h()Z

    move-result p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    sget-object p1, Lr71$a;->k:Lr71$a;

    invoke-virtual {p1}, Lr71$a;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    const/4 p2, 0x0

    :cond_1
    iget-object p3, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;->m:Lnu0;

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lnu0;->getItemCount()I

    move-result p3

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    iget-object p3, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;->m:Lnu0;

    invoke-virtual {p3, p2}, Lnu0;->d(I)Lkq0;

    move-result-object p3

    invoke-virtual {p3, p1}, Lkq0;->g(Z)V

    invoke-virtual {p3}, Lkq0;->d()Lk01;

    move-result-object v0

    invoke-interface {v0, p1}, Lk01;->a(Z)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Le21;

    invoke-direct {v0, p0, p2, p3}, Le21;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;ILkq0;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    nop

    :cond_3
    :goto_1
    return-void
.end method

.method public synthetic i0(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;->h0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public synthetic k0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;->j0(Landroid/view/View;)V

    return-void
.end method

.method public synthetic m0(Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;->l0(Ljava/util/List;I)V

    return-void
.end method

.method public synthetic o0(ILkq0;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;->n0(ILkq0;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lqb1;->onActivityResult(IILandroid/content/Intent;)V

    sget p2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;->q:I

    if-eq p1, p2, :cond_0

    sget p2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;->r:I

    if-eq p1, p2, :cond_0

    sget p2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;->s:I

    if-eq p1, p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    sget-boolean p2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;->t:Z

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt p2, v1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2

    sget p2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;->q:I

    if-ne p1, p2, :cond_2

    sput-boolean p3, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;->t:Z

    sget-object p1, Lr71$a;->j:Lr71$a;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Lr71$a;->k(Ljava/lang/Boolean;)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;->m:Lnu0;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lnu0;->d(I)Lkq0;

    move-result-object p1

    invoke-virtual {p1, v0}, Lkq0;->g(Z)V

    invoke-virtual {p1}, Lkq0;->d()Lk01;

    move-result-object p2

    invoke-interface {p2, v0}, Lk01;->a(Z)V

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    new-instance p3, Ld21;

    invoke-direct {p3, p0, p1}, Ld21;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;Lkq0;)V

    :goto_0
    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_2
    sget-boolean p2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;->u:Z

    if-eqz p2, :cond_3

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-le p2, v1, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_3

    sget p2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;->r:I

    if-ne p1, p2, :cond_3

    sput-boolean p3, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;->u:Z

    sget-object p1, Lr71$a;->u:Lr71$a;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Lr71$a;->k(Ljava/lang/Boolean;)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;->m:Lnu0;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lnu0;->d(I)Lkq0;

    move-result-object p1

    invoke-virtual {p1, v0}, Lkq0;->g(Z)V

    invoke-virtual {p1}, Lkq0;->d()Lk01;

    move-result-object p2

    invoke-interface {p2, v0}, Lk01;->a(Z)V

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    new-instance p3, Ll21;

    invoke-direct {p3, p0, p1}, Ll21;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;Lkq0;)V

    goto :goto_0

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;->n:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;->P()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;->p:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;->p:Landroid/app/Dialog;

    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lqb1;->onPause()V

    invoke-static {p0}, Lm91;->e(Lm91$b;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    sget-object v0, Lm91$c;->d:Lm91$c;

    sget-object v1, Lm91$c;->j:Lm91$c;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-static {p0, v0, v2}, Lm91;->d(Lm91$b;Ljava/util/EnumSet;[Ljava/lang/Class;)V

    invoke-static {}, Lfa1;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->j:Lfv0;

    check-cast v0, Lu21;

    invoke-virtual {v0}, Lu21;->o()V

    :cond_0
    invoke-static {}, Lfa1;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lfa1;->t()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v1}, Loe1;->W(Z)V

    :cond_1
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;->n:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;->P()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;->D0(Landroid/view/View;)V

    return-void
.end method

.method public synthetic q0(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;->p0(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic s0(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;->r0(Ljava/util/List;)V

    return-void
.end method

.method public synthetic u0(Lkq0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;->t0(Lkq0;)V

    return-void
.end method

.method public v(Lsb1;)V
    .locals 1

    invoke-super {p0, p1}, Lqb1;->v(Lsb1;)V

    invoke-virtual {p1}, Lsb1;->b()Lsb1;

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;->O()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lsb1;->p(Ljava/lang/String;)Lsb1;

    return-void
.end method

.method public synthetic w0(Lkq0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;->v0(Lkq0;)V

    return-void
.end method

.method public y()V
    .locals 1

    const v0, 0x7f0d003b

    iput v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->k:I

    const-class v0, Lu21;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->h:Ljava/lang/Class;

    return-void
.end method

.method public synthetic y0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callerid/CallerIdFragment;->x0(Landroid/view/View;)V

    return-void
.end method
