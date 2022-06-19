.class public final Lkotlinx/serialization/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a&\u0010\u0000\u001a\u00020\u0001\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u00042\u0006\u0010\u0005\u001a\u0002H\u0002H\u0087\u0008\u00a2\u0006\u0002\u0010\u0006\u001a+\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u00020\u00042\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u00082\u0006\u0010\t\u001a\u0002H\u0002\u00a2\u0006\u0002\u0010\n\u001a0\u0010\u000b\u001a\u00020\u0001*\u00020\u00042\u0006\u0010\u000c\u001a\u00020\r2\u0019\u0008\u0004\u0010\u000e\u001a\u0013\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00010\u000f\u00a2\u0006\u0002\u0008\u0011H\u0086\u0008\u00a8\u0006\u0012"
    }
    d2 = {
        "encode",
        "",
        "T",
        "",
        "Lkotlinx/serialization/Encoder;",
        "obj",
        "(Lkotlinx/serialization/Encoder;Ljava/lang/Object;)V",
        "strategy",
        "Lkotlinx/serialization/SerializationStrategy;",
        "value",
        "(Lkotlinx/serialization/Encoder;Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V",
        "encodeStructure",
        "descriptor",
        "Lkotlinx/serialization/SerialDescriptor;",
        "block",
        "Lkotlin/Function1;",
        "Lkotlinx/serialization/CompositeEncoder;",
        "Lkotlin/ExtensionFunctionType;",
        "kotlinx-serialization-runtime"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public static final a(Lkotlinx/serialization/Encoder;Lkotlinx/serialization/r;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/Encoder;",
            "Lkotlinx/serialization/r<",
            "-TT;>;TT;)V"
        }
    .end annotation

    const-string v0, "$this$encode"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "strategy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 402
    invoke-interface {p0, p1, p2}, Lkotlinx/serialization/Encoder;->encodeSerializableValue(Lkotlinx/serialization/r;Ljava/lang/Object;)V

    return-void
.end method
