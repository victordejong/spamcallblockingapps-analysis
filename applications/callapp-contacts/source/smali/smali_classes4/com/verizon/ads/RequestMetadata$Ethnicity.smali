.class public final enum Lcom/verizon/ads/RequestMetadata$Ethnicity;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/RequestMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Ethnicity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/verizon/ads/RequestMetadata$Ethnicity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/verizon/ads/RequestMetadata$Ethnicity;

.field public static final enum ASIAN:Lcom/verizon/ads/RequestMetadata$Ethnicity;

.field public static final enum BLACK:Lcom/verizon/ads/RequestMetadata$Ethnicity;

.field public static final enum HISPANIC:Lcom/verizon/ads/RequestMetadata$Ethnicity;

.field public static final enum INDIAN:Lcom/verizon/ads/RequestMetadata$Ethnicity;

.field public static final enum MIDDLE_EASTERN:Lcom/verizon/ads/RequestMetadata$Ethnicity;

.field public static final enum NATIVE_AMERICAN:Lcom/verizon/ads/RequestMetadata$Ethnicity;

.field public static final enum OTHER:Lcom/verizon/ads/RequestMetadata$Ethnicity;

.field public static final enum PACIFIC_ISLANDER:Lcom/verizon/ads/RequestMetadata$Ethnicity;

.field public static final enum WHITE:Lcom/verizon/ads/RequestMetadata$Ethnicity;


# instance fields
.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 116
    new-instance v0, Lcom/verizon/ads/RequestMetadata$Ethnicity;

    const-string v1, "HISPANIC"

    const/4 v2, 0x0

    const-string v3, "hispanic"

    invoke-direct {v0, v1, v2, v3}, Lcom/verizon/ads/RequestMetadata$Ethnicity;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/verizon/ads/RequestMetadata$Ethnicity;->HISPANIC:Lcom/verizon/ads/RequestMetadata$Ethnicity;

    .line 117
    new-instance v1, Lcom/verizon/ads/RequestMetadata$Ethnicity;

    const-string v3, "BLACK"

    const/4 v4, 0x1

    const-string v5, "africanamerican"

    invoke-direct {v1, v3, v4, v5}, Lcom/verizon/ads/RequestMetadata$Ethnicity;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/verizon/ads/RequestMetadata$Ethnicity;->BLACK:Lcom/verizon/ads/RequestMetadata$Ethnicity;

    .line 118
    new-instance v3, Lcom/verizon/ads/RequestMetadata$Ethnicity;

    const-string v5, "ASIAN"

    const/4 v6, 0x2

    const-string v7, "asian"

    invoke-direct {v3, v5, v6, v7}, Lcom/verizon/ads/RequestMetadata$Ethnicity;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/verizon/ads/RequestMetadata$Ethnicity;->ASIAN:Lcom/verizon/ads/RequestMetadata$Ethnicity;

    .line 119
    new-instance v5, Lcom/verizon/ads/RequestMetadata$Ethnicity;

    const-string v7, "INDIAN"

    const/4 v8, 0x3

    const-string v9, "indian"

    invoke-direct {v5, v7, v8, v9}, Lcom/verizon/ads/RequestMetadata$Ethnicity;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/verizon/ads/RequestMetadata$Ethnicity;->INDIAN:Lcom/verizon/ads/RequestMetadata$Ethnicity;

    .line 120
    new-instance v7, Lcom/verizon/ads/RequestMetadata$Ethnicity;

    const-string v9, "MIDDLE_EASTERN"

    const/4 v10, 0x4

    const-string v11, "middleeastern"

    invoke-direct {v7, v9, v10, v11}, Lcom/verizon/ads/RequestMetadata$Ethnicity;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/verizon/ads/RequestMetadata$Ethnicity;->MIDDLE_EASTERN:Lcom/verizon/ads/RequestMetadata$Ethnicity;

    .line 121
    new-instance v9, Lcom/verizon/ads/RequestMetadata$Ethnicity;

    const-string v11, "NATIVE_AMERICAN"

    const/4 v12, 0x5

    const-string v13, "nativeamerican"

    invoke-direct {v9, v11, v12, v13}, Lcom/verizon/ads/RequestMetadata$Ethnicity;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/verizon/ads/RequestMetadata$Ethnicity;->NATIVE_AMERICAN:Lcom/verizon/ads/RequestMetadata$Ethnicity;

    .line 122
    new-instance v11, Lcom/verizon/ads/RequestMetadata$Ethnicity;

    const-string v13, "PACIFIC_ISLANDER"

    const/4 v14, 0x6

    const-string v15, "pacificislander"

    invoke-direct {v11, v13, v14, v15}, Lcom/verizon/ads/RequestMetadata$Ethnicity;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/verizon/ads/RequestMetadata$Ethnicity;->PACIFIC_ISLANDER:Lcom/verizon/ads/RequestMetadata$Ethnicity;

    .line 123
    new-instance v13, Lcom/verizon/ads/RequestMetadata$Ethnicity;

    const-string v15, "WHITE"

    const/4 v14, 0x7

    const-string v12, "white"

    invoke-direct {v13, v15, v14, v12}, Lcom/verizon/ads/RequestMetadata$Ethnicity;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/verizon/ads/RequestMetadata$Ethnicity;->WHITE:Lcom/verizon/ads/RequestMetadata$Ethnicity;

    .line 124
    new-instance v12, Lcom/verizon/ads/RequestMetadata$Ethnicity;

    const-string v15, "OTHER"

    const/16 v14, 0x8

    const-string v10, "other"

    invoke-direct {v12, v15, v14, v10}, Lcom/verizon/ads/RequestMetadata$Ethnicity;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/verizon/ads/RequestMetadata$Ethnicity;->OTHER:Lcom/verizon/ads/RequestMetadata$Ethnicity;

    const/16 v10, 0x9

    new-array v10, v10, [Lcom/verizon/ads/RequestMetadata$Ethnicity;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    aput-object v5, v10, v8

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    aput-object v12, v10, v14

    .line 115
    sput-object v10, Lcom/verizon/ads/RequestMetadata$Ethnicity;->$VALUES:[Lcom/verizon/ads/RequestMetadata$Ethnicity;

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

    .line 129
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 131
    iput-object p3, p0, Lcom/verizon/ads/RequestMetadata$Ethnicity;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/verizon/ads/RequestMetadata$Ethnicity;
    .locals 1

    .line 115
    const-class v0, Lcom/verizon/ads/RequestMetadata$Ethnicity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/verizon/ads/RequestMetadata$Ethnicity;

    return-object p0
.end method

.method public static values()[Lcom/verizon/ads/RequestMetadata$Ethnicity;
    .locals 1

    .line 115
    sget-object v0, Lcom/verizon/ads/RequestMetadata$Ethnicity;->$VALUES:[Lcom/verizon/ads/RequestMetadata$Ethnicity;

    invoke-virtual {v0}, [Lcom/verizon/ads/RequestMetadata$Ethnicity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/verizon/ads/RequestMetadata$Ethnicity;

    return-object v0
.end method
