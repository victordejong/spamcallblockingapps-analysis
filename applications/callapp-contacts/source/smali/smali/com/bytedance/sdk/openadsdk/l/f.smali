.class public Lcom/bytedance/sdk/openadsdk/l/f;
.super Ljava/util/concurrent/FutureTask;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask<",
        "TV;>;",
        "Ljava/lang/Comparable<",
        "Lcom/bytedance/sdk/openadsdk/l/f<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;II)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x5

    .line 16
    :goto_0
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/l/f;->a:I

    .line 17
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/l/f;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/l/f;->a:I

    return v0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/l/f;)I
    .locals 2

    .line 41
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/l/f;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/l/f;->a()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/l/f;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/l/f;->a()I

    move-result p1

    if-le v0, p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 9
    check-cast p1, Lcom/bytedance/sdk/openadsdk/l/f;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/l/f;->a(Lcom/bytedance/sdk/openadsdk/l/f;)I

    move-result p1

    return p1
.end method
