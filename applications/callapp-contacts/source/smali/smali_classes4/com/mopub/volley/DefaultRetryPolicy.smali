.class public Lcom/mopub/volley/DefaultRetryPolicy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/volley/RetryPolicy;


# static fields
.field public static final DEFAULT_BACKOFF_MULT:F = 1.0f

.field public static final DEFAULT_MAX_RETRIES:I = 0x1

.field public static final DEFAULT_TIMEOUT_MS:I = 0x9c4


# instance fields
.field private a:I

.field private b:I

.field private final c:I

.field private final d:F


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x9c4

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 44
    invoke-direct {p0, v0, v1, v2}, Lcom/mopub/volley/DefaultRetryPolicy;-><init>(IIF)V

    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Lcom/mopub/volley/DefaultRetryPolicy;->a:I

    .line 56
    iput p2, p0, Lcom/mopub/volley/DefaultRetryPolicy;->c:I

    .line 57
    iput p3, p0, Lcom/mopub/volley/DefaultRetryPolicy;->d:F

    return-void
.end method


# virtual methods
.method public getBackoffMultiplier()F
    .locals 1

    .line 74
    iget v0, p0, Lcom/mopub/volley/DefaultRetryPolicy;->d:F

    return v0
.end method

.method public getCurrentRetryCount()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/mopub/volley/DefaultRetryPolicy;->b:I

    return v0
.end method

.method public getCurrentTimeout()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/mopub/volley/DefaultRetryPolicy;->a:I

    return v0
.end method

.method public retry(Lcom/mopub/volley/VolleyError;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/volley/VolleyError;
        }
    .end annotation

    .line 84
    iget v0, p0, Lcom/mopub/volley/DefaultRetryPolicy;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mopub/volley/DefaultRetryPolicy;->b:I

    .line 85
    iget v2, p0, Lcom/mopub/volley/DefaultRetryPolicy;->a:I

    int-to-float v3, v2

    iget v4, p0, Lcom/mopub/volley/DefaultRetryPolicy;->d:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/mopub/volley/DefaultRetryPolicy;->a:I

    .line 1093
    iget v2, p0, Lcom/mopub/volley/DefaultRetryPolicy;->c:I

    if-gt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    return-void

    .line 87
    :cond_1
    throw p1
.end method
