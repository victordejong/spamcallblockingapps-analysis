.class final Lorg/mistergroup/shouldianswer/utils/h$a;
.super Ljava/lang/Object;
.source "IterableLongSparseArray.kt"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mistergroup/shouldianswer/utils/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:I

.field private final b:Landroidx/c/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/c/d<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/c/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/c/d<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "array"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/utils/h$a;->b:Landroidx/c/d;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 18
    iget v0, p0, Lorg/mistergroup/shouldianswer/utils/h$a;->a:I

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/utils/h$a;->b:Landroidx/c/d;

    invoke-virtual {v1}, Landroidx/c/d;->b()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/utils/h$a;->b:Landroidx/c/d;

    iget v1, p0, Lorg/mistergroup/shouldianswer/utils/h$a;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mistergroup/shouldianswer/utils/h$a;->a:I

    invoke-virtual {v0, v1}, Landroidx/c/d;->c(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
