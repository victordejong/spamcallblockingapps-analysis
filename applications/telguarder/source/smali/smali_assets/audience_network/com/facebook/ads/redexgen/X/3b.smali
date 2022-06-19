.class public final Lcom/facebook/ads/redexgen/X/3b;
.super Lcom/facebook/ads/redexgen/X/Dh;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/exoplayer2/metadata/MetadataRenderer$Output;
    }
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Lcom/facebook/ads/redexgen/X/Du;

.field public A03:Z

.field public final A04:Landroid/os/Handler;

.field public final A05:Lcom/facebook/ads/redexgen/X/AD;

.field public final A06:Lcom/facebook/ads/redexgen/X/Dw;

.field public final A07:Lcom/facebook/ads/redexgen/X/Cv;

.field public final A08:Lcom/facebook/ads/redexgen/X/Dx;

.field public final A09:[J

.field public final A0A:[Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Dx;Landroid/os/Looper;)V
    .locals 1

    .line 9107
    sget-object v0, Lcom/facebook/ads/redexgen/X/Dw;->A00:Lcom/facebook/ads/redexgen/X/Dw;

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/3b;-><init>(Lcom/facebook/ads/redexgen/X/Dx;Landroid/os/Looper;Lcom/facebook/ads/redexgen/X/Dw;)V

    .line 9108
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Dx;Landroid/os/Looper;Lcom/facebook/ads/redexgen/X/Dw;)V
    .locals 2

    .line 9109
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Dh;-><init>(I)V

    .line 9110
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Hx;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Dx;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3b;->A08:Lcom/facebook/ads/redexgen/X/Dx;

    .line 9111
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3b;->A04:Landroid/os/Handler;

    .line 9112
    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/Hx;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Dw;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3b;->A06:Lcom/facebook/ads/redexgen/X/Dw;

    .line 9113
    new-instance v0, Lcom/facebook/ads/redexgen/X/AD;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/AD;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3b;->A05:Lcom/facebook/ads/redexgen/X/AD;

    .line 9114
    new-instance v0, Lcom/facebook/ads/redexgen/X/Cv;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Cv;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3b;->A07:Lcom/facebook/ads/redexgen/X/Cv;

    .line 9115
    const/4 v1, 0x5

    new-array v0, v1, [Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3b;->A0A:[Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;

    .line 9116
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3b;->A09:[J

    .line 9117
    return-void

    .line 9118
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    goto :goto_0
.end method

.method private A00()V
    .locals 2

    .line 9119
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3b;->A0A:[Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9120
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3b;->A01:I

    .line 9121
    iput v0, p0, Lcom/facebook/ads/redexgen/X/3b;->A00:I

    .line 9122
    return-void
.end method

.method private A01(Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;)V
    .locals 2

    .line 9123
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3b;->A04:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 9124
    const/4 v0, 0x0

    invoke-virtual {v1, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 9125
    :goto_0
    return-void

    .line 9126
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3b;->A02(Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;)V

    goto :goto_0
.end method

.method private A02(Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;)V
    .locals 1

    .line 9127
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3b;->A08:Lcom/facebook/ads/redexgen/X/Dx;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Dx;->AAr(Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;)V

    .line 9128
    return-void
.end method


# virtual methods
.method public final A15()V
    .locals 1

    .line 9129
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3b;->A00()V

    .line 9130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3b;->A02:Lcom/facebook/ads/redexgen/X/Du;

    .line 9131
    return-void
.end method

.method public final A18(JZ)V
    .locals 1

    .line 9132
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3b;->A00()V

    .line 9133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3b;->A03:Z

    .line 9134
    return-void
.end method

.method public final A1A([Lcom/facebook/ads/internal/exoplayer2/Format;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 9135
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3b;->A06:Lcom/facebook/ads/redexgen/X/Dw;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Dw;->A4C(Lcom/facebook/ads/internal/exoplayer2/Format;)Lcom/facebook/ads/redexgen/X/Du;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3b;->A02:Lcom/facebook/ads/redexgen/X/Du;

    .line 9136
    return-void
.end method

.method public final A81()Z
    .locals 1

    .line 9137
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3b;->A03:Z

    return v0
.end method

.method public final A8B()Z
    .locals 1

    .line 9138
    const/4 v0, 0x1

    return v0
.end method

.method public final ADC(JJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 9139
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3b;->A03:Z

    const/4 v5, 0x5

    const/4 v4, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3b;->A00:I

    if-ge v0, v5, :cond_0

    .line 9140
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3b;->A07:Lcom/facebook/ads/redexgen/X/Cv;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Vt;->A07()V

    .line 9141
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/3b;->A05:Lcom/facebook/ads/redexgen/X/AD;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3b;->A07:Lcom/facebook/ads/redexgen/X/Cv;

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dh;->A13(Lcom/facebook/ads/redexgen/X/AD;Lcom/facebook/ads/redexgen/X/Vt;Z)I

    move-result v1

    .line 9142
    .local p0, "result":I
    const/4 v0, -0x4

    if-ne v1, v0, :cond_0

    .line 9143
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3b;->A07:Lcom/facebook/ads/redexgen/X/Cv;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BV;->A04()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9144
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/3b;->A03:Z

    .line 9145
    .end local p0    # "result":I
    .end local p1    # null:J
    :cond_0
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3b;->A00:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3b;->A09:[J

    iget v3, p0, Lcom/facebook/ads/redexgen/X/3b;->A01:I

    aget-wide v1, v0, v3

    cmp-long v0, v1, p1

    if-gtz v0, :cond_1

    .line 9146
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3b;->A0A:[Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;

    aget-object v0, v0, v3

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/3b;->A01(Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;)V

    .line 9147
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/3b;->A0A:[Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/3b;->A01:I

    const/4 v0, 0x0

    aput-object v0, v2, v1

    .line 9148
    add-int/2addr v1, v4

    rem-int/2addr v1, v5

    iput v1, p0, Lcom/facebook/ads/redexgen/X/3b;->A01:I

    .line 9149
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3b;->A00:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3b;->A00:I

    .line 9150
    :cond_1
    return-void

    .line 9151
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3b;->A07:Lcom/facebook/ads/redexgen/X/Cv;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BV;->A03()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 9152
    :cond_3
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/3b;->A07:Lcom/facebook/ads/redexgen/X/Cv;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3b;->A05:Lcom/facebook/ads/redexgen/X/AD;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AD;->A00:Lcom/facebook/ads/internal/exoplayer2/Format;

    iget-wide v0, v0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0G:J

    iput-wide v0, v2, Lcom/facebook/ads/redexgen/X/Cv;->A00:J

    .line 9153
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3b;->A07:Lcom/facebook/ads/redexgen/X/Cv;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Vt;->A08()V

    .line 9154
    :try_start_0
    iget v3, p0, Lcom/facebook/ads/redexgen/X/3b;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3b;->A00:I

    add-int/2addr v3, v0

    rem-int/2addr v3, v5

    .line 9155
    .local p3, "index":I
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/3b;->A0A:[Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3b;->A02:Lcom/facebook/ads/redexgen/X/Du;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3b;->A07:Lcom/facebook/ads/redexgen/X/Cv;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Du;->A4e(Lcom/facebook/ads/redexgen/X/Cv;)Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;

    move-result-object v0

    aput-object v0, v2, v3

    .line 9156
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/3b;->A09:[J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3b;->A07:Lcom/facebook/ads/redexgen/X/Cv;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/Vt;->A00:J

    aput-wide v0, v2, v3

    .line 9157
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3b;->A00:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3b;->A00:I

    goto :goto_0
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/Dv; {:try_start_0 .. :try_end_0} :catch_0

    .line 9158
    :catch_0
    move-exception v1

    .line 9159
    .local p1, "e":Lcom/facebook/ads/redexgen/X/Dv;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dh;->A11()I

    move-result v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/A0;->A01(Ljava/lang/Exception;I)Lcom/facebook/ads/redexgen/X/A0;

    move-result-object v0

    throw v0
.end method

.method public final AEI(Lcom/facebook/ads/internal/exoplayer2/Format;)I
    .locals 2

    .line 9160
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3b;->A06:Lcom/facebook/ads/redexgen/X/Dw;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Dw;->AEJ(Lcom/facebook/ads/internal/exoplayer2/Format;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9161
    const/4 v1, 0x0

    iget-object v0, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0H:Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Dh;->A10(Lcom/facebook/ads/redexgen/X/C0;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .line 9162
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 9163
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 9164
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/3b;->A02(Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;)V

    .line 9165
    const/4 v0, 0x1

    return v0

    .line 9166
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
