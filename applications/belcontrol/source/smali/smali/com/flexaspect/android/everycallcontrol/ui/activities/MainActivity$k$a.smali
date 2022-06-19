.class public Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;

.field public final synthetic b:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k;Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$a;->b:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$a;->b:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k;->j(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k;Z)Z

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;->m:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$a;->b:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k;

    invoke-virtual {p1}, Lfd;->dismiss()V

    sget-object p1, Lq71$a;->d:Lq71$a;

    invoke-static {p1}, Lq71$a;->e(Lq71$a;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$a;->b:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k;

    invoke-virtual {p1}, Lq71$a;->c()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k;->k(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k;I)I

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$a;->b:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f110100

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    invoke-static {}, Lie1;->f()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$a;->b:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string p2, "market://details?id=com.flexaspect.android.everycallcontrol"

    invoke-static {p1, p2}, Lie1;->i(Landroid/app/Activity;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;

    sget-object p2, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;->l:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;

    if-ne p1, p2, :cond_1

    sget-object p1, Lr71$a;->p0:Lr71$a;

    invoke-virtual {p1}, Lr71$a;->e()I

    move-result p2

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;->h:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;

    invoke-static {v0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;->b(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;)I

    move-result v0

    or-int/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lr71$a;->m(Ljava/lang/Integer;)V

    :cond_1
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$a;->b:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k;

    invoke-virtual {p1}, Lfd;->dismiss()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$a;->b:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$a;->b:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k;

    const v0, 0x7f1102f9

    invoke-virtual {p2, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
