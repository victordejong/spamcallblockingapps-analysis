.class public Landroidx/work/impl/a/a/h;
.super Landroidx/work/impl/a/a/c;
.source "StorageNotLowController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/work/impl/a/a/c",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/impl/utils/b/a;)V
    .locals 1

    .prologue
    .line 31
    invoke-static {p1, p2}, Landroidx/work/impl/a/b/g;->a(Landroid/content/Context;Landroidx/work/impl/utils/b/a;)Landroidx/work/impl/a/b/g;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/work/impl/a/b/g;->d()Landroidx/work/impl/a/b/f;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/work/impl/a/a/c;-><init>(Landroidx/work/impl/a/b/d;)V

    .line 32
    return-void
.end method


# virtual methods
.method a(Landroidx/work/impl/b/p;)Z
    .locals 1

    .prologue
    .line 36
    iget-object v0, p1, Landroidx/work/impl/b/p;->j:Landroidx/work/c;

    invoke-virtual {v0}, Landroidx/work/c;->e()Z

    move-result v0

    return v0
.end method

.method a(Ljava/lang/Boolean;)Z
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

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
    .line 29
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Landroidx/work/impl/a/a/h;->a(Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method
