.class public final enum Lnet/pubnative/lite/sdk/models/AdFormat;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/pubnative/lite/sdk/models/AdFormat;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u000b\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004R\u0016\u0010\u0005\u001a\u00020\u00028\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lnet/pubnative/lite/sdk/models/AdFormat;",
        "",
        "",
        "toString",
        "()Ljava/lang/String;",
        "adFormatValue",
        "Ljava/lang/String;",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "NATIVE",
        "BANNER",
        "FULL_SCREEN",
        "REWARDED",
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
.field private static final synthetic $VALUES:[Lnet/pubnative/lite/sdk/models/AdFormat;

.field public static final enum BANNER:Lnet/pubnative/lite/sdk/models/AdFormat;

.field public static final enum FULL_SCREEN:Lnet/pubnative/lite/sdk/models/AdFormat;

.field public static final enum NATIVE:Lnet/pubnative/lite/sdk/models/AdFormat;

.field public static final enum REWARDED:Lnet/pubnative/lite/sdk/models/AdFormat;


# instance fields
.field private final adFormatValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Lnet/pubnative/lite/sdk/models/AdFormat;

    new-instance v1, Lnet/pubnative/lite/sdk/models/AdFormat;

    const-string v2, "NATIVE"

    const/4 v3, 0x0

    const-string v4, "native"

    invoke-direct {v1, v2, v3, v4}, Lnet/pubnative/lite/sdk/models/AdFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lnet/pubnative/lite/sdk/models/AdFormat;->NATIVE:Lnet/pubnative/lite/sdk/models/AdFormat;

    aput-object v1, v0, v3

    new-instance v1, Lnet/pubnative/lite/sdk/models/AdFormat;

    const-string v2, "BANNER"

    const/4 v3, 0x1

    const-string v4, "banner"

    invoke-direct {v1, v2, v3, v4}, Lnet/pubnative/lite/sdk/models/AdFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lnet/pubnative/lite/sdk/models/AdFormat;->BANNER:Lnet/pubnative/lite/sdk/models/AdFormat;

    aput-object v1, v0, v3

    new-instance v1, Lnet/pubnative/lite/sdk/models/AdFormat;

    const-string v2, "FULL_SCREEN"

    const/4 v3, 0x2

    const-string v4, "fullscreen"

    invoke-direct {v1, v2, v3, v4}, Lnet/pubnative/lite/sdk/models/AdFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lnet/pubnative/lite/sdk/models/AdFormat;->FULL_SCREEN:Lnet/pubnative/lite/sdk/models/AdFormat;

    aput-object v1, v0, v3

    new-instance v1, Lnet/pubnative/lite/sdk/models/AdFormat;

    const-string v2, "REWARDED"

    const/4 v3, 0x3

    const-string v4, "rewarded"

    invoke-direct {v1, v2, v3, v4}, Lnet/pubnative/lite/sdk/models/AdFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lnet/pubnative/lite/sdk/models/AdFormat;->REWARDED:Lnet/pubnative/lite/sdk/models/AdFormat;

    aput-object v1, v0, v3

    sput-object v0, Lnet/pubnative/lite/sdk/models/AdFormat;->$VALUES:[Lnet/pubnative/lite/sdk/models/AdFormat;

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

    iput-object p3, p0, Lnet/pubnative/lite/sdk/models/AdFormat;->adFormatValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/pubnative/lite/sdk/models/AdFormat;
    .locals 1

    const-class v0, Lnet/pubnative/lite/sdk/models/AdFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/pubnative/lite/sdk/models/AdFormat;

    return-object p0
.end method

.method public static values()[Lnet/pubnative/lite/sdk/models/AdFormat;
    .locals 1

    sget-object v0, Lnet/pubnative/lite/sdk/models/AdFormat;->$VALUES:[Lnet/pubnative/lite/sdk/models/AdFormat;

    invoke-virtual {v0}, [Lnet/pubnative/lite/sdk/models/AdFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/pubnative/lite/sdk/models/AdFormat;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/pubnative/lite/sdk/models/AdFormat;->adFormatValue:Ljava/lang/String;

    return-object v0
.end method
