.class final Landroidx/j/c$4;
.super Landroid/util/Property;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/j/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property",
        "<",
        "Landroidx/j/c$a;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/j/c$a;)Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroidx/j/c$a;Landroid/graphics/PointF;)V
    .locals 0

    .prologue
    .line 104
    invoke-virtual {p1, p2}, Landroidx/j/c$a;->b(Landroid/graphics/PointF;)V

    .line 105
    return-void
.end method

.method public synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 101
    check-cast p1, Landroidx/j/c$a;

    invoke-virtual {p0, p1}, Landroidx/j/c$4;->a(Landroidx/j/c$a;)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 101
    check-cast p1, Landroidx/j/c$a;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Landroidx/j/c$4;->a(Landroidx/j/c$a;Landroid/graphics/PointF;)V

    return-void
.end method
