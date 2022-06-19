.class public final Lcom/iab/omid/library/verizonmedia/adsession/a/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/iab/omid/library/verizonmedia/adsession/k;


# direct methods
.method private constructor <init>(Lcom/iab/omid/library/verizonmedia/adsession/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iab/omid/library/verizonmedia/adsession/a/a;->a:Lcom/iab/omid/library/verizonmedia/adsession/k;

    return-void
.end method

.method public static a(Lcom/iab/omid/library/verizonmedia/adsession/b;)Lcom/iab/omid/library/verizonmedia/adsession/a/a;
    .locals 2

    move-object v0, p0

    check-cast v0, Lcom/iab/omid/library/verizonmedia/adsession/k;

    const-string v1, "AdSession is null"

    invoke-static {p0, v1}, Lcom/iab/omid/library/verizonmedia/d/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2000
    iget-object p0, v0, Lcom/iab/omid/library/verizonmedia/adsession/k;->a:Lcom/iab/omid/library/verizonmedia/adsession/AdSessionConfiguration;

    invoke-virtual {p0}, Lcom/iab/omid/library/verizonmedia/adsession/AdSessionConfiguration;->isNativeMediaEventsOwner()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 4000
    iget-boolean p0, v0, Lcom/iab/omid/library/verizonmedia/adsession/k;->d:Z

    if-nez p0, :cond_1

    .line 3000
    invoke-static {v0}, Lcom/iab/omid/library/verizonmedia/d/d;->a(Lcom/iab/omid/library/verizonmedia/adsession/k;)V

    .line 6000
    iget-object p0, v0, Lcom/iab/omid/library/verizonmedia/adsession/k;->c:Lcom/iab/omid/library/verizonmedia/f/a;

    .line 7000
    iget-object p0, p0, Lcom/iab/omid/library/verizonmedia/f/a;->c:Lcom/iab/omid/library/verizonmedia/adsession/a/a;

    if-nez p0, :cond_0

    .line 5000
    new-instance p0, Lcom/iab/omid/library/verizonmedia/adsession/a/a;

    invoke-direct {p0, v0}, Lcom/iab/omid/library/verizonmedia/adsession/a/a;-><init>(Lcom/iab/omid/library/verizonmedia/adsession/k;)V

    .line 8000
    iget-object v0, v0, Lcom/iab/omid/library/verizonmedia/adsession/k;->c:Lcom/iab/omid/library/verizonmedia/f/a;

    .line 9000
    iput-object p0, v0, Lcom/iab/omid/library/verizonmedia/f/a;->c:Lcom/iab/omid/library/verizonmedia/adsession/a/a;

    return-object p0

    .line 5000
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "MediaEvents already exists for AdSession"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3000
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "AdSession is started"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1000
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot create MediaEvents for JavaScript AdSession"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static b(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p0, p0, v0

    if-gtz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid Media volume"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/iab/omid/library/verizonmedia/adsession/a/a;->a:Lcom/iab/omid/library/verizonmedia/adsession/k;

    invoke-static {v0}, Lcom/iab/omid/library/verizonmedia/d/d;->b(Lcom/iab/omid/library/verizonmedia/adsession/k;)V

    iget-object v0, p0, Lcom/iab/omid/library/verizonmedia/adsession/a/a;->a:Lcom/iab/omid/library/verizonmedia/adsession/k;

    .line 13000
    iget-object v0, v0, Lcom/iab/omid/library/verizonmedia/adsession/k;->c:Lcom/iab/omid/library/verizonmedia/f/a;

    const-string v1, "firstQuartile"

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/verizonmedia/f/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(F)V
    .locals 2

    invoke-static {p1}, Lcom/iab/omid/library/verizonmedia/adsession/a/a;->b(F)V

    iget-object v0, p0, Lcom/iab/omid/library/verizonmedia/adsession/a/a;->a:Lcom/iab/omid/library/verizonmedia/adsession/k;

    invoke-static {v0}, Lcom/iab/omid/library/verizonmedia/d/d;->b(Lcom/iab/omid/library/verizonmedia/adsession/k;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v1, "mediaPlayerVolume"

    invoke-static {v0, v1, p1}, Lcom/iab/omid/library/verizonmedia/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/iab/omid/library/verizonmedia/b/f;->a()Lcom/iab/omid/library/verizonmedia/b/f;

    move-result-object p1

    .line 20000
    iget p1, p1, Lcom/iab/omid/library/verizonmedia/b/f;->a:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v1, "deviceVolume"

    invoke-static {v0, v1, p1}, Lcom/iab/omid/library/verizonmedia/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/iab/omid/library/verizonmedia/adsession/a/a;->a:Lcom/iab/omid/library/verizonmedia/adsession/k;

    .line 21000
    iget-object p1, p1, Lcom/iab/omid/library/verizonmedia/adsession/k;->c:Lcom/iab/omid/library/verizonmedia/f/a;

    const-string/jumbo v1, "volumeChange"

    invoke-virtual {p1, v1, v0}, Lcom/iab/omid/library/verizonmedia/f/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final a(FF)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    .line 10000
    invoke-static {p2}, Lcom/iab/omid/library/verizonmedia/adsession/a/a;->b(F)V

    iget-object v0, p0, Lcom/iab/omid/library/verizonmedia/adsession/a/a;->a:Lcom/iab/omid/library/verizonmedia/adsession/k;

    invoke-static {v0}, Lcom/iab/omid/library/verizonmedia/d/d;->b(Lcom/iab/omid/library/verizonmedia/adsession/k;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v1, "duration"

    invoke-static {v0, v1, p1}, Lcom/iab/omid/library/verizonmedia/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string p2, "mediaPlayerVolume"

    invoke-static {v0, p2, p1}, Lcom/iab/omid/library/verizonmedia/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/iab/omid/library/verizonmedia/b/f;->a()Lcom/iab/omid/library/verizonmedia/b/f;

    move-result-object p1

    .line 11000
    iget p1, p1, Lcom/iab/omid/library/verizonmedia/b/f;->a:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string p2, "deviceVolume"

    invoke-static {v0, p2, p1}, Lcom/iab/omid/library/verizonmedia/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/iab/omid/library/verizonmedia/adsession/a/a;->a:Lcom/iab/omid/library/verizonmedia/adsession/k;

    .line 12000
    iget-object p1, p1, Lcom/iab/omid/library/verizonmedia/adsession/k;->c:Lcom/iab/omid/library/verizonmedia/f/a;

    const-string p2, "start"

    invoke-virtual {p1, p2, v0}, Lcom/iab/omid/library/verizonmedia/f/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 10000
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid Media duration"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/iab/omid/library/verizonmedia/adsession/a/a;->a:Lcom/iab/omid/library/verizonmedia/adsession/k;

    invoke-static {v0}, Lcom/iab/omid/library/verizonmedia/d/d;->b(Lcom/iab/omid/library/verizonmedia/adsession/k;)V

    iget-object v0, p0, Lcom/iab/omid/library/verizonmedia/adsession/a/a;->a:Lcom/iab/omid/library/verizonmedia/adsession/k;

    .line 14000
    iget-object v0, v0, Lcom/iab/omid/library/verizonmedia/adsession/k;->c:Lcom/iab/omid/library/verizonmedia/f/a;

    const-string v1, "midpoint"

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/verizonmedia/f/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/iab/omid/library/verizonmedia/adsession/a/a;->a:Lcom/iab/omid/library/verizonmedia/adsession/k;

    invoke-static {v0}, Lcom/iab/omid/library/verizonmedia/d/d;->b(Lcom/iab/omid/library/verizonmedia/adsession/k;)V

    iget-object v0, p0, Lcom/iab/omid/library/verizonmedia/adsession/a/a;->a:Lcom/iab/omid/library/verizonmedia/adsession/k;

    .line 15000
    iget-object v0, v0, Lcom/iab/omid/library/verizonmedia/adsession/k;->c:Lcom/iab/omid/library/verizonmedia/f/a;

    const-string v1, "thirdQuartile"

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/verizonmedia/f/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/iab/omid/library/verizonmedia/adsession/a/a;->a:Lcom/iab/omid/library/verizonmedia/adsession/k;

    invoke-static {v0}, Lcom/iab/omid/library/verizonmedia/d/d;->b(Lcom/iab/omid/library/verizonmedia/adsession/k;)V

    iget-object v0, p0, Lcom/iab/omid/library/verizonmedia/adsession/a/a;->a:Lcom/iab/omid/library/verizonmedia/adsession/k;

    .line 16000
    iget-object v0, v0, Lcom/iab/omid/library/verizonmedia/adsession/k;->c:Lcom/iab/omid/library/verizonmedia/f/a;

    const-string v1, "complete"

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/verizonmedia/f/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lcom/iab/omid/library/verizonmedia/adsession/a/a;->a:Lcom/iab/omid/library/verizonmedia/adsession/k;

    invoke-static {v0}, Lcom/iab/omid/library/verizonmedia/d/d;->b(Lcom/iab/omid/library/verizonmedia/adsession/k;)V

    iget-object v0, p0, Lcom/iab/omid/library/verizonmedia/adsession/a/a;->a:Lcom/iab/omid/library/verizonmedia/adsession/k;

    .line 17000
    iget-object v0, v0, Lcom/iab/omid/library/verizonmedia/adsession/k;->c:Lcom/iab/omid/library/verizonmedia/f/a;

    const-string v1, "pause"

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/verizonmedia/f/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lcom/iab/omid/library/verizonmedia/adsession/a/a;->a:Lcom/iab/omid/library/verizonmedia/adsession/k;

    invoke-static {v0}, Lcom/iab/omid/library/verizonmedia/d/d;->b(Lcom/iab/omid/library/verizonmedia/adsession/k;)V

    iget-object v0, p0, Lcom/iab/omid/library/verizonmedia/adsession/a/a;->a:Lcom/iab/omid/library/verizonmedia/adsession/k;

    .line 18000
    iget-object v0, v0, Lcom/iab/omid/library/verizonmedia/adsession/k;->c:Lcom/iab/omid/library/verizonmedia/f/a;

    const-string v1, "resume"

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/verizonmedia/f/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lcom/iab/omid/library/verizonmedia/adsession/a/a;->a:Lcom/iab/omid/library/verizonmedia/adsession/k;

    invoke-static {v0}, Lcom/iab/omid/library/verizonmedia/d/d;->b(Lcom/iab/omid/library/verizonmedia/adsession/k;)V

    iget-object v0, p0, Lcom/iab/omid/library/verizonmedia/adsession/a/a;->a:Lcom/iab/omid/library/verizonmedia/adsession/k;

    .line 19000
    iget-object v0, v0, Lcom/iab/omid/library/verizonmedia/adsession/k;->c:Lcom/iab/omid/library/verizonmedia/f/a;

    const-string v1, "skipped"

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/verizonmedia/f/a;->a(Ljava/lang/String;)V

    return-void
.end method
