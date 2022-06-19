.class public final Lnet/pubnative/lite/sdk/mraid/properties/MRAIDOrientationProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FORCE_ORIENTATION_LANDSCAPE:I = 0x1

.field public static final FORCE_ORIENTATION_NONE:I = 0x2

.field public static final FORCE_ORIENTATION_PORTRAIT:I


# instance fields
.field public allowOrientationChange:Z

.field public forceOrientation:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 44
    invoke-direct {p0, v0, v1}, Lnet/pubnative/lite/sdk/mraid/properties/MRAIDOrientationProperties;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-boolean p1, p0, Lnet/pubnative/lite/sdk/mraid/properties/MRAIDOrientationProperties;->allowOrientationChange:Z

    .line 49
    iput p2, p0, Lnet/pubnative/lite/sdk/mraid/properties/MRAIDOrientationProperties;->forceOrientation:I

    return-void
.end method

.method public static forceOrientationFromString(Ljava/lang/String;)I
    .locals 3

    const-string v0, "portrait"

    const-string v1, "landscape"

    const-string v2, "none"

    .line 53
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 54
    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0
.end method


# virtual methods
.method public final forceOrientationString()Ljava/lang/String;
    .locals 2

    .line 63
    iget v0, p0, Lnet/pubnative/lite/sdk/mraid/properties/MRAIDOrientationProperties;->forceOrientation:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string v0, "error"

    return-object v0

    :cond_0
    const-string v0, "none"

    return-object v0

    :cond_1
    const-string v0, "landscape"

    return-object v0

    :cond_2
    const-string v0, "portrait"

    return-object v0
.end method
