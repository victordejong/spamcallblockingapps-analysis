.class public final enum Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoAdErrorType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "POBVideoAdErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoAdErrorType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum GENERIC:Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoAdErrorType;

.field public static final enum VIDEO:Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoAdErrorType;

.field private static final synthetic a:[Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoAdErrorType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoAdErrorType;

    const-string v1, "GENERIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoAdErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoAdErrorType;->GENERIC:Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoAdErrorType;

    new-instance v1, Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoAdErrorType;

    const-string v3, "VIDEO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoAdErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoAdErrorType;->VIDEO:Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoAdErrorType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoAdErrorType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoAdErrorType;->a:[Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoAdErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoAdErrorType;
    .locals 1

    const-class v0, Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoAdErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoAdErrorType;

    return-object p0
.end method

.method public static values()[Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoAdErrorType;
    .locals 1

    sget-object v0, Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoAdErrorType;->a:[Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoAdErrorType;

    invoke-virtual {v0}, [Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoAdErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoAdErrorType;

    return-object v0
.end method
