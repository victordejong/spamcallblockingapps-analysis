.class public final Lkotlinx/serialization/b/q;
.super Lkotlinx/serialization/b/bb;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/serialization/b/bb<",
        "Ljava/lang/Double;",
        "[D",
        "Lkotlinx/serialization/b/p;",
        ">;",
        "Lkotlinx/serialization/KSerializer<",
        "[D>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0013\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c7\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0014\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00050\u0003B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0007\u001a\u00020\u0002H\u0014J(\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0010H\u0014J \u0010\u0011\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\rH\u0014J\u000c\u0010\u0016\u001a\u00020\r*\u00020\u0002H\u0014J\u000c\u0010\u0017\u001a\u00020\u0005*\u00020\u0002H\u0014\u00a8\u0006\u0018"
    }
    d2 = {
        "Lkotlinx/serialization/internal/DoubleArraySerializer;",
        "Lkotlinx/serialization/KSerializer;",
        "",
        "Lkotlinx/serialization/internal/PrimitiveArraySerializer;",
        "",
        "Lkotlinx/serialization/internal/DoubleArrayBuilder;",
        "()V",
        "empty",
        "readElement",
        "",
        "decoder",
        "Lkotlinx/serialization/CompositeDecoder;",
        "index",
        "",
        "builder",
        "checkIndex",
        "",
        "writeContent",
        "encoder",
        "Lkotlinx/serialization/CompositeEncoder;",
        "content",
        "size",
        "collectionSize",
        "toBuilder",
        "kotlinx-serialization-runtime"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final a:Lkotlinx/serialization/b/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 299
    new-instance v0, Lkotlinx/serialization/b/q;

    invoke-direct {v0}, Lkotlinx/serialization/b/q;-><init>()V

    sput-object v0, Lkotlinx/serialization/b/q;->a:Lkotlinx/serialization/b/q;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 300
    sget-object v0, Lkotlin/jvm/internal/j;->a:Lkotlin/jvm/internal/j;

    invoke-static {v0}, Lkotlinx/serialization/a/e;->a(Lkotlin/jvm/internal/j;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    invoke-direct {p0, v0}, Lkotlinx/serialization/b/bb;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)I
    .locals 1

    .line 299
    check-cast p1, [D

    const-string v0, "$this$collectionSize"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1302
    array-length p1, p1

    return p1
.end method

.method public final synthetic a(Lkotlinx/serialization/CompositeEncoder;Ljava/lang/Object;I)V
    .locals 4

    .line 299
    check-cast p2, [D

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 3312
    invoke-virtual {p0}, Lkotlinx/serialization/b/q;->getDescriptor()Lkotlinx/serialization/SerialDescriptor;

    move-result-object v1

    aget-wide v2, p2, v0

    invoke-interface {p1, v1, v0, v2, v3}, Lkotlinx/serialization/CompositeEncoder;->encodeDoubleElement(Lkotlinx/serialization/SerialDescriptor;ID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final synthetic a(Lkotlinx/serialization/a;ILjava/lang/Object;Z)V
    .locals 2

    .line 299
    check-cast p3, Lkotlinx/serialization/b/p;

    const-string p4, "decoder"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "builder"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1307
    invoke-virtual {p0}, Lkotlinx/serialization/b/q;->getDescriptor()Lkotlinx/serialization/SerialDescriptor;

    move-result-object p4

    invoke-interface {p1, p4, p2}, Lkotlinx/serialization/a;->decodeDoubleElement(Lkotlinx/serialization/SerialDescriptor;I)D

    move-result-wide p1

    .line 1336
    invoke-static {p3}, Lkotlinx/serialization/b/az;->a(Lkotlinx/serialization/b/az;)V

    .line 1337
    iget-object p4, p3, Lkotlinx/serialization/b/p;->a:[D

    .line 2323
    iget v0, p3, Lkotlinx/serialization/b/p;->b:I

    add-int/lit8 v1, v0, 0x1

    .line 1337
    iput v1, p3, Lkotlinx/serialization/b/p;->b:I

    aput-wide p1, p4, v0

    return-void
.end method

.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [D

    return-object v0
.end method

.method public final synthetic e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 299
    check-cast p1, [D

    const-string v0, "$this$toBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1303
    new-instance v0, Lkotlinx/serialization/b/p;

    invoke-direct {v0, p1}, Lkotlinx/serialization/b/p;-><init>([D)V

    return-object v0
.end method
