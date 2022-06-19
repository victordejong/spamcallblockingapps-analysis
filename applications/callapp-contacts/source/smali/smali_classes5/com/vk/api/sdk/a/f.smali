.class public final enum Lcom/vk/api/sdk/a/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vk/api/sdk/a/f;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0016\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/vk/api/sdk/auth/VKScope;",
        "",
        "(Ljava/lang/String;I)V",
        "NOTIFY",
        "FRIENDS",
        "PHOTOS",
        "AUDIO",
        "VIDEO",
        "STORIES",
        "PAGES",
        "STATUS",
        "NOTES",
        "MESSAGES",
        "WALL",
        "ADS",
        "OFFLINE",
        "DOCS",
        "GROUPS",
        "NOTIFICATIONS",
        "STATS",
        "EMAIL",
        "MARKET",
        "PHONE",
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
.field private static final synthetic $VALUES:[Lcom/vk/api/sdk/a/f;

.field public static final enum ADS:Lcom/vk/api/sdk/a/f;

.field public static final enum AUDIO:Lcom/vk/api/sdk/a/f;

.field public static final enum DOCS:Lcom/vk/api/sdk/a/f;

.field public static final enum EMAIL:Lcom/vk/api/sdk/a/f;

.field public static final enum FRIENDS:Lcom/vk/api/sdk/a/f;

.field public static final enum GROUPS:Lcom/vk/api/sdk/a/f;

.field public static final enum MARKET:Lcom/vk/api/sdk/a/f;

.field public static final enum MESSAGES:Lcom/vk/api/sdk/a/f;

.field public static final enum NOTES:Lcom/vk/api/sdk/a/f;

.field public static final enum NOTIFICATIONS:Lcom/vk/api/sdk/a/f;

.field public static final enum NOTIFY:Lcom/vk/api/sdk/a/f;

.field public static final enum OFFLINE:Lcom/vk/api/sdk/a/f;

.field public static final enum PAGES:Lcom/vk/api/sdk/a/f;

.field public static final enum PHONE:Lcom/vk/api/sdk/a/f;

.field public static final enum PHOTOS:Lcom/vk/api/sdk/a/f;

.field public static final enum STATS:Lcom/vk/api/sdk/a/f;

.field public static final enum STATUS:Lcom/vk/api/sdk/a/f;

.field public static final enum STORIES:Lcom/vk/api/sdk/a/f;

.field public static final enum VIDEO:Lcom/vk/api/sdk/a/f;

.field public static final enum WALL:Lcom/vk/api/sdk/a/f;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x14

    new-array v0, v0, [Lcom/vk/api/sdk/a/f;

    new-instance v1, Lcom/vk/api/sdk/a/f;

    const-string v2, "NOTIFY"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/vk/api/sdk/a/f;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/vk/api/sdk/a/f;->NOTIFY:Lcom/vk/api/sdk/a/f;

    aput-object v1, v0, v3

    new-instance v1, Lcom/vk/api/sdk/a/f;

    const-string v2, "FRIENDS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/vk/api/sdk/a/f;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/vk/api/sdk/a/f;->FRIENDS:Lcom/vk/api/sdk/a/f;

    aput-object v1, v0, v3

    new-instance v1, Lcom/vk/api/sdk/a/f;

    const-string v2, "PHOTOS"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/vk/api/sdk/a/f;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/vk/api/sdk/a/f;->PHOTOS:Lcom/vk/api/sdk/a/f;

    aput-object v1, v0, v3

    new-instance v1, Lcom/vk/api/sdk/a/f;

    const-string v2, "AUDIO"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/vk/api/sdk/a/f;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/vk/api/sdk/a/f;->AUDIO:Lcom/vk/api/sdk/a/f;

    aput-object v1, v0, v3

    new-instance v1, Lcom/vk/api/sdk/a/f;

    const-string v2, "VIDEO"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/vk/api/sdk/a/f;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/vk/api/sdk/a/f;->VIDEO:Lcom/vk/api/sdk/a/f;

    aput-object v1, v0, v3

    new-instance v1, Lcom/vk/api/sdk/a/f;

    const-string v2, "STORIES"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/vk/api/sdk/a/f;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/vk/api/sdk/a/f;->STORIES:Lcom/vk/api/sdk/a/f;

    aput-object v1, v0, v3

    new-instance v1, Lcom/vk/api/sdk/a/f;

    const-string v2, "PAGES"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/vk/api/sdk/a/f;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/vk/api/sdk/a/f;->PAGES:Lcom/vk/api/sdk/a/f;

    aput-object v1, v0, v3

    new-instance v1, Lcom/vk/api/sdk/a/f;

    const-string v2, "STATUS"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/vk/api/sdk/a/f;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/vk/api/sdk/a/f;->STATUS:Lcom/vk/api/sdk/a/f;

    aput-object v1, v0, v3

    new-instance v1, Lcom/vk/api/sdk/a/f;

    const-string v2, "NOTES"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lcom/vk/api/sdk/a/f;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/vk/api/sdk/a/f;->NOTES:Lcom/vk/api/sdk/a/f;

    aput-object v1, v0, v3

    new-instance v1, Lcom/vk/api/sdk/a/f;

    const-string v2, "MESSAGES"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Lcom/vk/api/sdk/a/f;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/vk/api/sdk/a/f;->MESSAGES:Lcom/vk/api/sdk/a/f;

    aput-object v1, v0, v3

    new-instance v1, Lcom/vk/api/sdk/a/f;

    const-string v2, "WALL"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Lcom/vk/api/sdk/a/f;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/vk/api/sdk/a/f;->WALL:Lcom/vk/api/sdk/a/f;

    aput-object v1, v0, v3

    new-instance v1, Lcom/vk/api/sdk/a/f;

    const-string v2, "ADS"

    const/16 v3, 0xb

    invoke-direct {v1, v2, v3}, Lcom/vk/api/sdk/a/f;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/vk/api/sdk/a/f;->ADS:Lcom/vk/api/sdk/a/f;

    aput-object v1, v0, v3

    new-instance v1, Lcom/vk/api/sdk/a/f;

    const-string v2, "OFFLINE"

    const/16 v3, 0xc

    invoke-direct {v1, v2, v3}, Lcom/vk/api/sdk/a/f;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/vk/api/sdk/a/f;->OFFLINE:Lcom/vk/api/sdk/a/f;

    aput-object v1, v0, v3

    new-instance v1, Lcom/vk/api/sdk/a/f;

    const-string v2, "DOCS"

    const/16 v3, 0xd

    invoke-direct {v1, v2, v3}, Lcom/vk/api/sdk/a/f;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/vk/api/sdk/a/f;->DOCS:Lcom/vk/api/sdk/a/f;

    aput-object v1, v0, v3

    new-instance v1, Lcom/vk/api/sdk/a/f;

    const-string v2, "GROUPS"

    const/16 v3, 0xe

    invoke-direct {v1, v2, v3}, Lcom/vk/api/sdk/a/f;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/vk/api/sdk/a/f;->GROUPS:Lcom/vk/api/sdk/a/f;

    aput-object v1, v0, v3

    new-instance v1, Lcom/vk/api/sdk/a/f;

    const-string v2, "NOTIFICATIONS"

    const/16 v3, 0xf

    invoke-direct {v1, v2, v3}, Lcom/vk/api/sdk/a/f;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/vk/api/sdk/a/f;->NOTIFICATIONS:Lcom/vk/api/sdk/a/f;

    aput-object v1, v0, v3

    new-instance v1, Lcom/vk/api/sdk/a/f;

    const-string v2, "STATS"

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3}, Lcom/vk/api/sdk/a/f;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/vk/api/sdk/a/f;->STATS:Lcom/vk/api/sdk/a/f;

    aput-object v1, v0, v3

    new-instance v1, Lcom/vk/api/sdk/a/f;

    const-string v2, "EMAIL"

    const/16 v3, 0x11

    invoke-direct {v1, v2, v3}, Lcom/vk/api/sdk/a/f;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/vk/api/sdk/a/f;->EMAIL:Lcom/vk/api/sdk/a/f;

    aput-object v1, v0, v3

    new-instance v1, Lcom/vk/api/sdk/a/f;

    const-string v2, "MARKET"

    const/16 v3, 0x12

    invoke-direct {v1, v2, v3}, Lcom/vk/api/sdk/a/f;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/vk/api/sdk/a/f;->MARKET:Lcom/vk/api/sdk/a/f;

    aput-object v1, v0, v3

    new-instance v1, Lcom/vk/api/sdk/a/f;

    const-string v2, "PHONE"

    const/16 v3, 0x13

    invoke-direct {v1, v2, v3}, Lcom/vk/api/sdk/a/f;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/vk/api/sdk/a/f;->PHONE:Lcom/vk/api/sdk/a/f;

    aput-object v1, v0, v3

    sput-object v0, Lcom/vk/api/sdk/a/f;->$VALUES:[Lcom/vk/api/sdk/a/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vk/api/sdk/a/f;
    .locals 1

    const-class v0, Lcom/vk/api/sdk/a/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vk/api/sdk/a/f;

    return-object p0
.end method

.method public static values()[Lcom/vk/api/sdk/a/f;
    .locals 1

    sget-object v0, Lcom/vk/api/sdk/a/f;->$VALUES:[Lcom/vk/api/sdk/a/f;

    invoke-virtual {v0}, [Lcom/vk/api/sdk/a/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vk/api/sdk/a/f;

    return-object v0
.end method
