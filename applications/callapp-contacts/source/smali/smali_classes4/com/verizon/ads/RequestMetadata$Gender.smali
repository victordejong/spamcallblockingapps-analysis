.class public final enum Lcom/verizon/ads/RequestMetadata$Gender;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/RequestMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Gender"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/verizon/ads/RequestMetadata$Gender;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/verizon/ads/RequestMetadata$Gender;

.field public static final enum FEMALE:Lcom/verizon/ads/RequestMetadata$Gender;

.field public static final enum MALE:Lcom/verizon/ads/RequestMetadata$Gender;

.field public static final enum UNKNOWN:Lcom/verizon/ads/RequestMetadata$Gender;


# instance fields
.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 141
    new-instance v0, Lcom/verizon/ads/RequestMetadata$Gender;

    const-string v1, "MALE"

    const/4 v2, 0x0

    const-string v3, "M"

    invoke-direct {v0, v1, v2, v3}, Lcom/verizon/ads/RequestMetadata$Gender;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/verizon/ads/RequestMetadata$Gender;->MALE:Lcom/verizon/ads/RequestMetadata$Gender;

    .line 142
    new-instance v1, Lcom/verizon/ads/RequestMetadata$Gender;

    const-string v3, "FEMALE"

    const/4 v4, 0x1

    const-string v5, "F"

    invoke-direct {v1, v3, v4, v5}, Lcom/verizon/ads/RequestMetadata$Gender;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/verizon/ads/RequestMetadata$Gender;->FEMALE:Lcom/verizon/ads/RequestMetadata$Gender;

    .line 143
    new-instance v3, Lcom/verizon/ads/RequestMetadata$Gender;

    const-string v5, "UNKNOWN"

    const/4 v6, 0x2

    const-string v7, "O"

    invoke-direct {v3, v5, v6, v7}, Lcom/verizon/ads/RequestMetadata$Gender;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/verizon/ads/RequestMetadata$Gender;->UNKNOWN:Lcom/verizon/ads/RequestMetadata$Gender;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/verizon/ads/RequestMetadata$Gender;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 140
    sput-object v5, Lcom/verizon/ads/RequestMetadata$Gender;->$VALUES:[Lcom/verizon/ads/RequestMetadata$Gender;

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

    .line 148
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 150
    iput-object p3, p0, Lcom/verizon/ads/RequestMetadata$Gender;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/verizon/ads/RequestMetadata$Gender;
    .locals 1

    .line 140
    const-class v0, Lcom/verizon/ads/RequestMetadata$Gender;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/verizon/ads/RequestMetadata$Gender;

    return-object p0
.end method

.method public static values()[Lcom/verizon/ads/RequestMetadata$Gender;
    .locals 1

    .line 140
    sget-object v0, Lcom/verizon/ads/RequestMetadata$Gender;->$VALUES:[Lcom/verizon/ads/RequestMetadata$Gender;

    invoke-virtual {v0}, [Lcom/verizon/ads/RequestMetadata$Gender;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/verizon/ads/RequestMetadata$Gender;

    return-object v0
.end method
