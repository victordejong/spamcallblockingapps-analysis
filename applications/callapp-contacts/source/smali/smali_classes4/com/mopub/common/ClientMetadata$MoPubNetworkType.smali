.class public final enum Lcom/mopub/common/ClientMetadata$MoPubNetworkType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/ClientMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MoPubNetworkType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mopub/common/ClientMetadata$MoPubNetworkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

.field public static final enum ETHERNET:Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

.field public static final enum GG:Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

.field public static final enum GGG:Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

.field public static final enum GGGG:Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

.field public static final enum GGGGG:Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

.field public static final enum MOBILE:Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

.field public static final enum UNKNOWN:Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

.field public static final enum WIFI:Lcom/mopub/common/ClientMetadata$MoPubNetworkType;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 59
    new-instance v0, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->UNKNOWN:Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    .line 60
    new-instance v1, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    const-string v3, "ETHERNET"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->ETHERNET:Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    .line 61
    new-instance v3, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    const-string v5, "WIFI"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->WIFI:Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    .line 62
    new-instance v5, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    const-string v7, "MOBILE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->MOBILE:Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    .line 63
    new-instance v7, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    const-string v9, "GG"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->GG:Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    .line 64
    new-instance v9, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    const-string v11, "GGG"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->GGG:Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    .line 65
    new-instance v11, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    const-string v13, "GGGG"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->GGGG:Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    .line 66
    new-instance v13, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    const-string v15, "GGGGG"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->GGGGG:Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    .line 58
    sput-object v15, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->$VALUES:[Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 70
    iput p3, p0, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/common/ClientMetadata$MoPubNetworkType;
    .locals 1

    .line 58
    const-class v0, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    return-object p0
.end method

.method public static values()[Lcom/mopub/common/ClientMetadata$MoPubNetworkType;
    .locals 1

    .line 58
    sget-object v0, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->$VALUES:[Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    invoke-virtual {v0}, [Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->mId:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 75
    iget v0, p0, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->mId:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
