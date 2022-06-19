.class final Landroidx/customview/a/a$1;
.super Ljava/lang/Object;
.source "ExploreByTouchHelper.java"

# interfaces
.implements Landroidx/customview/a/b$a;


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
        "Landroidx/customview/a/b$a<",
        "Landroidx/core/g/a/d;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/core/g/a/d;Landroid/graphics/Rect;)V
    .locals 0

    .line 339
    invoke-virtual {p1, p2}, Landroidx/core/g/a/d;->a(Landroid/graphics/Rect;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0

    .line 336
    check-cast p1, Landroidx/core/g/a/d;

    invoke-virtual {p0, p1, p2}, Landroidx/customview/a/a$1;->a(Landroidx/core/g/a/d;Landroid/graphics/Rect;)V

    return-void
.end method
