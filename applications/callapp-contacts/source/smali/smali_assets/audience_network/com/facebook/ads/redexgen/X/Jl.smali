.class public final Lcom/facebook/ads/redexgen/X/Jl;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final A00:Lcom/facebook/ads/internal/protocol/AdErrorType;

.field public final A01:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 40356
    invoke-static {p1}, Lcom/facebook/ads/internal/protocol/AdErrorType;->adErrorTypeFromCode(I)Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/facebook/ads/redexgen/X/Jl;-><init>(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    .line 40357
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 40358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40359
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40360
    invoke-virtual {p1}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object p2

    .line 40361
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Jl;->A00:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 40362
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Jl;->A01:Ljava/lang/String;

    .line 40363
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/Jl;)Lcom/facebook/ads/AdError;
    .locals 3

    .line 40364
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jl;->A04()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->isPublicError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40365
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jl;->A04()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jl;->A05()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/AdError;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/AdError;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 40366
    :cond_0
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->UNKNOWN_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 40367
    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v2

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->UNKNOWN_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 40368
    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/AdError;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/AdError;-><init>(ILjava/lang/String;)V

    .line 40369
    return-object v0
.end method

.method public static A01(Lcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/redexgen/X/Jl;
    .locals 2

    .line 40370
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Jl;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/Jl;-><init>(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    return-object v0
.end method

.method public static A02(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Jl;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 40371
    new-instance v0, Lcom/facebook/ads/redexgen/X/Jl;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Jl;-><init>(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    return-object v0
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/Jm;)Lcom/facebook/ads/redexgen/X/Jl;
    .locals 3

    .line 40372
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jm;->A00()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jm;->A01()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Jl;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Jl;-><init>(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final A04()Lcom/facebook/ads/internal/protocol/AdErrorType;
    .locals 1

    .line 40373
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jl;->A00:Lcom/facebook/ads/internal/protocol/AdErrorType;

    return-object v0
.end method

.method public final A05()Ljava/lang/String;
    .locals 1

    .line 40374
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jl;->A01:Ljava/lang/String;

    return-object v0
.end method
