.class public final enum Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider$POBHTMLAdEventType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "POBHTMLAdEventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider$POBHTMLAdEventType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ACCEPT_INVITATION:Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider$POBHTMLAdEventType;

.field public static final enum CLICK:Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider$POBHTMLAdEventType;

.field public static final enum IMPRESSION:Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider$POBHTMLAdEventType;

.field public static final enum LOADED:Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider$POBHTMLAdEventType;

.field private static final synthetic a:[Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider$POBHTMLAdEventType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider$POBHTMLAdEventType;

    const-string v1, "LOADED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider$POBHTMLAdEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider$POBHTMLAdEventType;->LOADED:Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider$POBHTMLAdEventType;

    new-instance v1, Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider$POBHTMLAdEventType;

    const-string v3, "IMPRESSION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider$POBHTMLAdEventType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider$POBHTMLAdEventType;->IMPRESSION:Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider$POBHTMLAdEventType;

    new-instance v3, Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider$POBHTMLAdEventType;

    const-string v5, "CLICK"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider$POBHTMLAdEventType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider$POBHTMLAdEventType;->CLICK:Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider$POBHTMLAdEventType;

    new-instance v5, Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider$POBHTMLAdEventType;

    const-string v7, "ACCEPT_INVITATION"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider$POBHTMLAdEventType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider$POBHTMLAdEventType;->ACCEPT_INVITATION:Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider$POBHTMLAdEventType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider$POBHTMLAdEventType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider$POBHTMLAdEventType;->a:[Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider$POBHTMLAdEventType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider$POBHTMLAdEventType;
    .locals 1

    const-class v0, Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider$POBHTMLAdEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider$POBHTMLAdEventType;

    return-object p0
.end method

.method public static values()[Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider$POBHTMLAdEventType;
    .locals 1

    sget-object v0, Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider$POBHTMLAdEventType;->a:[Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider$POBHTMLAdEventType;

    invoke-virtual {v0}, [Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider$POBHTMLAdEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider$POBHTMLAdEventType;

    return-object v0
.end method
