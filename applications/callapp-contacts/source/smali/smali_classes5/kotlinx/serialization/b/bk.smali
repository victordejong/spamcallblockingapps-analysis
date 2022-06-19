.class public final Lkotlinx/serialization/b/bk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/KSerializer<",
        "Ljava/lang/String;",
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
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0008\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\nH\u0016J\u0018\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0002H\u0016R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0010"
    }
    d2 = {
        "Lkotlinx/serialization/internal/StringSerializer;",
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
        "serialize",
        "",
        "encoder",
        "Lkotlinx/serialization/Encoder;",
        "value",
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
.field public static final a:Lkotlinx/serialization/b/bk;

.field private static final b:Lkotlinx/serialization/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 170
    new-instance v0, Lkotlinx/serialization/b/bk;

    invoke-direct {v0}, Lkotlinx/serialization/b/bk;-><init>()V

    sput-object v0, Lkotlinx/serialization/b/bk;->a:Lkotlinx/serialization/b/bk;

    .line 171
    new-instance v0, Lkotlinx/serialization/b/bc;

    sget-object v1, Lkotlinx/serialization/j$i;->a:Lkotlinx/serialization/j$i;

    check-cast v1, Lkotlinx/serialization/j;

    const-string v2, "kotlin.String"

    invoke-direct {v0, v2, v1}, Lkotlinx/serialization/b/bc;-><init>(Ljava/lang/String;Lkotlinx/serialization/j;)V

    check-cast v0, Lkotlinx/serialization/SerialDescriptor;

    sput-object v0, Lkotlinx/serialization/b/bk;->b:Lkotlinx/serialization/SerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic deserialize(Lkotlinx/serialization/Decoder;)Ljava/lang/Object;
    .locals 1

    const-string v0, "decoder"

    .line 170
    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1173
    invoke-interface {p1}, Lkotlinx/serialization/Decoder;->decodeString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getDescriptor()Lkotlinx/serialization/SerialDescriptor;
    .locals 1

    .line 171
    sget-object v0, Lkotlinx/serialization/b/bk;->b:Lkotlinx/serialization/SerialDescriptor;

    return-object v0
.end method

.method public final synthetic patch(Lkotlinx/serialization/Decoder;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 170
    check-cast p2, Ljava/lang/String;

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "old"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2170
    invoke-static {p0, p1}, Lkotlinx/serialization/KSerializer$a;->a(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/Decoder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final synthetic serialize(Lkotlinx/serialization/Encoder;Ljava/lang/Object;)V
    .locals 1

    .line 170
    check-cast p2, Ljava/lang/String;

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1172
    invoke-interface {p1, p2}, Lkotlinx/serialization/Encoder;->encodeString(Ljava/lang/String;)V

    return-void
.end method
