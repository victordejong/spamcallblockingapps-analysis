.class public Lcom/mopub/volley/DefaultRetryPolicy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/mopub/volley/RetryPolicy;


# static fields
.field public static final DEFAULT_BACKOFF_MULT:F = 1.0f

.field public static final DEFAULT_MAX_RETRIES:I = 0x1

.field public static final DEFAULT_TIMEOUT_MS:I = 0x9c4


# instance fields
.field public a:I

.field public b:I

.field public final c:I

.field public final d:F


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x9c4

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1, v2}, Lcom/mopub/volley/DefaultRetryPolicy;-><init>(IIF)V

    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/mopub/volley/DefaultRetryPolicy;->a:I

    iput p2, p0, Lcom/mopub/volley/DefaultRetryPolicy;->c:I

    iput p3, p0, Lcom/mopub/volley/DefaultRetryPolicy;->d:F

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    iget v0, p0, Lcom/mopub/volley/DefaultRetryPolicy;->b:I

    iget v1, p0, Lcom/mopub/volley/DefaultRetryPolicy;->c:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getBackoffMultiplier()F
    .locals 1

    iget v0, p0, Lcom/mopub/volley/DefaultRetryPolicy;->d:F

    return v0
.end method

.method public getCurrentRetryCount()I
    .locals 1

    iget v0, p0, Lcom/mopub/volley/DefaultRetryPolicy;->b:I

    return v0
.end method

.method public getCurrentTimeout()I
    .locals 1

    iget v0, p0, Lcom/mopub/volley/DefaultRetryPolicy;->a:I

    return v0
.end method

.method public retry(Lcom/mopub/volley/VolleyError;)V
    .locals 3

    iget v0, p0, Lcom/mopub/volley/DefaultRetryPolicy;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mopub/volley/DefaultRetryPolicy;->b:I

    iget v0, p0, Lcom/mopub/volley/DefaultRetryPolicy;->a:I

    int-to-float v1, v0

    iget v2, p0, Lcom/mopub/volley/DefaultRetryPolicy;->d:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mopub/volley/DefaultRetryPolicy;->a:I

    invoke-virtual {p0}, Lcom/mopub/volley/DefaultRetryPolicy;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    throw p1
.end method
