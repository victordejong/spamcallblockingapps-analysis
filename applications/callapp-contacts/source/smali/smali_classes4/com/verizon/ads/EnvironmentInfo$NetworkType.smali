.class public final enum Lcom/verizon/ads/EnvironmentInfo$NetworkType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/EnvironmentInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetworkType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/verizon/ads/EnvironmentInfo$NetworkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/verizon/ads/EnvironmentInfo$NetworkType;

.field public static final enum MOBILE:Lcom/verizon/ads/EnvironmentInfo$NetworkType;

.field public static final enum OFFLINE:Lcom/verizon/ads/EnvironmentInfo$NetworkType;

.field public static final enum UNKNOWN:Lcom/verizon/ads/EnvironmentInfo$NetworkType;

.field public static final enum WIFI:Lcom/verizon/ads/EnvironmentInfo$NetworkType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 88
    new-instance v0, Lcom/verizon/ads/EnvironmentInfo$NetworkType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/verizon/ads/EnvironmentInfo$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/verizon/ads/EnvironmentInfo$NetworkType;->UNKNOWN:Lcom/verizon/ads/EnvironmentInfo$NetworkType;

    .line 89
    new-instance v1, Lcom/verizon/ads/EnvironmentInfo$NetworkType;

    const-string v3, "OFFLINE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/verizon/ads/EnvironmentInfo$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/verizon/ads/EnvironmentInfo$NetworkType;->OFFLINE:Lcom/verizon/ads/EnvironmentInfo$NetworkType;

    .line 90
    new-instance v3, Lcom/verizon/ads/EnvironmentInfo$NetworkType;

    const-string v5, "WIFI"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/verizon/ads/EnvironmentInfo$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/verizon/ads/EnvironmentInfo$NetworkType;->WIFI:Lcom/verizon/ads/EnvironmentInfo$NetworkType;

    .line 91
    new-instance v5, Lcom/verizon/ads/EnvironmentInfo$NetworkType;

    const-string v7, "MOBILE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/verizon/ads/EnvironmentInfo$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/verizon/ads/EnvironmentInfo$NetworkType;->MOBILE:Lcom/verizon/ads/EnvironmentInfo$NetworkType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/verizon/ads/EnvironmentInfo$NetworkType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 87
    sput-object v7, Lcom/verizon/ads/EnvironmentInfo$NetworkType;->$VALUES:[Lcom/verizon/ads/EnvironmentInfo$NetworkType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 87
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/verizon/ads/EnvironmentInfo$NetworkType;
    .locals 1

    .line 87
    const-class v0, Lcom/verizon/ads/EnvironmentInfo$NetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/verizon/ads/EnvironmentInfo$NetworkType;

    return-object p0
.end method

.method public static values()[Lcom/verizon/ads/EnvironmentInfo$NetworkType;
    .locals 1

    .line 87
    sget-object v0, Lcom/verizon/ads/EnvironmentInfo$NetworkType;->$VALUES:[Lcom/verizon/ads/EnvironmentInfo$NetworkType;

    invoke-virtual {v0}, [Lcom/verizon/ads/EnvironmentInfo$NetworkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/verizon/ads/EnvironmentInfo$NetworkType;

    return-object v0
.end method
