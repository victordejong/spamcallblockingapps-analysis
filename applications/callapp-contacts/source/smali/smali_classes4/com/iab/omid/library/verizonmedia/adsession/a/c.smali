.class public final Lcom/iab/omid/library/verizonmedia/adsession/a/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:Z

.field private final b:Ljava/lang/Float;

.field private final c:Z

.field private final d:Lcom/iab/omid/library/verizonmedia/adsession/a/b;


# direct methods
.method private constructor <init>(ZLjava/lang/Float;ZLcom/iab/omid/library/verizonmedia/adsession/a/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/iab/omid/library/verizonmedia/adsession/a/c;->a:Z

    iput-object p2, p0, Lcom/iab/omid/library/verizonmedia/adsession/a/c;->b:Ljava/lang/Float;

    iput-boolean p3, p0, Lcom/iab/omid/library/verizonmedia/adsession/a/c;->c:Z

    iput-object p4, p0, Lcom/iab/omid/library/verizonmedia/adsession/a/c;->d:Lcom/iab/omid/library/verizonmedia/adsession/a/b;

    return-void
.end method

.method public static a(FZLcom/iab/omid/library/verizonmedia/adsession/a/b;)Lcom/iab/omid/library/verizonmedia/adsession/a/c;
    .locals 2

    const-string v0, "Position is null"

    invoke-static {p2, v0}, Lcom/iab/omid/library/verizonmedia/d/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iab/omid/library/verizonmedia/adsession/a/c;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/iab/omid/library/verizonmedia/adsession/a/c;-><init>(ZLjava/lang/Float;ZLcom/iab/omid/library/verizonmedia/adsession/a/b;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "skippable"

    iget-boolean v2, p0, Lcom/iab/omid/library/verizonmedia/adsession/a/c;->a:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-boolean v1, p0, Lcom/iab/omid/library/verizonmedia/adsession/a/c;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "skipOffset"

    iget-object v2, p0, Lcom/iab/omid/library/verizonmedia/adsession/a/c;->b:Ljava/lang/Float;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v1, "autoPlay"

    iget-boolean v2, p0, Lcom/iab/omid/library/verizonmedia/adsession/a/c;->c:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "position"

    iget-object v2, p0, Lcom/iab/omid/library/verizonmedia/adsession/a/c;->d:Lcom/iab/omid/library/verizonmedia/adsession/a/b;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "VastProperties: JSON error"

    invoke-static {v2, v1}, Lcom/iab/omid/library/verizonmedia/d/c;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-object v0
.end method
