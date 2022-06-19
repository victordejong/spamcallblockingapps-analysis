.class public final enum Lcom/vk/api/sdk/e/a/c$a;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/api/sdk/e/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vk/api/sdk/e/a/c$a;",
        ">;",
        "Ljava/lang/Comparable<",
        "Lcom/vk/api/sdk/e/a/c$a;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000f\n\u0002\u0008\u0007\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u0008\u0012\u0004\u0012\u00020\u00000\u0002B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/vk/api/sdk/utils/log/Logger$LogLevel;",
        "",
        "",
        "(Ljava/lang/String;I)V",
        "VERBOSE",
        "DEBUG",
        "WARNING",
        "ERROR",
        "NONE",
        "libapi-sdk-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vk/api/sdk/e/a/c$a;

.field public static final enum DEBUG:Lcom/vk/api/sdk/e/a/c$a;

.field public static final enum ERROR:Lcom/vk/api/sdk/e/a/c$a;

.field public static final enum NONE:Lcom/vk/api/sdk/e/a/c$a;

.field public static final enum VERBOSE:Lcom/vk/api/sdk/e/a/c$a;

.field public static final enum WARNING:Lcom/vk/api/sdk/e/a/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/vk/api/sdk/e/a/c$a;

    new-instance v1, Lcom/vk/api/sdk/e/a/c$a;

    const-string v2, "VERBOSE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/vk/api/sdk/e/a/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/vk/api/sdk/e/a/c$a;->VERBOSE:Lcom/vk/api/sdk/e/a/c$a;

    aput-object v1, v0, v3

    new-instance v1, Lcom/vk/api/sdk/e/a/c$a;

    const-string v2, "DEBUG"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/vk/api/sdk/e/a/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/vk/api/sdk/e/a/c$a;->DEBUG:Lcom/vk/api/sdk/e/a/c$a;

    aput-object v1, v0, v3

    new-instance v1, Lcom/vk/api/sdk/e/a/c$a;

    const-string v2, "WARNING"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/vk/api/sdk/e/a/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/vk/api/sdk/e/a/c$a;->WARNING:Lcom/vk/api/sdk/e/a/c$a;

    aput-object v1, v0, v3

    new-instance v1, Lcom/vk/api/sdk/e/a/c$a;

    const-string v2, "ERROR"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/vk/api/sdk/e/a/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/vk/api/sdk/e/a/c$a;->ERROR:Lcom/vk/api/sdk/e/a/c$a;

    aput-object v1, v0, v3

    new-instance v1, Lcom/vk/api/sdk/e/a/c$a;

    const-string v2, "NONE"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/vk/api/sdk/e/a/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/vk/api/sdk/e/a/c$a;->NONE:Lcom/vk/api/sdk/e/a/c$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/vk/api/sdk/e/a/c$a;->$VALUES:[Lcom/vk/api/sdk/e/a/c$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vk/api/sdk/e/a/c$a;
    .locals 1

    const-class v0, Lcom/vk/api/sdk/e/a/c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vk/api/sdk/e/a/c$a;

    return-object p0
.end method

.method public static values()[Lcom/vk/api/sdk/e/a/c$a;
    .locals 1

    sget-object v0, Lcom/vk/api/sdk/e/a/c$a;->$VALUES:[Lcom/vk/api/sdk/e/a/c$a;

    invoke-virtual {v0}, [Lcom/vk/api/sdk/e/a/c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vk/api/sdk/e/a/c$a;

    return-object v0
.end method
