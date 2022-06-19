.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lsb1$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->N()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La81$a;

.field public final synthetic b:Lsb1;

.field public final synthetic c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;La81$a;Lsb1;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$d;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$d;->a:La81$a;

    iput-object p3, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$d;->b:Lsb1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lsb1$c;)V
    .locals 0

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$d;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Lnd;

    move-result-object p1

    invoke-virtual {p1}, Lnd;->G0()V

    return-void
.end method

.method public b(Ljava/lang/Object;Z)V
    .locals 0

    return-void
.end method

.method public c(Lsb1$d;Z)V
    .locals 1

    sget-object p1, Lta1;->J:Lta1;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$d;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;

    invoke-static {v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->D(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lta1;->i(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$d;->a:La81$a;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$d;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->E(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;)Ls81;

    move-result-object p1

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$d;->a:La81$a;

    invoke-virtual {p1, p2}, Ls81;->L(La81$a;)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$d;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->E(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;)Ls81;

    move-result-object p1

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$d;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;

    invoke-static {p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;->B(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment;)Lq81;

    move-result-object p2

    invoke-virtual {p1, p2}, Ls81;->G(Lq81;)Ls81;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ls81;->E()V

    :goto_0
    return-void

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$d;->b:Lsb1;

    sget-object v0, Lsb1$d;->c:Lsb1$d;

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, v0, p2}, Lsb1;->q(Lsb1$d;Z)Lsb1;

    return-void
.end method

.method public g(Lsb1$c;)V
    .locals 1

    sget-object v0, Lsb1$c;->j:Lsb1$c;

    return-void
.end method
