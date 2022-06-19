.class public final enum Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/criteo/publisher/logging/RemoteLogRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RemoteLogLevel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0087\u0001\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;",
        "Ljava/lang/Enum;",
        "<init>",
        "(Ljava/lang/String;I)V",
        "Companion",
        "DEBUG",
        "INFO",
        "WARNING",
        "ERROR",
        "NONE",
        "publisher-sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
    pn = ""
    xi = 0x0
    xs = ""
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

.field public static final Companion:Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel$a;

.field public static final enum DEBUG:Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "Debug"
    .end annotation
.end field

.field public static final enum ERROR:Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "Error"
    .end annotation
.end field

.field public static final enum INFO:Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "Info"
    .end annotation
.end field

.field public static final enum NONE:Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "None"
    .end annotation
.end field

.field public static final enum WARNING:Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "Warning"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

    new-instance v1, Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

    const-string v2, "DEBUG"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;->DEBUG:Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

    aput-object v1, v0, v3

    new-instance v1, Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

    const-string v2, "INFO"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;->INFO:Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

    aput-object v1, v0, v3

    new-instance v1, Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

    const-string v2, "WARNING"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;->WARNING:Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

    aput-object v1, v0, v3

    new-instance v1, Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

    const-string v2, "ERROR"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;->ERROR:Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

    aput-object v1, v0, v3

    new-instance v1, Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

    const-string v2, "NONE"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;->NONE:Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

    aput-object v1, v0, v3

    sput-object v0, Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;->$VALUES:[Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

    new-instance v0, Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;->Companion:Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;
    .locals 1

    const-class v0, Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

    return-object p0
.end method

.method public static values()[Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;
    .locals 1

    sget-object v0, Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;->$VALUES:[Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

    invoke-virtual {v0}, [Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

    return-object v0
.end method
