.class public final Lcom/facebook/ads/redexgen/X/8f;
.super Ljava/lang/Exception;
.source ""


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Lorg/json/JSONObject;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Z

.field public A04:Z

.field public A05:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 18320
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 18321
    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/8f;->A00:I

    .line 18322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8f;->A05:Z

    .line 18323
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8f;->A04:Z

    .line 18324
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/8f;->A03:Z

    .line 18325
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/8f;->A01:I

    .line 18326
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 18327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 18328
    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/8f;->A00:I

    .line 18329
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8f;->A05:Z

    .line 18330
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8f;->A04:Z

    .line 18331
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/8f;->A03:Z

    .line 18332
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/8f;->A01:I

    .line 18333
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 2

    .line 18334
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 18335
    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/8f;->A00:I

    .line 18336
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8f;->A05:Z

    .line 18337
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8f;->A04:Z

    .line 18338
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/8f;->A03:Z

    .line 18339
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/8f;->A01:I

    .line 18340
    return-void
.end method


# virtual methods
.method public final A00()I
    .locals 1

    .line 18341
    iget v0, p0, Lcom/facebook/ads/redexgen/X/8f;->A00:I

    return v0
.end method

.method public final A01()I
    .locals 1

    .line 18342
    iget v0, p0, Lcom/facebook/ads/redexgen/X/8f;->A01:I

    return v0
.end method

.method public final A02()Lorg/json/JSONObject;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 18343
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8f;->A02:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final A03(I)V
    .locals 0

    .line 18344
    iput p1, p0, Lcom/facebook/ads/redexgen/X/8f;->A00:I

    .line 18345
    return-void
.end method

.method public final A04(I)V
    .locals 0

    .line 18346
    iput p1, p0, Lcom/facebook/ads/redexgen/X/8f;->A01:I

    .line 18347
    return-void
.end method

.method public final A05(Lorg/json/JSONObject;)V
    .locals 0
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 18348
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/8f;->A02:Lorg/json/JSONObject;

    .line 18349
    return-void
.end method

.method public final A06(Z)V
    .locals 0

    .line 18350
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/8f;->A04:Z

    .line 18351
    return-void
.end method

.method public final A07(Z)V
    .locals 0

    .line 18352
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/8f;->A03:Z

    .line 18353
    return-void
.end method

.method public final A08(Z)V
    .locals 0

    .line 18354
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/8f;->A05:Z

    .line 18355
    return-void
.end method

.method public final A09()Z
    .locals 1

    .line 18356
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8f;->A04:Z

    return v0
.end method

.method public final A0A()Z
    .locals 1

    .line 18357
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8f;->A03:Z

    return v0
.end method

.method public final A0B()Z
    .locals 1

    .line 18358
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8f;->A05:Z

    return v0
.end method
