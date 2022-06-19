.class public final enum Lcom/flurry/android/FlurryGamingAgent$AcquireReason;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/android/FlurryGamingAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AcquireReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/flurry/android/FlurryGamingAgent$AcquireReason;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AD_REWARDED:Lcom/flurry/android/FlurryGamingAgent$AcquireReason;

.field public static final enum BOUGHT:Lcom/flurry/android/FlurryGamingAgent$AcquireReason;

.field public static final enum EARN:Lcom/flurry/android/FlurryGamingAgent$AcquireReason;

.field public static final enum OTHER:Lcom/flurry/android/FlurryGamingAgent$AcquireReason;

.field public static final enum TRADE:Lcom/flurry/android/FlurryGamingAgent$AcquireReason;

.field private static final synthetic a:[Lcom/flurry/android/FlurryGamingAgent$AcquireReason;


# instance fields
.field public final value:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/flurry/android/FlurryGamingAgent$AcquireReason;

    const-string v1, "EARN"

    const/4 v2, 0x0

    const-string v3, "Earn"

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/android/FlurryGamingAgent$AcquireReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/flurry/android/FlurryGamingAgent$AcquireReason;->EARN:Lcom/flurry/android/FlurryGamingAgent$AcquireReason;

    new-instance v1, Lcom/flurry/android/FlurryGamingAgent$AcquireReason;

    const-string v3, "TRADE"

    const/4 v4, 0x1

    const-string v5, "Trade"

    invoke-direct {v1, v3, v4, v5}, Lcom/flurry/android/FlurryGamingAgent$AcquireReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/flurry/android/FlurryGamingAgent$AcquireReason;->TRADE:Lcom/flurry/android/FlurryGamingAgent$AcquireReason;

    new-instance v3, Lcom/flurry/android/FlurryGamingAgent$AcquireReason;

    const-string v5, "BOUGHT"

    const/4 v6, 0x2

    const-string v7, "Bought"

    invoke-direct {v3, v5, v6, v7}, Lcom/flurry/android/FlurryGamingAgent$AcquireReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/flurry/android/FlurryGamingAgent$AcquireReason;->BOUGHT:Lcom/flurry/android/FlurryGamingAgent$AcquireReason;

    new-instance v5, Lcom/flurry/android/FlurryGamingAgent$AcquireReason;

    const-string v7, "AD_REWARDED"

    const/4 v8, 0x3

    const-string v9, "Ad Rewarded"

    invoke-direct {v5, v7, v8, v9}, Lcom/flurry/android/FlurryGamingAgent$AcquireReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/flurry/android/FlurryGamingAgent$AcquireReason;->AD_REWARDED:Lcom/flurry/android/FlurryGamingAgent$AcquireReason;

    new-instance v7, Lcom/flurry/android/FlurryGamingAgent$AcquireReason;

    const-string v9, "OTHER"

    const/4 v10, 0x4

    const-string v11, "Other"

    invoke-direct {v7, v9, v10, v11}, Lcom/flurry/android/FlurryGamingAgent$AcquireReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/flurry/android/FlurryGamingAgent$AcquireReason;->OTHER:Lcom/flurry/android/FlurryGamingAgent$AcquireReason;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/flurry/android/FlurryGamingAgent$AcquireReason;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/flurry/android/FlurryGamingAgent$AcquireReason;->a:[Lcom/flurry/android/FlurryGamingAgent$AcquireReason;

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

    iput-object p3, p0, Lcom/flurry/android/FlurryGamingAgent$AcquireReason;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/android/FlurryGamingAgent$AcquireReason;
    .locals 1

    const-class v0, Lcom/flurry/android/FlurryGamingAgent$AcquireReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/flurry/android/FlurryGamingAgent$AcquireReason;

    return-object p0
.end method

.method public static values()[Lcom/flurry/android/FlurryGamingAgent$AcquireReason;
    .locals 1

    sget-object v0, Lcom/flurry/android/FlurryGamingAgent$AcquireReason;->a:[Lcom/flurry/android/FlurryGamingAgent$AcquireReason;

    invoke-virtual {v0}, [Lcom/flurry/android/FlurryGamingAgent$AcquireReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/android/FlurryGamingAgent$AcquireReason;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flurry/android/FlurryGamingAgent$AcquireReason;->value:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flurry/android/FlurryGamingAgent$AcquireReason;->value:Ljava/lang/String;

    return-object v0
.end method
