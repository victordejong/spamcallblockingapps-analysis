.class public final enum Lcom/mopub/common/LocationService$ValidLocationProvider;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/LocationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ValidLocationProvider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mopub/common/LocationService$ValidLocationProvider;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mopub/common/LocationService$ValidLocationProvider;

.field public static final enum GPS:Lcom/mopub/common/LocationService$ValidLocationProvider;

.field public static final enum NETWORK:Lcom/mopub/common/LocationService$ValidLocationProvider;


# instance fields
.field final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 88
    new-instance v0, Lcom/mopub/common/LocationService$ValidLocationProvider;

    const-string v1, "NETWORK"

    const/4 v2, 0x0

    const-string v3, "network"

    invoke-direct {v0, v1, v2, v3}, Lcom/mopub/common/LocationService$ValidLocationProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/LocationService$ValidLocationProvider;->NETWORK:Lcom/mopub/common/LocationService$ValidLocationProvider;

    .line 89
    new-instance v1, Lcom/mopub/common/LocationService$ValidLocationProvider;

    const-string v3, "GPS"

    const/4 v4, 0x1

    const-string v5, "gps"

    invoke-direct {v1, v3, v4, v5}, Lcom/mopub/common/LocationService$ValidLocationProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/mopub/common/LocationService$ValidLocationProvider;->GPS:Lcom/mopub/common/LocationService$ValidLocationProvider;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/mopub/common/LocationService$ValidLocationProvider;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 87
    sput-object v3, Lcom/mopub/common/LocationService$ValidLocationProvider;->$VALUES:[Lcom/mopub/common/LocationService$ValidLocationProvider;

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

    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 94
    iput-object p3, p0, Lcom/mopub/common/LocationService$ValidLocationProvider;->name:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/common/LocationService$ValidLocationProvider;Landroid/content/Context;)Z
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/mopub/common/LocationService$ValidLocationProvider;->hasRequiredPermissions(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private hasRequiredPermissions(Landroid/content/Context;)Z
    .locals 4

    .line 103
    sget-object v0, Lcom/mopub/common/LocationService$1;->a:[I

    invoke-virtual {p0}, Lcom/mopub/common/LocationService$ValidLocationProvider;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    return v1

    .line 108
    :cond_0
    invoke-static {p1, v2}, Lcom/mopub/common/util/DeviceUtils;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 105
    :cond_1
    invoke-static {p1, v2}, Lcom/mopub/common/util/DeviceUtils;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 106
    invoke-static {p1, v0}, Lcom/mopub/common/util/DeviceUtils;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/common/LocationService$ValidLocationProvider;
    .locals 1

    .line 87
    const-class v0, Lcom/mopub/common/LocationService$ValidLocationProvider;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mopub/common/LocationService$ValidLocationProvider;

    return-object p0
.end method

.method public static values()[Lcom/mopub/common/LocationService$ValidLocationProvider;
    .locals 1

    .line 87
    sget-object v0, Lcom/mopub/common/LocationService$ValidLocationProvider;->$VALUES:[Lcom/mopub/common/LocationService$ValidLocationProvider;

    invoke-virtual {v0}, [Lcom/mopub/common/LocationService$ValidLocationProvider;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/common/LocationService$ValidLocationProvider;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/mopub/common/LocationService$ValidLocationProvider;->name:Ljava/lang/String;

    return-object v0
.end method
