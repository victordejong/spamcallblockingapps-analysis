.class final Lcom/mopub/common/e;
.super Lcom/mopub/common/ViewabilityTracker;
.source "SourceFile"


# instance fields
.field private e:Lcom/iab/omid/library/mopub/adsession/a/b;


# direct methods
.method private constructor <init>(Lcom/iab/omid/library/mopub/adsession/b;Lcom/iab/omid/library/mopub/adsession/a;Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1000
    move-object v0, p1

    check-cast v0, Lcom/iab/omid/library/mopub/adsession/k;

    const-string v1, "AdSession is null"

    invoke-static {p1, v1}, Lcom/iab/omid/library/mopub/d/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3000
    iget-object v1, v0, Lcom/iab/omid/library/mopub/adsession/k;->a:Lcom/iab/omid/library/mopub/adsession/AdSessionConfiguration;

    invoke-virtual {v1}, Lcom/iab/omid/library/mopub/adsession/AdSessionConfiguration;->isNativeMediaEventsOwner()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5000
    iget-boolean v1, v0, Lcom/iab/omid/library/mopub/adsession/k;->d:Z

    if-nez v1, :cond_1

    .line 1000
    invoke-static {v0}, Lcom/iab/omid/library/mopub/d/d;->a(Lcom/iab/omid/library/mopub/adsession/k;)V

    .line 7000
    iget-object v1, v0, Lcom/iab/omid/library/mopub/adsession/k;->c:Lcom/iab/omid/library/mopub/f/a;

    .line 8000
    iget-object v1, v1, Lcom/iab/omid/library/mopub/f/a;->c:Lcom/iab/omid/library/mopub/adsession/a/b;

    if-nez v1, :cond_0

    .line 1000
    new-instance v1, Lcom/iab/omid/library/mopub/adsession/a/b;

    invoke-direct {v1, v0}, Lcom/iab/omid/library/mopub/adsession/a/b;-><init>(Lcom/iab/omid/library/mopub/adsession/k;)V

    .line 9000
    iget-object v0, v0, Lcom/iab/omid/library/mopub/adsession/k;->c:Lcom/iab/omid/library/mopub/f/a;

    .line 10000
    iput-object v1, v0, Lcom/iab/omid/library/mopub/f/a;->c:Lcom/iab/omid/library/mopub/adsession/a/b;

    .line 58
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/mopub/common/e;-><init>(Lcom/iab/omid/library/mopub/adsession/b;Lcom/iab/omid/library/mopub/adsession/a;Landroid/view/View;Lcom/iab/omid/library/mopub/adsession/a/b;)V

    return-void

    .line 6000
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "MediaEvents already exists for AdSession"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4000
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "AdSession is started"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2000
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot create MediaEvents for JavaScript AdSession"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor <init>(Lcom/iab/omid/library/mopub/adsession/b;Lcom/iab/omid/library/mopub/adsession/a;Landroid/view/View;Lcom/iab/omid/library/mopub/adsession/a/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/mopub/common/ViewabilityTracker;-><init>(Lcom/iab/omid/library/mopub/adsession/b;Lcom/iab/omid/library/mopub/adsession/a;Landroid/view/View;)V

    .line 78
    iput-object p4, p0, Lcom/mopub/common/e;->e:Lcom/iab/omid/library/mopub/adsession/a/b;

    .line 79
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "ViewabilityTrackerVideo() sesseionId:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/mopub/common/e;->d:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mopub/common/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method static b(Landroid/view/View;Ljava/util/Set;)Lcom/mopub/common/ViewabilityTracker;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Set<",
            "Lcom/mopub/common/ViewabilityVendor;",
            ">;)",
            "Lcom/mopub/common/ViewabilityTracker;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 37
    sget-object v0, Lcom/iab/omid/library/mopub/adsession/e;->VIDEO:Lcom/iab/omid/library/mopub/adsession/e;

    sget-object v1, Lcom/iab/omid/library/mopub/adsession/h;->NATIVE:Lcom/iab/omid/library/mopub/adsession/h;

    invoke-static {v0, p1, v1}, Lcom/mopub/common/e;->a(Lcom/iab/omid/library/mopub/adsession/e;Ljava/util/Set;Lcom/iab/omid/library/mopub/adsession/h;)Lcom/iab/omid/library/mopub/adsession/b;

    move-result-object p1

    .line 42
    invoke-static {p1}, Lcom/iab/omid/library/mopub/adsession/a;->a(Lcom/iab/omid/library/mopub/adsession/b;)Lcom/iab/omid/library/mopub/adsession/a;

    move-result-object v0

    .line 43
    new-instance v1, Lcom/mopub/common/e;

    invoke-direct {v1, p1, v0, p0}, Lcom/mopub/common/e;-><init>(Lcom/iab/omid/library/mopub/adsession/b;Lcom/iab/omid/library/mopub/adsession/a;Landroid/view/View;)V

    return-object v1
.end method


# virtual methods
.method public final startTracking()V
    .locals 2

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ViewabilityTrackerVideo.startTracking() sesseionId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/mopub/common/e;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/e;->a(Ljava/lang/String;)V

    .line 85
    sget-object v0, Lcom/mopub/common/ViewabilityTracker$STATE;->STARTED_VIDEO:Lcom/mopub/common/ViewabilityTracker$STATE;

    invoke-virtual {p0, v0}, Lcom/mopub/common/e;->a(Lcom/mopub/common/ViewabilityTracker$STATE;)V

    return-void
.end method

.method public final trackVideo(Lcom/mopub/common/VideoEvent;)V
    .locals 3

    .line 100
    invoke-virtual {p0}, Lcom/mopub/common/e;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "trackVideo() skip event: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mopub/common/VideoEvent;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mopub/common/e;->a(Ljava/lang/String;)V

    return-void

    .line 105
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "trackVideo() event: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mopub/common/VideoEvent;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mopub/common/e;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/e;->a(Ljava/lang/String;)V

    .line 106
    sget-object v0, Lcom/mopub/common/e$1;->a:[I

    invoke-virtual {p1}, Lcom/mopub/common/VideoEvent;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 154
    :pswitch_0
    iget-object p1, p0, Lcom/mopub/common/e;->e:Lcom/iab/omid/library/mopub/adsession/a/b;

    .line 34000
    iget-object v0, p1, Lcom/iab/omid/library/mopub/adsession/a/b;->a:Lcom/iab/omid/library/mopub/adsession/k;

    invoke-static {v0}, Lcom/iab/omid/library/mopub/d/d;->b(Lcom/iab/omid/library/mopub/adsession/k;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "mediaPlayerVolume"

    invoke-static {v0, v2, v1}, Lcom/iab/omid/library/mopub/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/iab/omid/library/mopub/b/f;->a()Lcom/iab/omid/library/mopub/b/f;

    move-result-object v1

    .line 36000
    iget v1, v1, Lcom/iab/omid/library/mopub/b/f;->a:F

    .line 34000
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "deviceVolume"

    invoke-static {v0, v2, v1}, Lcom/iab/omid/library/mopub/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/iab/omid/library/mopub/adsession/a/b;->a:Lcom/iab/omid/library/mopub/adsession/k;

    .line 37000
    iget-object p1, p1, Lcom/iab/omid/library/mopub/adsession/k;->c:Lcom/iab/omid/library/mopub/f/a;

    const-string v1, "volumeChange"

    .line 34000
    invoke-virtual {p1, v1, v0}, Lcom/iab/omid/library/mopub/f/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 151
    :pswitch_1
    iget-object p1, p0, Lcom/mopub/common/e;->e:Lcom/iab/omid/library/mopub/adsession/a/b;

    sget-object v0, Lcom/iab/omid/library/mopub/adsession/a/c;->NORMAL:Lcom/iab/omid/library/mopub/adsession/a/c;

    invoke-virtual {p1, v0}, Lcom/iab/omid/library/mopub/adsession/a/b;->a(Lcom/iab/omid/library/mopub/adsession/a/c;)V

    return-void

    .line 148
    :pswitch_2
    iget-object p1, p0, Lcom/mopub/common/e;->e:Lcom/iab/omid/library/mopub/adsession/a/b;

    sget-object v0, Lcom/iab/omid/library/mopub/adsession/a/c;->FULLSCREEN:Lcom/iab/omid/library/mopub/adsession/a/c;

    invoke-virtual {p1, v0}, Lcom/iab/omid/library/mopub/adsession/a/b;->a(Lcom/iab/omid/library/mopub/adsession/a/c;)V

    return-void

    .line 144
    :pswitch_3
    iget-object p1, p0, Lcom/mopub/common/e;->e:Lcom/iab/omid/library/mopub/adsession/a/b;

    .line 32000
    iget-object v0, p1, Lcom/iab/omid/library/mopub/adsession/a/b;->a:Lcom/iab/omid/library/mopub/adsession/k;

    invoke-static {v0}, Lcom/iab/omid/library/mopub/d/d;->b(Lcom/iab/omid/library/mopub/adsession/k;)V

    iget-object p1, p1, Lcom/iab/omid/library/mopub/adsession/a/b;->a:Lcom/iab/omid/library/mopub/adsession/k;

    .line 33000
    iget-object p1, p1, Lcom/iab/omid/library/mopub/adsession/k;->c:Lcom/iab/omid/library/mopub/f/a;

    const-string v0, "complete"

    .line 32000
    invoke-virtual {p1, v0}, Lcom/iab/omid/library/mopub/f/a;->a(Ljava/lang/String;)V

    return-void

    .line 141
    :pswitch_4
    iget-object p1, p0, Lcom/mopub/common/e;->e:Lcom/iab/omid/library/mopub/adsession/a/b;

    .line 30000
    iget-object v0, p1, Lcom/iab/omid/library/mopub/adsession/a/b;->a:Lcom/iab/omid/library/mopub/adsession/k;

    invoke-static {v0}, Lcom/iab/omid/library/mopub/d/d;->b(Lcom/iab/omid/library/mopub/adsession/k;)V

    iget-object p1, p1, Lcom/iab/omid/library/mopub/adsession/a/b;->a:Lcom/iab/omid/library/mopub/adsession/k;

    .line 31000
    iget-object p1, p1, Lcom/iab/omid/library/mopub/adsession/k;->c:Lcom/iab/omid/library/mopub/f/a;

    const-string v0, "thirdQuartile"

    .line 30000
    invoke-virtual {p1, v0}, Lcom/iab/omid/library/mopub/f/a;->a(Ljava/lang/String;)V

    return-void

    .line 138
    :pswitch_5
    iget-object p1, p0, Lcom/mopub/common/e;->e:Lcom/iab/omid/library/mopub/adsession/a/b;

    .line 28000
    iget-object v0, p1, Lcom/iab/omid/library/mopub/adsession/a/b;->a:Lcom/iab/omid/library/mopub/adsession/k;

    invoke-static {v0}, Lcom/iab/omid/library/mopub/d/d;->b(Lcom/iab/omid/library/mopub/adsession/k;)V

    iget-object p1, p1, Lcom/iab/omid/library/mopub/adsession/a/b;->a:Lcom/iab/omid/library/mopub/adsession/k;

    .line 29000
    iget-object p1, p1, Lcom/iab/omid/library/mopub/adsession/k;->c:Lcom/iab/omid/library/mopub/f/a;

    const-string v0, "midpoint"

    .line 28000
    invoke-virtual {p1, v0}, Lcom/iab/omid/library/mopub/f/a;->a(Ljava/lang/String;)V

    return-void

    .line 135
    :pswitch_6
    iget-object p1, p0, Lcom/mopub/common/e;->e:Lcom/iab/omid/library/mopub/adsession/a/b;

    .line 26000
    iget-object v0, p1, Lcom/iab/omid/library/mopub/adsession/a/b;->a:Lcom/iab/omid/library/mopub/adsession/k;

    invoke-static {v0}, Lcom/iab/omid/library/mopub/d/d;->b(Lcom/iab/omid/library/mopub/adsession/k;)V

    iget-object p1, p1, Lcom/iab/omid/library/mopub/adsession/a/b;->a:Lcom/iab/omid/library/mopub/adsession/k;

    .line 27000
    iget-object p1, p1, Lcom/iab/omid/library/mopub/adsession/k;->c:Lcom/iab/omid/library/mopub/f/a;

    const-string v0, "firstQuartile"

    .line 26000
    invoke-virtual {p1, v0}, Lcom/iab/omid/library/mopub/f/a;->a(Ljava/lang/String;)V

    return-void

    .line 131
    :pswitch_7
    iget-object p1, p0, Lcom/mopub/common/e;->e:Lcom/iab/omid/library/mopub/adsession/a/b;

    .line 24000
    iget-object v0, p1, Lcom/iab/omid/library/mopub/adsession/a/b;->a:Lcom/iab/omid/library/mopub/adsession/k;

    invoke-static {v0}, Lcom/iab/omid/library/mopub/d/d;->b(Lcom/iab/omid/library/mopub/adsession/k;)V

    iget-object p1, p1, Lcom/iab/omid/library/mopub/adsession/a/b;->a:Lcom/iab/omid/library/mopub/adsession/k;

    .line 25000
    iget-object p1, p1, Lcom/iab/omid/library/mopub/adsession/k;->c:Lcom/iab/omid/library/mopub/f/a;

    const-string v0, "bufferFinish"

    .line 24000
    invoke-virtual {p1, v0}, Lcom/iab/omid/library/mopub/f/a;->a(Ljava/lang/String;)V

    return-void

    .line 128
    :pswitch_8
    iget-object p1, p0, Lcom/mopub/common/e;->e:Lcom/iab/omid/library/mopub/adsession/a/b;

    .line 22000
    iget-object v0, p1, Lcom/iab/omid/library/mopub/adsession/a/b;->a:Lcom/iab/omid/library/mopub/adsession/k;

    invoke-static {v0}, Lcom/iab/omid/library/mopub/d/d;->b(Lcom/iab/omid/library/mopub/adsession/k;)V

    iget-object p1, p1, Lcom/iab/omid/library/mopub/adsession/a/b;->a:Lcom/iab/omid/library/mopub/adsession/k;

    .line 23000
    iget-object p1, p1, Lcom/iab/omid/library/mopub/adsession/k;->c:Lcom/iab/omid/library/mopub/f/a;

    const-string v0, "bufferStart"

    .line 22000
    invoke-virtual {p1, v0}, Lcom/iab/omid/library/mopub/f/a;->a(Ljava/lang/String;)V

    return-void

    .line 124
    :pswitch_9
    iget-object p1, p0, Lcom/mopub/common/e;->e:Lcom/iab/omid/library/mopub/adsession/a/b;

    invoke-virtual {p1}, Lcom/iab/omid/library/mopub/adsession/a/b;->a()V

    return-void

    .line 121
    :pswitch_a
    iget-object p1, p0, Lcom/mopub/common/e;->e:Lcom/iab/omid/library/mopub/adsession/a/b;

    sget-object v0, Lcom/iab/omid/library/mopub/adsession/a/a;->CLICK:Lcom/iab/omid/library/mopub/adsession/a/a;

    const-string v1, "InteractionType is null"

    .line 20000
    invoke-static {v0, v1}, Lcom/iab/omid/library/mopub/d/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/iab/omid/library/mopub/adsession/a/b;->a:Lcom/iab/omid/library/mopub/adsession/k;

    invoke-static {v1}, Lcom/iab/omid/library/mopub/d/d;->b(Lcom/iab/omid/library/mopub/adsession/k;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "interactionType"

    invoke-static {v1, v2, v0}, Lcom/iab/omid/library/mopub/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/iab/omid/library/mopub/adsession/a/b;->a:Lcom/iab/omid/library/mopub/adsession/k;

    .line 21000
    iget-object p1, p1, Lcom/iab/omid/library/mopub/adsession/k;->c:Lcom/iab/omid/library/mopub/f/a;

    const-string v0, "adUserInteraction"

    .line 20000
    invoke-virtual {p1, v0, v1}, Lcom/iab/omid/library/mopub/f/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 117
    :pswitch_b
    iget-object p1, p0, Lcom/mopub/common/e;->e:Lcom/iab/omid/library/mopub/adsession/a/b;

    invoke-virtual {p1}, Lcom/iab/omid/library/mopub/adsession/a/b;->a()V

    return-void

    .line 114
    :pswitch_c
    iget-object p1, p0, Lcom/mopub/common/e;->e:Lcom/iab/omid/library/mopub/adsession/a/b;

    .line 18000
    iget-object v0, p1, Lcom/iab/omid/library/mopub/adsession/a/b;->a:Lcom/iab/omid/library/mopub/adsession/k;

    invoke-static {v0}, Lcom/iab/omid/library/mopub/d/d;->b(Lcom/iab/omid/library/mopub/adsession/k;)V

    iget-object p1, p1, Lcom/iab/omid/library/mopub/adsession/a/b;->a:Lcom/iab/omid/library/mopub/adsession/k;

    .line 19000
    iget-object p1, p1, Lcom/iab/omid/library/mopub/adsession/k;->c:Lcom/iab/omid/library/mopub/f/a;

    const-string v0, "resume"

    .line 18000
    invoke-virtual {p1, v0}, Lcom/iab/omid/library/mopub/f/a;->a(Ljava/lang/String;)V

    return-void

    .line 111
    :pswitch_d
    iget-object p1, p0, Lcom/mopub/common/e;->e:Lcom/iab/omid/library/mopub/adsession/a/b;

    .line 16000
    iget-object v0, p1, Lcom/iab/omid/library/mopub/adsession/a/b;->a:Lcom/iab/omid/library/mopub/adsession/k;

    invoke-static {v0}, Lcom/iab/omid/library/mopub/d/d;->b(Lcom/iab/omid/library/mopub/adsession/k;)V

    iget-object p1, p1, Lcom/iab/omid/library/mopub/adsession/a/b;->a:Lcom/iab/omid/library/mopub/adsession/k;

    .line 17000
    iget-object p1, p1, Lcom/iab/omid/library/mopub/adsession/k;->c:Lcom/iab/omid/library/mopub/f/a;

    const-string v0, "pause"

    .line 16000
    invoke-virtual {p1, v0}, Lcom/iab/omid/library/mopub/f/a;->a(Ljava/lang/String;)V

    return-void

    .line 108
    :pswitch_e
    invoke-virtual {p0}, Lcom/mopub/common/e;->trackImpression()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final videoPrepared(F)V
    .locals 3

    .line 90
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const-string v1, "videoPrepared() duration= "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/e;->a(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/mopub/common/e;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "videoPrepared() not tracking yet: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/mopub/common/e;->d:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mopub/common/e;->a(Ljava/lang/String;)V

    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/mopub/common/e;->e:Lcom/iab/omid/library/mopub/adsession/a/b;

    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-lez v1, :cond_1

    .line 11000
    iget-object v1, v0, Lcom/iab/omid/library/mopub/adsession/a/b;->a:Lcom/iab/omid/library/mopub/adsession/k;

    invoke-static {v1}, Lcom/iab/omid/library/mopub/d/d;->b(Lcom/iab/omid/library/mopub/adsession/k;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v2, "duration"

    invoke-static {v1, v2, p1}, Lcom/iab/omid/library/mopub/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v2, "mediaPlayerVolume"

    invoke-static {v1, v2, p1}, Lcom/iab/omid/library/mopub/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/iab/omid/library/mopub/b/f;->a()Lcom/iab/omid/library/mopub/b/f;

    move-result-object p1

    .line 14000
    iget p1, p1, Lcom/iab/omid/library/mopub/b/f;->a:F

    .line 11000
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v2, "deviceVolume"

    invoke-static {v1, v2, p1}, Lcom/iab/omid/library/mopub/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, v0, Lcom/iab/omid/library/mopub/adsession/a/b;->a:Lcom/iab/omid/library/mopub/adsession/k;

    .line 15000
    iget-object p1, p1, Lcom/iab/omid/library/mopub/adsession/k;->c:Lcom/iab/omid/library/mopub/f/a;

    const-string v0, "start"

    .line 11000
    invoke-virtual {p1, v0, v1}, Lcom/iab/omid/library/mopub/f/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 12000
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid Media duration"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
