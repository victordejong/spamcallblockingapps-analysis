.class public final Lkotlinx/serialization/b/bo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/KSerializer<",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c7\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003J\u0011\u0010\u0008\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\nH\u0096\u0001J\u001e\u0010\u000b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\u0002H\u0096\u0001\u00a2\u0006\u0002\u0010\rJ\u001e\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0002H\u0096\u0001\u00a2\u0006\u0002\u0010\u0012R\u0012\u0010\u0004\u001a\u00020\u0005X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0013"
    }
    d2 = {
        "Lkotlinx/serialization/internal/UnitSerializer;",
        "Lkotlinx/serialization/KSerializer;",
        "",
        "()V",
        "descriptor",
        "Lkotlinx/serialization/SerialDescriptor;",
        "getDescriptor",
        "()Lkotlinx/serialization/SerialDescriptor;",
        "deserialize",
        "decoder",
        "Lkotlinx/serialization/Decoder;",
        "patch",
        "old",
        "(Lkotlinx/serialization/Decoder;Lkotlin/Unit;)V",
        "serialize",
        "encoder",
        "Lkotlinx/serialization/Encoder;",
        "value",
        "(Lkotlinx/serialization/Encoder;Lkotlin/Unit;)V",
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
.field public static final a:Lkotlinx/serialization/b/bo;


# instance fields
.field private final synthetic b:Lkotlinx/serialization/b/ax;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    new-instance v0, Lkotlinx/serialization/b/bo;

    invoke-direct {v0}, Lkotlinx/serialization/b/bo;-><init>()V

    sput-object v0, Lkotlinx/serialization/b/bo;->a:Lkotlinx/serialization/b/bo;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lkotlinx/serialization/b/ax;

    sget-object v1, Lkotlin/v;->a:Lkotlin/v;

    const-string v2, "kotlin.Unit"

    invoke-direct {v0, v2, v1}, Lkotlinx/serialization/b/ax;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lkotlinx/serialization/b/bo;->b:Lkotlinx/serialization/b/ax;

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/serialization/Decoder;)V
    .locals 1

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/b/bo;->b:Lkotlinx/serialization/b/ax;

    invoke-virtual {v0, p1}, Lkotlinx/serialization/b/ax;->deserialize(Lkotlinx/serialization/Decoder;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lkotlinx/serialization/Encoder;Lkotlin/v;)V
    .locals 1

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/b/bo;->b:Lkotlinx/serialization/b/ax;

    invoke-virtual {v0, p1, p2}, Lkotlinx/serialization/b/ax;->serialize(Lkotlinx/serialization/Encoder;Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic deserialize(Lkotlinx/serialization/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 78
    invoke-virtual {p0, p1}, Lkotlinx/serialization/b/bo;->a(Lkotlinx/serialization/Decoder;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final getDescriptor()Lkotlinx/serialization/SerialDescriptor;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/b/bo;->b:Lkotlinx/serialization/b/ax;

    invoke-virtual {v0}, Lkotlinx/serialization/b/ax;->getDescriptor()Lkotlinx/serialization/SerialDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic patch(Lkotlinx/serialization/Decoder;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 78
    check-cast p2, Lkotlin/v;

    const-string v0, "decoder"

    .line 1000
    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "old"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/b/bo;->b:Lkotlinx/serialization/b/ax;

    invoke-virtual {v0, p1, p2}, Lkotlinx/serialization/b/ax;->patch(Lkotlinx/serialization/Decoder;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final synthetic serialize(Lkotlinx/serialization/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 78
    check-cast p2, Lkotlin/v;

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/b/bo;->a(Lkotlinx/serialization/Encoder;Lkotlin/v;)V

    return-void
.end method
