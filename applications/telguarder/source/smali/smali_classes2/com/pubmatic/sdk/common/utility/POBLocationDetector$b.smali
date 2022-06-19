.class final enum Lcom/pubmatic/sdk/common/utility/POBLocationDetector$b;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/common/utility/POBLocationDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pubmatic/sdk/common/utility/POBLocationDetector$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/pubmatic/sdk/common/utility/POBLocationDetector$b;

.field public static final enum c:Lcom/pubmatic/sdk/common/utility/POBLocationDetector$b;

.field public static final enum d:Lcom/pubmatic/sdk/common/utility/POBLocationDetector$b;

.field private static final synthetic e:[Lcom/pubmatic/sdk/common/utility/POBLocationDetector$b;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/pubmatic/sdk/common/utility/POBLocationDetector$b;

    const-string v1, "NETWORK"

    const/4 v2, 0x0

    const-string v3, "network"

    invoke-direct {v0, v1, v2, v3}, Lcom/pubmatic/sdk/common/utility/POBLocationDetector$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/pubmatic/sdk/common/utility/POBLocationDetector$b;->b:Lcom/pubmatic/sdk/common/utility/POBLocationDetector$b;

    new-instance v1, Lcom/pubmatic/sdk/common/utility/POBLocationDetector$b;

    const-string v3, "GPS"

    const/4 v4, 0x1

    const-string v5, "gps"

    invoke-direct {v1, v3, v4, v5}, Lcom/pubmatic/sdk/common/utility/POBLocationDetector$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/pubmatic/sdk/common/utility/POBLocationDetector$b;->c:Lcom/pubmatic/sdk/common/utility/POBLocationDetector$b;

    new-instance v3, Lcom/pubmatic/sdk/common/utility/POBLocationDetector$b;

    const-string v5, "PASSIVE"

    const/4 v6, 0x2

    const-string v7, "passive"

    invoke-direct {v3, v5, v6, v7}, Lcom/pubmatic/sdk/common/utility/POBLocationDetector$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/pubmatic/sdk/common/utility/POBLocationDetector$b;->d:Lcom/pubmatic/sdk/common/utility/POBLocationDetector$b;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/pubmatic/sdk/common/utility/POBLocationDetector$b;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/pubmatic/sdk/common/utility/POBLocationDetector$b;->e:[Lcom/pubmatic/sdk/common/utility/POBLocationDetector$b;

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

    iput-object p3, p0, Lcom/pubmatic/sdk/common/utility/POBLocationDetector$b;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pubmatic/sdk/common/utility/POBLocationDetector$b;
    .locals 1

    const-class v0, Lcom/pubmatic/sdk/common/utility/POBLocationDetector$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/pubmatic/sdk/common/utility/POBLocationDetector$b;

    return-object p0
.end method

.method public static values()[Lcom/pubmatic/sdk/common/utility/POBLocationDetector$b;
    .locals 1

    sget-object v0, Lcom/pubmatic/sdk/common/utility/POBLocationDetector$b;->e:[Lcom/pubmatic/sdk/common/utility/POBLocationDetector$b;

    invoke-virtual {v0}, [Lcom/pubmatic/sdk/common/utility/POBLocationDetector$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pubmatic/sdk/common/utility/POBLocationDetector$b;

    return-object v0
.end method


# virtual methods
.method a(Landroid/content/Context;)Z
    .locals 4

    sget-object v0, Lcom/pubmatic/sdk/common/utility/POBLocationDetector$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    return v1

    :cond_0
    invoke-static {p1, v2}, Lcom/pubmatic/sdk/common/utility/POBUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    invoke-static {p1, v2}, Lcom/pubmatic/sdk/common/utility/POBUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p1, v0}, Lcom/pubmatic/sdk/common/utility/POBUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/utility/POBLocationDetector$b;->a:Ljava/lang/String;

    return-object v0
.end method
