.class public final Lorg/mistergroup/shouldianswer/ui/main/c;
.super Landroidx/fragment/app/k;
.source "MainPagerAdapter.kt"


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

.field private b:Lorg/mistergroup/shouldianswer/ui/main/MainFragment;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/h;Lorg/mistergroup/shouldianswer/ui/main/MainFragment;)V
    .locals 1

    const-string v0, "fm"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "homeFragment"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p1}, Landroidx/fragment/app/k;-><init>(Landroidx/fragment/app/h;)V

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/main/c;->b:Lorg/mistergroup/shouldianswer/ui/main/MainFragment;

    .line 18
    new-instance p1, Landroidx/c/h;

    invoke-direct {p1}, Landroidx/c/h;-><init>()V

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c;->a:Landroidx/c/h;

    return-void
.end method


# virtual methods
.method public a(I)Landroidx/fragment/app/Fragment;
    .locals 5

    .line 25
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c;->a:Landroidx/c/h;

    invoke-virtual {v0, p1}, Landroidx/c/h;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_3

    .line 27
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MainPagerAdapter.getItem creating fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3, v4}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    if-eq p1, v3, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    new-instance v0, Lorg/mistergroup/shouldianswer/ui/main/a/a;

    invoke-direct {v0}, Lorg/mistergroup/shouldianswer/ui/main/a/a;-><init>()V

    check-cast v0, Landroidx/fragment/app/Fragment;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lorg/mistergroup/shouldianswer/ui/main/c/m;

    invoke-direct {v0}, Lorg/mistergroup/shouldianswer/ui/main/c/m;-><init>()V

    check-cast v0, Landroidx/fragment/app/Fragment;

    goto :goto_0

    .line 29
    :cond_2
    new-instance v0, Lorg/mistergroup/shouldianswer/ui/main/b/c;

    invoke-direct {v0}, Lorg/mistergroup/shouldianswer/ui/main/b/c;-><init>()V

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 33
    :goto_0
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/c;->a:Landroidx/c/h;

    invoke-virtual {v1, p1, v0}, Landroidx/c/h;->b(ILjava/lang/Object;)V

    :cond_3
    if-nez v0, :cond_4

    .line 35
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

    .line 21
    check-cast p1, Ljava/lang/CharSequence;

    return-object p1
.end method
