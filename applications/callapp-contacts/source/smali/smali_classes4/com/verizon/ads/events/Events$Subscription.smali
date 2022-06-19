.class final Lcom/verizon/ads/events/Events$Subscription;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/events/Events;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Subscription"
.end annotation


# instance fields
.field final a:Lcom/verizon/ads/events/EventReceiver;

.field final b:Lcom/verizon/ads/events/EventMatcher;


# direct methods
.method constructor <init>(Lcom/verizon/ads/events/EventReceiver;Lcom/verizon/ads/events/EventMatcher;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/verizon/ads/events/Events$Subscription;->a:Lcom/verizon/ads/events/EventReceiver;

    .line 50
    iput-object p2, p0, Lcom/verizon/ads/events/Events$Subscription;->b:Lcom/verizon/ads/events/EventMatcher;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 68
    :cond_0
    instance-of v1, p1, Lcom/verizon/ads/events/Events$Subscription;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 72
    :cond_1
    check-cast p1, Lcom/verizon/ads/events/Events$Subscription;

    .line 74
    iget-object v1, p0, Lcom/verizon/ads/events/Events$Subscription;->a:Lcom/verizon/ads/events/EventReceiver;

    iget-object v3, p1, Lcom/verizon/ads/events/Events$Subscription;->a:Lcom/verizon/ads/events/EventReceiver;

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/verizon/ads/events/Events$Subscription;->b:Lcom/verizon/ads/events/EventMatcher;

    iget-object p1, p1, Lcom/verizon/ads/events/Events$Subscription;->b:Lcom/verizon/ads/events/EventMatcher;

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/verizon/ads/events/Events$Subscription;->a:Lcom/verizon/ads/events/EventReceiver;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 83
    iget-object v1, p0, Lcom/verizon/ads/events/Events$Subscription;->b:Lcom/verizon/ads/events/EventMatcher;

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 84
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "receiver: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/verizon/ads/events/Events$Subscription;->a:Lcom/verizon/ads/events/EventReceiver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", matcher: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/verizon/ads/events/Events$Subscription;->b:Lcom/verizon/ads/events/EventMatcher;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
