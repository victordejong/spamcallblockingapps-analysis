.class public Landroidx/work/impl/a/a/d;
.super Landroidx/work/impl/a/a/c;
.source "NetworkConnectedController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/work/impl/a/a/c",
        "<",
        "Landroidx/work/impl/a/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/impl/utils/b/a;)V
    .locals 1

    .prologue
    .line 41
    invoke-static {p1, p2}, Landroidx/work/impl/a/b/g;->a(Landroid/content/Context;Landroidx/work/impl/utils/b/a;)Landroidx/work/impl/a/b/g;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/work/impl/a/b/g;->c()Landroidx/work/impl/a/b/e;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/work/impl/a/a/c;-><init>(Landroidx/work/impl/a/b/d;)V

    .line 42
    return-void
.end method


# virtual methods
.method a(Landroidx/work/impl/a/b;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 51
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_2

    .line 52
    invoke-virtual {p1}, Landroidx/work/impl/a/b;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroidx/work/impl/a/b;->b()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 54
    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p1}, Landroidx/work/impl/a/b;->a()Z

    move-result v2

    if-nez v2, :cond_3

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1
.end method

.method a(Landroidx/work/impl/b/p;)Z
    .locals 2

    .prologue
    .line 46
    iget-object v0, p1, Landroidx/work/impl/b/p;->j:Landroidx/work/c;

    invoke-virtual {v0}, Landroidx/work/c;->a()Landroidx/work/m;

    move-result-object v0

    sget-object v1, Landroidx/work/m;->b:Landroidx/work/m;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic b(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 39
    check-cast p1, Landroidx/work/impl/a/b;

    invoke-virtual {p0, p1}, Landroidx/work/impl/a/a/d;->a(Landroidx/work/impl/a/b;)Z

    move-result v0

    return v0
.end method
