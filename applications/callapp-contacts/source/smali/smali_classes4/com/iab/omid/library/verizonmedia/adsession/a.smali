.class public final Lcom/iab/omid/library/verizonmedia/adsession/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/iab/omid/library/verizonmedia/adsession/k;


# direct methods
.method private constructor <init>(Lcom/iab/omid/library/verizonmedia/adsession/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iab/omid/library/verizonmedia/adsession/a;->a:Lcom/iab/omid/library/verizonmedia/adsession/k;

    return-void
.end method

.method public static a(Lcom/iab/omid/library/verizonmedia/adsession/b;)Lcom/iab/omid/library/verizonmedia/adsession/a;
    .locals 2

    move-object v0, p0

    check-cast v0, Lcom/iab/omid/library/verizonmedia/adsession/k;

    const-string v1, "AdSession is null"

    invoke-static {p0, v1}, Lcom/iab/omid/library/verizonmedia/d/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2000
    iget-object p0, v0, Lcom/iab/omid/library/verizonmedia/adsession/k;->c:Lcom/iab/omid/library/verizonmedia/f/a;

    .line 3000
    iget-object p0, p0, Lcom/iab/omid/library/verizonmedia/f/a;->b:Lcom/iab/omid/library/verizonmedia/adsession/a;

    if-nez p0, :cond_0

    .line 1000
    invoke-static {v0}, Lcom/iab/omid/library/verizonmedia/d/d;->a(Lcom/iab/omid/library/verizonmedia/adsession/k;)V

    new-instance p0, Lcom/iab/omid/library/verizonmedia/adsession/a;

    invoke-direct {p0, v0}, Lcom/iab/omid/library/verizonmedia/adsession/a;-><init>(Lcom/iab/omid/library/verizonmedia/adsession/k;)V

    .line 4000
    iget-object v0, v0, Lcom/iab/omid/library/verizonmedia/adsession/k;->c:Lcom/iab/omid/library/verizonmedia/f/a;

    .line 5000
    iput-object p0, v0, Lcom/iab/omid/library/verizonmedia/f/a;->b:Lcom/iab/omid/library/verizonmedia/adsession/a;

    return-object p0

    .line 1000
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "AdEvents already exists for AdSession"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lcom/iab/omid/library/verizonmedia/adsession/a;->a:Lcom/iab/omid/library/verizonmedia/adsession/k;

    invoke-static {v0}, Lcom/iab/omid/library/verizonmedia/d/d;->a(Lcom/iab/omid/library/verizonmedia/adsession/k;)V

    iget-object v0, p0, Lcom/iab/omid/library/verizonmedia/adsession/a;->a:Lcom/iab/omid/library/verizonmedia/adsession/k;

    invoke-static {v0}, Lcom/iab/omid/library/verizonmedia/d/d;->c(Lcom/iab/omid/library/verizonmedia/adsession/k;)V

    iget-object v0, p0, Lcom/iab/omid/library/verizonmedia/adsession/a;->a:Lcom/iab/omid/library/verizonmedia/adsession/k;

    invoke-virtual {v0}, Lcom/iab/omid/library/verizonmedia/adsession/k;->f()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/iab/omid/library/verizonmedia/adsession/a;->a:Lcom/iab/omid/library/verizonmedia/adsession/k;

    invoke-virtual {v0}, Lcom/iab/omid/library/verizonmedia/adsession/k;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/iab/omid/library/verizonmedia/adsession/a;->a:Lcom/iab/omid/library/verizonmedia/adsession/k;

    invoke-virtual {v0}, Lcom/iab/omid/library/verizonmedia/adsession/k;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iab/omid/library/verizonmedia/adsession/a;->a:Lcom/iab/omid/library/verizonmedia/adsession/k;

    .line 7000
    iget-boolean v1, v0, Lcom/iab/omid/library/verizonmedia/adsession/k;->g:Z

    if-nez v1, :cond_1

    .line 8000
    iget-object v1, v0, Lcom/iab/omid/library/verizonmedia/adsession/k;->c:Lcom/iab/omid/library/verizonmedia/f/a;

    .line 9000
    invoke-static {}, Lcom/iab/omid/library/verizonmedia/b/e;->a()Lcom/iab/omid/library/verizonmedia/b/e;

    move-result-object v2

    invoke-virtual {v1}, Lcom/iab/omid/library/verizonmedia/f/a;->c()Landroid/webkit/WebView;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "publishImpressionEvent"

    .line 10000
    invoke-virtual {v2, v1, v4, v3}, Lcom/iab/omid/library/verizonmedia/b/e;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 6000
    iput-boolean v1, v0, Lcom/iab/omid/library/verizonmedia/adsession/k;->g:Z

    goto :goto_1

    .line 7000
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Impression event can only be sent once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    return-void
.end method

.method public final a(Lcom/iab/omid/library/verizonmedia/adsession/a/c;)V
    .locals 6

    const-string v0, "VastProperties is null"

    invoke-static {p1, v0}, Lcom/iab/omid/library/verizonmedia/d/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iab/omid/library/verizonmedia/adsession/a;->a:Lcom/iab/omid/library/verizonmedia/adsession/k;

    invoke-static {v0}, Lcom/iab/omid/library/verizonmedia/d/d;->b(Lcom/iab/omid/library/verizonmedia/adsession/k;)V

    iget-object v0, p0, Lcom/iab/omid/library/verizonmedia/adsession/a;->a:Lcom/iab/omid/library/verizonmedia/adsession/k;

    invoke-static {v0}, Lcom/iab/omid/library/verizonmedia/d/d;->c(Lcom/iab/omid/library/verizonmedia/adsession/k;)V

    iget-object v0, p0, Lcom/iab/omid/library/verizonmedia/adsession/a;->a:Lcom/iab/omid/library/verizonmedia/adsession/k;

    invoke-virtual {p1}, Lcom/iab/omid/library/verizonmedia/adsession/a/c;->a()Lorg/json/JSONObject;

    move-result-object p1

    .line 15000
    invoke-virtual {v0}, Lcom/iab/omid/library/verizonmedia/adsession/k;->d()V

    .line 16000
    iget-object v1, v0, Lcom/iab/omid/library/verizonmedia/adsession/k;->c:Lcom/iab/omid/library/verizonmedia/f/a;

    .line 17000
    invoke-static {}, Lcom/iab/omid/library/verizonmedia/b/e;->a()Lcom/iab/omid/library/verizonmedia/b/e;

    move-result-object v2

    invoke-virtual {v1}, Lcom/iab/omid/library/verizonmedia/f/a;->c()Landroid/webkit/WebView;

    move-result-object v1

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const-string p1, "publishLoadedEvent"

    .line 18000
    invoke-virtual {v2, v1, p1, v4}, Lcom/iab/omid/library/verizonmedia/b/e;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15000
    iput-boolean v3, v0, Lcom/iab/omid/library/verizonmedia/adsession/k;->h:Z

    return-void
.end method

.method public final b()V
    .locals 5

    iget-object v0, p0, Lcom/iab/omid/library/verizonmedia/adsession/a;->a:Lcom/iab/omid/library/verizonmedia/adsession/k;

    invoke-static {v0}, Lcom/iab/omid/library/verizonmedia/d/d;->b(Lcom/iab/omid/library/verizonmedia/adsession/k;)V

    iget-object v0, p0, Lcom/iab/omid/library/verizonmedia/adsession/a;->a:Lcom/iab/omid/library/verizonmedia/adsession/k;

    invoke-static {v0}, Lcom/iab/omid/library/verizonmedia/d/d;->c(Lcom/iab/omid/library/verizonmedia/adsession/k;)V

    iget-object v0, p0, Lcom/iab/omid/library/verizonmedia/adsession/a;->a:Lcom/iab/omid/library/verizonmedia/adsession/k;

    .line 11000
    invoke-virtual {v0}, Lcom/iab/omid/library/verizonmedia/adsession/k;->d()V

    .line 12000
    iget-object v1, v0, Lcom/iab/omid/library/verizonmedia/adsession/k;->c:Lcom/iab/omid/library/verizonmedia/f/a;

    .line 13000
    invoke-static {}, Lcom/iab/omid/library/verizonmedia/b/e;->a()Lcom/iab/omid/library/verizonmedia/b/e;

    move-result-object v2

    invoke-virtual {v1}, Lcom/iab/omid/library/verizonmedia/f/a;->c()Landroid/webkit/WebView;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "publishLoadedEvent"

    .line 14000
    invoke-virtual {v2, v1, v4, v3}, Lcom/iab/omid/library/verizonmedia/b/e;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 11000
    iput-boolean v1, v0, Lcom/iab/omid/library/verizonmedia/adsession/k;->h:Z

    return-void
.end method
