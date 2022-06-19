.class Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor;->createComparator(Lnet/pubnative/lite/sdk/vpaid/models/vpaid/AdSpotDimensions;)Ljava/util/Comparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lnet/pubnative/lite/sdk/vpaid/models/vast/MediaFile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor;

.field final synthetic val$adSpotDimensions:Lnet/pubnative/lite/sdk/vpaid/models/vpaid/AdSpotDimensions;


# direct methods
.method constructor <init>(Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor;Lnet/pubnative/lite/sdk/vpaid/models/vpaid/AdSpotDimensions;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor$2;->this$0:Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor;

    iput-object p2, p0, Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor$2;->val$adSpotDimensions:Lnet/pubnative/lite/sdk/vpaid/models/vpaid/AdSpotDimensions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 304
    check-cast p1, Lnet/pubnative/lite/sdk/vpaid/models/vast/MediaFile;

    check-cast p2, Lnet/pubnative/lite/sdk/vpaid/models/vast/MediaFile;

    invoke-virtual {p0, p1, p2}, Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor$2;->compare(Lnet/pubnative/lite/sdk/vpaid/models/vast/MediaFile;Lnet/pubnative/lite/sdk/vpaid/models/vast/MediaFile;)I

    move-result p1

    return p1
.end method

.method public compare(Lnet/pubnative/lite/sdk/vpaid/models/vast/MediaFile;Lnet/pubnative/lite/sdk/vpaid/models/vast/MediaFile;)I
    .locals 2

    .line 307
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor$2;->val$adSpotDimensions:Lnet/pubnative/lite/sdk/vpaid/models/vpaid/AdSpotDimensions;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/models/vpaid/AdSpotDimensions;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/vpaid/models/vast/MediaFile;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor$2;->val$adSpotDimensions:Lnet/pubnative/lite/sdk/vpaid/models/vpaid/AdSpotDimensions;

    .line 308
    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/vpaid/models/vpaid/AdSpotDimensions;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/vpaid/models/vast/MediaFile;->getHeight()I

    move-result p1

    sub-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    add-int/2addr v0, p1

    .line 309
    iget-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor$2;->val$adSpotDimensions:Lnet/pubnative/lite/sdk/vpaid/models/vpaid/AdSpotDimensions;

    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/vpaid/models/vpaid/AdSpotDimensions;->getWidth()I

    move-result p1

    invoke-virtual {p2}, Lnet/pubnative/lite/sdk/vpaid/models/vast/MediaFile;->getWidth()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget-object v1, p0, Lnet/pubnative/lite/sdk/vpaid/response/VastProcessor$2;->val$adSpotDimensions:Lnet/pubnative/lite/sdk/vpaid/models/vpaid/AdSpotDimensions;

    .line 310
    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/vpaid/models/vpaid/AdSpotDimensions;->getHeight()I

    move-result v1

    invoke-virtual {p2}, Lnet/pubnative/lite/sdk/vpaid/models/vast/MediaFile;->getHeight()I

    move-result p2

    sub-int/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result p2

    add-int/2addr p1, p2

    if-ge v0, p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-ne v0, p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
