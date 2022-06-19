.class public final Lcom/iab/omid/library/mopub/d/d;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/iab/omid/library/mopub/adsession/k;)V
    .locals 1

    .line 2000
    iget-boolean p0, p0, Lcom/iab/omid/library/mopub/adsession/k;->e:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "AdSession is finished"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Lcom/iab/omid/library/mopub/adsession/k;)V
    .locals 0

    invoke-static {p0}, Lcom/iab/omid/library/mopub/d/d;->d(Lcom/iab/omid/library/mopub/adsession/k;)V

    invoke-static {p0}, Lcom/iab/omid/library/mopub/d/d;->a(Lcom/iab/omid/library/mopub/adsession/k;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x100

    if-gt p0, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Lcom/iab/omid/library/mopub/adsession/k;)V
    .locals 1

    .line 3000
    iget-object p0, p0, Lcom/iab/omid/library/mopub/adsession/k;->a:Lcom/iab/omid/library/mopub/adsession/AdSessionConfiguration;

    invoke-virtual {p0}, Lcom/iab/omid/library/mopub/adsession/AdSessionConfiguration;->isNativeImpressionOwner()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Impression event is not expected from the Native AdSession"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static d(Lcom/iab/omid/library/mopub/adsession/k;)V
    .locals 1

    .line 1000
    iget-boolean p0, p0, Lcom/iab/omid/library/mopub/adsession/k;->d:Z

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "AdSession is not started"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
