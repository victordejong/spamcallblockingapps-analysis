.class public final Lcom/facebook/ads/redexgen/X/Th;
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

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Th;->A05()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Hh;Lcom/facebook/ads/redexgen/X/HI;Lcom/facebook/ads/redexgen/X/HI;Lcom/facebook/ads/redexgen/X/HG;ILcom/facebook/ads/redexgen/X/Hj;)V
    .locals 2
    .param p4    # Lcom/facebook/ads/redexgen/X/HG;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/facebook/ads/redexgen/X/Hj;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 54974
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54975
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Th;->A0G:Lcom/facebook/ads/redexgen/X/Hh;

    .line 54976
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Th;->A0D:Lcom/facebook/ads/redexgen/X/HI;

    .line 54977
    and-int/lit8 v0, p5, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A0I:Z

    .line 54978
    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A0K:Z

    .line 54979
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Th;->A0J:Z

    .line 54980
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Th;->A0F:Lcom/facebook/ads/redexgen/X/HI;

    .line 54981
    if-eqz p4, :cond_1

    .line 54982
    new-instance v0, Lcom/facebook/ads/redexgen/X/Tk;

    invoke-direct {v0, p2, p4}, Lcom/facebook/ads/redexgen/X/Tk;-><init>(Lcom/facebook/ads/redexgen/X/HI;Lcom/facebook/ads/redexgen/X/HG;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A0E:Lcom/facebook/ads/redexgen/X/HI;

    .line 54983
    :goto_2
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/Th;->A0H:Lcom/facebook/ads/redexgen/X/Hj;

    .line 54984
    return-void

    .line 54985
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A0E:Lcom/facebook/ads/redexgen/X/HI;

    goto :goto_2

    .line 54986
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 54987
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/HM;)I
    .locals 5

    .line 54988
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A0K:Z

    if-eqz v0, :cond_1

    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Th;->A0C:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/Th;->A0L:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x66

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Th;->A0L:[Ljava/lang/String;

    const-string v1, "VsHR4gIRAJfFaCUTuyY74NeO3mJwJuHH"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    .line 54989
    const/4 v0, 0x0

    return v0

    .line 54990
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A0J:Z

    if-eqz v0, :cond_2

    iget-wide v3, p1, Lcom/facebook/ads/redexgen/X/HM;->A02:J

    const-wide/16 v1, -0x1

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    .line 54991
    const/4 v0, 0x1

    return v0

    .line 54992
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/Hh;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .line 54993
    invoke-interface {p0, p1}, Lcom/facebook/ads/redexgen/X/Hh;->A61(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Hr;

    move-result-object p0

    .line 54994
    .local p0, "contentMetadata":Lcom/facebook/ads/redexgen/X/Hr;
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Hs;->A01(Lcom/facebook/ads/redexgen/X/Hr;)Landroid/net/Uri;

    move-result-object p0

    .line 54995
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

    .line 54996
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Th;->A07:Lcom/facebook/ads/redexgen/X/HI;

    if-nez v1, :cond_0

    .line 54997
    return-void

    .line 54998
    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v1}, Lcom/facebook/ads/redexgen/X/HI;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54999
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/Th;->A07:Lcom/facebook/ads/redexgen/X/HI;

    .line 55000
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A0A:Z

    .line 55001
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Th;->A08:Lcom/facebook/ads/redexgen/X/Hl;

    if-eqz v1, :cond_1

    .line 55002
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A0G:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Hh;->AD3(Lcom/facebook/ads/redexgen/X/Hl;)V

    .line 55003
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/Th;->A08:Lcom/facebook/ads/redexgen/X/Hl;

    .line 55004
    :cond_1
    return-void

    .line 55005
    :catchall_0
    move-exception v2

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/Th;->A07:Lcom/facebook/ads/redexgen/X/HI;

    .line 55006
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A0A:Z

    .line 55007
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Th;->A08:Lcom/facebook/ads/redexgen/X/Hl;

    if-eqz v1, :cond_2

    .line 55008
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A0G:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Hh;->AD3(Lcom/facebook/ads/redexgen/X/Hl;)V

    .line 55009
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/Th;->A08:Lcom/facebook/ads/redexgen/X/Hl;

    .line 55010
    :cond_2
    throw v2
.end method

.method private A03()V
    .locals 5

    .line 55011
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A0H:Lcom/facebook/ads/redexgen/X/Hj;

    if-eqz v0, :cond_0

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Th;->A04:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    .line 55012
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A0G:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Hh;->A5n()J

    const/4 v0, 0x0

    throw v0

    .line 55013
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

    .line 55014
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A01:J

    .line 55015
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Th;->A0B()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55016
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Th;->A0G:Lcom/facebook/ads/redexgen/X/Hh;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Th;->A09:Ljava/lang/String;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A03:J

    invoke-interface {v3, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Hh;->ADi(Ljava/lang/String;J)V

    .line 55017
    :cond_0
    return-void
.end method

.method public static A05()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Anb09pJ5VIP2gvD4frN0CJAJui9p1f9Z"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Ej4vGhvE58d373uYdIq8gy11HwUA8GfX"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "87J1oYun4vqBMfyhWv8zLgGA9HcZpLMg"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "u75jWu9pxWcwTVi8HH9jBSDuIKrnEi64"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ukp1g0wYoaTK2bPKXXJiqQAr"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "tEra1vvWNgyFaaKQLc9ElBqvpkFQ6f5m"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Qvpm41sI9DPevJ5e8wWJNOVVOnto6k5U"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "x0emPJYpiDknlvWa3LJ0XYczYRoru5In"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Th;->A0L:[Ljava/lang/String;

    return-void
.end method

.method private A06(Ljava/io/IOException;)V
    .locals 1

    .line 55018
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Th;->A09()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/Hf;

    if-eqz v0, :cond_1

    .line 55019
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A0C:Z

    .line 55020
    :cond_1
    return-void
.end method

.method private A07(Z)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55021
    move-object/from16 v3, p0

    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/Th;->A0B:Z

    if-eqz v0, :cond_7

    .line 55022
    const/4 v2, 0x0

    .line 55023
    .local p0, "nextSpan":Lcom/facebook/ads/redexgen/X/Hl;
    .local p0, "nextSpan":Lcom/facebook/ads/redexgen/X/Hl;
    :goto_0
    const-wide/16 v10, -0x1

    if-nez v2, :cond_1

    .line 55024
    iget-object v4, v3, Lcom/facebook/ads/redexgen/X/Th;->A0F:Lcom/facebook/ads/redexgen/X/HI;

    .line 55025
    .local v2, "nextDataSource":Lcom/facebook/ads/redexgen/X/HI;
    new-instance v12, Lcom/facebook/ads/redexgen/X/HM;

    iget-object v13, v3, Lcom/facebook/ads/redexgen/X/Th;->A06:Landroid/net/Uri;

    iget-wide v14, v3, Lcom/facebook/ads/redexgen/X/Th;->A03:J

    iget-wide v0, v3, Lcom/facebook/ads/redexgen/X/Th;->A01:J

    iget-object v6, v3, Lcom/facebook/ads/redexgen/X/Th;->A09:Ljava/lang/String;

    iget v5, v3, Lcom/facebook/ads/redexgen/X/Th;->A00:I

    move-wide/from16 v16, v0

    move-object/from16 v18, v6

    move/from16 v19, v5

    invoke-direct/range {v12 .. v19}, Lcom/facebook/ads/redexgen/X/HM;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    .line 55026
    .local v10, "nextDataSpec":Lcom/facebook/ads/redexgen/X/HM;
    .end local p0    # "nextSpan":Lcom/facebook/ads/redexgen/X/Hl;
    .end local v4
    .local v2, "nextDataSource":Lcom/facebook/ads/redexgen/X/HI;
    .local v10, "nextSpan":Lcom/facebook/ads/redexgen/X/Hl;
    :goto_1
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/Th;->A0B:Z

    if-nez v0, :cond_0

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Th;->A0F:Lcom/facebook/ads/redexgen/X/HI;

    if-ne v4, v0, :cond_0

    .line 55027
    iget-wide v0, v3, Lcom/facebook/ads/redexgen/X/Th;->A03:J

    const-wide/32 v5, 0x19000

    add-long/2addr v0, v5

    .line 55028
    :goto_2
    iput-wide v0, v3, Lcom/facebook/ads/redexgen/X/Th;->A02:J

    .line 55029
    if-eqz p1, :cond_c

    .line 55030
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/Th;->A08()Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 55031
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Th;->A0F:Lcom/facebook/ads/redexgen/X/HI;

    if-ne v4, v0, :cond_a

    .line 55032
    return-void

    .line 55033
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_2

    .line 55034
    .end local v2    # "nextDataSource":Lcom/facebook/ads/redexgen/X/HI;
    .end local v10    # "nextSpan":Lcom/facebook/ads/redexgen/X/Hl;
    :cond_1
    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/Hl;->A05:Z

    if-eqz v0, :cond_3

    .line 55035
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Hl;->A03:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v13

    .line 55036
    .local v2, "fileUri":Landroid/net/Uri;
    iget-wide v6, v3, Lcom/facebook/ads/redexgen/X/Th;->A03:J

    iget-wide v0, v2, Lcom/facebook/ads/redexgen/X/Hl;->A02:J

    sub-long/2addr v6, v0

    .line 55037
    .local v5, "filePosition":J
    iget-wide v0, v2, Lcom/facebook/ads/redexgen/X/Hl;->A01:J

    sub-long/2addr v0, v6

    .line 55038
    .local v10, "length":J
    iget-wide v4, v3, Lcom/facebook/ads/redexgen/X/Th;->A01:J

    cmp-long v8, v4, v10

    if-eqz v8, :cond_2

    .line 55039
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 55040
    .end local v10    # "length":J
    .local v12, "length":J
    :cond_2
    new-instance v12, Lcom/facebook/ads/redexgen/X/HM;

    iget-wide v14, v3, Lcom/facebook/ads/redexgen/X/Th;->A03:J

    iget-object v5, v3, Lcom/facebook/ads/redexgen/X/Th;->A09:Ljava/lang/String;

    iget v4, v3, Lcom/facebook/ads/redexgen/X/Th;->A00:I

    move-wide/from16 v16, v6

    move-wide/from16 v18, v0

    move-object/from16 v20, v5

    move/from16 v21, v4

    invoke-direct/range {v12 .. v21}, Lcom/facebook/ads/redexgen/X/HM;-><init>(Landroid/net/Uri;JJJLjava/lang/String;I)V

    .line 55041
    .local v10, "nextDataSpec":Lcom/facebook/ads/redexgen/X/HM;
    iget-object v4, v3, Lcom/facebook/ads/redexgen/X/Th;->A0D:Lcom/facebook/ads/redexgen/X/HI;

    .line 55042
    .end local v5    # "filePosition":J
    .end local v12    # "length":J
    .local v2, "nextDataSource":Lcom/facebook/ads/redexgen/X/HI;
    goto :goto_1

    .line 55043
    .end local v2    # "nextDataSource":Lcom/facebook/ads/redexgen/X/HI;
    .end local v10    # "nextDataSpec":Lcom/facebook/ads/redexgen/X/HM;
    :cond_3
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hl;->A02()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 55044
    iget-wide v0, v3, Lcom/facebook/ads/redexgen/X/Th;->A01:J

    .line 55045
    .local v2, "length":J
    :cond_4
    :goto_3
    new-instance v12, Lcom/facebook/ads/redexgen/X/HM;

    iget-object v13, v3, Lcom/facebook/ads/redexgen/X/Th;->A06:Landroid/net/Uri;

    iget-wide v14, v3, Lcom/facebook/ads/redexgen/X/Th;->A03:J

    iget-object v5, v3, Lcom/facebook/ads/redexgen/X/Th;->A09:Ljava/lang/String;

    iget v4, v3, Lcom/facebook/ads/redexgen/X/Th;->A00:I

    move-wide/from16 v16, v0

    move-object/from16 v18, v5

    move/from16 v19, v4

    invoke-direct/range {v12 .. v19}, Lcom/facebook/ads/redexgen/X/HM;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    .line 55046
    .local v6, "nextDataSpec":Lcom/facebook/ads/redexgen/X/HM;
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Th;->A0E:Lcom/facebook/ads/redexgen/X/HI;

    if-eqz v0, :cond_6

    .line 55047
    iget-object v4, v3, Lcom/facebook/ads/redexgen/X/Th;->A0E:Lcom/facebook/ads/redexgen/X/HI;

    .local v4, "nextDataSource":Lcom/facebook/ads/redexgen/X/HI;
    goto :goto_1

    .line 55048
    .end local v2    # "length":J
    :cond_5
    iget-wide v0, v2, Lcom/facebook/ads/redexgen/X/Hl;->A01:J

    .line 55049
    .restart local v2    # "length":J
    iget-wide v4, v3, Lcom/facebook/ads/redexgen/X/Th;->A01:J

    cmp-long v6, v4, v10

    if-eqz v6, :cond_4

    .line 55050
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_3

    .line 55051
    .end local v4    # "nextDataSource":Lcom/facebook/ads/redexgen/X/HI;
    :cond_6
    iget-object v4, v3, Lcom/facebook/ads/redexgen/X/Th;->A0F:Lcom/facebook/ads/redexgen/X/HI;

    .line 55052
    .restart local v4    # "nextDataSource":Lcom/facebook/ads/redexgen/X/HI;
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Th;->A0G:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/Hh;->AD3(Lcom/facebook/ads/redexgen/X/Hl;)V

    .line 55053
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 55054
    .end local p0
    :cond_7
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/Th;->A0I:Z

    if-eqz v0, :cond_8

    .line 55055
    :try_start_0
    iget-object v4, v3, Lcom/facebook/ads/redexgen/X/Th;->A0G:Lcom/facebook/ads/redexgen/X/Hh;

    iget-object v2, v3, Lcom/facebook/ads/redexgen/X/Th;->A09:Ljava/lang/String;

    iget-wide v0, v3, Lcom/facebook/ads/redexgen/X/Th;->A03:J

    invoke-interface {v4, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Hh;->AEA(Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/Hl;

    move-result-object v2

    goto/16 :goto_0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55056
    .end local p0
    :cond_8
    iget-object v5, v3, Lcom/facebook/ads/redexgen/X/Th;->A0G:Lcom/facebook/ads/redexgen/X/Hh;

    iget-object v4, v3, Lcom/facebook/ads/redexgen/X/Th;->A09:Ljava/lang/String;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Th;->A0L:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x20

    if-eq v1, v0, :cond_9

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_9
    sget-object v2, Lcom/facebook/ads/redexgen/X/Th;->A0L:[Ljava/lang/String;

    const-string v1, "9yxw6jhuQiAeakM3qJ2gFIj6FCamufAX"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "QqTVDcwOiJjOcWqM51tk3t5b13ntKvtp"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iget-wide v0, v3, Lcom/facebook/ads/redexgen/X/Th;->A03:J

    invoke-interface {v5, v4, v0, v1}, Lcom/facebook/ads/redexgen/X/Hh;->AEB(Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/Hl;

    move-result-object v2

    goto/16 :goto_0

    .line 55057
    :cond_a
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/Th;->A02()V

    goto :goto_4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55058
    :catchall_0
    move-exception v1

    .line 55059
    .local p0, "e":Ljava/lang/Throwable;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hl;->A01()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 55060
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Th;->A0G:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/Hh;->AD3(Lcom/facebook/ads/redexgen/X/Hl;)V

    .line 55061
    :cond_b
    throw v1

    .line 55062
    .end local p0    # "e":Ljava/lang/Throwable;
    :cond_c
    :goto_4
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hl;->A01()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 55063
    iput-object v2, v3, Lcom/facebook/ads/redexgen/X/Th;->A08:Lcom/facebook/ads/redexgen/X/Hl;

    .line 55064
    :cond_d
    iput-object v4, v3, Lcom/facebook/ads/redexgen/X/Th;->A07:Lcom/facebook/ads/redexgen/X/HI;

    .line 55065
    iget-wide v1, v12, Lcom/facebook/ads/redexgen/X/HM;->A02:J

    const/4 v9, 0x1

    cmp-long v0, v1, v10

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, v3, Lcom/facebook/ads/redexgen/X/Th;->A0A:Z

    .line 55066
    invoke-interface {v4, v12}, Lcom/facebook/ads/redexgen/X/HI;->ACC(Lcom/facebook/ads/redexgen/X/HM;)J

    move-result-wide v4

    .line 55067
    .local v4, "resolvedLength":J
    new-instance v2, Lcom/facebook/ads/redexgen/X/Ht;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/Ht;-><init>()V

    .line 55068
    .local v13, "mutations":Lcom/facebook/ads/redexgen/X/Ht;
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/Th;->A0A:Z

    if-eqz v0, :cond_e

    cmp-long v0, v4, v10

    if-eqz v0, :cond_e

    .line 55069
    iput-wide v4, v3, Lcom/facebook/ads/redexgen/X/Th;->A01:J

    .line 55070
    iget-wide v4, v3, Lcom/facebook/ads/redexgen/X/Th;->A03:J

    iget-wide v6, v3, Lcom/facebook/ads/redexgen/X/Th;->A01:J

    sget-object v8, Lcom/facebook/ads/redexgen/X/Th;->A0L:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v8, v0

    const/4 v0, 0x0

    aget-object v8, v8, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_13

    sget-object v8, Lcom/facebook/ads/redexgen/X/Th;->A0L:[Ljava/lang/String;

    const-string v1, "RrBM8ZV2MgvUsQSi4Uc3ZfFJLDc2ufVA"

    const/4 v0, 0x5

    aput-object v1, v8, v0

    add-long/2addr v4, v6

    invoke-static {v2, v4, v5}, Lcom/facebook/ads/redexgen/X/Hs;->A05(Lcom/facebook/ads/redexgen/X/Ht;J)V

    .line 55071
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/Th;->A0A()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 55072
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Th;->A07:Lcom/facebook/ads/redexgen/X/HI;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HI;->A7T()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/Th;->A05:Landroid/net/Uri;

    .line 55073
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/Th;->A06:Landroid/net/Uri;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Th;->A05:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v9, v0

    .line 55074
    .local p0, "isRedirected":Z
    if-eqz v9, :cond_11

    .line 55075
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Th;->A05:Landroid/net/Uri;

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/Hs;->A06(Lcom/facebook/ads/redexgen/X/Ht;Landroid/net/Uri;)V

    .line 55076
    .end local p0    # "isRedirected":Z
    :cond_f
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/Th;->A0B()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 55077
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/Th;->A0G:Lcom/facebook/ads/redexgen/X/Hh;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Th;->A09:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/Hh;->A3N(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ht;)V

    .line 55078
    :cond_10
    return-void

    .line 55079
    :cond_11
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Hs;->A04(Lcom/facebook/ads/redexgen/X/Ht;)V

    goto :goto_6

    .line 55080
    :cond_12
    const/4 v0, 0x0

    goto :goto_5

    :cond_13
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 55081
    .end local p0
    .local p0, "e":Ljava/lang/InterruptedException;
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 55082
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
.end method

.method private A08()Z
    .locals 2

    .line 55083
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Th;->A07:Lcom/facebook/ads/redexgen/X/HI;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A0F:Lcom/facebook/ads/redexgen/X/HI;

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

    .line 55084
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Th;->A07:Lcom/facebook/ads/redexgen/X/HI;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A0D:Lcom/facebook/ads/redexgen/X/HI;

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

    .line 55085
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Th;->A09()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private A0B()Z
    .locals 2

    .line 55086
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Th;->A07:Lcom/facebook/ads/redexgen/X/HI;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A0E:Lcom/facebook/ads/redexgen/X/HI;

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A0C(Ljava/io/IOException;)Z
    .locals 1

    .line 55087
    .local p0, "cause":Ljava/lang/Throwable;
    :goto_0
    if-eqz p0, :cond_1

    .line 55088
    instance-of v0, p0, Lcom/facebook/ads/redexgen/X/HJ;

    if-eqz v0, :cond_0

    .line 55089
    move-object v0, p0

    check-cast v0, Lcom/facebook/ads/redexgen/X/HJ;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/HJ;->A00:I

    .line 55090
    .local p0, "reason":I
    if-nez v0, :cond_0

    .line 55091
    const/4 v0, 0x1

    return v0

    .line 55092
    .end local p0    # "reason":I
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    .line 55093
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final A7T()Landroid/net/Uri;
    .locals 1

    .line 55094
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A05:Landroid/net/Uri;

    return-object v0
.end method

.method public final ACC(Lcom/facebook/ads/redexgen/X/HM;)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55095
    :try_start_0
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Hn;->A02(Lcom/facebook/ads/redexgen/X/HM;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A09:Ljava/lang/String;

    .line 55096
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/HM;->A04:Landroid/net/Uri;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A06:Landroid/net/Uri;

    .line 55097
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Th;->A0G:Lcom/facebook/ads/redexgen/X/Hh;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Th;->A09:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A06:Landroid/net/Uri;

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Th;->A01(Lcom/facebook/ads/redexgen/X/Hh;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A05:Landroid/net/Uri;

    .line 55098
    iget v0, p1, Lcom/facebook/ads/redexgen/X/HM;->A00:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A00:I

    .line 55099
    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/HM;->A03:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A03:J

    .line 55100
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Th;->A00(Lcom/facebook/ads/redexgen/X/HM;)I

    move-result v1

    .line 55101
    .local p0, "reason":I
    const/4 v0, -0x1

    const/4 v5, 0x0

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A0B:Z

    .line 55102
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A0B:Z

    .line 55103
    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/HM;->A02:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v6, -0x1

    sget-object v3, Lcom/facebook/ads/redexgen/X/Th;->A0L:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v3, v3, v0

    const/16 v0, 0x1c

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v0, 0x76

    if-eq v3, v0, :cond_5

    sget-object v4, Lcom/facebook/ads/redexgen/X/Th;->A0L:[Ljava/lang/String;

    const-string v3, "cAvMlyqXTWgnnJnpED2KHswzXAIJAslG"

    const/4 v0, 0x2

    aput-object v3, v4, v0

    cmp-long v0, v1, v6

    if-nez v0, :cond_1

    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A0B:Z

    if-eqz v0, :cond_3

    .line 55104
    .restart local v0
    :cond_1
    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/HM;->A02:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A01:J

    .line 55105
    :cond_2
    :goto_1
    invoke-direct {p0, v5}, Lcom/facebook/ads/redexgen/X/Th;->A07(Z)V

    .line 55106
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A01:J

    goto :goto_2

    .line 55107
    :cond_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Th;->A0G:Lcom/facebook/ads/redexgen/X/Hh;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A09:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A60(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A01:J

    .line 55108
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Th;->A01:J

    cmp-long v0, v1, v6

    if-eqz v0, :cond_2

    .line 55109
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Th;->A01:J

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/HM;->A03:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Th;->A01:J

    .line 55110
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Th;->A01:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-lez v0, :cond_4

    goto :goto_1

    .line 55111
    :goto_2
    return-wide v0

    .line 55112
    :cond_4
    new-instance v0, Lcom/facebook/ads/redexgen/X/HJ;

    invoke-direct {v0, v5}, Lcom/facebook/ads/redexgen/X/HJ;-><init>(I)V

    .end local v0
    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 55113
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 55114
    .end local p0    # "reason":I
    :catch_0
    move-exception v0

    .line 55115
    .local p0, "e":Ljava/io/IOException;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Th;->A06(Ljava/io/IOException;)V

    .line 55116
    throw v0
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A06:Landroid/net/Uri;

    .line 55118
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A05:Landroid/net/Uri;

    .line 55119
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Th;->A03()V

    .line 55120
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Th;->A02()V

    goto :goto_0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55121
    :catch_0
    move-exception v0

    .line 55122
    .local p0, "e":Ljava/io/IOException;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Th;->A06(Ljava/io/IOException;)V

    .line 55123
    throw v0

    .line 55124
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

    .line 55125
    const/4 v5, 0x0

    if-nez p3, :cond_0

    .line 55126
    return v5

    .line 55127
    :cond_0
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A01:J

    const-wide/16 v9, 0x0

    const/4 v4, -0x1

    cmp-long v2, v0, v9

    if-nez v2, :cond_1

    .line 55128
    return v4

    .line 55129
    :cond_1
    :try_start_0
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Th;->A03:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A02:J

    cmp-long v6, v2, v0

    if-ltz v6, :cond_2

    .line 55130
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Th;->A07(Z)V

    .line 55131
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A07:Lcom/facebook/ads/redexgen/X/HI;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/HI;->read([BII)I

    move-result v3

    .line 55132
    .local p1, "bytesRead":I
    const-wide/16 v7, -0x1

    if-eq v3, v4, :cond_5

    .line 55133
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Th;->A09()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 55134
    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/Th;->A04:J

    int-to-long v0, v3

    add-long/2addr v5, v0

    iput-wide v5, p0, Lcom/facebook/ads/redexgen/X/Th;->A04:J

    .line 55135
    :cond_3
    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/Th;->A03:J

    int-to-long v0, v3

    add-long/2addr v5, v0

    iput-wide v5, p0, Lcom/facebook/ads/redexgen/X/Th;->A03:J

    .line 55136
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A01:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v5, v0, v7

    sget-object v1, Lcom/facebook/ads/redexgen/X/Th;->A0L:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x20

    if-eq v1, v0, :cond_4

    goto :goto_1

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/Th;->A0L:[Ljava/lang/String;

    const-string v1, "jYBhn7wXAaTLZ6UbmOYnfHpU4xAi9Xx4"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "SRH3aWViFlT1UfAaj9vIOmv3gpbVtvCk"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v5, :cond_8

    .line 55137
    :try_start_1
    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/Th;->A01:J

    int-to-long v0, v3

    sub-long/2addr v5, v0

    iput-wide v5, p0, Lcom/facebook/ads/redexgen/X/Th;->A01:J

    goto :goto_0

    .line 55138
    :cond_5
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A0A:Z

    if-eqz v0, :cond_6

    .line 55139
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Th;->A04()V

    goto :goto_0

    .line 55140
    :cond_6
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A01:J

    cmp-long v2, v0, v9

    if-gtz v2, :cond_7

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A01:J

    cmp-long v2, v0, v7

    if-nez v2, :cond_8

    .line 55141
    :cond_7
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Th;->A02()V

    .line 55142
    invoke-direct {p0, v5}, Lcom/facebook/ads/redexgen/X/Th;->A07(Z)V

    .line 55143
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Th;->read([BII)I

    move-result v0

    return v0

    .line 55144
    :cond_8
    :goto_0
    return v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 55145
    .end local p1    # "bytesRead":I
    :catch_0
    move-exception v1

    .line 55146
    .local p0, "e":Ljava/io/IOException;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A0A:Z

    if-eqz v0, :cond_a

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Th;->A0C(Ljava/io/IOException;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 55147
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Th;->A04()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/Th;->A0L:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x20

    if-eq v1, v0, :cond_9

    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 55148
    :cond_9
    sget-object v2, Lcom/facebook/ads/redexgen/X/Th;->A0L:[Ljava/lang/String;

    const-string v1, "9IGUxYk2fw1i0VbWao94za4Z0Mvv4f4w"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return v4

    .line 55149
    :cond_a
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Th;->A06(Ljava/io/IOException;)V

    .line 55150
    throw v1
.end method
