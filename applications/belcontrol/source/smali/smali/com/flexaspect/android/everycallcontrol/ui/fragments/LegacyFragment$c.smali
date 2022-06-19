.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;->i(Lm91$c;Ljava/lang/Class;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$c;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$c;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$c;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a06b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lr71$a;->O0:Lr71$a;

    invoke-virtual {v1}, Lr71$a;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f1103e2

    goto :goto_0

    :cond_1
    sget-object v1, Lr71$a;->M0:Lr71$a;

    invoke-virtual {v1}, Lr71$a;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f1103de

    goto :goto_0

    :cond_2
    const v1, 0x7f1103dd

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$c;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;

    invoke-static {v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;->J(Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;)Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$f;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
