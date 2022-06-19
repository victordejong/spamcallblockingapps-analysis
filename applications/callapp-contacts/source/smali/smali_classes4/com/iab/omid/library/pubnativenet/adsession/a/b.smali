.class public final Lcom/iab/omid/library/pubnativenet/adsession/a/b;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/iab/omid/library/pubnativenet/adsession/k;


# direct methods
.method public constructor <init>(Lcom/iab/omid/library/pubnativenet/adsession/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iab/omid/library/pubnativenet/adsession/a/b;->a:Lcom/iab/omid/library/pubnativenet/adsession/k;

    return-void
.end method

.method public static a(F)V
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
