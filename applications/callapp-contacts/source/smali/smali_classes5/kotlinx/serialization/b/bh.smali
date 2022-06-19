.class public final Lkotlinx/serialization/b/bh;
.super Lkotlinx/serialization/b/az;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/serialization/b/az<",
        "[S>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0017\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\n\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0002\u0010\u0004J\u0015\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0000\u00a2\u0006\u0002\u0008\u000fJ\u0008\u0010\u0010\u001a\u00020\u0002H\u0016J\u0010\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\u0012\u001a\u00020\u0007H\u0016R\u000e\u0010\u0005\u001a\u00020\u0002X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0007@RX\u0096\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0013"
    }
    d2 = {
        "Lkotlinx/serialization/internal/ShortArrayBuilder;",
        "Lkotlinx/serialization/internal/PrimitiveArrayBuilder;",
        "",
        "bufferWithData",
        "([S)V",
        "buffer",
        "<set-?>",
        "",
        "position",
        "getPosition",
        "()I",
        "append",
        "",
        "c",
        "",
        "append$kotlinx_serialization_runtime",
        "build",
        "ensureCapacity",
        "requiredCapacity",
        "kotlinx-serialization-runtime"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field a:[S

.field b:I


# direct methods
.method public constructor <init>([S)V
    .locals 1

    const-string v0, "bufferWithData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-direct {p0}, Lkotlinx/serialization/b/az;-><init>()V

    .line 102
    iput-object p1, p0, Lkotlinx/serialization/b/bh;->a:[S

    .line 103
    array-length p1, p1

    iput p1, p0, Lkotlinx/serialization/b/bh;->b:I

    const/16 p1, 0xa

    .line 107
    invoke-virtual {p0, p1}, Lkotlinx/serialization/b/bh;->a(I)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 103
    iget v0, p0, Lkotlinx/serialization/b/bh;->b:I

    return v0
.end method

.method public final a(I)V
    .locals 2

    .line 111
    iget-object v0, p0, Lkotlinx/serialization/b/bh;->a:[S

    array-length v1, v0

    if-ge v1, p1, :cond_0

    .line 112
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {p1, v1}, Lkotlin/f/d;->c(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object p1

    const-string v0, "java.util.Arrays.copyOf(this, newSize)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lkotlinx/serialization/b/bh;->a:[S

    :cond_0
    return-void
.end method

.method public final synthetic b()Ljava/lang/Object;
    .locals 2

    .line 1120
    iget-object v0, p0, Lkotlinx/serialization/b/bh;->a:[S

    .line 2103
    iget v1, p0, Lkotlinx/serialization/b/bh;->b:I

    .line 1120
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object v0

    const-string v1, "java.util.Arrays.copyOf(this, newSize)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
