.class final Landroidx/d/b/a$2;
.super Ljava/lang/Object;
.source "ExploreByTouchHelper.java"

# interfaces
.implements Landroidx/d/b/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/d/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/d/b/b$b",
        "<",
        "Landroidx/b/h",
        "<",
        "Landroidx/core/h/a/c;",
        ">;",
        "Landroidx/core/h/a/c;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/b/h;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/b/h",
            "<",
            "Landroidx/core/h/a/c;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 358
    invoke-virtual {p1}, Landroidx/b/h;->b()I

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 349
    check-cast p1, Landroidx/b/h;

    invoke-virtual {p0, p1}, Landroidx/d/b/a$2;->a(Landroidx/b/h;)I

    move-result v0

    return v0
.end method

.method public a(Landroidx/b/h;I)Landroidx/core/h/a/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/b/h",
            "<",
            "Landroidx/core/h/a/c;",
            ">;I)",
            "Landroidx/core/h/a/c;"
        }
    .end annotation

    .prologue
    .line 353
    invoke-virtual {p1, p2}, Landroidx/b/h;->d(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/h/a/c;

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 349
    check-cast p1, Landroidx/b/h;

    invoke-virtual {p0, p1, p2}, Landroidx/d/b/a$2;->a(Landroidx/b/h;I)Landroidx/core/h/a/c;

    move-result-object v0

    return-object v0
.end method
