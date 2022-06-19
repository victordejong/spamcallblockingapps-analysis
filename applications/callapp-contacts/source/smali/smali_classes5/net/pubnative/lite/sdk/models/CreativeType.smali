.class public final enum Lnet/pubnative/lite/sdk/models/CreativeType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/pubnative/lite/sdk/models/CreativeType;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\t\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004R\u0016\u0010\u0005\u001a\u00020\u00028\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lnet/pubnative/lite/sdk/models/CreativeType;",
        "",
        "",
        "toString",
        "()Ljava/lang/String;",
        "creativeTypeValue",
        "Ljava/lang/String;",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "HTML",
        "VAST",
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
.field private static final synthetic $VALUES:[Lnet/pubnative/lite/sdk/models/CreativeType;

.field public static final enum HTML:Lnet/pubnative/lite/sdk/models/CreativeType;

.field public static final enum VAST:Lnet/pubnative/lite/sdk/models/CreativeType;


# instance fields
.field private final creativeTypeValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lnet/pubnative/lite/sdk/models/CreativeType;

    new-instance v1, Lnet/pubnative/lite/sdk/models/CreativeType;

    const-string v2, "HTML"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v2}, Lnet/pubnative/lite/sdk/models/CreativeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lnet/pubnative/lite/sdk/models/CreativeType;->HTML:Lnet/pubnative/lite/sdk/models/CreativeType;

    aput-object v1, v0, v3

    new-instance v1, Lnet/pubnative/lite/sdk/models/CreativeType;

    const-string v2, "VAST"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v2}, Lnet/pubnative/lite/sdk/models/CreativeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lnet/pubnative/lite/sdk/models/CreativeType;->VAST:Lnet/pubnative/lite/sdk/models/CreativeType;

    aput-object v1, v0, v3

    sput-object v0, Lnet/pubnative/lite/sdk/models/CreativeType;->$VALUES:[Lnet/pubnative/lite/sdk/models/CreativeType;

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

    iput-object p3, p0, Lnet/pubnative/lite/sdk/models/CreativeType;->creativeTypeValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/pubnative/lite/sdk/models/CreativeType;
    .locals 1

    const-class v0, Lnet/pubnative/lite/sdk/models/CreativeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/pubnative/lite/sdk/models/CreativeType;

    return-object p0
.end method

.method public static values()[Lnet/pubnative/lite/sdk/models/CreativeType;
    .locals 1

    sget-object v0, Lnet/pubnative/lite/sdk/models/CreativeType;->$VALUES:[Lnet/pubnative/lite/sdk/models/CreativeType;

    invoke-virtual {v0}, [Lnet/pubnative/lite/sdk/models/CreativeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/pubnative/lite/sdk/models/CreativeType;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/pubnative/lite/sdk/models/CreativeType;->creativeTypeValue:Ljava/lang/String;

    return-object v0
.end method
