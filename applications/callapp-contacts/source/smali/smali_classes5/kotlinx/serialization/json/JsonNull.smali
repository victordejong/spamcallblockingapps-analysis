.class public final Lkotlinx/serialization/json/JsonNull;
.super Lkotlinx/serialization/json/JsonPrimitive;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006R\u0014\u0010\t\u001a\u00020\u0000X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lkotlinx/serialization/json/JsonNull;",
        "Lkotlinx/serialization/json/JsonPrimitive;",
        "()V",
        "content",
        "",
        "getContent",
        "()Ljava/lang/String;",
        "contentOrNull",
        "getContentOrNull",
        "jsonNull",
        "getJsonNull",
        "()Lkotlinx/serialization/json/JsonNull;",
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
.field public static final INSTANCE:Lkotlinx/serialization/json/JsonNull;

.field private static final content:Ljava/lang/String;

.field private static final contentOrNull:Ljava/lang/String;

.field private static final jsonNull:Lkotlinx/serialization/json/JsonNull;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 204
    new-instance v0, Lkotlinx/serialization/json/JsonNull;

    invoke-direct {v0}, Lkotlinx/serialization/json/JsonNull;-><init>()V

    sput-object v0, Lkotlinx/serialization/json/JsonNull;->INSTANCE:Lkotlinx/serialization/json/JsonNull;

    .line 205
    sput-object v0, Lkotlinx/serialization/json/JsonNull;->jsonNull:Lkotlinx/serialization/json/JsonNull;

    const-string v0, "null"

    .line 206
    sput-object v0, Lkotlinx/serialization/json/JsonNull;->content:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 204
    invoke-direct {p0, v0}, Lkotlinx/serialization/json/JsonPrimitive;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public final getContent()Ljava/lang/String;
    .locals 1

    .line 206
    sget-object v0, Lkotlinx/serialization/json/JsonNull;->content:Ljava/lang/String;

    return-object v0
.end method

.method public final getContentOrNull()Ljava/lang/String;
    .locals 1

    .line 207
    sget-object v0, Lkotlinx/serialization/json/JsonNull;->contentOrNull:Ljava/lang/String;

    return-object v0
.end method

.method public final getJsonNull()Lkotlinx/serialization/json/JsonNull;
    .locals 1

    .line 205
    sget-object v0, Lkotlinx/serialization/json/JsonNull;->jsonNull:Lkotlinx/serialization/json/JsonNull;

    return-object v0
.end method
