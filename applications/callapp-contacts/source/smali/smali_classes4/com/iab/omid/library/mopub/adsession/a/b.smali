.class public final Lcom/iab/omid/library/mopub/adsession/a/b;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/iab/omid/library/mopub/adsession/k;


# direct methods
.method public constructor <init>(Lcom/iab/omid/library/mopub/adsession/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iab/omid/library/mopub/adsession/a/b;->a:Lcom/iab/omid/library/mopub/adsession/k;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/iab/omid/library/mopub/adsession/a/b;->a:Lcom/iab/omid/library/mopub/adsession/k;

    invoke-static {v0}, Lcom/iab/omid/library/mopub/d/d;->b(Lcom/iab/omid/library/mopub/adsession/k;)V

    iget-object v0, p0, Lcom/iab/omid/library/mopub/adsession/a/b;->a:Lcom/iab/omid/library/mopub/adsession/k;

    .line 1000
    iget-object v0, v0, Lcom/iab/omid/library/mopub/adsession/k;->c:Lcom/iab/omid/library/mopub/f/a;

    const-string v1, "skipped"

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/mopub/f/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/iab/omid/library/mopub/adsession/a/c;)V
    .locals 2

    const-string v0, "PlayerState is null"

    invoke-static {p1, v0}, Lcom/iab/omid/library/mopub/d/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iab/omid/library/mopub/adsession/a/b;->a:Lcom/iab/omid/library/mopub/adsession/k;

    invoke-static {v0}, Lcom/iab/omid/library/mopub/d/d;->b(Lcom/iab/omid/library/mopub/adsession/k;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "state"

    invoke-static {v0, v1, p1}, Lcom/iab/omid/library/mopub/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/iab/omid/library/mopub/adsession/a/b;->a:Lcom/iab/omid/library/mopub/adsession/k;

    .line 2000
    iget-object p1, p1, Lcom/iab/omid/library/mopub/adsession/k;->c:Lcom/iab/omid/library/mopub/f/a;

    const-string v1, "playerStateChange"

    invoke-virtual {p1, v1, v0}, Lcom/iab/omid/library/mopub/f/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
