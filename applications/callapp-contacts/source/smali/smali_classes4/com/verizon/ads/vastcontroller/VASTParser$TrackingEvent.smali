.class public Lcom/verizon/ads/vastcontroller/VASTParser$TrackingEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/vastcontroller/VASTParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrackingEvent"
.end annotation


# instance fields
.field public final event:Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;

.field public final url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;Ljava/lang/String;)V
    .locals 0

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    iput-object p1, p0, Lcom/verizon/ads/vastcontroller/VASTParser$TrackingEvent;->event:Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;

    .line 276
    iput-object p2, p0, Lcom/verizon/ads/vastcontroller/VASTParser$TrackingEvent;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 286
    :cond_0
    instance-of v1, p1, Lcom/verizon/ads/vastcontroller/VASTParser$TrackingEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 290
    :cond_1
    check-cast p1, Lcom/verizon/ads/vastcontroller/VASTParser$TrackingEvent;

    .line 292
    iget-object v1, p0, Lcom/verizon/ads/vastcontroller/VASTParser$TrackingEvent;->event:Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;

    iget-object v3, p1, Lcom/verizon/ads/vastcontroller/VASTParser$TrackingEvent;->event:Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/verizon/ads/vastcontroller/VASTParser$TrackingEvent;->url:Ljava/lang/String;

    iget-object p1, p1, Lcom/verizon/ads/vastcontroller/VASTParser$TrackingEvent;->url:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 2

    .line 299
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTParser$TrackingEvent;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 300
    iget-object v1, p0, Lcom/verizon/ads/vastcontroller/VASTParser$TrackingEvent;->event:Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;

    invoke-virtual {v1}, Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TrackingEvent:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "event:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/verizon/ads/vastcontroller/VASTParser$TrackingEvent;->event:Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 311
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "url:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTParser$TrackingEvent;->url:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
