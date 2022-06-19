.class public final Lkotlinx/serialization/json/internal/TreeJsonOutputKt;
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
        "\u0000 \n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\"\u0010\u0002\u001a\u0002H\u0003\"\n\u0008\u0000\u0010\u0003\u0018\u0001*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0080\u0008\u00a2\u0006\u0002\u0010\u0006\u001a-\u0010\u0007\u001a\u00020\u0004\"\u0004\u0008\u0000\u0010\u0003*\u00020\u00082\u0006\u0010\u0005\u001a\u0002H\u00032\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00030\nH\u0000\u00a2\u0006\u0002\u0010\u000b\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "PRIMITIVE_TAG",
        "",
        "cast",
        "T",
        "Lkotlinx/serialization/json/JsonElement;",
        "value",
        "(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonElement;",
        "writeJson",
        "Lkotlinx/serialization/json/Json;",
        "serializer",
        "Lkotlinx/serialization/SerializationStrategy;",
        "(Lkotlinx/serialization/json/Json;Ljava/lang/Object;Lkotlinx/serialization/SerializationStrategy;)Lkotlinx/serialization/json/JsonElement;",
        "kotlinx-serialization-runtime"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final PRIMITIVE_TAG:Ljava/lang/String; = "primitive"


# direct methods
.method public static final synthetic cast(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonElement;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lkotlinx/serialization/json/JsonElement;",
            ">(",
            "Lkotlinx/serialization/json/JsonElement;",
            ")TT;"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    invoke-static {}, Lkotlin/jvm/internal/p;->b()V

    instance-of v0, p0, Lkotlinx/serialization/json/JsonElement;

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lkotlin/jvm/internal/p;->b()V

    const-class v1, Lkotlinx/serialization/json/JsonElement;

    invoke-static {v1}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " but found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public static final writeJson(Lkotlinx/serialization/json/Json;Ljava/lang/Object;Lkotlinx/serialization/r;)Lkotlinx/serialization/json/JsonElement;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/json/Json;",
            "TT;",
            "Lkotlinx/serialization/r<",
            "-TT;>;)",
            "Lkotlinx/serialization/json/JsonElement;"
        }
    .end annotation

    const-string v0, "$this$writeJson"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serializer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v0, Lkotlin/jvm/internal/ab$e;

    invoke-direct {v0}, Lkotlin/jvm/internal/ab$e;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Lkotlin/jvm/internal/ab$e;->a:Ljava/lang/Object;

    .line 16
    new-instance v1, Lkotlinx/serialization/json/internal/JsonTreeOutput;

    new-instance v2, Lkotlinx/serialization/json/internal/TreeJsonOutputKt$writeJson$encoder$1;

    invoke-direct {v2, v0}, Lkotlinx/serialization/json/internal/TreeJsonOutputKt$writeJson$encoder$1;-><init>(Lkotlin/jvm/internal/ab$e;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-direct {v1, p0, v2}, Lkotlinx/serialization/json/internal/JsonTreeOutput;-><init>(Lkotlinx/serialization/json/Json;Lkotlin/jvm/functions/Function1;)V

    .line 17
    check-cast v1, Lkotlinx/serialization/Encoder;

    invoke-static {v1, p2, p1}, Lkotlinx/serialization/e;->a(Lkotlinx/serialization/Encoder;Lkotlinx/serialization/r;Ljava/lang/Object;)V

    .line 18
    iget-object p0, v0, Lkotlin/jvm/internal/ab$e;->a:Ljava/lang/Object;

    if-nez p0, :cond_0

    const-string p1, "result"

    invoke-static {p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_0
    check-cast p0, Lkotlinx/serialization/json/JsonElement;

    return-object p0
.end method
