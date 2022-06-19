.class final Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d$1$1;
.super Lkotlin/c/b/a/k;
.source "SettingsAccountFragment.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d$1;->b(Ljava/lang/Object;)Ljava/lang/Object;
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
    b = "SettingsAccountFragment.kt"
    c = {}
    d = "invokeSuspend"
    e = "org.mistergroup.shouldianswer.ui.settings.account.SettingsAccountFragment$initWithActivity$2$1$1"
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d$1;

.field private c:Lkotlinx/coroutines/ad;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d$1;Lkotlin/c/c;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d$1$1;->b:Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d$1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/c/b/a/k;-><init>(ILkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/c;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d$1$1;->a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d$1$1;

    sget-object p2, Lkotlin/o;->a:Lkotlin/o;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d$1$1;->b(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d$1$1;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d$1$1;->b:Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d$1;

    invoke-direct {v0, v1, p2}, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d$1$1;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d$1;Lkotlin/c/c;)V

    check-cast p1, Lkotlinx/coroutines/ad;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d$1$1;->c:Lkotlinx/coroutines/ad;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    .line 95
    iget v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d$1$1;->a:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d$1$1;->c:Lkotlinx/coroutines/ad;

    .line 96
    sget-object p1, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d$1$1;->b:Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d$1;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d$1;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/mistergroup/shouldianswer/model/ai;->e(Ljava/lang/String;)V

    .line 97
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d$1$1;->b:Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d$1;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d$1;->d:Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d;->a:Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;->d(Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;)V

    .line 98
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d$1$1;->b:Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d$1;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d$1;->d:Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d;->a:Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;->e(Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;)Lorg/mistergroup/shouldianswer/ui/a;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d$1$1;->b:Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d$1;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d$1;->d:Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d;->a:Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;

    const v1, 0x7f1000fe

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 99
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
