.class public final enum Lcom/verizon/ads/RequestMetadata$Education;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/RequestMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Education"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/verizon/ads/RequestMetadata$Education;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/verizon/ads/RequestMetadata$Education;

.field public static final enum ASSOCIATE:Lcom/verizon/ads/RequestMetadata$Education;

.field public static final enum BACHELOR:Lcom/verizon/ads/RequestMetadata$Education;

.field public static final enum HIGH_SCHOOL:Lcom/verizon/ads/RequestMetadata$Education;

.field public static final enum MASTERS:Lcom/verizon/ads/RequestMetadata$Education;

.field public static final enum PHD:Lcom/verizon/ads/RequestMetadata$Education;

.field public static final enum PROFESSIONAL:Lcom/verizon/ads/RequestMetadata$Education;

.field public static final enum SOME_COLLEGE:Lcom/verizon/ads/RequestMetadata$Education;


# instance fields
.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 92
    new-instance v0, Lcom/verizon/ads/RequestMetadata$Education;

    const-string v1, "HIGH_SCHOOL"

    const/4 v2, 0x0

    const-string v3, "highschool"

    invoke-direct {v0, v1, v2, v3}, Lcom/verizon/ads/RequestMetadata$Education;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/verizon/ads/RequestMetadata$Education;->HIGH_SCHOOL:Lcom/verizon/ads/RequestMetadata$Education;

    .line 93
    new-instance v1, Lcom/verizon/ads/RequestMetadata$Education;

    const-string v3, "SOME_COLLEGE"

    const/4 v4, 0x1

    const-string v5, "somecollege"

    invoke-direct {v1, v3, v4, v5}, Lcom/verizon/ads/RequestMetadata$Education;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/verizon/ads/RequestMetadata$Education;->SOME_COLLEGE:Lcom/verizon/ads/RequestMetadata$Education;

    .line 94
    new-instance v3, Lcom/verizon/ads/RequestMetadata$Education;

    const-string v5, "ASSOCIATE"

    const/4 v6, 0x2

    const-string v7, "associate"

    invoke-direct {v3, v5, v6, v7}, Lcom/verizon/ads/RequestMetadata$Education;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/verizon/ads/RequestMetadata$Education;->ASSOCIATE:Lcom/verizon/ads/RequestMetadata$Education;

    .line 95
    new-instance v5, Lcom/verizon/ads/RequestMetadata$Education;

    const-string v7, "BACHELOR"

    const/4 v8, 0x3

    const-string v9, "bachelor"

    invoke-direct {v5, v7, v8, v9}, Lcom/verizon/ads/RequestMetadata$Education;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/verizon/ads/RequestMetadata$Education;->BACHELOR:Lcom/verizon/ads/RequestMetadata$Education;

    .line 96
    new-instance v7, Lcom/verizon/ads/RequestMetadata$Education;

    const-string v9, "MASTERS"

    const/4 v10, 0x4

    const-string v11, "masters"

    invoke-direct {v7, v9, v10, v11}, Lcom/verizon/ads/RequestMetadata$Education;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/verizon/ads/RequestMetadata$Education;->MASTERS:Lcom/verizon/ads/RequestMetadata$Education;

    .line 97
    new-instance v9, Lcom/verizon/ads/RequestMetadata$Education;

    const-string v11, "PHD"

    const/4 v12, 0x5

    const-string v13, "phd"

    invoke-direct {v9, v11, v12, v13}, Lcom/verizon/ads/RequestMetadata$Education;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/verizon/ads/RequestMetadata$Education;->PHD:Lcom/verizon/ads/RequestMetadata$Education;

    .line 98
    new-instance v11, Lcom/verizon/ads/RequestMetadata$Education;

    const-string v13, "PROFESSIONAL"

    const/4 v14, 0x6

    const-string v15, "professional"

    invoke-direct {v11, v13, v14, v15}, Lcom/verizon/ads/RequestMetadata$Education;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/verizon/ads/RequestMetadata$Education;->PROFESSIONAL:Lcom/verizon/ads/RequestMetadata$Education;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/verizon/ads/RequestMetadata$Education;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 91
    sput-object v13, Lcom/verizon/ads/RequestMetadata$Education;->$VALUES:[Lcom/verizon/ads/RequestMetadata$Education;

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

    .line 103
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 105
    iput-object p3, p0, Lcom/verizon/ads/RequestMetadata$Education;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/verizon/ads/RequestMetadata$Education;
    .locals 1

    .line 91
    const-class v0, Lcom/verizon/ads/RequestMetadata$Education;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/verizon/ads/RequestMetadata$Education;

    return-object p0
.end method

.method public static values()[Lcom/verizon/ads/RequestMetadata$Education;
    .locals 1

    .line 91
    sget-object v0, Lcom/verizon/ads/RequestMetadata$Education;->$VALUES:[Lcom/verizon/ads/RequestMetadata$Education;

    invoke-virtual {v0}, [Lcom/verizon/ads/RequestMetadata$Education;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/verizon/ads/RequestMetadata$Education;

    return-object v0
.end method
