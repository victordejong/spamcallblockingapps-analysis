.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$p;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$p;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;

    invoke-virtual {v0}, Lrb1;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$p;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;

    invoke-virtual {v0}, Lrb1;->r()V

    :cond_0
    sget-object v0, Lr71$a;->O:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->e()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, -0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$p;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;

    invoke-static {v1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->R(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;)Lcom/kedlin/cca/ui/CCANavBarFilter;

    move-result-object v1

    sget-object v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$p;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;

    invoke-static {v1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->R(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;)Lcom/kedlin/cca/ui/CCANavBarFilter;

    move-result-object v1

    sget-object v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;

    :goto_0
    invoke-virtual {v1, v2}, Lcom/kedlin/cca/ui/CCANavBarFilter;->a(Ljava/lang/Object;)Lcom/kedlin/cca/ui/CCANavBarFilter;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lr71$a;->m(Ljava/lang/Integer;)V

    :goto_1
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$p;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;

    invoke-virtual {v0}, Lrb1;->z()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->F(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;Z)Z

    sget-object v0, Lr71$a;->f:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$p;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;

    invoke-static {v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->S(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;)Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;

    move-result-object v0

    sget-object v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$p;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;

    sget-object v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;

    invoke-static {v0, v1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->T(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;)Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;

    :cond_3
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$p;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;

    invoke-virtual {v0}, Lrb1;->v()Lsb1;

    move-result-object v0

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$p;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;

    invoke-static {v1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->S(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;)Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;

    move-result-object v1

    sget-object v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$x;

    if-ne v1, v2, :cond_4

    const v1, 0x7f1103d1

    goto :goto_2

    :cond_4
    const v1, 0x7f1103cf

    :goto_2
    invoke-virtual {v0, v1}, Lsb1;->o(I)Lsb1;

    :cond_5
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$p;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;

    invoke-static {v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->G(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;)V

    return-void
.end method
