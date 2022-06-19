.class public Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k;
.super Lfd;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;,
        Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$b;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lfd;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k;->a:Z

    iput v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k;->b:I

    return-void
.end method

.method public static synthetic j(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k;->a:Z

    return p1
.end method

.method public static synthetic k(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k;I)I
    .locals 0

    iput p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k;->b:I

    return p1
.end method

.method public static l()Z
    .locals 2

    sget-object v0, Lr71$a;->p0:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->e()I

    move-result v0

    invoke-static {}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;->a()I

    move-result v1

    and-int/2addr v0, v1

    invoke-static {}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;->a()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic m(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;Landroid/content/DialogInterface;I)V
    .locals 0

    sget-object p2, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;->m:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Lfd;->dismiss()V

    sget-object p1, Lq71$a;->g:Lq71$a;

    invoke-static {p1}, Lq71$a;->e(Lq71$a;)V

    invoke-virtual {p1}, Lq71$a;->c()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k;->b:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const p2, 0x7f110101

    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->R(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public static o(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;I)Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k;
    .locals 2

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;->h:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;

    if-ne p0, v0, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    sget-object p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;->m:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;

    :cond_0
    if-ne p0, v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    sget-object p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;->l:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;

    :cond_1
    sget-object v0, Lr71$a;->p0:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->e()I

    move-result v0

    invoke-static {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;->b(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;)I

    move-result v1

    and-int/2addr v0, v1

    invoke-static {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;->b(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;)I

    move-result v1

    if-ne v0, v1, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "type"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p0, "count"

    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k;

    invoke-direct {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method public synthetic n(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k;->m(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lfd;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;

    const-string v1, "count"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;->m:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;

    if-ne v0, v2, :cond_0

    const v2, 0x7f120002

    invoke-static {v1, v2}, Loe1;->j(Landroid/content/Context;I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Loe1;->i(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v3, 0x7f0d00cb

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    invoke-static {v0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;->c(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;)[Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$b;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    new-instance v2, Lnr0;

    invoke-direct {v2, p0, v0}, Lnr0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k;Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;)V

    invoke-static {v0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;->c(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;)[Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$b;

    move-result-object v5

    array-length v7, v5

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_5

    aget-object v9, v5, v8

    invoke-static {v9}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$b;->a(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$b;)Ljava/lang/Boolean;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-static {v9}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$b;->a(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$b;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-static {v9}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$b;->b(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$b;)I

    move-result v9

    new-instance v10, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$a;

    invoke-direct {v10, p0, v0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$a;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k;Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;)V

    invoke-virtual {v1, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    :cond_1
    sget-object v10, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;->m:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;

    if-ne v0, v10, :cond_3

    invoke-static {v9}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$b;->a(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$b;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {v9}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$b;->b(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$b;)I

    move-result v9

    if-nez v10, :cond_2

    invoke-virtual {v1, v9, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    :cond_2
    invoke-virtual {v1, v9, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    :cond_3
    invoke-static {v9}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$b;->a(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$b;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {v9}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$b;->b(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$b;)I

    move-result v9

    if-nez v10, :cond_4

    invoke-virtual {v1, v9, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    :cond_4
    invoke-virtual {v1, v9, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_5
    invoke-static {v0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;->d(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_6

    invoke-static {v0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;->d(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    :cond_6
    const v2, 0x7f0a03e9

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;->e(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;)I

    move-result v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v3

    invoke-virtual {p0, v0, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a030a

    invoke-virtual {v6, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v2, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    const/16 v0, 0x10

    invoke-static {v0}, Loe1;->c(I)I

    move-result v7

    const/16 v1, 0x8

    invoke-static {v1}, Loe1;->c(I)I

    move-result v8

    invoke-static {v0}, Loe1;->c(I)I

    move-result v9

    const/4 v10, 0x0

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    invoke-virtual {p0}, Lfd;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getRetainInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lfd;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    :cond_0
    invoke-super {p0}, Lfd;->onDestroyView()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;

    const-string v2, "count"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    sget-object v3, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;->m:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;

    if-ne v1, v3, :cond_0

    iget v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k;->b:I

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k;->a:Z

    if-eqz v3, :cond_1

    const v3, 0x7f110061

    goto :goto_0

    :cond_1
    const v3, 0x7f11005e

    :goto_0
    invoke-static {}, Lfa1;->k()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Response"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lfa1;->k()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;->f(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;)I

    move-result v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Personification"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;->g(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;)Lw91$a;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lw91;->c(Ljava/lang/Object;Lw91$a;Landroid/os/Bundle;)V

    sget-object v0, Lr71$a;->p0:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->e()I

    move-result v2

    invoke-static {v1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;->b(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;)I

    move-result v1

    or-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lr71$a;->m(Ljava/lang/Integer;)V

    invoke-super {p0, p1}, Lfd;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method
