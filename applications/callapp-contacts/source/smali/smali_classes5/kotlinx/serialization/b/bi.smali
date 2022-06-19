.class public final Lkotlinx/serialization/b/bi;
.super Lkotlinx/serialization/b/bb;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/serialization/b/bb<",
        "Ljava/lang/Short;",
        "[S",
        "Lkotlinx/serialization/b/bh;",
        ">;",
        "Lkotlinx/serialization/KSerializer<",
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
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0017\n\u0002\u0018\u0002\n\u0002\u0010\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c7\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0014\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00050\u0003B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0007\u001a\u00020\u0002H\u0014J(\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0010H\u0014J \u0010\u0011\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\rH\u0014J\u000c\u0010\u0016\u001a\u00020\r*\u00020\u0002H\u0014J\u000c\u0010\u0017\u001a\u00020\u0005*\u00020\u0002H\u0014\u00a8\u0006\u0018"
    }
    d2 = {
        "Lkotlinx/serialization/internal/ShortArraySerializer;",
        "Lkotlinx/serialization/KSerializer;",
        "",
        "Lkotlinx/serialization/internal/PrimitiveArraySerializer;",
        "",
        "Lkotlinx/serialization/internal/ShortArrayBuilder;",
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
.field public static final a:Lkotlinx/serialization/b/bi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 79
    new-instance v0, Lkotlinx/serialization/b/bi;

    invoke-direct {v0}, Lkotlinx/serialization/b/bi;-><init>()V

    sput-object v0, Lkotlinx/serialization/b/bi;->a:Lkotlinx/serialization/b/bi;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 80
    sget-object v0, Lkotlin/jvm/internal/ae;->a:Lkotlin/jvm/internal/ae;

    invoke-static {v0}, Lkotlinx/serialization/a/e;->a(Lkotlin/jvm/internal/ae;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    invoke-direct {p0, v0}, Lkotlinx/serialization/b/bb;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)I
    .locals 1

    .line 79
    check-cast p1, [S

    const-string v0, "$this$collectionSize"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1082
    array-length p1, p1

    return p1
.end method

.method public final synthetic a(Lkotlinx/serialization/CompositeEncoder;Ljava/lang/Object;I)V
    .locals 3

    .line 79
    check-cast p2, [S

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 3092
    invoke-virtual {p0}, Lkotlinx/serialization/b/bi;->getDescriptor()Lkotlinx/serialization/SerialDescriptor;

    move-result-object v1

    aget-short v2, p2, v0

    invoke-interface {p1, v1, v0, v2}, Lkotlinx/serialization/CompositeEncoder;->encodeShortElement(Lkotlinx/serialization/SerialDescriptor;IS)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final synthetic a(Lkotlinx/serialization/a;ILjava/lang/Object;Z)V
    .locals 1

    .line 79
    check-cast p3, Lkotlinx/serialization/b/bh;

    const-string p4, "decoder"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "builder"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1087
    invoke-virtual {p0}, Lkotlinx/serialization/b/bi;->getDescriptor()Lkotlinx/serialization/SerialDescriptor;

    move-result-object p4

    invoke-interface {p1, p4, p2}, Lkotlinx/serialization/a;->decodeShortElement(Lkotlinx/serialization/SerialDescriptor;I)S

    move-result p1

    .line 1116
    invoke-static {p3}, Lkotlinx/serialization/b/az;->a(Lkotlinx/serialization/b/az;)V

    .line 1117
    iget-object p2, p3, Lkotlinx/serialization/b/bh;->a:[S

    .line 2103
    iget p4, p3, Lkotlinx/serialization/b/bh;->b:I

    add-int/lit8 v0, p4, 0x1

    .line 1117
    iput v0, p3, Lkotlinx/serialization/b/bh;->b:I

    aput-short p1, p2, p4

    return-void
.end method

.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [S

    return-object v0
.end method

.method public final synthetic e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 79
    check-cast p1, [S

    const-string v0, "$this$toBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1083
    new-instance v0, Lkotlinx/serialization/b/bh;

    invoke-direct {v0, p1}, Lkotlinx/serialization/b/bh;-><init>([S)V

    return-object v0
.end method
