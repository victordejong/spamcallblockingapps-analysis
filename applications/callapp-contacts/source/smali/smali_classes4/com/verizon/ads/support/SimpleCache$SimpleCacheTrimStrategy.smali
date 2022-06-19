.class public final enum Lcom/verizon/ads/support/SimpleCache$SimpleCacheTrimStrategy;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/support/Cache$TrimStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/support/SimpleCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SimpleCacheTrimStrategy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/verizon/ads/support/SimpleCache$SimpleCacheTrimStrategy;",
        ">;",
        "Lcom/verizon/ads/support/Cache$TrimStrategy;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/verizon/ads/support/SimpleCache$SimpleCacheTrimStrategy;

.field public static final enum TRIM_FROM_BACK:Lcom/verizon/ads/support/SimpleCache$SimpleCacheTrimStrategy;

.field public static final enum TRIM_FROM_FRONT:Lcom/verizon/ads/support/SimpleCache$SimpleCacheTrimStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 37
    new-instance v0, Lcom/verizon/ads/support/SimpleCache$SimpleCacheTrimStrategy;

    const-string v1, "TRIM_FROM_FRONT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/verizon/ads/support/SimpleCache$SimpleCacheTrimStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/verizon/ads/support/SimpleCache$SimpleCacheTrimStrategy;->TRIM_FROM_FRONT:Lcom/verizon/ads/support/SimpleCache$SimpleCacheTrimStrategy;

    .line 42
    new-instance v1, Lcom/verizon/ads/support/SimpleCache$SimpleCacheTrimStrategy;

    const-string v3, "TRIM_FROM_BACK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/verizon/ads/support/SimpleCache$SimpleCacheTrimStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/verizon/ads/support/SimpleCache$SimpleCacheTrimStrategy;->TRIM_FROM_BACK:Lcom/verizon/ads/support/SimpleCache$SimpleCacheTrimStrategy;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/verizon/ads/support/SimpleCache$SimpleCacheTrimStrategy;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 32
    sput-object v3, Lcom/verizon/ads/support/SimpleCache$SimpleCacheTrimStrategy;->$VALUES:[Lcom/verizon/ads/support/SimpleCache$SimpleCacheTrimStrategy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/verizon/ads/support/SimpleCache$SimpleCacheTrimStrategy;
    .locals 1

    .line 32
    const-class v0, Lcom/verizon/ads/support/SimpleCache$SimpleCacheTrimStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/verizon/ads/support/SimpleCache$SimpleCacheTrimStrategy;

    return-object p0
.end method

.method public static values()[Lcom/verizon/ads/support/SimpleCache$SimpleCacheTrimStrategy;
    .locals 1

    .line 32
    sget-object v0, Lcom/verizon/ads/support/SimpleCache$SimpleCacheTrimStrategy;->$VALUES:[Lcom/verizon/ads/support/SimpleCache$SimpleCacheTrimStrategy;

    invoke-virtual {v0}, [Lcom/verizon/ads/support/SimpleCache$SimpleCacheTrimStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/verizon/ads/support/SimpleCache$SimpleCacheTrimStrategy;

    return-object v0
.end method
