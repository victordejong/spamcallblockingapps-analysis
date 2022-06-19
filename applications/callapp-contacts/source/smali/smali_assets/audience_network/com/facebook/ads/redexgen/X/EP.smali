.class public abstract Lcom/facebook/ads/redexgen/X/EP;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/YH;
.implements Lcom/facebook/ads/redexgen/X/AY;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:J

.field public A03:Lcom/facebook/ads/redexgen/X/AZ;

.field public A04:Lcom/facebook/ads/redexgen/X/FZ;

.field public A05:Z

.field public A06:Z

.field public A07:[Lcom/facebook/ads/internal/exoplayer2/Format;

.field public final A08:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 29125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29126
    iput p1, p0, Lcom/facebook/ads/redexgen/X/EP;->A08:I

    .line 29127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/EP;->A05:Z

    .line 29128
    return-void
.end method

.method public static A0z(Lcom/facebook/ads/redexgen/X/C0;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;)Z
    .locals 0
    .param p0    # Lcom/facebook/ads/redexgen/X/C0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/C0<",
            "*>;",
            "Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;",
            ")Z"
        }
    .end annotation

    .line 29129
    .local p1, "drmSessionManager":Lcom/facebook/ads/redexgen/X/C0;, "Lcom/facebook/ads/internal/exoplayer2/drm/DrmSessionManager<*>;"
    if-nez p1, :cond_0

    .line 29130
    const/4 p0, 0x1

    return p0

    .line 29131
    :cond_0
    if-nez p0, :cond_1

    .line 29132
    const/4 p0, 0x0

    return p0

    .line 29133
    :cond_1
    invoke-interface {p0, p1}, Lcom/facebook/ads/redexgen/X/C0;->A3y(Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final A10()I
    .locals 1

    .line 29134
    iget v0, p0, Lcom/facebook/ads/redexgen/X/EP;->A00:I

    return v0
.end method

.method public final A11(J)I
    .locals 3

    .line 29135
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/EP;->A04:Lcom/facebook/ads/redexgen/X/FZ;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/EP;->A02:J

    sub-long/2addr p1, v0

    invoke-interface {v2, p1, p2}, Lcom/facebook/ads/redexgen/X/FZ;->AE2(J)I

    move-result v0

    return v0
.end method

.method public final A12(Lcom/facebook/ads/redexgen/X/AD;Lcom/facebook/ads/redexgen/X/YY;Z)I
    .locals 7

    .line 29136
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EP;->A04:Lcom/facebook/ads/redexgen/X/FZ;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/FZ;->ACn(Lcom/facebook/ads/redexgen/X/AD;Lcom/facebook/ads/redexgen/X/YY;Z)I

    move-result v6

    .line 29137
    .local p0, "result":I
    const/4 v1, -0x4

    if-ne v6, v1, :cond_2

    .line 29138
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/BV;->A04()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/EP;->A05:Z

    .line 29140
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/EP;->A06:Z

    if-eqz v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x3

    goto :goto_0

    .line 29141
    :cond_1
    iget-wide v2, p2, Lcom/facebook/ads/redexgen/X/YY;->A00:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/EP;->A02:J

    add-long/2addr v2, v0

    iput-wide v2, p2, Lcom/facebook/ads/redexgen/X/YY;->A00:J

    goto :goto_1

    .line 29142
    :cond_2
    const/4 v0, -0x5

    if-ne v6, v0, :cond_3

    .line 29143
    iget-object v5, p1, Lcom/facebook/ads/redexgen/X/AD;->A00:Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 29144
    .local p1, "format":Lcom/facebook/ads/internal/exoplayer2/Format;
    iget-wide v3, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A0G:J

    const-wide v1, 0x7fffffffffffffffL

    cmp-long v0, v3, v1

    if-eqz v0, :cond_3

    .line 29145
    iget-wide v2, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A0G:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/EP;->A02:J

    add-long/2addr v2, v0

    invoke-virtual {v5, v2, v3}, Lcom/facebook/ads/internal/exoplayer2/Format;->A0I(J)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    .line 29146
    iput-object v0, p1, Lcom/facebook/ads/redexgen/X/AD;->A00:Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 29147
    .end local p1    # "format":Lcom/facebook/ads/internal/exoplayer2/Format;
    :cond_3
    :goto_1
    return v6
.end method

.method public final A13()Lcom/facebook/ads/redexgen/X/AZ;
    .locals 1

    .line 29148
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EP;->A03:Lcom/facebook/ads/redexgen/X/AZ;

    return-object v0
.end method

.method public A14()V
    .locals 0

    .line 29149
    return-void
.end method

.method public A15()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 29150
    return-void
.end method

.method public A16()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 29151
    return-void
.end method

.method public A17(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 29152
    return-void
.end method

.method public A18(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 29153
    return-void
.end method

.method public A19([Lcom/facebook/ads/internal/exoplayer2/Format;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 29154
    return-void
.end method

.method public final A1A()Z
    .locals 1

    .line 29155
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/EP;->A05:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/EP;->A06:Z

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EP;->A04:Lcom/facebook/ads/redexgen/X/FZ;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/FZ;->A89()Z

    move-result v0

    goto :goto_0
.end method

.method public final A1B()[Lcom/facebook/ads/internal/exoplayer2/Format;
    .locals 1

    .line 29156
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EP;->A07:[Lcom/facebook/ads/internal/exoplayer2/Format;

    return-object v0
.end method

.method public final A4m()V
    .locals 3

    .line 29157
    iget v2, p0, Lcom/facebook/ads/redexgen/X/EP;->A01:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 29158
    iput v1, p0, Lcom/facebook/ads/redexgen/X/EP;->A01:I

    .line 29159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/EP;->A04:Lcom/facebook/ads/redexgen/X/FZ;

    .line 29160
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/EP;->A07:[Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 29161
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/EP;->A06:Z

    .line 29162
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/EP;->A14()V

    .line 29163
    return-void

    .line 29164
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A58(Lcom/facebook/ads/redexgen/X/AZ;[Lcom/facebook/ads/internal/exoplayer2/Format;Lcom/facebook/ads/redexgen/X/FZ;JZJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 29165
    iget v0, p0, Lcom/facebook/ads/redexgen/X/EP;->A01:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 29166
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/EP;->A03:Lcom/facebook/ads/redexgen/X/AZ;

    .line 29167
    iput v1, p0, Lcom/facebook/ads/redexgen/X/EP;->A01:I

    .line 29168
    invoke-virtual {p0, p6}, Lcom/facebook/ads/redexgen/X/EP;->A18(Z)V

    .line 29169
    invoke-virtual {p0, p2, p3, p7, p8}, Lcom/facebook/ads/redexgen/X/EP;->ADE([Lcom/facebook/ads/internal/exoplayer2/Format;Lcom/facebook/ads/redexgen/X/FZ;J)V

    .line 29170
    invoke-virtual {p0, p4, p5, p6}, Lcom/facebook/ads/redexgen/X/EP;->A17(JZ)V

    .line 29171
    return-void

    .line 29172
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A5q()Lcom/facebook/ads/redexgen/X/AY;
    .locals 0

    .line 29173
    return-object p0
.end method

.method public A6k()Lcom/facebook/ads/redexgen/X/ID;
    .locals 1

    .line 29174
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A7F()I
    .locals 1

    .line 29175
    iget v0, p0, Lcom/facebook/ads/redexgen/X/EP;->A01:I

    return v0
.end method

.method public final A7K()Lcom/facebook/ads/redexgen/X/FZ;
    .locals 1

    .line 29176
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EP;->A04:Lcom/facebook/ads/redexgen/X/FZ;

    return-object v0
.end method

.method public final A7P()I
    .locals 1

    .line 29177
    iget v0, p0, Lcom/facebook/ads/redexgen/X/EP;->A08:I

    return v0
.end method

.method public A7Y(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 29178
    return-void
.end method

.method public final A7c()Z
    .locals 1

    .line 29179
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/EP;->A05:Z

    return v0
.end method

.method public final A7w()Z
    .locals 1

    .line 29180
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/EP;->A06:Z

    return v0
.end method

.method public final A92()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29181
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EP;->A04:Lcom/facebook/ads/redexgen/X/FZ;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/FZ;->A8z()V

    .line 29182
    return-void
.end method

.method public final ADE([Lcom/facebook/ads/internal/exoplayer2/Format;Lcom/facebook/ads/redexgen/X/FZ;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 29183
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/EP;->A06:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 29184
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/EP;->A04:Lcom/facebook/ads/redexgen/X/FZ;

    .line 29185
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/EP;->A05:Z

    .line 29186
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/EP;->A07:[Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 29187
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/EP;->A02:J

    .line 29188
    invoke-virtual {p0, p1, p3, p4}, Lcom/facebook/ads/redexgen/X/EP;->A19([Lcom/facebook/ads/internal/exoplayer2/Format;J)V

    .line 29189
    return-void
.end method

.method public final ADO(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 29190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/EP;->A06:Z

    .line 29191
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/EP;->A05:Z

    .line 29192
    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/EP;->A17(JZ)V

    .line 29193
    return-void
.end method

.method public final ADi()V
    .locals 1

    .line 29194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/EP;->A06:Z

    .line 29195
    return-void
.end method

.method public final ADk(I)V
    .locals 0

    .line 29196
    iput p1, p0, Lcom/facebook/ads/redexgen/X/EP;->A00:I

    .line 29197
    return-void
.end method

.method public AEI()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 29198
    const/4 v0, 0x0

    return v0
.end method

.method public final start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 29199
    iget v1, p0, Lcom/facebook/ads/redexgen/X/EP;->A01:I

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 29200
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/EP;->A01:I

    .line 29201
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/EP;->A15()V

    .line 29202
    return-void

    .line 29203
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final stop()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 29204
    iget v2, p0, Lcom/facebook/ads/redexgen/X/EP;->A01:I

    const/4 v1, 0x1

    const/4 v0, 0x2

    if-ne v2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 29205
    iput v1, p0, Lcom/facebook/ads/redexgen/X/EP;->A01:I

    .line 29206
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/EP;->A16()V

    .line 29207
    return-void

    .line 29208
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
