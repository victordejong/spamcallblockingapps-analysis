.class public final enum Lcom/mopub/common/util/DeviceUtils$ForceOrientation;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/util/DeviceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ForceOrientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mopub/common/util/DeviceUtils$ForceOrientation;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DEVICE_ORIENTATION:Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

.field public static final enum FORCE_LANDSCAPE:Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

.field public static final enum FORCE_PORTRAIT:Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

.field public static final enum UNDEFINED:Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

.field public static final synthetic b:[Lcom/mopub/common/util/DeviceUtils$ForceOrientation;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    const-string v1, "FORCE_PORTRAIT"

    const/4 v2, 0x0

    const-string v3, "portrait"

    invoke-direct {v0, v1, v2, v3}, Lcom/mopub/common/util/DeviceUtils$ForceOrientation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/DeviceUtils$ForceOrientation;->FORCE_PORTRAIT:Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    new-instance v1, Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    const-string v3, "FORCE_LANDSCAPE"

    const/4 v4, 0x1

    const-string v5, "landscape"

    invoke-direct {v1, v3, v4, v5}, Lcom/mopub/common/util/DeviceUtils$ForceOrientation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/mopub/common/util/DeviceUtils$ForceOrientation;->FORCE_LANDSCAPE:Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    new-instance v3, Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    const-string v5, "DEVICE_ORIENTATION"

    const/4 v6, 0x2

    const-string v7, "device"

    invoke-direct {v3, v5, v6, v7}, Lcom/mopub/common/util/DeviceUtils$ForceOrientation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/mopub/common/util/DeviceUtils$ForceOrientation;->DEVICE_ORIENTATION:Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    new-instance v5, Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    const-string v7, "UNDEFINED"

    const/4 v8, 0x3

    const-string v9, ""

    invoke-direct {v5, v7, v8, v9}, Lcom/mopub/common/util/DeviceUtils$ForceOrientation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/mopub/common/util/DeviceUtils$ForceOrientation;->UNDEFINED:Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/mopub/common/util/DeviceUtils$ForceOrientation;->b:[Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/mopub/common/util/DeviceUtils$ForceOrientation;->a:Ljava/lang/String;

    return-void
.end method

.method public static getForceOrientation(Ljava/lang/String;)Lcom/mopub/common/util/DeviceUtils$ForceOrientation;
    .locals 5

    invoke-static {}, Lcom/mopub/common/util/DeviceUtils$ForceOrientation;->values()[Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/mopub/common/util/DeviceUtils$ForceOrientation;->a:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/mopub/common/util/DeviceUtils$ForceOrientation;->UNDEFINED:Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/common/util/DeviceUtils$ForceOrientation;
    .locals 1

    const-class v0, Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    return-object p0
.end method

.method public static values()[Lcom/mopub/common/util/DeviceUtils$ForceOrientation;
    .locals 1

    sget-object v0, Lcom/mopub/common/util/DeviceUtils$ForceOrientation;->b:[Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    invoke-virtual {v0}, [Lcom/mopub/common/util/DeviceUtils$ForceOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    return-object v0
.end method
