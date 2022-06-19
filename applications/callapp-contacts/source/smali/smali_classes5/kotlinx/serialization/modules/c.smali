.class public final Lkotlinx/serialization/modules/c;
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
        "\u00006\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u001f\u0010\u0000\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u00a2\u0006\u0002\u0008\u0006\u001a#\u0010\u0007\u001a\u00020\u0001\"\n\u0008\u0000\u0010\u0008\u0018\u0001*\u00020\t2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u0002H\u00080\u000bH\u0086\u0008\u001a\"\u0010\u000c\u001a\u00020\u00012\u001a\u0010\r\u001a\u0016\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u000f\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u000b0\u000e\u001a,\u0010\u000c\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0008*\u00020\t2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u0002H\u00080\u000f2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u0002H\u00080\u000b\u001a\u0019\u0010\u0011\u001a\u00020\u0005\"\n\u0008\u0000\u0010\u0008\u0018\u0001*\u00020\t*\u00020\u0004H\u0087\u0008\u00a8\u0006\u0012"
    }
    d2 = {
        "SerializersModule",
        "Lkotlinx/serialization/modules/SerialModule;",
        "buildAction",
        "Lkotlin/Function1;",
        "Lkotlinx/serialization/modules/SerializersModuleBuilder;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "serializersModule",
        "T",
        "",
        "serializer",
        "Lkotlinx/serialization/KSerializer;",
        "serializersModuleOf",
        "map",
        "",
        "Lkotlin/reflect/KClass;",
        "kClass",
        "contextual",
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
.method public static final a(Lkotlin/jvm/functions/Function1;)Lkotlinx/serialization/modules/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlinx/serialization/modules/g;",
            "Lkotlin/v;",
            ">;)",
            "Lkotlinx/serialization/modules/b;"
        }
    .end annotation

    const-string v0, "buildAction"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    new-instance v0, Lkotlinx/serialization/modules/g;

    invoke-direct {v0}, Lkotlinx/serialization/modules/g;-><init>()V

    .line 43
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-virtual {v0}, Lkotlinx/serialization/modules/g;->a()Lkotlinx/serialization/modules/b;

    move-result-object p0

    return-object p0
.end method
