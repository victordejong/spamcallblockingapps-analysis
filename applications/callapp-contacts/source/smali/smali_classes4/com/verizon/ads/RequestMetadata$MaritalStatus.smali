.class public final enum Lcom/verizon/ads/RequestMetadata$MaritalStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/RequestMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MaritalStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/verizon/ads/RequestMetadata$MaritalStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/verizon/ads/RequestMetadata$MaritalStatus;

.field public static final enum DIVORCED:Lcom/verizon/ads/RequestMetadata$MaritalStatus;

.field public static final enum MARRIED:Lcom/verizon/ads/RequestMetadata$MaritalStatus;

.field public static final enum RELATIONSHIP:Lcom/verizon/ads/RequestMetadata$MaritalStatus;

.field public static final enum SINGLE:Lcom/verizon/ads/RequestMetadata$MaritalStatus;


# instance fields
.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 160
    new-instance v0, Lcom/verizon/ads/RequestMetadata$MaritalStatus;

    const-string v1, "SINGLE"

    const/4 v2, 0x0

    const-string v3, "S"

    invoke-direct {v0, v1, v2, v3}, Lcom/verizon/ads/RequestMetadata$MaritalStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/verizon/ads/RequestMetadata$MaritalStatus;->SINGLE:Lcom/verizon/ads/RequestMetadata$MaritalStatus;

    .line 161
    new-instance v1, Lcom/verizon/ads/RequestMetadata$MaritalStatus;

    const-string v3, "MARRIED"

    const/4 v4, 0x1

    const-string v5, "M"

    invoke-direct {v1, v3, v4, v5}, Lcom/verizon/ads/RequestMetadata$MaritalStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/verizon/ads/RequestMetadata$MaritalStatus;->MARRIED:Lcom/verizon/ads/RequestMetadata$MaritalStatus;

    .line 162
    new-instance v3, Lcom/verizon/ads/RequestMetadata$MaritalStatus;

    const-string v5, "DIVORCED"

    const/4 v6, 0x2

    const-string v7, "D"

    invoke-direct {v3, v5, v6, v7}, Lcom/verizon/ads/RequestMetadata$MaritalStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/verizon/ads/RequestMetadata$MaritalStatus;->DIVORCED:Lcom/verizon/ads/RequestMetadata$MaritalStatus;

    .line 163
    new-instance v5, Lcom/verizon/ads/RequestMetadata$MaritalStatus;

    const-string v7, "RELATIONSHIP"

    const/4 v8, 0x3

    const-string v9, "O"

    invoke-direct {v5, v7, v8, v9}, Lcom/verizon/ads/RequestMetadata$MaritalStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/verizon/ads/RequestMetadata$MaritalStatus;->RELATIONSHIP:Lcom/verizon/ads/RequestMetadata$MaritalStatus;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/verizon/ads/RequestMetadata$MaritalStatus;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 159
    sput-object v7, Lcom/verizon/ads/RequestMetadata$MaritalStatus;->$VALUES:[Lcom/verizon/ads/RequestMetadata$MaritalStatus;

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

    .line 168
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 170
    iput-object p3, p0, Lcom/verizon/ads/RequestMetadata$MaritalStatus;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/verizon/ads/RequestMetadata$MaritalStatus;
    .locals 1

    .line 159
    const-class v0, Lcom/verizon/ads/RequestMetadata$MaritalStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/verizon/ads/RequestMetadata$MaritalStatus;

    return-object p0
.end method

.method public static values()[Lcom/verizon/ads/RequestMetadata$MaritalStatus;
    .locals 1

    .line 159
    sget-object v0, Lcom/verizon/ads/RequestMetadata$MaritalStatus;->$VALUES:[Lcom/verizon/ads/RequestMetadata$MaritalStatus;

    invoke-virtual {v0}, [Lcom/verizon/ads/RequestMetadata$MaritalStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/verizon/ads/RequestMetadata$MaritalStatus;

    return-object v0
.end method
