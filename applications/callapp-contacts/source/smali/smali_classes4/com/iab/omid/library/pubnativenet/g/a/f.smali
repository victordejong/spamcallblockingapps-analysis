.class public final Lcom/iab/omid/library/pubnativenet/g/a/f;
.super Lcom/iab/omid/library/pubnativenet/g/a/a;


# direct methods
.method public constructor <init>(Lcom/iab/omid/library/pubnativenet/g/a/b$b;Ljava/util/HashSet;Lorg/json/JSONObject;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iab/omid/library/pubnativenet/g/a/b$b;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            "J)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/iab/omid/library/pubnativenet/g/a/a;-><init>(Lcom/iab/omid/library/pubnativenet/g/a/b$b;Ljava/util/HashSet;Lorg/json/JSONObject;J)V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)V
    .locals 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1000
    invoke-static {}, Lcom/iab/omid/library/pubnativenet/b/a;->a()Lcom/iab/omid/library/pubnativenet/b/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2000
    iget-object v0, v0, Lcom/iab/omid/library/pubnativenet/b/a;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    .line 1000
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iab/omid/library/pubnativenet/adsession/k;

    iget-object v2, p0, Lcom/iab/omid/library/pubnativenet/g/a/f;->a:Ljava/util/HashSet;

    .line 3000
    iget-object v3, v1, Lcom/iab/omid/library/pubnativenet/adsession/k;->f:Ljava/lang/String;

    .line 1000
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4000
    iget-object v1, v1, Lcom/iab/omid/library/pubnativenet/adsession/k;->c:Lcom/iab/omid/library/pubnativenet/f/a;

    .line 1000
    iget-wide v2, p0, Lcom/iab/omid/library/pubnativenet/g/a/f;->c:J

    .line 5000
    iget-wide v4, v1, Lcom/iab/omid/library/pubnativenet/f/a;->d:J

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    sget v2, Lcom/iab/omid/library/pubnativenet/f/a$a;->b:I

    iput v2, v1, Lcom/iab/omid/library/pubnativenet/f/a;->c:I

    invoke-static {}, Lcom/iab/omid/library/pubnativenet/b/e;->a()Lcom/iab/omid/library/pubnativenet/b/e;

    move-result-object v2

    invoke-virtual {v1}, Lcom/iab/omid/library/pubnativenet/f/a;->c()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v2, v1, p1}, Lcom/iab/omid/library/pubnativenet/b/e;->b(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0

    .line 1000
    :cond_1
    invoke-super {p0, p1}, Lcom/iab/omid/library/pubnativenet/g/a/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 6000
    iget-object p1, p0, Lcom/iab/omid/library/pubnativenet/g/a/f;->b:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/iab/omid/library/pubnativenet/g/a/f;->e:Lcom/iab/omid/library/pubnativenet/g/a/b$b;

    invoke-interface {v0}, Lcom/iab/omid/library/pubnativenet/g/a/b$b;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/iab/omid/library/pubnativenet/d/b;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/iab/omid/library/pubnativenet/g/a/f;->e:Lcom/iab/omid/library/pubnativenet/g/a/b$b;

    iget-object v0, p0, Lcom/iab/omid/library/pubnativenet/g/a/f;->b:Lorg/json/JSONObject;

    invoke-interface {p1, v0}, Lcom/iab/omid/library/pubnativenet/g/a/b$b;->a(Lorg/json/JSONObject;)V

    iget-object p1, p0, Lcom/iab/omid/library/pubnativenet/g/a/f;->b:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iab/omid/library/pubnativenet/g/a/f;->a(Ljava/lang/String;)V

    return-void
.end method
