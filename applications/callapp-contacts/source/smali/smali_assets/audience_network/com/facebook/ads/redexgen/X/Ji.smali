.class public final Lcom/facebook/ads/redexgen/X/Ji;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Jh;,
        Lcom/facebook/ads/redexgen/X/Jg;
    }
.end annotation


# instance fields
.field public A00:J

.field public final A01:I

.field public final A02:I

.field public final A03:I

.field public final A04:I

.field public final A05:I

.field public final A06:I

.field public final A07:I

.field public final A08:I

.field public final A09:I

.field public final A0A:I

.field public final A0B:Lcom/facebook/ads/redexgen/X/Jg;

.field public final A0C:Ljava/lang/String;

.field public final A0D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Jh;",
            ">;"
        }
    .end annotation
.end field

.field public final A0E:Z

.field public final A0F:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/8D;Lcom/facebook/ads/redexgen/X/Jg;)V
    .locals 7

    .line 40221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40222
    const-class v0, Lcom/facebook/ads/redexgen/X/Ji;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ji;->A0C:Ljava/lang/String;

    .line 40223
    const/16 v0, 0x65

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ji;->A07:I

    .line 40224
    const/16 v0, 0x66

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ji;->A0A:I

    .line 40225
    const/16 v0, 0x67

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ji;->A08:I

    .line 40226
    const/16 v0, 0x68

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ji;->A03:I

    .line 40227
    const/16 v0, 0x69

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ji;->A09:I

    .line 40228
    const/16 v0, 0x6a

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ji;->A02:I

    .line 40229
    const/16 v0, 0x6b

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ji;->A04:I

    .line 40230
    const/16 v0, 0x6c

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ji;->A05:I

    .line 40231
    const/16 v0, 0x6d

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ji;->A06:I

    .line 40232
    const/16 v0, 0x6e

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ji;->A01:I

    .line 40233
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/Ji;->A0E:Z

    .line 40234
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Ji;->A00:J

    .line 40235
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ji;->A0D:Ljava/util/List;

    .line 40236
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/J6;->A0D(Landroid/content/Context;)I

    move-result v1

    .line 40237
    .local p1, "nativeViewabilityHistorySamplingRate":I
    const/4 v0, 0x1

    if-ge v1, v0, :cond_0

    .line 40238
    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/Ji;->A0F:Z

    .line 40239
    .end local v0
    :goto_0
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Ji;->A0B:Lcom/facebook/ads/redexgen/X/Jg;

    .line 40240
    return-void

    .line 40241
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A00()D

    move-result-wide v4

    .line 40242
    .local v0, "sessionRandom":D
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    int-to-double v0, v1

    div-double/2addr v2, v0

    cmpg-double v0, v4, v2

    if-gez v0, :cond_1

    const/4 v6, 0x1

    :cond_1
    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/Ji;->A0F:Z

    goto :goto_0
.end method

.method private A00()I
    .locals 1

    .line 40243
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ji;->A0B:Lcom/facebook/ads/redexgen/X/Jg;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Jg;->A66()I

    move-result v0

    return v0
.end method

.method private A01()I
    .locals 5

    .line 40244
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Ji;->A00:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    .line 40245
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Ji;->A00:J

    sub-long/2addr v2, v0

    long-to-int v0, v2

    return v0

    .line 40246
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Ji;)Ljava/util/List;
    .locals 0

    .line 40247
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Ji;->A0D:Ljava/util/List;

    return-object p0
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/Jh;)V
    .locals 2

    .line 40248
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ji;->A0D:Ljava/util/List;

    monitor-enter v1

    .line 40249
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ji;->A0D:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40250
    monitor-exit v1

    .line 40251
    return-void

    .line 40252
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final A04()V
    .locals 5

    .line 40253
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ji;->A0F:Z

    if-nez v0, :cond_0

    .line 40254
    return-void

    .line 40255
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ji;->A01()I

    move-result v4

    const/16 v3, 0x6e

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ji;->A00()I

    move-result v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Jh;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Jh;-><init>(IIILcom/facebook/ads/redexgen/X/Jf;)V

    .line 40256
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ji;->A03(Lcom/facebook/ads/redexgen/X/Jh;)V

    .line 40257
    return-void
.end method

.method public final A05()V
    .locals 5

    .line 40258
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ji;->A0F:Z

    if-nez v0, :cond_0

    .line 40259
    return-void

    .line 40260
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ji;->A01()I

    move-result v4

    const/16 v3, 0x6a

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ji;->A00()I

    move-result v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Jh;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Jh;-><init>(IIILcom/facebook/ads/redexgen/X/Jf;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ji;->A03(Lcom/facebook/ads/redexgen/X/Jh;)V

    .line 40261
    return-void
.end method

.method public final A06()V
    .locals 5

    .line 40262
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ji;->A0F:Z

    if-nez v0, :cond_0

    .line 40263
    return-void

    .line 40264
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ji;->A01()I

    move-result v4

    const/16 v3, 0x68

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ji;->A00()I

    move-result v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Jh;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Jh;-><init>(IIILcom/facebook/ads/redexgen/X/Jf;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ji;->A03(Lcom/facebook/ads/redexgen/X/Jh;)V

    .line 40265
    return-void
.end method

.method public final A07()V
    .locals 5

    .line 40266
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ji;->A0F:Z

    if-nez v0, :cond_0

    .line 40267
    return-void

    .line 40268
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ji;->A01()I

    move-result v4

    const/16 v3, 0x6d

    const/4 v2, -0x1

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Jh;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Jh;-><init>(IIILcom/facebook/ads/redexgen/X/Jf;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ji;->A03(Lcom/facebook/ads/redexgen/X/Jh;)V

    .line 40269
    return-void
.end method

.method public final A08()V
    .locals 5

    .line 40270
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ji;->A0F:Z

    if-nez v0, :cond_0

    .line 40271
    return-void

    .line 40272
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ji;->A01()I

    move-result v4

    const/16 v3, 0x6b

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ji;->A00()I

    move-result v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Jh;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Jh;-><init>(IIILcom/facebook/ads/redexgen/X/Jf;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ji;->A03(Lcom/facebook/ads/redexgen/X/Jh;)V

    .line 40273
    return-void
.end method

.method public final A09()V
    .locals 5

    .line 40274
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ji;->A0F:Z

    if-nez v0, :cond_0

    .line 40275
    return-void

    .line 40276
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ji;->A01()I

    move-result v4

    const/16 v3, 0x6c

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ji;->A00()I

    move-result v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Jh;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Jh;-><init>(IIILcom/facebook/ads/redexgen/X/Jf;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ji;->A03(Lcom/facebook/ads/redexgen/X/Jh;)V

    .line 40277
    return-void
.end method

.method public final A0A()V
    .locals 5

    .line 40278
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ji;->A0F:Z

    if-nez v0, :cond_0

    .line 40279
    return-void

    .line 40280
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Ji;->A00:J

    .line 40281
    const/4 v4, 0x0

    const/16 v3, 0x65

    const/4 v2, -0x1

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Jh;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Jh;-><init>(IIILcom/facebook/ads/redexgen/X/Jf;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ji;->A03(Lcom/facebook/ads/redexgen/X/Jh;)V

    .line 40282
    return-void
.end method

.method public final A0B()V
    .locals 5

    .line 40283
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ji;->A0F:Z

    if-nez v0, :cond_0

    .line 40284
    return-void

    .line 40285
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ji;->A01()I

    move-result v4

    const/16 v3, 0x69

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ji;->A00()I

    move-result v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Jh;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Jh;-><init>(IIILcom/facebook/ads/redexgen/X/Jf;)V

    .line 40286
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ji;->A03(Lcom/facebook/ads/redexgen/X/Jh;)V

    .line 40287
    return-void
.end method

.method public final A0C()V
    .locals 5

    .line 40288
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ji;->A0F:Z

    if-nez v0, :cond_0

    .line 40289
    return-void

    .line 40290
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ji;->A01()I

    move-result v4

    const/16 v3, 0x66

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ji;->A00()I

    move-result v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Jh;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Jh;-><init>(IIILcom/facebook/ads/redexgen/X/Jf;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ji;->A03(Lcom/facebook/ads/redexgen/X/Jh;)V

    .line 40291
    return-void
.end method

.method public final A0D(Lcom/facebook/ads/redexgen/X/8D;Ljava/lang/String;)V
    .locals 5

    .line 40292
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ji;->A0F:Z

    if-nez v0, :cond_0

    .line 40293
    return-void

    .line 40294
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ji;->A01()I

    move-result v4

    const/16 v3, 0x67

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ji;->A00()I

    move-result v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Jh;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Jh;-><init>(IIILcom/facebook/ads/redexgen/X/Jf;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ji;->A03(Lcom/facebook/ads/redexgen/X/Jh;)V

    .line 40295
    sget-object v1, Lcom/facebook/ads/redexgen/X/Lm;->A06:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Jf;

    invoke-direct {v0, p0, p2, p1}, Lcom/facebook/ads/redexgen/X/Jf;-><init>(Lcom/facebook/ads/redexgen/X/Ji;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/8D;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 40296
    return-void
.end method
