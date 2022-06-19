.class public Lcom/verizon/ads/vastcontroller/VASTParser$ProgressEvent;
.super Lcom/verizon/ads/vastcontroller/VASTParser$TrackingEvent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/vastcontroller/VASTParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProgressEvent"
.end annotation


# instance fields
.field public final offset:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 327
    sget-object v0, Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;->progress:Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;

    invoke-direct {p0, v0, p1}, Lcom/verizon/ads/vastcontroller/VASTParser$TrackingEvent;-><init>(Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;Ljava/lang/String;)V

    .line 329
    iput-object p2, p0, Lcom/verizon/ads/vastcontroller/VASTParser$ProgressEvent;->offset:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 339
    :cond_0
    instance-of v0, p1, Lcom/verizon/ads/vastcontroller/VASTParser$ProgressEvent;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 342
    :cond_1
    invoke-super {p0, p1}, Lcom/verizon/ads/vastcontroller/VASTParser$TrackingEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 346
    :cond_2
    check-cast p1, Lcom/verizon/ads/vastcontroller/VASTParser$ProgressEvent;

    .line 348
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTParser$ProgressEvent;->offset:Ljava/lang/String;

    iget-object p1, p1, Lcom/verizon/ads/vastcontroller/VASTParser$ProgressEvent;->offset:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 355
    invoke-super {p0}, Lcom/verizon/ads/vastcontroller/VASTParser$TrackingEvent;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 356
    iget-object v1, p0, Lcom/verizon/ads/vastcontroller/VASTParser$ProgressEvent;->offset:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ProgressEvent:["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/verizon/ads/vastcontroller/VASTParser$TrackingEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "offset:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTParser$ProgressEvent;->offset:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 367
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
