.class final Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment$a;
.super Landroidx/fragment/app/k;
.source "WelcomeFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Landroidx/c/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/c/h<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/h;)V
    .locals 1

    const-string v0, "fm"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-direct {p0, p1}, Landroidx/fragment/app/k;-><init>(Landroidx/fragment/app/h;)V

    .line 82
    new-instance p1, Landroidx/c/h;

    invoke-direct {p1}, Landroidx/c/h;-><init>()V

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment$a;->a:Landroidx/c/h;

    return-void
.end method


# virtual methods
.method public a(I)Landroidx/fragment/app/Fragment;
    .locals 2

    .line 86
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment$a;->a:Landroidx/c/h;

    invoke-virtual {v0, p1}, Landroidx/c/h;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    new-instance v0, Lorg/mistergroup/shouldianswer/ui/wizards/welcome/c;

    invoke-direct {v0}, Lorg/mistergroup/shouldianswer/ui/wizards/welcome/c;-><init>()V

    check-cast v0, Landroidx/fragment/app/Fragment;

    goto :goto_0

    .line 90
    :cond_1
    new-instance v0, Lorg/mistergroup/shouldianswer/ui/wizards/welcome/b;

    invoke-direct {v0}, Lorg/mistergroup/shouldianswer/ui/wizards/welcome/b;-><init>()V

    check-cast v0, Landroidx/fragment/app/Fragment;

    goto :goto_0

    .line 89
    :cond_2
    new-instance v0, Lorg/mistergroup/shouldianswer/ui/wizards/welcome/a;

    invoke-direct {v0}, Lorg/mistergroup/shouldianswer/ui/wizards/welcome/a;-><init>()V

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 93
    :goto_0
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/wizards/welcome/WelcomeFragment$a;->a:Landroidx/c/h;

    invoke-virtual {v1, p1, v0}, Landroidx/c/h;->b(ILjava/lang/Object;)V

    :cond_3
    if-nez v0, :cond_4

    .line 95
    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_4
    return-object v0
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public b(I)Ljava/lang/CharSequence;
    .locals 0

    const-string p1, ""

    .line 84
    check-cast p1, Ljava/lang/CharSequence;

    return-object p1
.end method
