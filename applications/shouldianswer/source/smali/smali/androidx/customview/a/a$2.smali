.class final Landroidx/customview/a/a$2;
.super Ljava/lang/Object;
.source "ExploreByTouchHelper.java"

# interfaces
.implements Landroidx/customview/a/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/customview/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/customview/a/b$b<",
        "Landroidx/c/h<",
        "Landroidx/core/g/a/d;",
        ">;",
        "Landroidx/core/g/a/d;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/c/h;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/c/h<",
            "Landroidx/core/g/a/d;",
            ">;)I"
        }
    .end annotation

    .line 358
    invoke-virtual {p1}, Landroidx/c/h;->b()I

    move-result p1

    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    .line 349
    check-cast p1, Landroidx/c/h;

    invoke-virtual {p0, p1}, Landroidx/customview/a/a$2;->a(Landroidx/c/h;)I

    move-result p1

    return p1
.end method

.method public a(Landroidx/c/h;I)Landroidx/core/g/a/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/c/h<",
            "Landroidx/core/g/a/d;",
            ">;I)",
            "Landroidx/core/g/a/d;"
        }
    .end annotation

    .line 353
    invoke-virtual {p1, p2}, Landroidx/c/h;->d(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/core/g/a/d;

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 0

    .line 349
    check-cast p1, Landroidx/c/h;

    invoke-virtual {p0, p1, p2}, Landroidx/customview/a/a$2;->a(Landroidx/c/h;I)Landroidx/core/g/a/d;

    move-result-object p1

    return-object p1
.end method
