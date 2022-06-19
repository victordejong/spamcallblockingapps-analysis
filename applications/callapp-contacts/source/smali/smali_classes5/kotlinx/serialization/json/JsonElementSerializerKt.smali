.class public final Lkotlinx/serialization/json/JsonElementSerializerKt;
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
        "\u0000 \n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0002\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0005H\u0002\u001a\u000c\u0010\u0006\u001a\u00020\u0007*\u00020\u0003H\u0000\u001a\u000c\u0010\u0008\u001a\u00020\t*\u00020\u0005H\u0000\u00a8\u0006\n"
    }
    d2 = {
        "verify",
        "",
        "decoder",
        "Lkotlinx/serialization/Decoder;",
        "encoder",
        "Lkotlinx/serialization/Encoder;",
        "asJsonInput",
        "Lkotlinx/serialization/json/JsonInput;",
        "asJsonOutput",
        "Lkotlinx/serialization/json/JsonOutput;",
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
.method public static final synthetic access$verify(Lkotlinx/serialization/Decoder;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lkotlinx/serialization/json/JsonElementSerializerKt;->verify(Lkotlinx/serialization/Decoder;)V

    return-void
.end method

.method public static final synthetic access$verify(Lkotlinx/serialization/Encoder;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lkotlinx/serialization/json/JsonElementSerializerKt;->verify(Lkotlinx/serialization/Encoder;)V

    return-void
.end method

.method public static final asJsonInput(Lkotlinx/serialization/Decoder;)Lkotlinx/serialization/json/JsonInput;
    .locals 3

    const-string v0, "$this$asJsonInput"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    instance-of v0, p0, Lkotlinx/serialization/json/JsonInput;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    check-cast v0, Lkotlinx/serialization/json/JsonInput;

    if-eqz v0, :cond_1

    return-object v0

    .line 193
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "This serializer can be used only with Json format.Expected Decoder to be JsonInput, got "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 193
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public static final asJsonOutput(Lkotlinx/serialization/Encoder;)Lkotlinx/serialization/json/JsonOutput;
    .locals 3

    const-string v0, "$this$asJsonOutput"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    instance-of v0, p0, Lkotlinx/serialization/json/JsonOutput;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    check-cast v0, Lkotlinx/serialization/json/JsonOutput;

    if-eqz v0, :cond_1

    return-object v0

    .line 199
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "This serializer can be used only with Json format.Expected Encoder to be JsonOutput, got "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 199
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method private static final verify(Lkotlinx/serialization/Decoder;)V
    .locals 0

    .line 189
    invoke-static {p0}, Lkotlinx/serialization/json/JsonElementSerializerKt;->asJsonInput(Lkotlinx/serialization/Decoder;)Lkotlinx/serialization/json/JsonInput;

    return-void
.end method

.method private static final verify(Lkotlinx/serialization/Encoder;)V
    .locals 0

    .line 185
    invoke-static {p0}, Lkotlinx/serialization/json/JsonElementSerializerKt;->asJsonOutput(Lkotlinx/serialization/Encoder;)Lkotlinx/serialization/json/JsonOutput;

    return-void
.end method
