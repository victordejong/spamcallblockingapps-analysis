.class public final enum Lcom/verizon/ads/RequestMetadata$Politics;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/RequestMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Politics"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/verizon/ads/RequestMetadata$Politics;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/verizon/ads/RequestMetadata$Politics;

.field public static final enum CONSERVATIVE:Lcom/verizon/ads/RequestMetadata$Politics;

.field public static final enum DEMOCRAT:Lcom/verizon/ads/RequestMetadata$Politics;

.field public static final enum INDEPENDENT:Lcom/verizon/ads/RequestMetadata$Politics;

.field public static final enum LIBERAL:Lcom/verizon/ads/RequestMetadata$Politics;

.field public static final enum MODERATE:Lcom/verizon/ads/RequestMetadata$Politics;

.field public static final enum OTHER:Lcom/verizon/ads/RequestMetadata$Politics;

.field public static final enum REPUBLICAN:Lcom/verizon/ads/RequestMetadata$Politics;


# instance fields
.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 180
    new-instance v0, Lcom/verizon/ads/RequestMetadata$Politics;

    const-string v1, "REPUBLICAN"

    const/4 v2, 0x0

    const-string v3, "republican"

    invoke-direct {v0, v1, v2, v3}, Lcom/verizon/ads/RequestMetadata$Politics;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/verizon/ads/RequestMetadata$Politics;->REPUBLICAN:Lcom/verizon/ads/RequestMetadata$Politics;

    .line 181
    new-instance v1, Lcom/verizon/ads/RequestMetadata$Politics;

    const-string v3, "DEMOCRAT"

    const/4 v4, 0x1

    const-string v5, "democrat"

    invoke-direct {v1, v3, v4, v5}, Lcom/verizon/ads/RequestMetadata$Politics;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/verizon/ads/RequestMetadata$Politics;->DEMOCRAT:Lcom/verizon/ads/RequestMetadata$Politics;

    .line 182
    new-instance v3, Lcom/verizon/ads/RequestMetadata$Politics;

    const-string v5, "CONSERVATIVE"

    const/4 v6, 0x2

    const-string v7, "conservative"

    invoke-direct {v3, v5, v6, v7}, Lcom/verizon/ads/RequestMetadata$Politics;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/verizon/ads/RequestMetadata$Politics;->CONSERVATIVE:Lcom/verizon/ads/RequestMetadata$Politics;

    .line 183
    new-instance v5, Lcom/verizon/ads/RequestMetadata$Politics;

    const-string v7, "MODERATE"

    const/4 v8, 0x3

    const-string v9, "moderate"

    invoke-direct {v5, v7, v8, v9}, Lcom/verizon/ads/RequestMetadata$Politics;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/verizon/ads/RequestMetadata$Politics;->MODERATE:Lcom/verizon/ads/RequestMetadata$Politics;

    .line 184
    new-instance v7, Lcom/verizon/ads/RequestMetadata$Politics;

    const-string v9, "LIBERAL"

    const/4 v10, 0x4

    const-string v11, "liberal"

    invoke-direct {v7, v9, v10, v11}, Lcom/verizon/ads/RequestMetadata$Politics;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/verizon/ads/RequestMetadata$Politics;->LIBERAL:Lcom/verizon/ads/RequestMetadata$Politics;

    .line 185
    new-instance v9, Lcom/verizon/ads/RequestMetadata$Politics;

    const-string v11, "INDEPENDENT"

    const/4 v12, 0x5

    const-string v13, "independent"

    invoke-direct {v9, v11, v12, v13}, Lcom/verizon/ads/RequestMetadata$Politics;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/verizon/ads/RequestMetadata$Politics;->INDEPENDENT:Lcom/verizon/ads/RequestMetadata$Politics;

    .line 186
    new-instance v11, Lcom/verizon/ads/RequestMetadata$Politics;

    const-string v13, "OTHER"

    const/4 v14, 0x6

    const-string v15, "other"

    invoke-direct {v11, v13, v14, v15}, Lcom/verizon/ads/RequestMetadata$Politics;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/verizon/ads/RequestMetadata$Politics;->OTHER:Lcom/verizon/ads/RequestMetadata$Politics;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/verizon/ads/RequestMetadata$Politics;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 179
    sput-object v13, Lcom/verizon/ads/RequestMetadata$Politics;->$VALUES:[Lcom/verizon/ads/RequestMetadata$Politics;

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

    .line 191
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 193
    iput-object p3, p0, Lcom/verizon/ads/RequestMetadata$Politics;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/verizon/ads/RequestMetadata$Politics;
    .locals 1

    .line 179
    const-class v0, Lcom/verizon/ads/RequestMetadata$Politics;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/verizon/ads/RequestMetadata$Politics;

    return-object p0
.end method

.method public static values()[Lcom/verizon/ads/RequestMetadata$Politics;
    .locals 1

    .line 179
    sget-object v0, Lcom/verizon/ads/RequestMetadata$Politics;->$VALUES:[Lcom/verizon/ads/RequestMetadata$Politics;

    invoke-virtual {v0}, [Lcom/verizon/ads/RequestMetadata$Politics;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/verizon/ads/RequestMetadata$Politics;

    return-object v0
.end method
