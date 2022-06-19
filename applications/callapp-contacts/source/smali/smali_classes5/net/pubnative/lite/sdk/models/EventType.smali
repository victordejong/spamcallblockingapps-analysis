.class public final enum Lnet/pubnative/lite/sdk/models/EventType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/pubnative/lite/sdk/models/EventType;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u000e\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004R\u0016\u0010\u0005\u001a\u00020\u00028\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lnet/pubnative/lite/sdk/models/EventType;",
        "",
        "",
        "toString",
        "()Ljava/lang/String;",
        "eventTypeValue",
        "Ljava/lang/String;",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "IMPRESSION",
        "CLICK",
        "VIDEO_STARTED",
        "VIDEO_DISMISSED",
        "VIDEO_FINISHED",
        "VIDEO_MUTE",
        "VIDEO_UNMUTE",
        "hybid.sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/pubnative/lite/sdk/models/EventType;

.field public static final enum CLICK:Lnet/pubnative/lite/sdk/models/EventType;

.field public static final enum IMPRESSION:Lnet/pubnative/lite/sdk/models/EventType;

.field public static final enum VIDEO_DISMISSED:Lnet/pubnative/lite/sdk/models/EventType;

.field public static final enum VIDEO_FINISHED:Lnet/pubnative/lite/sdk/models/EventType;

.field public static final enum VIDEO_MUTE:Lnet/pubnative/lite/sdk/models/EventType;

.field public static final enum VIDEO_STARTED:Lnet/pubnative/lite/sdk/models/EventType;

.field public static final enum VIDEO_UNMUTE:Lnet/pubnative/lite/sdk/models/EventType;


# instance fields
.field private final eventTypeValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x7

    new-array v0, v0, [Lnet/pubnative/lite/sdk/models/EventType;

    new-instance v1, Lnet/pubnative/lite/sdk/models/EventType;

    const-string v2, "IMPRESSION"

    const/4 v3, 0x0

    const-string v4, "impression"

    invoke-direct {v1, v2, v3, v4}, Lnet/pubnative/lite/sdk/models/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lnet/pubnative/lite/sdk/models/EventType;->IMPRESSION:Lnet/pubnative/lite/sdk/models/EventType;

    aput-object v1, v0, v3

    new-instance v1, Lnet/pubnative/lite/sdk/models/EventType;

    const-string v2, "CLICK"

    const/4 v3, 0x1

    const-string v4, "click"

    invoke-direct {v1, v2, v3, v4}, Lnet/pubnative/lite/sdk/models/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lnet/pubnative/lite/sdk/models/EventType;->CLICK:Lnet/pubnative/lite/sdk/models/EventType;

    aput-object v1, v0, v3

    new-instance v1, Lnet/pubnative/lite/sdk/models/EventType;

    const-string v2, "VIDEO_STARTED"

    const/4 v3, 0x2

    const-string v4, "video_started"

    invoke-direct {v1, v2, v3, v4}, Lnet/pubnative/lite/sdk/models/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lnet/pubnative/lite/sdk/models/EventType;->VIDEO_STARTED:Lnet/pubnative/lite/sdk/models/EventType;

    aput-object v1, v0, v3

    new-instance v1, Lnet/pubnative/lite/sdk/models/EventType;

    const-string v2, "VIDEO_DISMISSED"

    const/4 v3, 0x3

    const-string v4, "video_dismissed"

    invoke-direct {v1, v2, v3, v4}, Lnet/pubnative/lite/sdk/models/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lnet/pubnative/lite/sdk/models/EventType;->VIDEO_DISMISSED:Lnet/pubnative/lite/sdk/models/EventType;

    aput-object v1, v0, v3

    new-instance v1, Lnet/pubnative/lite/sdk/models/EventType;

    const-string v2, "VIDEO_FINISHED"

    const/4 v3, 0x4

    const-string v4, "video_finished"

    invoke-direct {v1, v2, v3, v4}, Lnet/pubnative/lite/sdk/models/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lnet/pubnative/lite/sdk/models/EventType;->VIDEO_FINISHED:Lnet/pubnative/lite/sdk/models/EventType;

    aput-object v1, v0, v3

    new-instance v1, Lnet/pubnative/lite/sdk/models/EventType;

    const-string v2, "VIDEO_MUTE"

    const/4 v3, 0x5

    const-string v4, "video_mute"

    invoke-direct {v1, v2, v3, v4}, Lnet/pubnative/lite/sdk/models/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lnet/pubnative/lite/sdk/models/EventType;->VIDEO_MUTE:Lnet/pubnative/lite/sdk/models/EventType;

    aput-object v1, v0, v3

    new-instance v1, Lnet/pubnative/lite/sdk/models/EventType;

    const-string v2, "VIDEO_UNMUTE"

    const/4 v3, 0x6

    const-string v4, "video_unmute"

    invoke-direct {v1, v2, v3, v4}, Lnet/pubnative/lite/sdk/models/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lnet/pubnative/lite/sdk/models/EventType;->VIDEO_UNMUTE:Lnet/pubnative/lite/sdk/models/EventType;

    aput-object v1, v0, v3

    sput-object v0, Lnet/pubnative/lite/sdk/models/EventType;->$VALUES:[Lnet/pubnative/lite/sdk/models/EventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lnet/pubnative/lite/sdk/models/EventType;->eventTypeValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/pubnative/lite/sdk/models/EventType;
    .locals 1

    const-class v0, Lnet/pubnative/lite/sdk/models/EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/pubnative/lite/sdk/models/EventType;

    return-object p0
.end method

.method public static values()[Lnet/pubnative/lite/sdk/models/EventType;
    .locals 1

    sget-object v0, Lnet/pubnative/lite/sdk/models/EventType;->$VALUES:[Lnet/pubnative/lite/sdk/models/EventType;

    invoke-virtual {v0}, [Lnet/pubnative/lite/sdk/models/EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/pubnative/lite/sdk/models/EventType;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/pubnative/lite/sdk/models/EventType;->eventTypeValue:Ljava/lang/String;

    return-object v0
.end method
