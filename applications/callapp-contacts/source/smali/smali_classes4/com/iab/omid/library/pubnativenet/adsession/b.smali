.class public abstract Lcom/iab/omid/library/pubnativenet/adsession/b;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/iab/omid/library/pubnativenet/adsession/AdSessionConfiguration;Lcom/iab/omid/library/pubnativenet/adsession/c;)Lcom/iab/omid/library/pubnativenet/adsession/b;
    .locals 1

    .line 1000
    invoke-static {}, Lcom/iab/omid/library/pubnativenet/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AdSessionConfiguration is null"

    invoke-static {p0, v0}, Lcom/iab/omid/library/pubnativenet/d/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "AdSessionContext is null"

    invoke-static {p1, v0}, Lcom/iab/omid/library/pubnativenet/d/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iab/omid/library/pubnativenet/adsession/k;

    invoke-direct {v0, p0, p1}, Lcom/iab/omid/library/pubnativenet/adsession/k;-><init>(Lcom/iab/omid/library/pubnativenet/adsession/AdSessionConfiguration;Lcom/iab/omid/library/pubnativenet/adsession/c;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Method called before OM SDK activation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Landroid/view/View;)V
.end method

.method public abstract a(Landroid/view/View;Lcom/iab/omid/library/pubnativenet/adsession/f;Ljava/lang/String;)V
.end method

.method public abstract b()V
.end method

.method public abstract b(Landroid/view/View;)V
.end method

.method public abstract c()V
.end method
