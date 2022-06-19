.class public final Lcom/facebook/ads/redexgen/X/YI;
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
    value = Lcom/facebook/ads/redexgen/X/Dj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ComponentListener"
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Dj;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/YI;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Dj;)V
    .locals 0

    .line 59223
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/YI;->A00:Lcom/facebook/ads/redexgen/X/Dj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/Dj;Lcom/facebook/ads/redexgen/X/Ac;)V
    .locals 0

    .line 59224
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/YI;-><init>(Lcom/facebook/ads/redexgen/X/Dj;)V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "tENgV7sVRmCggStQb7ahqyncu3McMlqx"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "EBCLDe86SI67l2WgLGk"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Xc2z6PWfFp"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ZjGJvfPpi7mMWyj8ThC73X2hXIQsvVeY"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "O"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "wm4K2NOZzdg8zteNHm"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "uxR1U8t68FFaIgGW"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ZP1sAESULwb937k6ya35I8qp57tsUFN9"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/YI;->A01:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A9S(Ljava/lang/String;JJ)V
    .locals 8

    .line 59225
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YI;->A00:Lcom/facebook/ads/redexgen/X/Dj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dj;->A0D(Lcom/facebook/ads/redexgen/X/Dj;)Ljava/util/concurrent/CopyOnWriteArraySet;

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

    .line 59226
    .local v3, "audioDebugListener":Lcom/facebook/ads/redexgen/X/B7;
    move-wide v4, p2

    move-wide v6, p4

    move-object v3, p1

    invoke-interface/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/B7;->A9S(Ljava/lang/String;JJ)V

    .line 59227
    .end local v3    # "audioDebugListener":Lcom/facebook/ads/redexgen/X/B7;
    goto :goto_0

    .line 59228
    :cond_0
    return-void
.end method

.method public final A9T(Lcom/facebook/ads/redexgen/X/Ba;)V
    .locals 5

    .line 59229
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YI;->A00:Lcom/facebook/ads/redexgen/X/Dj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dj;->A0D(Lcom/facebook/ads/redexgen/X/Dj;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/YI;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/YI;->A01:[Ljava/lang/String;

    const-string v1, "r"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "Pw7sEp82k0vieihjeRw"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/B7;

    sget-object v1, Lcom/facebook/ads/redexgen/X/YI;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x33

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 59230
    .local p1, "audioDebugListener":Lcom/facebook/ads/redexgen/X/B7;
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/YI;->A01:[Ljava/lang/String;

    const-string v1, "rZ"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-interface {v3, p1}, Lcom/facebook/ads/redexgen/X/B7;->A9T(Lcom/facebook/ads/redexgen/X/Ba;)V

    .line 59231
    .end local p1    # "audioDebugListener":Lcom/facebook/ads/redexgen/X/B7;
    goto :goto_0

    .line 59232
    :cond_1
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/YI;->A00:Lcom/facebook/ads/redexgen/X/Dj;

    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/YI;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/YI;->A01:[Ljava/lang/String;

    const-string v1, "AJXnTxM8Cjr"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-static {v4, v3}, Lcom/facebook/ads/redexgen/X/Dj;->A04(Lcom/facebook/ads/redexgen/X/Dj;Lcom/facebook/ads/internal/exoplayer2/Format;)Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 59233
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YI;->A00:Lcom/facebook/ads/redexgen/X/Dj;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/Dj;->A06(Lcom/facebook/ads/redexgen/X/Dj;Lcom/facebook/ads/redexgen/X/Ba;)Lcom/facebook/ads/redexgen/X/Ba;

    .line 59234
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YI;->A00:Lcom/facebook/ads/redexgen/X/Dj;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Dj;->A00(Lcom/facebook/ads/redexgen/X/Dj;I)I

    .line 59235
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A9U(Lcom/facebook/ads/redexgen/X/Ba;)V
    .locals 2

    .line 59236
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YI;->A00:Lcom/facebook/ads/redexgen/X/Dj;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/Dj;->A06(Lcom/facebook/ads/redexgen/X/Dj;Lcom/facebook/ads/redexgen/X/Ba;)Lcom/facebook/ads/redexgen/X/Ba;

    .line 59237
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YI;->A00:Lcom/facebook/ads/redexgen/X/Dj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dj;->A0D(Lcom/facebook/ads/redexgen/X/Dj;)Ljava/util/concurrent/CopyOnWriteArraySet;

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

    .line 59238
    .local p1, "audioDebugListener":Lcom/facebook/ads/redexgen/X/B7;
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/B7;->A9U(Lcom/facebook/ads/redexgen/X/Ba;)V

    .line 59239
    .end local p1    # "audioDebugListener":Lcom/facebook/ads/redexgen/X/B7;
    goto :goto_0

    .line 59240
    :cond_0
    return-void
.end method

.method public final A9V(Lcom/facebook/ads/internal/exoplayer2/Format;)V
    .locals 2

    .line 59241
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YI;->A00:Lcom/facebook/ads/redexgen/X/Dj;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/Dj;->A04(Lcom/facebook/ads/redexgen/X/Dj;Lcom/facebook/ads/internal/exoplayer2/Format;)Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 59242
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YI;->A00:Lcom/facebook/ads/redexgen/X/Dj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dj;->A0D(Lcom/facebook/ads/redexgen/X/Dj;)Ljava/util/concurrent/CopyOnWriteArraySet;

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

    .line 59243
    .local p1, "audioDebugListener":Lcom/facebook/ads/redexgen/X/B7;
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/B7;->A9V(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 59244
    .end local p1    # "audioDebugListener":Lcom/facebook/ads/redexgen/X/B7;
    goto :goto_0

    .line 59245
    :cond_0
    return-void
.end method

.method public final A9W(I)V
    .locals 5

    .line 59246
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YI;->A00:Lcom/facebook/ads/redexgen/X/Dj;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/Dj;->A00(Lcom/facebook/ads/redexgen/X/Dj;I)I

    .line 59247
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YI;->A00:Lcom/facebook/ads/redexgen/X/Dj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dj;->A0D(Lcom/facebook/ads/redexgen/X/Dj;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/B7;

    sget-object v1, Lcom/facebook/ads/redexgen/X/YI;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xb

    if-eq v1, v0, :cond_0

    .line 59248
    .local p1, "audioDebugListener":Lcom/facebook/ads/redexgen/X/B7;
    sget-object v2, Lcom/facebook/ads/redexgen/X/YI;->A01:[Ljava/lang/String;

    const-string v1, "0C"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-interface {v3, p1}, Lcom/facebook/ads/redexgen/X/B7;->A9W(I)V

    .line 59249
    .end local p1    # "audioDebugListener":Lcom/facebook/ads/redexgen/X/B7;
    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 59250
    :cond_1
    return-void
.end method

.method public final A9X(IJJ)V
    .locals 8

    .line 59251
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YI;->A00:Lcom/facebook/ads/redexgen/X/Dj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dj;->A0D(Lcom/facebook/ads/redexgen/X/Dj;)Ljava/util/concurrent/CopyOnWriteArraySet;

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

    .line 59252
    .local v3, "audioDebugListener":Lcom/facebook/ads/redexgen/X/B7;
    move-wide v4, p2

    move-wide v6, p4

    move v3, p1

    invoke-interface/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/B7;->A9X(IJJ)V

    .line 59253
    .end local v3    # "audioDebugListener":Lcom/facebook/ads/redexgen/X/B7;
    goto :goto_0

    .line 59254
    :cond_0
    return-void
.end method

.method public final A9s(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/GB;",
            ">;)V"
        }
    .end annotation

    .line 59255
    .local v0, "cues":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/text/Cue;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YI;->A00:Lcom/facebook/ads/redexgen/X/Dj;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/Dj;->A08(Lcom/facebook/ads/redexgen/X/Dj;Ljava/util/List;)Ljava/util/List;

    .line 59256
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YI;->A00:Lcom/facebook/ads/redexgen/X/Dj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dj;->A09(Lcom/facebook/ads/redexgen/X/Dj;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/GF;

    .line 59257
    .local p1, "textOutput":Lcom/facebook/ads/redexgen/X/GF;
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/GF;->A9s(Ljava/util/List;)V

    .line 59258
    .end local p1    # "textOutput":Lcom/facebook/ads/redexgen/X/GF;
    goto :goto_0

    .line 59259
    :cond_0
    return-void
.end method

.method public final AA3(IJ)V
    .locals 2

    .line 59260
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YI;->A00:Lcom/facebook/ads/redexgen/X/Dj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dj;->A0B(Lcom/facebook/ads/redexgen/X/Dj;)Ljava/util/concurrent/CopyOnWriteArraySet;

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

    .line 59261
    .local p1, "videoDebugListener":Lcom/facebook/ads/redexgen/X/J0;
    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/J0;->AA3(IJ)V

    .line 59262
    .end local p1    # "videoDebugListener":Lcom/facebook/ads/redexgen/X/J0;
    goto :goto_0

    .line 59263
    :cond_0
    return-void
.end method

.method public final AAr(Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;)V
    .locals 2

    .line 59264
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YI;->A00:Lcom/facebook/ads/redexgen/X/Dj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dj;->A0A(Lcom/facebook/ads/redexgen/X/Dj;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Dx;

    .line 59265
    .local p1, "metadataOutput":Lcom/facebook/ads/redexgen/X/Dx;
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Dx;->AAr(Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;)V

    .line 59266
    .end local p1    # "metadataOutput":Lcom/facebook/ads/redexgen/X/Dx;
    goto :goto_0

    .line 59267
    :cond_0
    return-void
.end method

.method public final ABQ(Landroid/view/Surface;)V
    .locals 2

    .line 59268
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YI;->A00:Lcom/facebook/ads/redexgen/X/Dj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dj;->A01(Lcom/facebook/ads/redexgen/X/Dj;)Landroid/view/Surface;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 59269
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YI;->A00:Lcom/facebook/ads/redexgen/X/Dj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dj;->A0C(Lcom/facebook/ads/redexgen/X/Dj;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59270
    .local p1, "videoListener":Lcom/facebook/ads/redexgen/X/Ir;
    .end local p1    # "videoListener":Lcom/facebook/ads/redexgen/X/Ir;
    goto :goto_0

    .line 59271
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YI;->A00:Lcom/facebook/ads/redexgen/X/Dj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dj;->A0B(Lcom/facebook/ads/redexgen/X/Dj;)Ljava/util/concurrent/CopyOnWriteArraySet;

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

    .line 59272
    .local p1, "videoDebugListener":Lcom/facebook/ads/redexgen/X/J0;
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/J0;->ABQ(Landroid/view/Surface;)V

    .line 59273
    .end local p1    # "videoDebugListener":Lcom/facebook/ads/redexgen/X/J0;
    goto :goto_1

    .line 59274
    :cond_1
    return-void
.end method

.method public final ABx(Ljava/lang/String;JJ)V
    .locals 8

    .line 59275
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YI;->A00:Lcom/facebook/ads/redexgen/X/Dj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dj;->A0B(Lcom/facebook/ads/redexgen/X/Dj;)Ljava/util/concurrent/CopyOnWriteArraySet;

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

    .line 59276
    .local v3, "videoDebugListener":Lcom/facebook/ads/redexgen/X/J0;
    move-wide v4, p2

    move-wide v6, p4

    move-object v3, p1

    invoke-interface/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/J0;->ABx(Ljava/lang/String;JJ)V

    .line 59277
    .end local v3    # "videoDebugListener":Lcom/facebook/ads/redexgen/X/J0;
    goto :goto_0

    .line 59278
    :cond_0
    return-void
.end method

.method public final ABy(Lcom/facebook/ads/redexgen/X/Ba;)V
    .locals 2

    .line 59279
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YI;->A00:Lcom/facebook/ads/redexgen/X/Dj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dj;->A0B(Lcom/facebook/ads/redexgen/X/Dj;)Ljava/util/concurrent/CopyOnWriteArraySet;

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

    .line 59280
    .local p1, "videoDebugListener":Lcom/facebook/ads/redexgen/X/J0;
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/J0;->ABy(Lcom/facebook/ads/redexgen/X/Ba;)V

    .line 59281
    .end local p1    # "videoDebugListener":Lcom/facebook/ads/redexgen/X/J0;
    goto :goto_0

    .line 59282
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YI;->A00:Lcom/facebook/ads/redexgen/X/Dj;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Dj;->A03(Lcom/facebook/ads/redexgen/X/Dj;Lcom/facebook/ads/internal/exoplayer2/Format;)Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 59283
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YI;->A00:Lcom/facebook/ads/redexgen/X/Dj;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Dj;->A05(Lcom/facebook/ads/redexgen/X/Dj;Lcom/facebook/ads/redexgen/X/Ba;)Lcom/facebook/ads/redexgen/X/Ba;

    .line 59284
    return-void
.end method

.method public final ABz(Lcom/facebook/ads/redexgen/X/Ba;)V
    .locals 5

    .line 59285
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YI;->A00:Lcom/facebook/ads/redexgen/X/Dj;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/Dj;->A05(Lcom/facebook/ads/redexgen/X/Dj;Lcom/facebook/ads/redexgen/X/Ba;)Lcom/facebook/ads/redexgen/X/Ba;

    .line 59286
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YI;->A00:Lcom/facebook/ads/redexgen/X/Dj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dj;->A0B(Lcom/facebook/ads/redexgen/X/Dj;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/J0;

    sget-object v1, Lcom/facebook/ads/redexgen/X/YI;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x33

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 59287
    .local p1, "videoDebugListener":Lcom/facebook/ads/redexgen/X/J0;
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/YI;->A01:[Ljava/lang/String;

    const-string v1, "6iGRC7"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-interface {v3, p1}, Lcom/facebook/ads/redexgen/X/J0;->ABz(Lcom/facebook/ads/redexgen/X/Ba;)V

    .line 59288
    .end local p1    # "videoDebugListener":Lcom/facebook/ads/redexgen/X/J0;
    goto :goto_0

    .line 59289
    :cond_1
    return-void
.end method

.method public final AC2(Lcom/facebook/ads/internal/exoplayer2/Format;)V
    .locals 5

    .line 59290
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YI;->A00:Lcom/facebook/ads/redexgen/X/Dj;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/Dj;->A03(Lcom/facebook/ads/redexgen/X/Dj;Lcom/facebook/ads/internal/exoplayer2/Format;)Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 59291
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YI;->A00:Lcom/facebook/ads/redexgen/X/Dj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dj;->A0B(Lcom/facebook/ads/redexgen/X/Dj;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/J0;

    sget-object v2, Lcom/facebook/ads/redexgen/X/YI;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    .line 59292
    .local p1, "videoDebugListener":Lcom/facebook/ads/redexgen/X/J0;
    sget-object v2, Lcom/facebook/ads/redexgen/X/YI;->A01:[Ljava/lang/String;

    const-string v1, "M1lNqMtLlEQhDRLPZV8vitTN6y5pnm"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-interface {v3, p1}, Lcom/facebook/ads/redexgen/X/J0;->AC2(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 59293
    .end local p1    # "videoDebugListener":Lcom/facebook/ads/redexgen/X/J0;
    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 59294
    :cond_1
    return-void
.end method

.method public final AC7(IIIF)V
    .locals 2

    .line 59295
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YI;->A00:Lcom/facebook/ads/redexgen/X/Dj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dj;->A0C(Lcom/facebook/ads/redexgen/X/Dj;)Ljava/util/concurrent/CopyOnWriteArraySet;

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

    .line 59296
    .local p1, "videoListener":Lcom/facebook/ads/redexgen/X/Ir;
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/Ir;->AC7(IIIF)V

    .line 59297
    .end local p1    # "videoListener":Lcom/facebook/ads/redexgen/X/Ir;
    goto :goto_0

    .line 59298
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YI;->A00:Lcom/facebook/ads/redexgen/X/Dj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dj;->A0B(Lcom/facebook/ads/redexgen/X/Dj;)Ljava/util/concurrent/CopyOnWriteArraySet;

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

    .line 59299
    .local p1, "videoDebugListener":Lcom/facebook/ads/redexgen/X/J0;
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/J0;->AC7(IIIF)V

    .line 59300
    .end local p1    # "videoDebugListener":Lcom/facebook/ads/redexgen/X/J0;
    goto :goto_1

    .line 59301
    :cond_1
    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    .line 59302
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/YI;->A00:Lcom/facebook/ads/redexgen/X/Dj;

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dj;->A0I(Lcom/facebook/ads/redexgen/X/Dj;Landroid/view/Surface;Z)V

    .line 59303
    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3

    .line 59304
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/YI;->A00:Lcom/facebook/ads/redexgen/X/Dj;

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Dj;->A0I(Lcom/facebook/ads/redexgen/X/Dj;Landroid/view/Surface;Z)V

    .line 59305
    return v1
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 59306
    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 59307
    return-void
.end method

.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 59308
    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    .line 59309
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/YI;->A00:Lcom/facebook/ads/redexgen/X/Dj;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dj;->A0I(Lcom/facebook/ads/redexgen/X/Dj;Landroid/view/Surface;Z)V

    .line 59310
    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3

    .line 59311
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/YI;->A00:Lcom/facebook/ads/redexgen/X/Dj;

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dj;->A0I(Lcom/facebook/ads/redexgen/X/Dj;Landroid/view/Surface;Z)V

    .line 59312
    return-void
.end method
