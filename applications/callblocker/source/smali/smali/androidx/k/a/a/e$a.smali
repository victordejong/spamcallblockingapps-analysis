.class Landroidx/k/a/a/e$a;
.super Ljava/lang/Object;
.source "AnimatorInflaterCompat.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/k/a/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator",
        "<[",
        "Landroidx/core/graphics/b$b;",
        ">;"
    }
.end annotation


# instance fields
.field private a:[Landroidx/core/graphics/b$b;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    return-void
.end method


# virtual methods
.method public a(F[Landroidx/core/graphics/b$b;[Landroidx/core/graphics/b$b;)[Landroidx/core/graphics/b$b;
    .locals 4

    .prologue
    .line 185
    invoke-static {p2, p3}, Landroidx/core/graphics/b;->a([Landroidx/core/graphics/b$b;[Landroidx/core/graphics/b$b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can\'t interpolate between two incompatible pathData"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_0
    iget-object v0, p0, Landroidx/k/a/a/e$a;->a:[Landroidx/core/graphics/b$b;

    invoke-static {v0, p2}, Landroidx/core/graphics/b;->a([Landroidx/core/graphics/b$b;[Landroidx/core/graphics/b$b;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 191
    invoke-static {p2}, Landroidx/core/graphics/b;->a([Landroidx/core/graphics/b$b;)[Landroidx/core/graphics/b$b;

    move-result-object v0

    iput-object v0, p0, Landroidx/k/a/a/e$a;->a:[Landroidx/core/graphics/b$b;

    .line 194
    :cond_1
    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_2

    .line 195
    iget-object v1, p0, Landroidx/k/a/a/e$a;->a:[Landroidx/core/graphics/b$b;

    aget-object v1, v1, v0

    aget-object v2, p2, v0

    aget-object v3, p3, v0

    invoke-virtual {v1, v2, v3, p1}, Landroidx/core/graphics/b$b;->a(Landroidx/core/graphics/b$b;Landroidx/core/graphics/b$b;F)V

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    :cond_2
    iget-object v0, p0, Landroidx/k/a/a/e$a;->a:[Landroidx/core/graphics/b$b;

    return-object v0
.end method

.method public synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 157
    check-cast p2, [Landroidx/core/graphics/b$b;

    check-cast p3, [Landroidx/core/graphics/b$b;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/k/a/a/e$a;->a(F[Landroidx/core/graphics/b$b;[Landroidx/core/graphics/b$b;)[Landroidx/core/graphics/b$b;

    move-result-object v0

    return-object v0
.end method
