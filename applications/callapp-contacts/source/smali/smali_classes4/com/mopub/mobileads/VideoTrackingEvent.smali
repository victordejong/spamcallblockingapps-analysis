.class public final enum Lcom/mopub/mobileads/VideoTrackingEvent;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/VideoTrackingEvent$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mopub/mobileads/VideoTrackingEvent;",
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
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\n\u0008\u0086\u0001\u0018\u0000 \u00112\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0011B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u0007\u001a\u00020\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/mopub/mobileads/VideoTrackingEvent;",
        "",
        "value",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "toFloat",
        "",
        "START",
        "FIRST_QUARTILE",
        "MIDPOINT",
        "THIRD_QUARTILE",
        "COMPLETE",
        "COMPANION_AD_VIEW",
        "COMPANION_AD_CLICK",
        "UNKNOWN",
        "Companion",
        "mopub-sdk-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mopub/mobileads/VideoTrackingEvent;

.field public static final enum COMPANION_AD_CLICK:Lcom/mopub/mobileads/VideoTrackingEvent;

.field public static final enum COMPANION_AD_VIEW:Lcom/mopub/mobileads/VideoTrackingEvent;

.field public static final enum COMPLETE:Lcom/mopub/mobileads/VideoTrackingEvent;

.field public static final Companion:Lcom/mopub/mobileads/VideoTrackingEvent$Companion;

.field public static final enum FIRST_QUARTILE:Lcom/mopub/mobileads/VideoTrackingEvent;

.field public static final enum MIDPOINT:Lcom/mopub/mobileads/VideoTrackingEvent;

.field public static final enum START:Lcom/mopub/mobileads/VideoTrackingEvent;

.field public static final enum THIRD_QUARTILE:Lcom/mopub/mobileads/VideoTrackingEvent;

.field public static final enum UNKNOWN:Lcom/mopub/mobileads/VideoTrackingEvent;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/mopub/mobileads/VideoTrackingEvent;

    new-instance v1, Lcom/mopub/mobileads/VideoTrackingEvent;

    const-string v2, "START"

    const/4 v3, 0x0

    const-string v4, "start"

    .line 11
    invoke-direct {v1, v2, v3, v4}, Lcom/mopub/mobileads/VideoTrackingEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/mopub/mobileads/VideoTrackingEvent;->START:Lcom/mopub/mobileads/VideoTrackingEvent;

    aput-object v1, v0, v3

    new-instance v1, Lcom/mopub/mobileads/VideoTrackingEvent;

    const-string v2, "FIRST_QUARTILE"

    const/4 v3, 0x1

    const-string v4, "firstQuartile"

    .line 12
    invoke-direct {v1, v2, v3, v4}, Lcom/mopub/mobileads/VideoTrackingEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/mopub/mobileads/VideoTrackingEvent;->FIRST_QUARTILE:Lcom/mopub/mobileads/VideoTrackingEvent;

    aput-object v1, v0, v3

    new-instance v1, Lcom/mopub/mobileads/VideoTrackingEvent;

    const-string v2, "MIDPOINT"

    const/4 v3, 0x2

    const-string v4, "midpoint"

    .line 13
    invoke-direct {v1, v2, v3, v4}, Lcom/mopub/mobileads/VideoTrackingEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/mopub/mobileads/VideoTrackingEvent;->MIDPOINT:Lcom/mopub/mobileads/VideoTrackingEvent;

    aput-object v1, v0, v3

    new-instance v1, Lcom/mopub/mobileads/VideoTrackingEvent;

    const-string v2, "THIRD_QUARTILE"

    const/4 v3, 0x3

    const-string v4, "thirdQuartile"

    .line 14
    invoke-direct {v1, v2, v3, v4}, Lcom/mopub/mobileads/VideoTrackingEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/mopub/mobileads/VideoTrackingEvent;->THIRD_QUARTILE:Lcom/mopub/mobileads/VideoTrackingEvent;

    aput-object v1, v0, v3

    new-instance v1, Lcom/mopub/mobileads/VideoTrackingEvent;

    const-string v2, "COMPLETE"

    const/4 v3, 0x4

    const-string v4, "complete"

    .line 15
    invoke-direct {v1, v2, v3, v4}, Lcom/mopub/mobileads/VideoTrackingEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/mopub/mobileads/VideoTrackingEvent;->COMPLETE:Lcom/mopub/mobileads/VideoTrackingEvent;

    aput-object v1, v0, v3

    new-instance v1, Lcom/mopub/mobileads/VideoTrackingEvent;

    const-string v2, "COMPANION_AD_VIEW"

    const/4 v3, 0x5

    const-string v4, "companionAdView"

    .line 16
    invoke-direct {v1, v2, v3, v4}, Lcom/mopub/mobileads/VideoTrackingEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/mopub/mobileads/VideoTrackingEvent;->COMPANION_AD_VIEW:Lcom/mopub/mobileads/VideoTrackingEvent;

    aput-object v1, v0, v3

    new-instance v1, Lcom/mopub/mobileads/VideoTrackingEvent;

    const-string v2, "COMPANION_AD_CLICK"

    const/4 v3, 0x6

    const-string v4, "companionAdClick"

    .line 17
    invoke-direct {v1, v2, v3, v4}, Lcom/mopub/mobileads/VideoTrackingEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/mopub/mobileads/VideoTrackingEvent;->COMPANION_AD_CLICK:Lcom/mopub/mobileads/VideoTrackingEvent;

    aput-object v1, v0, v3

    new-instance v1, Lcom/mopub/mobileads/VideoTrackingEvent;

    const-string v2, "UNKNOWN"

    const/4 v3, 0x7

    const-string v4, ""

    .line 18
    invoke-direct {v1, v2, v3, v4}, Lcom/mopub/mobileads/VideoTrackingEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/mopub/mobileads/VideoTrackingEvent;->UNKNOWN:Lcom/mopub/mobileads/VideoTrackingEvent;

    aput-object v1, v0, v3

    sput-object v0, Lcom/mopub/mobileads/VideoTrackingEvent;->$VALUES:[Lcom/mopub/mobileads/VideoTrackingEvent;

    new-instance v0, Lcom/mopub/mobileads/VideoTrackingEvent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mopub/mobileads/VideoTrackingEvent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/mopub/mobileads/VideoTrackingEvent;->Companion:Lcom/mopub/mobileads/VideoTrackingEvent$Companion;

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

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/mopub/mobileads/VideoTrackingEvent;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/mobileads/VideoTrackingEvent;
    .locals 1

    const-class v0, Lcom/mopub/mobileads/VideoTrackingEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mopub/mobileads/VideoTrackingEvent;

    return-object p0
.end method

.method public static values()[Lcom/mopub/mobileads/VideoTrackingEvent;
    .locals 1

    sget-object v0, Lcom/mopub/mobileads/VideoTrackingEvent;->$VALUES:[Lcom/mopub/mobileads/VideoTrackingEvent;

    invoke-virtual {v0}, [Lcom/mopub/mobileads/VideoTrackingEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/mobileads/VideoTrackingEvent;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/mopub/mobileads/VideoTrackingEvent;->value:Ljava/lang/String;

    return-object v0
.end method

.method public final toFloat()F
    .locals 2

    .line 27
    sget-object v0, Lcom/mopub/mobileads/VideoTrackingEvent$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lcom/mopub/mobileads/VideoTrackingEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    :cond_1
    const/high16 v0, 0x3f400000    # 0.75f

    return v0

    :cond_2
    const/high16 v0, 0x3f000000    # 0.5f

    return v0

    :cond_3
    const/high16 v0, 0x3e800000    # 0.25f

    return v0
.end method
