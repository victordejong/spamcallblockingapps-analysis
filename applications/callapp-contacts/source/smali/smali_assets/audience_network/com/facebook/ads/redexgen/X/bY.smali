.class public final Lcom/facebook/ads/redexgen/X/bY;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/HI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Hj;,
        Lcom/facebook/ads/internal/exoplayer2/upstream/cache/CacheDataSource$CacheIgnoredReason;,
        Lcom/facebook/ads/internal/exoplayer2/upstream/cache/CacheDataSource$Flags;
    }
.end annotation


# static fields
.field public static A0L:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:J

.field public A02:J

.field public A03:J

.field public A04:J

.field public A05:Landroid/net/Uri;

.field public A06:Landroid/net/Uri;

.field public A07:Lcom/facebook/ads/redexgen/X/HI;

.field public A08:Lcom/facebook/ads/redexgen/X/Hl;

.field public A09:Ljava/lang/String;

.field public A0A:Z

.field public A0B:Z

.field public A0C:Z

.field public final A0D:Lcom/facebook/ads/redexgen/X/HI;

.field public final A0E:Lcom/facebook/ads/redexgen/X/HI;

.field public final A0F:Lcom/facebook/ads/redexgen/X/HI;

.field public final A0G:Lcom/facebook/ads/redexgen/X/Hh;

.field public final A0H:Lcom/facebook/ads/redexgen/X/Hj;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A0I:Z

.field public final A0J:Z

.field public final A0K:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/bY;->A05()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Hh;Lcom/facebook/ads/redexgen/X/HI;Lcom/facebook/ads/redexgen/X/HI;Lcom/facebook/ads/redexgen/X/HG;ILcom/facebook/ads/redexgen/X/Hj;)V
    .locals 2
    .param p6    # Lcom/facebook/ads/redexgen/X/Hj;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 70088
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70089
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bY;->A0G:Lcom/facebook/ads/redexgen/X/Hh;

    .line 70090
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/bY;->A0D:Lcom/facebook/ads/redexgen/X/HI;

    .line 70091
    and-int/lit8 v0, p5, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bY;->A0I:Z

    .line 70092
    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bY;->A0K:Z

    .line 70093
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/bY;->A0J:Z

    .line 70094
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/bY;->A0F:Lcom/facebook/ads/redexgen/X/HI;

    .line 70095
    if-eqz p4, :cond_1

    .line 70096
    new-instance v0, Lcom/facebook/ads/redexgen/X/bT;

    invoke-direct {v0, p2, p4}, Lcom/facebook/ads/redexgen/X/bT;-><init>(Lcom/facebook/ads/redexgen/X/HI;Lcom/facebook/ads/redexgen/X/HG;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bY;->A0E:Lcom/facebook/ads/redexgen/X/HI;

    .line 70097
    :goto_2
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/bY;->A0H:Lcom/facebook/ads/redexgen/X/Hj;

    .line 70098
    return-void

    .line 70099
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bY;->A0E:Lcom/facebook/ads/redexgen/X/HI;

    goto :goto_2

    .line 70100
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 70101
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/HM;)I
    .locals 5

    .line 70102
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bY;->A0K:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bY;->A0C:Z

    if-eqz v0, :cond_0

    .line 70103
    const/4 v0, 0x0

    return v0

    .line 70104
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bY;->A0J:Z

    if-eqz v0, :cond_1

    iget-wide v3, p1, Lcom/facebook/ads/redexgen/X/HM;->A02:J

    const-wide/16 v1, -0x1

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    .line 70105
    const/4 v0, 0x1

    return v0

    .line 70106
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/Hh;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .line 70107
    invoke-interface {p0, p1}, Lcom/facebook/ads/redexgen/X/Hh;->A61(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Hr;

    move-result-object p0

    .line 70108
    .local p0, "contentMetadata":Lcom/facebook/ads/redexgen/X/Hr;
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Hs;->A01(Lcom/facebook/ads/redexgen/X/Hr;)Landroid/net/Uri;

    move-result-object p0

    .line 70109
    .local p1, "redirectedUri":Landroid/net/Uri;
    if-nez p0, :cond_0

    :goto_0
    return-object p2

    :cond_0
    move-object p2, p0

    goto :goto_0
.end method

.method private A02()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70110
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bY;->A07:Lcom/facebook/ads/redexgen/X/HI;

    if-nez v1, :cond_0

    .line 70111
    return-void

    .line 70112
    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v1}, Lcom/facebook/ads/redexgen/X/HI;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70113
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/bY;->A07:Lcom/facebook/ads/redexgen/X/HI;

    .line 70114
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bY;->A0A:Z

    .line 70115
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bY;->A08:Lcom/facebook/ads/redexgen/X/Hl;

    if-eqz v1, :cond_1

    .line 70116
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bY;->A0G:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Hh;->AD3(Lcom/facebook/ads/redexgen/X/Hl;)V

    .line 70117
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/bY;->A08:Lcom/facebook/ads/redexgen/X/Hl;

    .line 70118
    :cond_1
    return-void

    .line 70119
    :catchall_0
    move-exception v2

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/bY;->A07:Lcom/facebook/ads/redexgen/X/HI;

    .line 70120
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bY;->A0A:Z

    .line 70121
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bY;->A08:Lcom/facebook/ads/redexgen/X/Hl;

    if-eqz v1, :cond_2

    .line 70122
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bY;->A0G:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Hh;->AD3(Lcom/facebook/ads/redexgen/X/Hl;)V

    .line 70123
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/bY;->A08:Lcom/facebook/ads/redexgen/X/Hl;

    .line 70124
    :cond_2
    throw v2
.end method

.method private A03()V
    .locals 5

    .line 70125
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bY;->A0H:Lcom/facebook/ads/redexgen/X/Hj;

    if-eqz v0, :cond_0

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/bY;->A04:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    .line 70126
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bY;->A0G:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Hh;->A5n()J

    const/4 v0, 0x0

    throw v0

    .line 70127
    :cond_0
    return-void
.end method

.method private A04()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70128
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/bY;->A01:J

    .line 70129
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/bY;->A0B()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70130
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/bY;->A0G:Lcom/facebook/ads/redexgen/X/Hh;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/bY;->A09:Ljava/lang/String;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/bY;->A03:J

    invoke-interface {v3, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Hh;->ADh(Ljava/lang/String;J)V

    .line 70131
    :cond_0
    return-void
.end method

.method public static A05()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "xvXnimfZlroovEtMoHYEYdvHQmTptcRb"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "VShQwZMBIZykoEi"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "P7iiojcQSdjMkPZizdNAiKDH8422CMpJ"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "OxKv"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "P8zJvNho1beYtiBqU3s9pOljEd8sbOL5"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Bz35mpVTEU3xTv8hVu6cT493QseTsu6A"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "YnRJs9xpv2Ig79N4M2dWIXRLqnd73xG0"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "iIjgXD4YmMEy6XOGrZ4fgbIBHD"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/bY;->A0L:[Ljava/lang/String;

    return-void
.end method

.method private A06(Ljava/io/IOException;)V
    .locals 1

    .line 70132
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/bY;->A09()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/Hf;

    if-eqz v0, :cond_1

    .line 70133
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bY;->A0C:Z

    .line 70134
    :cond_1
    return-void
.end method

.method private A07(Z)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70135
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/facebook/ads/redexgen/X/bY;->A0B:Z

    if-eqz v1, :cond_14

    .line 70136
    const/4 v1, 0x0

    .line 70137
    .local p0, "nextSpan":Lcom/facebook/ads/redexgen/X/Hl;
    .local p0, "nextSpan":Lcom/facebook/ads/redexgen/X/Hl;
    :goto_0
    const-wide/16 v9, -0x1

    if-nez v1, :cond_c

    .line 70138
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/bY;->A0F:Lcom/facebook/ads/redexgen/X/HI;

    .line 70139
    .local v1, "nextDataSource":Lcom/facebook/ads/redexgen/X/HI;
    new-instance v11, Lcom/facebook/ads/redexgen/X/HM;

    iget-object v12, v0, Lcom/facebook/ads/redexgen/X/bY;->A06:Landroid/net/Uri;

    iget-wide v13, v0, Lcom/facebook/ads/redexgen/X/bY;->A03:J

    iget-wide v15, v0, Lcom/facebook/ads/redexgen/X/bY;->A01:J

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/bY;->A09:Ljava/lang/String;

    iget v2, v0, Lcom/facebook/ads/redexgen/X/bY;->A00:I

    move-object/from16 v17, v4

    move/from16 v18, v2

    invoke-direct/range {v11 .. v18}, Lcom/facebook/ads/redexgen/X/HM;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    .line 70140
    .local v9, "nextDataSpec":Lcom/facebook/ads/redexgen/X/HM;
    .end local p0    # "nextSpan":Lcom/facebook/ads/redexgen/X/Hl;
    .end local v3
    .local v1, "nextDataSource":Lcom/facebook/ads/redexgen/X/HI;
    .local v9, "nextSpan":Lcom/facebook/ads/redexgen/X/Hl;
    :goto_1
    iget-boolean v6, v0, Lcom/facebook/ads/redexgen/X/bY;->A0B:Z

    sget-object v4, Lcom/facebook/ads/redexgen/X/bY;->A0L:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v4, v4, v2

    const/16 v2, 0xd

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v2, 0x76

    if-eq v4, v2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v5, Lcom/facebook/ads/redexgen/X/bY;->A0L:[Ljava/lang/String;

    const-string v4, "KvwFMKvPDdyoDof7jewHEr1dZonPaeal"

    const/4 v2, 0x0

    aput-object v4, v5, v2

    const-string v4, "fxC7lv0XmsujX3kF6ChIFpCKa92dKX8Z"

    const/4 v2, 0x6

    aput-object v4, v5, v2

    if-nez v6, :cond_2

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/bY;->A0F:Lcom/facebook/ads/redexgen/X/HI;

    if-ne v3, v2, :cond_2

    .line 70141
    iget-wide v4, v0, Lcom/facebook/ads/redexgen/X/bY;->A03:J

    const-wide/32 v6, 0x19000

    add-long/2addr v4, v6

    .line 70142
    :goto_2
    iput-wide v4, v0, Lcom/facebook/ads/redexgen/X/bY;->A02:J

    .line 70143
    if-eqz p1, :cond_4

    .line 70144
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/bY;->A08()Z

    move-result v2

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 70145
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/bY;->A0F:Lcom/facebook/ads/redexgen/X/HI;

    if-ne v3, v2, :cond_3

    .line 70146
    return-void

    .line 70147
    :cond_2
    const-wide v4, 0x7fffffffffffffffL

    goto :goto_2

    .line 70148
    :cond_3
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/bY;->A02()V

    .line 70149
    .end local p0
    :cond_4
    if-eqz v1, :cond_5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Hl;->A01()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 70150
    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/bY;->A08:Lcom/facebook/ads/redexgen/X/Hl;

    .line 70151
    :cond_5
    iput-object v3, v0, Lcom/facebook/ads/redexgen/X/bY;->A07:Lcom/facebook/ads/redexgen/X/HI;

    .line 70152
    iget-wide v4, v11, Lcom/facebook/ads/redexgen/X/HM;->A02:J

    const/4 v8, 0x1

    cmp-long v1, v4, v9

    if-nez v1, :cond_b

    const/4 v1, 0x1

    :goto_3
    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/bY;->A0A:Z

    .line 70153
    invoke-interface {v3, v11}, Lcom/facebook/ads/redexgen/X/HI;->ACC(Lcom/facebook/ads/redexgen/X/HM;)J

    move-result-wide v5

    .line 70154
    .local v3, "resolvedLength":J
    new-instance v4, Lcom/facebook/ads/redexgen/X/Ht;

    invoke-direct {v4}, Lcom/facebook/ads/redexgen/X/Ht;-><init>()V

    .line 70155
    .local v12, "mutations":Lcom/facebook/ads/redexgen/X/Ht;
    iget-boolean v1, v0, Lcom/facebook/ads/redexgen/X/bY;->A0A:Z

    if-eqz v1, :cond_6

    cmp-long v7, v5, v9

    sget-object v3, Lcom/facebook/ads/redexgen/X/bY;->A0L:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v2, v3, v1

    const/4 v1, 0x6

    aget-object v3, v3, v1

    const/16 v1, 0x1d

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v2, v1, :cond_0

    sget-object v3, Lcom/facebook/ads/redexgen/X/bY;->A0L:[Ljava/lang/String;

    const-string v2, "rfibpnYYT7oq3SE3U0OfIBxRp9qsAWQT"

    const/4 v1, 0x0

    aput-object v2, v3, v1

    const-string v2, "JzsYqi5M8NJiAfZVcvXbGjq2yK7Lit7o"

    const/4 v1, 0x6

    aput-object v2, v3, v1

    if-eqz v7, :cond_6

    .line 70156
    iput-wide v5, v0, Lcom/facebook/ads/redexgen/X/bY;->A01:J

    .line 70157
    iget-wide v5, v0, Lcom/facebook/ads/redexgen/X/bY;->A03:J

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/bY;->A01:J

    add-long/2addr v5, v1

    invoke-static {v4, v5, v6}, Lcom/facebook/ads/redexgen/X/Hs;->A05(Lcom/facebook/ads/redexgen/X/Ht;J)V

    .line 70158
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/bY;->A0A()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 70159
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/bY;->A07:Lcom/facebook/ads/redexgen/X/HI;

    invoke-interface {v1}, Lcom/facebook/ads/redexgen/X/HI;->A7R()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/bY;->A05:Landroid/net/Uri;

    .line 70160
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/bY;->A06:Landroid/net/Uri;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/bY;->A05:Landroid/net/Uri;

    invoke-virtual {v2, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v8, v1

    .line 70161
    .local p0, "isRedirected":Z
    if-eqz v8, :cond_a

    .line 70162
    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/bY;->A05:Landroid/net/Uri;

    sget-object v3, Lcom/facebook/ads/redexgen/X/bY;->A0L:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v2, v3, v1

    const/4 v1, 0x6

    aget-object v3, v3, v1

    const/16 v1, 0x1d

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v2, v1, :cond_9

    sget-object v3, Lcom/facebook/ads/redexgen/X/bY;->A0L:[Ljava/lang/String;

    const-string v2, "ZUbplsDkGQ2eIUx"

    const/4 v1, 0x1

    aput-object v2, v3, v1

    invoke-static {v4, v5}, Lcom/facebook/ads/redexgen/X/Hs;->A06(Lcom/facebook/ads/redexgen/X/Ht;Landroid/net/Uri;)V

    .line 70163
    .end local p0    # "isRedirected":Z
    :cond_7
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/bY;->A0B()Z

    move-result v5

    sget-object v3, Lcom/facebook/ads/redexgen/X/bY;->A0L:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v2, v3, v1

    const/4 v1, 0x6

    aget-object v3, v3, v1

    const/16 v1, 0x1d

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v2, v1, :cond_17

    sget-object v3, Lcom/facebook/ads/redexgen/X/bY;->A0L:[Ljava/lang/String;

    const-string v2, "TYUadxfFh4EA22dSKzJNDq7wo1"

    const/4 v1, 0x7

    aput-object v2, v3, v1

    const-string v2, "qycP"

    const/4 v1, 0x3

    aput-object v2, v3, v1

    if-eqz v5, :cond_8

    .line 70164
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/bY;->A0G:Lcom/facebook/ads/redexgen/X/Hh;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/bY;->A09:Ljava/lang/String;

    invoke-interface {v1, v0, v4}, Lcom/facebook/ads/redexgen/X/Hh;->A3R(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ht;)V

    .line 70165
    :cond_8
    return-void

    :cond_9
    sget-object v3, Lcom/facebook/ads/redexgen/X/bY;->A0L:[Ljava/lang/String;

    const-string v2, "maM98InkYobA9Ucv5ADUn4EtGMwEmyQA"

    const/4 v1, 0x0

    aput-object v2, v3, v1

    const-string v2, "AIUrjRExFhVdShuhpMN8pAFUNrsIDDQG"

    const/4 v1, 0x6

    aput-object v2, v3, v1

    invoke-static {v4, v5}, Lcom/facebook/ads/redexgen/X/Hs;->A06(Lcom/facebook/ads/redexgen/X/Ht;Landroid/net/Uri;)V

    goto :goto_4

    .line 70166
    :cond_a
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Hs;->A04(Lcom/facebook/ads/redexgen/X/Ht;)V

    goto :goto_4

    .line 70167
    :cond_b
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 70168
    .end local v1    # "nextDataSource":Lcom/facebook/ads/redexgen/X/HI;
    .end local v9    # "nextSpan":Lcom/facebook/ads/redexgen/X/Hl;
    :cond_c
    iget-boolean v5, v1, Lcom/facebook/ads/redexgen/X/Hl;->A05:Z

    sget-object v3, Lcom/facebook/ads/redexgen/X/bY;->A0L:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v2, v3, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v2, 0xf

    if-eq v3, v2, :cond_d

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_d
    sget-object v4, Lcom/facebook/ads/redexgen/X/bY;->A0L:[Ljava/lang/String;

    const-string v3, "1UJmYg9w0Ah8MKa"

    const/4 v2, 0x1

    aput-object v3, v4, v2

    if-eqz v5, :cond_f

    .line 70169
    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/Hl;->A03:Ljava/io/File;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v12

    .line 70170
    .local v1, "fileUri":Landroid/net/Uri;
    iget-wide v15, v0, Lcom/facebook/ads/redexgen/X/bY;->A03:J

    iget-wide v2, v1, Lcom/facebook/ads/redexgen/X/Hl;->A02:J

    sub-long/2addr v15, v2

    .line 70171
    .local v2, "filePosition":J
    iget-wide v2, v1, Lcom/facebook/ads/redexgen/X/Hl;->A01:J

    sub-long/2addr v2, v15

    .line 70172
    .local v9, "length":J
    iget-wide v4, v0, Lcom/facebook/ads/redexgen/X/bY;->A01:J

    cmp-long v6, v4, v9

    if-eqz v6, :cond_e

    .line 70173
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 70174
    .end local v9    # "length":J
    .local v11, "length":J
    :cond_e
    new-instance v11, Lcom/facebook/ads/redexgen/X/HM;

    iget-wide v13, v0, Lcom/facebook/ads/redexgen/X/bY;->A03:J

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/bY;->A09:Ljava/lang/String;

    iget v4, v0, Lcom/facebook/ads/redexgen/X/bY;->A00:I

    move-wide/from16 v17, v2

    move-object/from16 v19, v5

    move/from16 v20, v4

    invoke-direct/range {v11 .. v20}, Lcom/facebook/ads/redexgen/X/HM;-><init>(Landroid/net/Uri;JJJLjava/lang/String;I)V

    .line 70175
    .local v9, "nextDataSpec":Lcom/facebook/ads/redexgen/X/HM;
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/bY;->A0D:Lcom/facebook/ads/redexgen/X/HI;

    .line 70176
    .end local v2    # "filePosition":J
    .end local v11    # "length":J
    .local v1, "nextDataSource":Lcom/facebook/ads/redexgen/X/HI;
    goto/16 :goto_1

    .line 70177
    .end local v1    # "nextDataSource":Lcom/facebook/ads/redexgen/X/HI;
    .end local v9    # "nextDataSpec":Lcom/facebook/ads/redexgen/X/HM;
    :cond_f
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Hl;->A02()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 70178
    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/bY;->A01:J

    .line 70179
    .local v1, "length":J
    :cond_10
    :goto_5
    new-instance v11, Lcom/facebook/ads/redexgen/X/HM;

    iget-object v12, v0, Lcom/facebook/ads/redexgen/X/bY;->A06:Landroid/net/Uri;

    iget-wide v13, v0, Lcom/facebook/ads/redexgen/X/bY;->A03:J

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/bY;->A09:Ljava/lang/String;

    iget v4, v0, Lcom/facebook/ads/redexgen/X/bY;->A00:I

    move-wide v15, v2

    move-object/from16 v17, v5

    move/from16 v18, v4

    invoke-direct/range {v11 .. v18}, Lcom/facebook/ads/redexgen/X/HM;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    .line 70180
    .local v6, "nextDataSpec":Lcom/facebook/ads/redexgen/X/HM;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/bY;->A0E:Lcom/facebook/ads/redexgen/X/HI;

    if-eqz v2, :cond_13

    .line 70181
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/bY;->A0E:Lcom/facebook/ads/redexgen/X/HI;

    .local v3, "nextDataSource":Lcom/facebook/ads/redexgen/X/HI;
    goto/16 :goto_1

    .line 70182
    .end local v1    # "length":J
    :cond_11
    iget-wide v2, v1, Lcom/facebook/ads/redexgen/X/Hl;->A01:J

    sget-object v5, Lcom/facebook/ads/redexgen/X/bY;->A0L:[Ljava/lang/String;

    const/4 v4, 0x5

    aget-object v5, v5, v4

    const/16 v4, 0xd

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v4, 0x76

    if-eq v5, v4, :cond_12

    .line 70183
    .restart local v1    # "length":J
    iget-wide v4, v0, Lcom/facebook/ads/redexgen/X/bY;->A01:J

    cmp-long v6, v4, v9

    if-eqz v6, :cond_10

    .line 70184
    :goto_6
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    goto :goto_5

    .line 70185
    .restart local v1    # "length":J
    :cond_12
    sget-object v6, Lcom/facebook/ads/redexgen/X/bY;->A0L:[Ljava/lang/String;

    const-string v5, "PC7XIFFDC47aQsnqIkxNyje9RJvaJdFU"

    const/4 v4, 0x4

    aput-object v5, v6, v4

    const-string v5, "PcakhZiXuGMneXp1j61qedRiaoGK74TH"

    const/4 v4, 0x2

    aput-object v5, v6, v4

    iget-wide v4, v0, Lcom/facebook/ads/redexgen/X/bY;->A01:J

    cmp-long v6, v4, v9

    if-eqz v6, :cond_10

    goto :goto_6

    .line 70186
    .end local v3    # "nextDataSource":Lcom/facebook/ads/redexgen/X/HI;
    :cond_13
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/bY;->A0F:Lcom/facebook/ads/redexgen/X/HI;

    .line 70187
    .restart local v3    # "nextDataSource":Lcom/facebook/ads/redexgen/X/HI;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/bY;->A0G:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-interface {v2, v1}, Lcom/facebook/ads/redexgen/X/Hh;->AD3(Lcom/facebook/ads/redexgen/X/Hl;)V

    .line 70188
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 70189
    .end local p0
    :cond_14
    iget-boolean v1, v0, Lcom/facebook/ads/redexgen/X/bY;->A0I:Z

    if-eqz v1, :cond_15

    .line 70190
    :try_start_1
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/bY;->A0G:Lcom/facebook/ads/redexgen/X/Hh;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/bY;->A09:Ljava/lang/String;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/bY;->A03:J

    invoke-interface {v4, v3, v1, v2}, Lcom/facebook/ads/redexgen/X/Hh;->AE8(Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/Hl;

    move-result-object v1

    goto/16 :goto_0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 70191
    .end local p0
    :cond_15
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/bY;->A0G:Lcom/facebook/ads/redexgen/X/Hh;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/bY;->A09:Ljava/lang/String;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/bY;->A03:J

    invoke-interface {v4, v3, v1, v2}, Lcom/facebook/ads/redexgen/X/Hh;->AE9(Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/Hl;

    move-result-object v1

    goto/16 :goto_0

    .line 70192
    :catchall_0
    move-exception v3

    .line 70193
    .local p0, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Hl;->A01()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 70194
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/bY;->A0G:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Hh;->AD3(Lcom/facebook/ads/redexgen/X/Hl;)V

    .line 70195
    :cond_16
    throw v3

    :cond_17
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 70196
    .end local p0    # "e":Ljava/lang/Throwable;
    .local p0, "e":Ljava/lang/InterruptedException;
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 70197
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
.end method

.method private A08()Z
    .locals 2

    .line 70198
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bY;->A07:Lcom/facebook/ads/redexgen/X/HI;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bY;->A0F:Lcom/facebook/ads/redexgen/X/HI;

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A09()Z
    .locals 2

    .line 70199
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bY;->A07:Lcom/facebook/ads/redexgen/X/HI;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bY;->A0D:Lcom/facebook/ads/redexgen/X/HI;

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0A()Z
    .locals 1

    .line 70200
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/bY;->A09()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private A0B()Z
    .locals 2

    .line 70201
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bY;->A07:Lcom/facebook/ads/redexgen/X/HI;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bY;->A0E:Lcom/facebook/ads/redexgen/X/HI;

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A0C(Ljava/io/IOException;)Z
    .locals 3

    .line 70202
    .local p0, "cause":Ljava/lang/Throwable;
    :goto_0
    if-eqz p0, :cond_1

    .line 70203
    instance-of v0, p0, Lcom/facebook/ads/redexgen/X/HJ;

    if-eqz v0, :cond_0

    .line 70204
    move-object v0, p0

    check-cast v0, Lcom/facebook/ads/redexgen/X/HJ;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/HJ;->A00:I

    .line 70205
    .local p0, "reason":I
    if-nez v0, :cond_0

    .line 70206
    const/4 v0, 0x1

    return v0

    .line 70207
    .end local p0    # "reason":I
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    .line 70208
    :cond_1
    const/4 p0, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/bY;->A0L:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x76

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/bY;->A0L:[Ljava/lang/String;

    const-string v1, "Fi50x9pU4R4a4ch"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return p0
.end method


# virtual methods
.method public final A7R()Landroid/net/Uri;
    .locals 1

    .line 70209
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bY;->A05:Landroid/net/Uri;

    return-object v0
.end method

.method public final ACC(Lcom/facebook/ads/redexgen/X/HM;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70210
    :try_start_0
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Hn;->A02(Lcom/facebook/ads/redexgen/X/HM;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bY;->A09:Ljava/lang/String;

    .line 70211
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/HM;->A04:Landroid/net/Uri;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bY;->A06:Landroid/net/Uri;

    .line 70212
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/bY;->A0G:Lcom/facebook/ads/redexgen/X/Hh;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bY;->A09:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bY;->A06:Landroid/net/Uri;

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bY;->A01(Lcom/facebook/ads/redexgen/X/Hh;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bY;->A05:Landroid/net/Uri;

    .line 70213
    iget v0, p1, Lcom/facebook/ads/redexgen/X/HM;->A00:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/bY;->A00:I

    .line 70214
    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/HM;->A03:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/bY;->A03:J

    .line 70215
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/bY;->A00(Lcom/facebook/ads/redexgen/X/HM;)I

    move-result v1

    .line 70216
    .local p0, "reason":I
    const/4 v0, -0x1

    const/4 v5, 0x0

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bY;->A0B:Z

    .line 70217
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bY;->A0B:Z

    .line 70218
    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/HM;->A02:J

    const-wide/16 v3, -0x1

    cmp-long v0, v1, v3

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bY;->A0B:Z

    if-eqz v0, :cond_3

    .line 70219
    .restart local v0
    :cond_1
    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/HM;->A02:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/bY;->A01:J

    .line 70220
    :cond_2
    :goto_1
    invoke-direct {p0, v5}, Lcom/facebook/ads/redexgen/X/bY;->A07(Z)V

    .line 70221
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/bY;->A01:J

    goto :goto_2

    .line 70222
    :cond_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bY;->A0G:Lcom/facebook/ads/redexgen/X/Hh;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bY;->A09:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A60(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/bY;->A01:J

    .line 70223
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/bY;->A01:J

    cmp-long v0, v1, v3

    if-eqz v0, :cond_2

    .line 70224
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/bY;->A01:J

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/HM;->A03:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/bY;->A01:J

    .line 70225
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/bY;->A01:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-lez v0, :cond_4

    goto :goto_1

    .line 70226
    :goto_2
    return-wide v0

    .line 70227
    :cond_4
    new-instance v0, Lcom/facebook/ads/redexgen/X/HJ;

    invoke-direct {v0, v5}, Lcom/facebook/ads/redexgen/X/HJ;-><init>(I)V

    .end local v0
    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70228
    .end local p0    # "reason":I
    :catch_0
    move-exception v0

    .line 70229
    .local p0, "e":Ljava/io/IOException;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/bY;->A06(Ljava/io/IOException;)V

    .line 70230
    throw v0
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70231
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bY;->A06:Landroid/net/Uri;

    .line 70232
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bY;->A05:Landroid/net/Uri;

    .line 70233
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/bY;->A03()V

    .line 70234
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/bY;->A02()V

    goto :goto_0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70235
    :catch_0
    move-exception v0

    .line 70236
    .local p0, "e":Ljava/io/IOException;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/bY;->A06(Ljava/io/IOException;)V

    .line 70237
    throw v0

    .line 70238
    :goto_0
    return-void
.end method

.method public final read([BII)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70239
    const/4 v5, 0x0

    if-nez p3, :cond_0

    .line 70240
    return v5

    .line 70241
    :cond_0
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/bY;->A01:J

    const-wide/16 v9, 0x0

    const/4 v4, -0x1

    cmp-long v2, v0, v9

    if-nez v2, :cond_1

    .line 70242
    return v4

    .line 70243
    :cond_1
    :try_start_0
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/bY;->A03:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/bY;->A02:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v6, v2, v0

    sget-object v2, Lcom/facebook/ads/redexgen/X/bY;->A0L:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    .line 70244
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 70245
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/bY;->A0L:[Ljava/lang/String;

    const-string v1, "DFL6VfCjI9oAtZuqjooU4v3Ar2"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "hOjd"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-ltz v6, :cond_3

    .line 70246
    :try_start_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/bY;->A07(Z)V

    .line 70247
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bY;->A07:Lcom/facebook/ads/redexgen/X/HI;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/HI;->read([BII)I

    move-result v3

    .line 70248
    .local p1, "bytesRead":I
    const-wide/16 v7, -0x1

    if-eq v3, v4, :cond_5

    .line 70249
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/bY;->A09()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 70250
    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/bY;->A04:J

    int-to-long v0, v3

    add-long/2addr v5, v0

    iput-wide v5, p0, Lcom/facebook/ads/redexgen/X/bY;->A04:J

    .line 70251
    :cond_4
    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/bY;->A03:J

    int-to-long v0, v3

    add-long/2addr v5, v0

    iput-wide v5, p0, Lcom/facebook/ads/redexgen/X/bY;->A03:J

    .line 70252
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/bY;->A01:J

    cmp-long v0, v1, v7

    if-eqz v0, :cond_8

    .line 70253
    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/bY;->A01:J

    int-to-long v0, v3

    sub-long/2addr v5, v0

    iput-wide v5, p0, Lcom/facebook/ads/redexgen/X/bY;->A01:J

    goto :goto_0

    .line 70254
    :cond_5
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bY;->A0A:Z

    if-eqz v0, :cond_6

    .line 70255
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/bY;->A04()V

    goto :goto_0

    .line 70256
    :cond_6
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/bY;->A01:J

    cmp-long v2, v0, v9

    if-gtz v2, :cond_7

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/bY;->A01:J

    cmp-long v2, v0, v7

    if-nez v2, :cond_8

    .line 70257
    :cond_7
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/bY;->A02()V

    .line 70258
    invoke-direct {p0, v5}, Lcom/facebook/ads/redexgen/X/bY;->A07(Z)V

    .line 70259
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/bY;->read([BII)I

    move-result v0

    return v0

    .line 70260
    :cond_8
    :goto_0
    return v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 70261
    .end local p1    # "bytesRead":I
    :catch_0
    move-exception v1

    .line 70262
    .local p0, "e":Ljava/io/IOException;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bY;->A0A:Z

    if-eqz v0, :cond_9

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/bY;->A0C(Ljava/io/IOException;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 70263
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/bY;->A04()V

    .line 70264
    return v4

    .line 70265
    :cond_9
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/bY;->A06(Ljava/io/IOException;)V

    .line 70266
    throw v1
.end method
