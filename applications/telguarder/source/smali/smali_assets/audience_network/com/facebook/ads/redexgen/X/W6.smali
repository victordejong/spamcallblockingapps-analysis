.class public final Lcom/facebook/ads/redexgen/X/W6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/J0;
.implements Lcom/facebook/ads/redexgen/X/B7;
.implements Lcom/facebook/ads/redexgen/X/GF;
.implements Lcom/facebook/ads/redexgen/X/Dx;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/DL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ComponentListener"
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/DL;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/W6;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/DL;)V
    .locals 0

    .line 63381
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/W6;->A00:Lcom/facebook/ads/redexgen/X/DL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/DL;Lcom/facebook/ads/redexgen/X/Ac;)V
    .locals 0

    .line 63382
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/W6;-><init>(Lcom/facebook/ads/redexgen/X/DL;)V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "1sYup5MztZB7CjnlSBpZfKCKlpS3rG7W"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "42LJBvfe1q11JKxJkNzNHZTba4bhNIuQ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Nt1wjEfp0oW0"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "QehkhURDiI5bAZ1ZbDswL4mF4uJHHHP"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "d"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "fc3leWlgBOa4b0DNFtIxx1aoqISrWjI3"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "xAeNHAMxm0kY3IlBIcXsxp4e6nPx5eK5"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/W6;->A01:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A9S(Ljava/lang/String;JJ)V
    .locals 8

    .line 63383
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A00:Lcom/facebook/ads/redexgen/X/DL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/DL;->A0D(Lcom/facebook/ads/redexgen/X/DL;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/B7;

    .line 63384
    .local v3, "audioDebugListener":Lcom/facebook/ads/redexgen/X/B7;
    move-wide v6, p4

    move-wide v4, p2

    move-object v3, p1

    invoke-interface/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/B7;->A9S(Ljava/lang/String;JJ)V

    .line 63385
    .end local v3    # "audioDebugListener":Lcom/facebook/ads/redexgen/X/B7;
    goto :goto_0

    .line 63386
    :cond_0
    return-void
.end method

.method public final A9T(Lcom/facebook/ads/redexgen/X/Ba;)V
    .locals 2

    .line 63387
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A00:Lcom/facebook/ads/redexgen/X/DL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/DL;->A0D(Lcom/facebook/ads/redexgen/X/DL;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/B7;

    .line 63388
    .local p1, "audioDebugListener":Lcom/facebook/ads/redexgen/X/B7;
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/B7;->A9T(Lcom/facebook/ads/redexgen/X/Ba;)V

    .line 63389
    .end local p1    # "audioDebugListener":Lcom/facebook/ads/redexgen/X/B7;
    goto :goto_0

    .line 63390
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A00:Lcom/facebook/ads/redexgen/X/DL;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/DL;->A04(Lcom/facebook/ads/redexgen/X/DL;Lcom/facebook/ads/internal/exoplayer2/Format;)Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 63391
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A00:Lcom/facebook/ads/redexgen/X/DL;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/DL;->A06(Lcom/facebook/ads/redexgen/X/DL;Lcom/facebook/ads/redexgen/X/Ba;)Lcom/facebook/ads/redexgen/X/Ba;

    .line 63392
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/W6;->A00:Lcom/facebook/ads/redexgen/X/DL;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/DL;->A00(Lcom/facebook/ads/redexgen/X/DL;I)I

    .line 63393
    return-void
.end method

.method public final A9U(Lcom/facebook/ads/redexgen/X/Ba;)V
    .locals 2

    .line 63394
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A00:Lcom/facebook/ads/redexgen/X/DL;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/DL;->A06(Lcom/facebook/ads/redexgen/X/DL;Lcom/facebook/ads/redexgen/X/Ba;)Lcom/facebook/ads/redexgen/X/Ba;

    .line 63395
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A00:Lcom/facebook/ads/redexgen/X/DL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/DL;->A0D(Lcom/facebook/ads/redexgen/X/DL;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/B7;

    .line 63396
    .local p1, "audioDebugListener":Lcom/facebook/ads/redexgen/X/B7;
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/B7;->A9U(Lcom/facebook/ads/redexgen/X/Ba;)V

    .line 63397
    .end local p1    # "audioDebugListener":Lcom/facebook/ads/redexgen/X/B7;
    goto :goto_0

    .line 63398
    :cond_0
    return-void
.end method

.method public final A9V(Lcom/facebook/ads/internal/exoplayer2/Format;)V
    .locals 2

    .line 63399
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A00:Lcom/facebook/ads/redexgen/X/DL;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/DL;->A04(Lcom/facebook/ads/redexgen/X/DL;Lcom/facebook/ads/internal/exoplayer2/Format;)Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 63400
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A00:Lcom/facebook/ads/redexgen/X/DL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/DL;->A0D(Lcom/facebook/ads/redexgen/X/DL;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/B7;

    .line 63401
    .local p1, "audioDebugListener":Lcom/facebook/ads/redexgen/X/B7;
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/B7;->A9V(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 63402
    .end local p1    # "audioDebugListener":Lcom/facebook/ads/redexgen/X/B7;
    goto :goto_0

    .line 63403
    :cond_0
    return-void
.end method

.method public final A9W(I)V
    .locals 2

    .line 63404
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A00:Lcom/facebook/ads/redexgen/X/DL;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/DL;->A00(Lcom/facebook/ads/redexgen/X/DL;I)I

    .line 63405
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A00:Lcom/facebook/ads/redexgen/X/DL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/DL;->A0D(Lcom/facebook/ads/redexgen/X/DL;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/B7;

    .line 63406
    .local p1, "audioDebugListener":Lcom/facebook/ads/redexgen/X/B7;
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/B7;->A9W(I)V

    .line 63407
    .end local p1    # "audioDebugListener":Lcom/facebook/ads/redexgen/X/B7;
    goto :goto_0

    .line 63408
    :cond_0
    return-void
.end method

.method public final A9X(IJJ)V
    .locals 8

    .line 63409
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A00:Lcom/facebook/ads/redexgen/X/DL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/DL;->A0D(Lcom/facebook/ads/redexgen/X/DL;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/B7;

    .line 63410
    .local v3, "audioDebugListener":Lcom/facebook/ads/redexgen/X/B7;
    move-wide v6, p4

    move-wide v4, p2

    move v3, p1

    invoke-interface/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/B7;->A9X(IJJ)V

    .line 63411
    .end local v3    # "audioDebugListener":Lcom/facebook/ads/redexgen/X/B7;
    goto :goto_0

    .line 63412
    :cond_0
    return-void
.end method

.method public final A9r(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/GB;",
            ">;)V"
        }
    .end annotation

    .line 63413
    .local v0, "cues":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/text/Cue;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A00:Lcom/facebook/ads/redexgen/X/DL;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/DL;->A08(Lcom/facebook/ads/redexgen/X/DL;Ljava/util/List;)Ljava/util/List;

    .line 63414
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A00:Lcom/facebook/ads/redexgen/X/DL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/DL;->A09(Lcom/facebook/ads/redexgen/X/DL;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/GF;

    sget-object v1, Lcom/facebook/ads/redexgen/X/W6;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x55

    if-eq v1, v0, :cond_0

    .line 63415
    .local p1, "textOutput":Lcom/facebook/ads/redexgen/X/GF;
    sget-object v2, Lcom/facebook/ads/redexgen/X/W6;->A01:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-interface {v3, p1}, Lcom/facebook/ads/redexgen/X/GF;->A9r(Ljava/util/List;)V

    .line 63416
    .end local p1    # "textOutput":Lcom/facebook/ads/redexgen/X/GF;
    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 63417
    :cond_1
    return-void
.end method

.method public final AA2(IJ)V
    .locals 5

    .line 63418
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A00:Lcom/facebook/ads/redexgen/X/DL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/DL;->A0B(Lcom/facebook/ads/redexgen/X/DL;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/W6;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/W6;->A01:[Ljava/lang/String;

    const-string v1, "FX7kFpNzlvJx1"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/J0;

    .line 63419
    .local p1, "videoDebugListener":Lcom/facebook/ads/redexgen/X/J0;
    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/J0;->AA2(IJ)V

    .line 63420
    .end local p1    # "videoDebugListener":Lcom/facebook/ads/redexgen/X/J0;
    goto :goto_0

    .line 63421
    :cond_1
    return-void
.end method

.method public final AAr(Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;)V
    .locals 5

    .line 63422
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A00:Lcom/facebook/ads/redexgen/X/DL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/DL;->A0A(Lcom/facebook/ads/redexgen/X/DL;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/W6;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xb

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/W6;->A01:[Ljava/lang/String;

    const-string v1, "bGYRW"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Dx;

    .line 63423
    .local p1, "metadataOutput":Lcom/facebook/ads/redexgen/X/Dx;
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Dx;->AAr(Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;)V

    .line 63424
    .end local p1    # "metadataOutput":Lcom/facebook/ads/redexgen/X/Dx;
    goto :goto_0

    .line 63425
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final ABQ(Landroid/view/Surface;)V
    .locals 2

    .line 63426
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A00:Lcom/facebook/ads/redexgen/X/DL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/DL;->A01(Lcom/facebook/ads/redexgen/X/DL;)Landroid/view/Surface;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 63427
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A00:Lcom/facebook/ads/redexgen/X/DL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/DL;->A0C(Lcom/facebook/ads/redexgen/X/DL;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63428
    .local p1, "videoListener":Lcom/facebook/ads/redexgen/X/Ir;
    .end local p1    # "videoListener":Lcom/facebook/ads/redexgen/X/Ir;
    goto :goto_0

    .line 63429
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A00:Lcom/facebook/ads/redexgen/X/DL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/DL;->A0B(Lcom/facebook/ads/redexgen/X/DL;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/J0;

    .line 63430
    .local p1, "videoDebugListener":Lcom/facebook/ads/redexgen/X/J0;
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/J0;->ABQ(Landroid/view/Surface;)V

    .line 63431
    .end local p1    # "videoDebugListener":Lcom/facebook/ads/redexgen/X/J0;
    goto :goto_1

    .line 63432
    :cond_1
    return-void
.end method

.method public final ABx(Ljava/lang/String;JJ)V
    .locals 8

    .line 63433
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A00:Lcom/facebook/ads/redexgen/X/DL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/DL;->A0B(Lcom/facebook/ads/redexgen/X/DL;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/J0;

    .line 63434
    .local v3, "videoDebugListener":Lcom/facebook/ads/redexgen/X/J0;
    move-wide v6, p4

    move-wide v4, p2

    move-object v3, p1

    invoke-interface/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/J0;->ABx(Ljava/lang/String;JJ)V

    .line 63435
    .end local v3    # "videoDebugListener":Lcom/facebook/ads/redexgen/X/J0;
    goto :goto_0

    .line 63436
    :cond_0
    return-void
.end method

.method public final ABy(Lcom/facebook/ads/redexgen/X/Ba;)V
    .locals 2

    .line 63437
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A00:Lcom/facebook/ads/redexgen/X/DL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/DL;->A0B(Lcom/facebook/ads/redexgen/X/DL;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/J0;

    .line 63438
    .local p1, "videoDebugListener":Lcom/facebook/ads/redexgen/X/J0;
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/J0;->ABy(Lcom/facebook/ads/redexgen/X/Ba;)V

    .line 63439
    .end local p1    # "videoDebugListener":Lcom/facebook/ads/redexgen/X/J0;
    goto :goto_0

    .line 63440
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A00:Lcom/facebook/ads/redexgen/X/DL;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/DL;->A03(Lcom/facebook/ads/redexgen/X/DL;Lcom/facebook/ads/internal/exoplayer2/Format;)Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 63441
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A00:Lcom/facebook/ads/redexgen/X/DL;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/DL;->A05(Lcom/facebook/ads/redexgen/X/DL;Lcom/facebook/ads/redexgen/X/Ba;)Lcom/facebook/ads/redexgen/X/Ba;

    .line 63442
    return-void
.end method

.method public final ABz(Lcom/facebook/ads/redexgen/X/Ba;)V
    .locals 2

    .line 63443
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A00:Lcom/facebook/ads/redexgen/X/DL;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/DL;->A05(Lcom/facebook/ads/redexgen/X/DL;Lcom/facebook/ads/redexgen/X/Ba;)Lcom/facebook/ads/redexgen/X/Ba;

    .line 63444
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A00:Lcom/facebook/ads/redexgen/X/DL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/DL;->A0B(Lcom/facebook/ads/redexgen/X/DL;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/J0;

    .line 63445
    .local p1, "videoDebugListener":Lcom/facebook/ads/redexgen/X/J0;
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/J0;->ABz(Lcom/facebook/ads/redexgen/X/Ba;)V

    .line 63446
    .end local p1    # "videoDebugListener":Lcom/facebook/ads/redexgen/X/J0;
    goto :goto_0

    .line 63447
    :cond_0
    return-void
.end method

.method public final AC2(Lcom/facebook/ads/internal/exoplayer2/Format;)V
    .locals 2

    .line 63448
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A00:Lcom/facebook/ads/redexgen/X/DL;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/DL;->A03(Lcom/facebook/ads/redexgen/X/DL;Lcom/facebook/ads/internal/exoplayer2/Format;)Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 63449
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A00:Lcom/facebook/ads/redexgen/X/DL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/DL;->A0B(Lcom/facebook/ads/redexgen/X/DL;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/J0;

    .line 63450
    .local p1, "videoDebugListener":Lcom/facebook/ads/redexgen/X/J0;
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/J0;->AC2(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 63451
    .end local p1    # "videoDebugListener":Lcom/facebook/ads/redexgen/X/J0;
    goto :goto_0

    .line 63452
    :cond_0
    return-void
.end method

.method public final AC7(IIIF)V
    .locals 2

    .line 63453
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A00:Lcom/facebook/ads/redexgen/X/DL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/DL;->A0C(Lcom/facebook/ads/redexgen/X/DL;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ir;

    .line 63454
    .local p1, "videoListener":Lcom/facebook/ads/redexgen/X/Ir;
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/Ir;->AC7(IIIF)V

    .line 63455
    .end local p1    # "videoListener":Lcom/facebook/ads/redexgen/X/Ir;
    goto :goto_0

    .line 63456
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A00:Lcom/facebook/ads/redexgen/X/DL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/DL;->A0B(Lcom/facebook/ads/redexgen/X/DL;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/J0;

    .line 63457
    .local p1, "videoDebugListener":Lcom/facebook/ads/redexgen/X/J0;
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/J0;->AC7(IIIF)V

    .line 63458
    .end local p1    # "videoDebugListener":Lcom/facebook/ads/redexgen/X/J0;
    goto :goto_1

    .line 63459
    :cond_1
    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    .line 63460
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/W6;->A00:Lcom/facebook/ads/redexgen/X/DL;

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DL;->A0I(Lcom/facebook/ads/redexgen/X/DL;Landroid/view/Surface;Z)V

    .line 63461
    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3

    .line 63462
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/W6;->A00:Lcom/facebook/ads/redexgen/X/DL;

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/DL;->A0I(Lcom/facebook/ads/redexgen/X/DL;Landroid/view/Surface;Z)V

    .line 63463
    return v1
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 63464
    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 63465
    return-void
.end method

.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 63466
    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    .line 63467
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/W6;->A00:Lcom/facebook/ads/redexgen/X/DL;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DL;->A0I(Lcom/facebook/ads/redexgen/X/DL;Landroid/view/Surface;Z)V

    .line 63468
    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3

    .line 63469
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/W6;->A00:Lcom/facebook/ads/redexgen/X/DL;

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DL;->A0I(Lcom/facebook/ads/redexgen/X/DL;Landroid/view/Surface;Z)V

    .line 63470
    return-void
.end method
