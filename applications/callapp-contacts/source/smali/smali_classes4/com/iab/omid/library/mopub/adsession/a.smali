.class public final Lcom/iab/omid/library/mopub/adsession/a;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/iab/omid/library/mopub/adsession/k;


# direct methods
.method private constructor <init>(Lcom/iab/omid/library/mopub/adsession/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iab/omid/library/mopub/adsession/a;->a:Lcom/iab/omid/library/mopub/adsession/k;

    return-void
.end method

.method public static a(Lcom/iab/omid/library/mopub/adsession/b;)Lcom/iab/omid/library/mopub/adsession/a;
    .locals 2

    move-object v0, p0

    check-cast v0, Lcom/iab/omid/library/mopub/adsession/k;

    const-string v1, "AdSession is null"

    invoke-static {p0, v1}, Lcom/iab/omid/library/mopub/d/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2000
    iget-object p0, v0, Lcom/iab/omid/library/mopub/adsession/k;->c:Lcom/iab/omid/library/mopub/f/a;

    .line 3000
    iget-object p0, p0, Lcom/iab/omid/library/mopub/f/a;->b:Lcom/iab/omid/library/mopub/adsession/a;

    if-nez p0, :cond_0

    .line 1000
    invoke-static {v0}, Lcom/iab/omid/library/mopub/d/d;->a(Lcom/iab/omid/library/mopub/adsession/k;)V

    new-instance p0, Lcom/iab/omid/library/mopub/adsession/a;

    invoke-direct {p0, v0}, Lcom/iab/omid/library/mopub/adsession/a;-><init>(Lcom/iab/omid/library/mopub/adsession/k;)V

    .line 4000
    iget-object v0, v0, Lcom/iab/omid/library/mopub/adsession/k;->c:Lcom/iab/omid/library/mopub/f/a;

    .line 5000
    iput-object p0, v0, Lcom/iab/omid/library/mopub/f/a;->b:Lcom/iab/omid/library/mopub/adsession/a;

    return-object p0

    .line 1000
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "AdEvents already exists for AdSession"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
