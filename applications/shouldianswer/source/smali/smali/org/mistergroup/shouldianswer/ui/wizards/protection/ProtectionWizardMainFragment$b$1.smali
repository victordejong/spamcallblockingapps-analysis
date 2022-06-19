.class final Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment$b$1;
.super Lkotlin/c/b/a/k;
.source "ProtectionWizardMainFragment.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment$b;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/c/b/a/k;",
        "Lkotlin/e/a/m<",
        "Lkotlinx/coroutines/ad;",
        "Lkotlin/c/c<",
        "-",
        "Lkotlin/o;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/c/b/a/f;
    b = "ProtectionWizardMainFragment.kt"
    c = {
        0x3e,
        0x3f
    }
    d = "invokeSuspend"
    e = "org.mistergroup.shouldianswer.ui.wizards.protection.ProtectionWizardMainFragment$initWithActivity$2$1"
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:I

.field final synthetic c:Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment$b;

.field private d:Lkotlinx/coroutines/ad;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment$b;Lkotlin/c/c;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment$b$1;->c:Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment$b;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/c/b/a/k;-><init>(ILkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/c;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment$b$1;->a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment$b$1;

    sget-object p2, Lkotlin/o;->a:Lkotlin/o;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment$b$1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/c/c<",
            "*>;)",
            "Lkotlin/c/c<",
            "Lkotlin/o;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment$b$1;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment$b$1;->c:Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment$b;

    invoke-direct {v0, v1, p2}, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment$b$1;-><init>(Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment$b;Lkotlin/c/c;)V

    check-cast p1, Lkotlinx/coroutines/ad;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment$b$1;->d:Lkotlinx/coroutines/ad;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 60
    iget v1, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment$b$1;->b:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_1

    if-ne v1, v4, :cond_0

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment$b$1;->a:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/ad;

    :try_start_0
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 69
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :cond_1
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment$b$1;->a:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/ad;

    :try_start_1
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment$b$1;->d:Lkotlinx/coroutines/ad;

    const-wide/16 v5, 0x1f4

    .line 62
    :try_start_2
    iput-object v1, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment$b$1;->a:Ljava/lang/Object;

    iput v2, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment$b$1;->b:I

    invoke-static {v5, v6, p0}, Lkotlinx/coroutines/an;->a(JLkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 63
    :cond_3
    :goto_0
    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->b()Lkotlinx/coroutines/y;

    move-result-object p1

    check-cast p1, Lkotlin/c/f;

    new-instance v2, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment$b$1$1;

    invoke-direct {v2, p0, v3}, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment$b$1$1;-><init>(Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment$b$1;Lkotlin/c/c;)V

    check-cast v2, Lkotlin/e/a/m;

    iput-object v1, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment$b$1;->a:Ljava/lang/Object;

    iput v4, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardMainFragment$b$1;->b:I

    invoke-static {p1, v2, p0}, Lkotlinx/coroutines/e;->a(Lkotlin/c/f;Lkotlin/e/a/m;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-ne p1, v0, :cond_4

    return-object v0

    :catch_0
    move-exception p1

    .line 67
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v0, p1, v3, v4, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 69
    :cond_4
    :goto_1
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1
.end method
