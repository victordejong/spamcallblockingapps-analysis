.class final Landroidx/d/b/a$1;
.super Ljava/lang/Object;
.source "ExploreByTouchHelper.java"

# interfaces
.implements Landroidx/d/b/b$a;


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
        "Landroidx/d/b/b$a",
        "<",
        "Landroidx/core/h/a/c;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/core/h/a/c;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 339
    invoke-virtual {p1, p2}, Landroidx/core/h/a/c;->a(Landroid/graphics/Rect;)V

    .line 340
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 336
    check-cast p1, Landroidx/core/h/a/c;

    invoke-virtual {p0, p1, p2}, Landroidx/d/b/a$1;->a(Landroidx/core/h/a/c;Landroid/graphics/Rect;)V

    return-void
.end method
