.class public final Lkotlinx/serialization/modules/e;
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
        "\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a!\u0010\u0000\u001a\n\u0012\u0004\u0012\u0002H\u0002\u0018\u00010\u0001\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u0004H\u0086\u0008\u001a)\u0010\u0000\u001a\n\u0012\u0004\u0012\u0002H\u0002\u0018\u00010\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003*\u00020\u00042\u0006\u0010\u0005\u001a\u0002H\u0002\u00a2\u0006\u0002\u0010\u0006\u001a)\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003*\u00020\u00042\u0006\u0010\u0005\u001a\u0002H\u0002H\u0007\u00a2\u0006\u0002\u0010\u0006\u001a*\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003*\u00020\u00042\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\tH\u0007\u001a\u0015\u0010\n\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0004H\u0086\u0004\u001a\u0015\u0010\u000c\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0004H\u0086\u0002\u00a8\u0006\r"
    }
    d2 = {
        "getContextual",
        "Lkotlinx/serialization/KSerializer;",
        "T",
        "",
        "Lkotlinx/serialization/modules/SerialModule;",
        "value",
        "(Lkotlinx/serialization/modules/SerialModule;Ljava/lang/Object;)Lkotlinx/serialization/KSerializer;",
        "getContextualOrDefault",
        "klass",
        "Lkotlin/reflect/KClass;",
        "overwriteWith",
        "other",
        "plus",
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
.method public static final a(Lkotlinx/serialization/modules/b;Lkotlin/reflect/c;)Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/modules/b;",
            "Lkotlin/reflect/c<",
            "TT;>;)",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "$this$getContextualOrDefault"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "klass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-interface {p0, p1}, Lkotlinx/serialization/modules/b;->a(Lkotlin/reflect/c;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {p1}, Lkotlinx/serialization/g;->a(Lkotlin/reflect/c;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    :cond_0
    return-object p0
.end method
