.class public final Lcom/facebook/ads/redexgen/X/DW;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/facebook/ads/redexgen/X/UO;
.implements Lcom/facebook/ads/redexgen/X/H6;
.implements Lcom/facebook/ads/redexgen/X/FD;
.implements Lcom/facebook/ads/redexgen/X/9x;
.implements Lcom/facebook/ads/redexgen/X/AU;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/A8;,
        Lcom/facebook/ads/redexgen/X/A6;,
        Lcom/facebook/ads/redexgen/X/A7;,
        Lcom/facebook/ads/redexgen/X/A9;
    }
.end annotation


# static fields
.field public static A0V:[B

.field public static A0W:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:J

.field public A04:Lcom/facebook/ads/redexgen/X/A9;

.field public A05:Lcom/facebook/ads/redexgen/X/AK;

.field public A06:Lcom/facebook/ads/redexgen/X/Ab;

.field public A07:Lcom/facebook/ads/redexgen/X/FE;

.field public A08:Z

.field public A09:Z

.field public A0A:Z

.field public A0B:Z

.field public A0C:[Lcom/facebook/ads/redexgen/X/W7;

.field public final A0D:J

.field public final A0E:Landroid/os/Handler;

.field public final A0F:Landroid/os/HandlerThread;

.field public final A0G:Lcom/facebook/ads/redexgen/X/WA;

.field public final A0H:Lcom/facebook/ads/redexgen/X/W8;

.field public final A0I:Lcom/facebook/ads/redexgen/X/A8;

.field public final A0J:Lcom/facebook/ads/redexgen/X/AF;

.field public final A0K:Lcom/facebook/ads/redexgen/X/AI;

.field public final A0L:Lcom/facebook/ads/redexgen/X/Ad;

.field public final A0M:Lcom/facebook/ads/redexgen/X/Ae;

.field public final A0N:Lcom/facebook/ads/redexgen/X/H7;

.field public final A0O:Lcom/facebook/ads/redexgen/X/H8;

.field public final A0P:Lcom/facebook/ads/redexgen/X/I0;

.field public final A0Q:Lcom/facebook/ads/redexgen/X/IA;

.field public final A0R:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/A7;",
            ">;"
        }
    .end annotation
.end field

.field public final A0S:Z

.field public final A0T:[Lcom/facebook/ads/redexgen/X/W7;

.field public final A0U:[Lcom/facebook/ads/redexgen/X/AY;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/DW;->A0L()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/DW;->A0K()V

    return-void
.end method

.method public constructor <init>([Lcom/facebook/ads/redexgen/X/W7;Lcom/facebook/ads/redexgen/X/H7;Lcom/facebook/ads/redexgen/X/H8;Lcom/facebook/ads/redexgen/X/AF;ZIZLandroid/os/Handler;Lcom/facebook/ads/redexgen/X/W8;Lcom/facebook/ads/redexgen/X/I0;)V
    .locals 10

    .line 27243
    move-object v2, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27244
    iput-object p1, v2, Lcom/facebook/ads/redexgen/X/DW;->A0T:[Lcom/facebook/ads/redexgen/X/W7;

    .line 27245
    iput-object p2, v2, Lcom/facebook/ads/redexgen/X/DW;->A0N:Lcom/facebook/ads/redexgen/X/H7;

    .line 27246
    move-object v9, p3

    iput-object v9, v2, Lcom/facebook/ads/redexgen/X/DW;->A0O:Lcom/facebook/ads/redexgen/X/H8;

    .line 27247
    iput-object p4, v2, Lcom/facebook/ads/redexgen/X/DW;->A0J:Lcom/facebook/ads/redexgen/X/AF;

    .line 27248
    move v0, p5

    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/DW;->A08:Z

    .line 27249
    move/from16 v0, p6

    iput v0, v2, Lcom/facebook/ads/redexgen/X/DW;->A02:I

    .line 27250
    move/from16 v0, p7

    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/DW;->A0B:Z

    .line 27251
    move-object/from16 v0, p8

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/DW;->A0E:Landroid/os/Handler;

    .line 27252
    move-object/from16 v0, p9

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/DW;->A0H:Lcom/facebook/ads/redexgen/X/W8;

    .line 27253
    move-object/from16 v3, p10

    iput-object v3, v2, Lcom/facebook/ads/redexgen/X/DW;->A0P:Lcom/facebook/ads/redexgen/X/I0;

    .line 27254
    new-instance v0, Lcom/facebook/ads/redexgen/X/AI;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/AI;-><init>()V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/DW;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    .line 27255
    invoke-interface {p4}, Lcom/facebook/ads/redexgen/X/AF;->A5f()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/facebook/ads/redexgen/X/DW;->A0D:J

    .line 27256
    invoke-interface {p4}, Lcom/facebook/ads/redexgen/X/AF;->ADP()Z

    move-result v0

    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/DW;->A0S:Z

    .line 27257
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ab;->A04:Lcom/facebook/ads/redexgen/X/Ab;

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/DW;->A06:Lcom/facebook/ads/redexgen/X/Ab;

    .line 27258
    new-instance v4, Lcom/facebook/ads/redexgen/X/AK;

    sget-object v5, Lcom/facebook/ads/redexgen/X/Af;->A00:Lcom/facebook/ads/redexgen/X/Af;

    sget-object v8, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;->A04:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, v4

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/AK;-><init>(Lcom/facebook/ads/redexgen/X/Af;JLcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/H8;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    .line 27259
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/A8;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/A8;-><init>(Lcom/facebook/ads/redexgen/X/A5;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/DW;->A0I:Lcom/facebook/ads/redexgen/X/A8;

    .line 27260
    array-length v0, p1

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/AY;

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/DW;->A0U:[Lcom/facebook/ads/redexgen/X/AY;

    .line 27261
    const/4 v4, 0x0

    .local p4, "i":I
    :goto_0
    array-length v0, p1

    if-ge v4, v0, :cond_0

    .line 27262
    aget-object v0, p1, v4

    invoke-interface {v0, v4}, Lcom/facebook/ads/redexgen/X/W7;->ADl(I)V

    .line 27263
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/DW;->A0U:[Lcom/facebook/ads/redexgen/X/AY;

    aget-object v0, p1, v4

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/W7;->A5q()Lcom/facebook/ads/redexgen/X/AY;

    move-result-object v0

    aput-object v0, v1, v4

    .line 27264
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 27265
    .end local p4    # "i":I
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/WA;

    invoke-direct {v0, v2, v3}, Lcom/facebook/ads/redexgen/X/WA;-><init>(Lcom/facebook/ads/redexgen/X/9x;Lcom/facebook/ads/redexgen/X/I0;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/DW;->A0G:Lcom/facebook/ads/redexgen/X/WA;

    .line 27266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/DW;->A0R:Ljava/util/ArrayList;

    .line 27267
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/W7;

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/DW;->A0C:[Lcom/facebook/ads/redexgen/X/W7;

    .line 27268
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ae;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Ae;-><init>()V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/DW;->A0M:Lcom/facebook/ads/redexgen/X/Ae;

    .line 27269
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ad;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Ad;-><init>()V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/DW;->A0L:Lcom/facebook/ads/redexgen/X/Ad;

    .line 27270
    invoke-virtual {p2, v2}, Lcom/facebook/ads/redexgen/X/H7;->A00(Lcom/facebook/ads/redexgen/X/H6;)V

    .line 27271
    const/16 v5, -0x10

    const/16 v4, 0x15

    const/16 v1, 0x1d

    const/16 v0, 0x22

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/DW;->A06(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, v1, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/DW;->A0F:Landroid/os/HandlerThread;

    .line 27272
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/DW;->A0F:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 27273
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/DW;->A0F:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-interface {v3, v0, v2}, Lcom/facebook/ads/redexgen/X/I0;->A4G(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/facebook/ads/redexgen/X/IA;

    move-result-object v0

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/DW;->A0Q:Lcom/facebook/ads/redexgen/X/IA;

    .line 27274
    return-void
.end method

.method private A00()I
    .locals 3

    .line 27275
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/AK;->A03:Lcom/facebook/ads/redexgen/X/Af;

    .line 27276
    .local p0, "timeline":Lcom/facebook/ads/redexgen/X/Af;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Af;->A0E()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27277
    const/4 v0, 0x0

    .line 27278
    :goto_0
    return v0

    .line 27279
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0B:Z

    .line 27280
    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Af;->A05(Z)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0M:Lcom/facebook/ads/redexgen/X/Ae;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Af;->A0B(ILcom/facebook/ads/redexgen/X/Ae;)Lcom/facebook/ads/redexgen/X/Ae;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Ae;->A00:I

    goto :goto_0
.end method

.method private A01(ILcom/facebook/ads/redexgen/X/Af;Lcom/facebook/ads/redexgen/X/Af;)I
    .locals 10

    move v5, p1

    .line 27281
    const/4 v1, -0x1

    .line 27282
    .local p0, "newPeriodIndex":I
    move-object v4, p2

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Af;->A00()I

    move-result v3

    .line 27283
    .local v5, "maxIterations":I
    const/4 v2, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 27284
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/DW;->A0L:Lcom/facebook/ads/redexgen/X/Ad;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/DW;->A0M:Lcom/facebook/ads/redexgen/X/Ae;

    iget v8, p0, Lcom/facebook/ads/redexgen/X/DW;->A02:I

    iget-boolean v9, p0, Lcom/facebook/ads/redexgen/X/DW;->A0B:Z

    .line 27285
    invoke-virtual/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/Af;->A03(ILcom/facebook/ads/redexgen/X/Ad;Lcom/facebook/ads/redexgen/X/Ae;IZ)I

    move-result v5

    .line 27286
    if-ne v5, v0, :cond_1

    .line 27287
    .end local v4    # "i":I
    :cond_0
    return v1

    .line 27288
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DW;->A0L:Lcom/facebook/ads/redexgen/X/Ad;

    .line 27289
    const/4 v0, 0x1

    invoke-virtual {v4, v5, v1, v0}, Lcom/facebook/ads/redexgen/X/Af;->A0A(ILcom/facebook/ads/redexgen/X/Ad;Z)Lcom/facebook/ads/redexgen/X/Ad;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ad;->A03:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Lcom/facebook/ads/redexgen/X/Af;->A04(Ljava/lang/Object;)I

    move-result v1

    .line 27290
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/FC;J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 27291
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    .line 27292
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AI;->A0H()Lcom/facebook/ads/redexgen/X/AG;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AI;->A0I()Lcom/facebook/ads/redexgen/X/AG;

    move-result-object v0

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    .line 27293
    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/DW;->A03(Lcom/facebook/ads/redexgen/X/FC;JZ)J

    move-result-wide v0

    return-wide v0

    .line 27294
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/FC;JZ)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 27295
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DW;->A0H()V

    .line 27296
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/DW;->A09:Z

    .line 27297
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/DW;->A0O(I)V

    .line 27298
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AI;->A0H()Lcom/facebook/ads/redexgen/X/AG;

    move-result-object v5

    .line 27299
    .local p2, "oldPlayingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    move-object v4, v5

    .line 27300
    .local v3, "newPlayingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    :goto_0
    if-eqz v4, :cond_0

    .line 27301
    invoke-direct {p0, p1, p2, p3, v4}, Lcom/facebook/ads/redexgen/X/DW;->A0u(Lcom/facebook/ads/redexgen/X/FC;JLcom/facebook/ads/redexgen/X/AG;)Z

    move-result v7

    sget-object v1, Lcom/facebook/ads/redexgen/X/DW;->A0W:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_8

    sget-object v2, Lcom/facebook/ads/redexgen/X/DW;->A0W:[Ljava/lang/String;

    const-string v1, "DDMukUNZh8WCLRJbTnMq"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v7, :cond_2

    .line 27302
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/AI;->A0T(Lcom/facebook/ads/redexgen/X/AG;)Z

    .line 27303
    :cond_0
    if-ne v5, v4, :cond_1

    if-eqz p4, :cond_4

    .line 27304
    :cond_1
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/DW;->A0C:[Lcom/facebook/ads/redexgen/X/W7;

    array-length v2, v5

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v0, v5, v1

    .line 27305
    .local v0, "renderer":Lcom/facebook/ads/redexgen/X/W7;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/DW;->A0c(Lcom/facebook/ads/redexgen/X/W7;)V

    .line 27306
    .end local v0    # "renderer":Lcom/facebook/ads/redexgen/X/W7;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 27307
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AI;->A0D()Lcom/facebook/ads/redexgen/X/AG;

    move-result-object v4

    goto :goto_0

    .line 27308
    :cond_3
    new-array v0, v6, [Lcom/facebook/ads/redexgen/X/W7;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0C:[Lcom/facebook/ads/redexgen/X/W7;

    .line 27309
    const/4 v5, 0x0

    .line 27310
    :cond_4
    if-eqz v4, :cond_7

    .line 27311
    invoke-direct {p0, v5}, Lcom/facebook/ads/redexgen/X/DW;->A0W(Lcom/facebook/ads/redexgen/X/AG;)V

    .line 27312
    iget-boolean v5, v4, Lcom/facebook/ads/redexgen/X/AG;->A05:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/DW;->A0W:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/DW;->A0W:[Ljava/lang/String;

    const-string v1, "ElaRrz9dGOGoIj3G2YEFJrNTJtPL"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v5, :cond_5

    .line 27313
    :goto_2
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/AG;->A08:Lcom/facebook/ads/redexgen/X/UN;

    invoke-interface {v0, p2, p3}, Lcom/facebook/ads/redexgen/X/UN;->ADb(J)J

    move-result-wide p2

    .line 27314
    iget-object v6, v4, Lcom/facebook/ads/redexgen/X/AG;->A08:Lcom/facebook/ads/redexgen/X/UN;

    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/DW;->A0D:J

    sub-long v1, p2, v4

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0S:Z

    invoke-interface {v6, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/UN;->A4m(JZ)V

    .line 27315
    :cond_5
    invoke-direct {p0, p2, p3}, Lcom/facebook/ads/redexgen/X/DW;->A0Q(J)V

    .line 27316
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DW;->A09()V

    .line 27317
    :goto_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0Q:Lcom/facebook/ads/redexgen/X/IA;

    invoke-interface {v0, v3}, Lcom/facebook/ads/redexgen/X/IA;->ADd(I)Z

    .line 27318
    return-wide p2

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/DW;->A0W:[Ljava/lang/String;

    const-string v1, "xfhZKhjHGQLh7g8kjvKSHuNuZlgzusJJ"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "PGEKVNr1LUoAoY6RAcNavJspLpVe75rR"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v5, :cond_5

    goto :goto_2

    .line 27319
    :cond_7
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DW;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/AI;->A0P(Z)V

    .line 27320
    invoke-direct {p0, p2, p3}, Lcom/facebook/ads/redexgen/X/DW;->A0Q(J)V

    goto :goto_3

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A04(Lcom/facebook/ads/redexgen/X/A9;Z)Landroid/util/Pair;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/A9;",
            "Z)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 27321
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/AK;->A03:Lcom/facebook/ads/redexgen/X/Af;

    .line 27322
    .local p0, "timeline":Lcom/facebook/ads/redexgen/X/Af;
    iget-object v6, p1, Lcom/facebook/ads/redexgen/X/A9;->A02:Lcom/facebook/ads/redexgen/X/Af;

    .line 27323
    .local p1, "seekTimeline":Lcom/facebook/ads/redexgen/X/Af;
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Af;->A0E()Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 27324
    return-object v5

    .line 27325
    :cond_0
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Af;->A0E()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27326
    move-object v6, v4

    .line 27327
    :cond_1
    :try_start_0
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/DW;->A0M:Lcom/facebook/ads/redexgen/X/Ae;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/DW;->A0L:Lcom/facebook/ads/redexgen/X/Ad;

    iget v9, p1, Lcom/facebook/ads/redexgen/X/A9;->A00:I

    iget-wide v10, p1, Lcom/facebook/ads/redexgen/X/A9;->A01:J

    .line 27328
    invoke-virtual/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/Af;->A07(Lcom/facebook/ads/redexgen/X/Ae;Lcom/facebook/ads/redexgen/X/Ad;IJ)Landroid/util/Pair;

    move-result-object v3

    .line 27329
    .local p2, "periodPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    if-ne v4, v6, :cond_2

    .line 27330
    return-object v3
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27331
    :cond_2
    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 27332
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DW;->A0L:Lcom/facebook/ads/redexgen/X/Ad;

    const/4 v0, 0x1

    invoke-virtual {v6, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Af;->A0A(ILcom/facebook/ads/redexgen/X/Ad;Z)Lcom/facebook/ads/redexgen/X/Ad;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ad;->A03:Ljava/lang/Object;

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Af;->A04(Ljava/lang/Object;)I

    move-result v0

    .line 27333
    .local v4, "periodIndex":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    .line 27334
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 27335
    :cond_3
    if-eqz p2, :cond_4

    .line 27336
    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, v6, v4}, Lcom/facebook/ads/redexgen/X/DW;->A01(ILcom/facebook/ads/redexgen/X/Af;Lcom/facebook/ads/redexgen/X/Af;)I

    move-result v1

    .line 27337
    if-eq v1, v2, :cond_4

    .line 27338
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0L:Lcom/facebook/ads/redexgen/X/Ad;

    .line 27339
    invoke-virtual {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/Af;->A09(ILcom/facebook/ads/redexgen/X/Ad;)Lcom/facebook/ads/redexgen/X/Ad;

    move-result-object v0

    iget v2, v0, Lcom/facebook/ads/redexgen/X/Ad;->A00:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 27340
    invoke-direct {p0, v4, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/DW;->A05(Lcom/facebook/ads/redexgen/X/Af;IJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 27341
    :cond_4
    return-object v5

    .line 27342
    .end local p2    # "periodPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .end local v4    # "periodIndex":I
    .local p2, "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_0
    iget v3, p1, Lcom/facebook/ads/redexgen/X/A9;->A00:I

    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/A9;->A01:J

    new-instance v0, Lcom/facebook/ads/redexgen/X/AE;

    invoke-direct {v0, v4, v3, v1, v2}, Lcom/facebook/ads/redexgen/X/AE;-><init>(Lcom/facebook/ads/redexgen/X/Af;IJ)V

    throw v0
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/Af;IJ)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Af;",
            "IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 27343
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DW;->A0M:Lcom/facebook/ads/redexgen/X/Ae;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/DW;->A0L:Lcom/facebook/ads/redexgen/X/Ad;

    move-wide v4, p3

    move v3, p2

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Af;->A07(Lcom/facebook/ads/redexgen/X/Ae;Lcom/facebook/ads/redexgen/X/Ad;IJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static A06(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/DW;->A0V:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p0, 0x0

    :goto_0
    array-length v3, p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/DW;->A0W:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/DW;->A0W:[Ljava/lang/String;

    const-string v1, "C8TVFY6jiyzLOD1OUPxwx0Nh6DZoCYOp"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ge p0, v3, :cond_0

    aget-byte v0, p1, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x3d

    int-to-byte v0, v0

    aput-byte v0, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A07()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 27344
    move-object v4, p0

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/DW;->A0P:Lcom/facebook/ads/redexgen/X/I0;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/I0;->AEW()J

    move-result-wide v2

    .line 27345
    .local v4, "operationStartTimeMs":J
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DW;->A0I()V

    .line 27346
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/DW;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AI;->A0Q()Z

    move-result v5

    const-wide/16 v0, 0xa

    if-nez v5, :cond_0

    .line 27347
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DW;->A0B()V

    .line 27348
    invoke-direct {v4, v2, v3, v0, v1}, Lcom/facebook/ads/redexgen/X/DW;->A0S(JJ)V

    .line 27349
    return-void

    .line 27350
    :cond_0
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/DW;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AI;->A0H()Lcom/facebook/ads/redexgen/X/AG;

    move-result-object v12

    .line 27351
    .local v2, "playingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    const/16 v5, 0x96

    const/16 v1, 0xa

    const/16 v0, 0x39

    invoke-static {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/DW;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IZ;->A02(Ljava/lang/String;)V

    .line 27352
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DW;->A0J()V

    .line 27353
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const-wide/16 v0, 0x3e8

    mul-long/2addr v5, v0

    .line 27354
    .local v5, "rendererPositionElapsedRealtimeUs":J
    iget-object v9, v12, Lcom/facebook/ads/redexgen/X/AG;->A08:Lcom/facebook/ads/redexgen/X/UN;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/AK;->A0A:J

    iget-wide v7, v4, Lcom/facebook/ads/redexgen/X/DW;->A0D:J

    sub-long/2addr v0, v7

    iget-boolean v7, v4, Lcom/facebook/ads/redexgen/X/DW;->A0S:Z

    invoke-interface {v9, v0, v1, v7}, Lcom/facebook/ads/redexgen/X/UN;->A4m(JZ)V

    .line 27355
    const/4 v14, 0x1

    .line 27356
    .local v12, "renderersEnded":Z
    const/4 v11, 0x1

    .line 27357
    .local v5, "renderersReadyOrEnded":Z
    iget-object v10, v4, Lcom/facebook/ads/redexgen/X/DW;->A0C:[Lcom/facebook/ads/redexgen/X/W7;

    array-length v9, v10

    const/4 v8, 0x0

    .end local v12    # "renderersEnded":Z
    .local v5, "renderersEnded":Z
    :goto_0
    if-ge v8, v9, :cond_7

    aget-object v7, v10, v8

    .line 27358
    .local v0, "renderer":Lcom/facebook/ads/redexgen/X/W7;
    iget-wide v0, v4, Lcom/facebook/ads/redexgen/X/DW;->A03:J

    invoke-interface {v7, v0, v1, v5, v6}, Lcom/facebook/ads/redexgen/X/W7;->ADC(JJ)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/DW;->A0W:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x79

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 27359
    :cond_1
    sget-object v13, Lcom/facebook/ads/redexgen/X/DW;->A0W:[Ljava/lang/String;

    const-string v1, "4qCOz6hrVYjciF"

    const/4 v0, 0x3

    aput-object v1, v13, v0

    const/4 v1, 0x1

    if-eqz v14, :cond_6

    invoke-interface {v7}, Lcom/facebook/ads/redexgen/X/W7;->A81()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v14, 0x1

    .line 27360
    :goto_1
    invoke-interface {v7}, Lcom/facebook/ads/redexgen/X/W7;->A8B()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v7}, Lcom/facebook/ads/redexgen/X/W7;->A81()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {v4, v7}, Lcom/facebook/ads/redexgen/X/DW;->A0t(Lcom/facebook/ads/redexgen/X/W7;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_2
    const/4 v0, 0x1

    .line 27361
    .local v0, "rendererReadyOrEnded":Z
    :goto_2
    if-nez v0, :cond_3

    .line 27362
    invoke-interface {v7}, Lcom/facebook/ads/redexgen/X/W7;->A94()V

    .line 27363
    :cond_3
    if-eqz v11, :cond_4

    if-eqz v0, :cond_4

    :goto_3
    move v11, v1

    .line 27364
    .end local v0    # "rendererReadyOrEnded":Z
    .end local v0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 27365
    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    .line 27366
    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    .line 27367
    :cond_6
    const/4 v14, 0x0

    goto :goto_1

    .line 27368
    :cond_7
    if-nez v11, :cond_8

    .line 27369
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DW;->A0B()V

    .line 27370
    :cond_8
    iget-object v0, v12, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    iget-wide v8, v0, Lcom/facebook/ads/redexgen/X/AH;->A01:J

    .line 27371
    .local v8, "playingPeriodDurationUs":J
    const/4 v5, 0x4

    const/4 v10, 0x3

    const/4 v1, 0x2

    if-eqz v14, :cond_b

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v8, v6

    if-eqz v0, :cond_9

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-wide v6, v0, Lcom/facebook/ads/redexgen/X/AK;->A0A:J

    cmp-long v0, v8, v6

    if-gtz v0, :cond_b

    :cond_9
    iget-object v0, v12, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/AH;->A05:Z

    if-eqz v0, :cond_b

    .line 27372
    invoke-direct {v4, v5}, Lcom/facebook/ads/redexgen/X/DW;->A0O(I)V

    .line 27373
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DW;->A0H()V

    .line 27374
    :cond_a
    :goto_4
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/AK;->A00:I

    if-ne v0, v1, :cond_f

    .line 27375
    iget-object v8, v4, Lcom/facebook/ads/redexgen/X/DW;->A0C:[Lcom/facebook/ads/redexgen/X/W7;

    array-length v7, v8

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v7, :cond_f

    aget-object v0, v8, v6

    .line 27376
    .local p1, "renderer":Lcom/facebook/ads/redexgen/X/W7;
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/W7;->A94()V

    .line 27377
    .end local p1
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 27378
    :cond_b
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/AK;->A00:I

    if-ne v0, v1, :cond_c

    .line 27379
    invoke-direct {v4, v11}, Lcom/facebook/ads/redexgen/X/DW;->A0v(Z)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 27380
    invoke-direct {v4, v10}, Lcom/facebook/ads/redexgen/X/DW;->A0O(I)V

    .line 27381
    iget-boolean v8, v4, Lcom/facebook/ads/redexgen/X/DW;->A08:Z

    sget-object v6, Lcom/facebook/ads/redexgen/X/DW;->A0W:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v6, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v0, 0x1c

    if-eq v6, v0, :cond_14

    sget-object v7, Lcom/facebook/ads/redexgen/X/DW;->A0W:[Ljava/lang/String;

    const-string v6, ""

    const/4 v0, 0x0

    aput-object v6, v7, v0

    if-eqz v8, :cond_a

    .line 27382
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DW;->A0G()V

    goto :goto_4

    .line 27383
    :cond_c
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/AK;->A00:I

    if-ne v0, v10, :cond_a

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/DW;->A0C:[Lcom/facebook/ads/redexgen/X/W7;

    array-length v0, v0

    if-nez v0, :cond_d

    .line 27384
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DW;->A0r()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_4

    :cond_d
    if-nez v11, :cond_a

    .line 27385
    :cond_e
    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/DW;->A08:Z

    iput-boolean v0, v4, Lcom/facebook/ads/redexgen/X/DW;->A09:Z

    .line 27386
    invoke-direct {v4, v1}, Lcom/facebook/ads/redexgen/X/DW;->A0O(I)V

    .line 27387
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DW;->A0H()V

    goto :goto_4

    .line 27388
    :cond_f
    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/DW;->A08:Z

    if-eqz v0, :cond_10

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/AK;->A00:I

    if-eq v0, v10, :cond_11

    :cond_10
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/AK;->A00:I

    if-ne v0, v1, :cond_12

    .line 27389
    :cond_11
    const-wide/16 v0, 0xa

    invoke-direct {v4, v2, v3, v0, v1}, Lcom/facebook/ads/redexgen/X/DW;->A0S(JJ)V

    .line 27390
    :goto_6
    invoke-static {}, Lcom/facebook/ads/redexgen/X/IZ;->A00()V

    .line 27391
    return-void

    .line 27392
    :cond_12
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/DW;->A0C:[Lcom/facebook/ads/redexgen/X/W7;

    array-length v0, v0

    if-eqz v0, :cond_13

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/AK;->A00:I

    if-eq v0, v5, :cond_13

    .line 27393
    const-wide/16 v0, 0x3e8

    invoke-direct {v4, v2, v3, v0, v1}, Lcom/facebook/ads/redexgen/X/DW;->A0S(JJ)V

    goto :goto_6

    .line 27394
    :cond_13
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/DW;->A0Q:Lcom/facebook/ads/redexgen/X/IA;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/IA;->AD9(I)V

    goto :goto_6

    :cond_14
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A08()V
    .locals 2

    .line 27395
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/DW;->A0O(I)V

    .line 27396
    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, v1, v0, v1}, Lcom/facebook/ads/redexgen/X/DW;->A0p(ZZZ)V

    .line 27397
    return-void
.end method

.method private A09()V
    .locals 6

    .line 27398
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AI;->A0G()Lcom/facebook/ads/redexgen/X/AG;

    move-result-object v5

    .line 27399
    .local p0, "loadingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/AG;->A07()J

    move-result-wide v1

    .line 27400
    .local v0, "nextLoadPositionUs":J
    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v0, v1, v3

    if-nez v0, :cond_1

    .line 27401
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/DW;->A0l(Z)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/DW;->A0W:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_0

    .line 27402
    sget-object v2, Lcom/facebook/ads/redexgen/X/DW;->A0W:[Ljava/lang/String;

    const-string v1, "8MRAsZ4pZfPXOZV7aa3tTq6qlhMjaOw5"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "3gMYaY5bSrqvSP2ietBZ7HZ9z0WP1XSe"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 27403
    :cond_1
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/DW;->A03:J

    .line 27404
    invoke-virtual {v5, v3, v4}, Lcom/facebook/ads/redexgen/X/AG;->A09(J)J

    move-result-wide v3

    sub-long/2addr v1, v3

    sget-object v4, Lcom/facebook/ads/redexgen/X/DW;->A0W:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v3, v4, v0

    const/4 v0, 0x7

    aget-object v4, v4, v0

    const/16 v0, 0x1b

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v3, v0, :cond_3

    .line 27405
    .local v1, "bufferedDurationUs":J
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/DW;->A0J:Lcom/facebook/ads/redexgen/X/AF;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0G:Lcom/facebook/ads/redexgen/X/WA;

    .line 27406
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/WA;->A70()Lcom/facebook/ads/redexgen/X/AL;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/AL;->A01:F

    .line 27407
    invoke-interface {v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/AF;->ADw(JF)Z

    move-result v0

    .line 27408
    .local v3, "continueLoading":Z
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/DW;->A0l(Z)V

    .line 27409
    if-eqz v0, :cond_2

    .line 27410
    :goto_0
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A03:J

    invoke-virtual {v5, v0, v1}, Lcom/facebook/ads/redexgen/X/AG;->A0G(J)V

    .line 27411
    :cond_2
    return-void

    .line 27412
    .local v1, "bufferedDurationUs":J
    :cond_3
    sget-object v4, Lcom/facebook/ads/redexgen/X/DW;->A0W:[Ljava/lang/String;

    const-string v3, "SQ4LwyvmvqffSxgpoMys7gj4QZnMvZHB"

    const/4 v0, 0x1

    aput-object v3, v4, v0

    const-string v3, "JezCIAMpiwaeugGBiKJqzMVzGqEFCE7h"

    const/4 v0, 0x2

    aput-object v3, v4, v0

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/DW;->A0J:Lcom/facebook/ads/redexgen/X/AF;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0G:Lcom/facebook/ads/redexgen/X/WA;

    .line 27413
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/WA;->A70()Lcom/facebook/ads/redexgen/X/AL;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/AL;->A01:F

    .line 27414
    invoke-interface {v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/AF;->ADw(JF)Z

    move-result v0

    .line 27415
    .local v3, "continueLoading":Z
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/DW;->A0l(Z)V

    .line 27416
    if-eqz v0, :cond_2

    goto :goto_0
.end method

.method private A0A()V
    .locals 5

    .line 27417
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DW;->A0I:Lcom/facebook/ads/redexgen/X/A8;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/A8;->A07(Lcom/facebook/ads/redexgen/X/AK;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27418
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/DW;->A0E:Landroid/os/Handler;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0I:Lcom/facebook/ads/redexgen/X/A8;

    .line 27419
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/A8;->A00(Lcom/facebook/ads/redexgen/X/A8;)I

    move-result v2

    .line 27420
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0I:Lcom/facebook/ads/redexgen/X/A8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/A8;->A03(Lcom/facebook/ads/redexgen/X/A8;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27421
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0I:Lcom/facebook/ads/redexgen/X/A8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/A8;->A01(Lcom/facebook/ads/redexgen/X/A8;)I

    move-result v1

    .line 27422
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    .line 27423
    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 27424
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 27425
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DW;->A0I:Lcom/facebook/ads/redexgen/X/A8;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/A8;->A06(Lcom/facebook/ads/redexgen/X/AK;)V

    .line 27426
    :cond_0
    return-void

    .line 27427
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private A0B()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27428
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AI;->A0G()Lcom/facebook/ads/redexgen/X/AG;

    move-result-object v4

    .line 27429
    .local p0, "loadingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AI;->A0I()Lcom/facebook/ads/redexgen/X/AG;

    move-result-object v1

    .line 27430
    .local v0, "readingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    if-eqz v4, :cond_4

    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/AG;->A06:Z

    if-nez v0, :cond_4

    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/AG;->A01:Lcom/facebook/ads/redexgen/X/AG;

    sget-object v2, Lcom/facebook/ads/redexgen/X/DW;->A0W:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/DW;->A0W:[Ljava/lang/String;

    const-string v1, "okIi9XXhhbYL0CLNNeOy32kne41qXuTu"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "LiINJY6agNdIsH3lIH85pPfKbspqa2Jj"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ne v3, v4, :cond_4

    .line 27431
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/DW;->A0C:[Lcom/facebook/ads/redexgen/X/W7;

    array-length v2, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v0, v3, v1

    .line 27432
    .local v0, "renderer":Lcom/facebook/ads/redexgen/X/W7;
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/W7;->A7e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 27433
    return-void

    .line 27434
    .end local v0    # "renderer":Lcom/facebook/ads/redexgen/X/W7;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 27435
    :cond_3
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/AG;->A08:Lcom/facebook/ads/redexgen/X/UN;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/UN;->A92()V

    .line 27436
    :cond_4
    return-void
.end method

.method private A0C()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27437
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/DW;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A03:J

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/AI;->A0N(J)V

    .line 27438
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AI;->A0R()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27439
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/DW;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/DW;->A03:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    invoke-virtual {v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/AI;->A0J(JLcom/facebook/ads/redexgen/X/AK;)Lcom/facebook/ads/redexgen/X/AH;

    move-result-object v10

    .line 27440
    .local p0, "info":Lcom/facebook/ads/redexgen/X/AH;
    if-nez v10, :cond_1

    .line 27441
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A07:Lcom/facebook/ads/redexgen/X/FE;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/FE;->A93()V

    .line 27442
    .end local p0    # "info":Lcom/facebook/ads/redexgen/X/AH;
    .end local v2
    .end local v0
    :cond_0
    :goto_0
    return-void

    .line 27443
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/AK;->A03:Lcom/facebook/ads/redexgen/X/Af;

    iget-object v0, v10, Lcom/facebook/ads/redexgen/X/AH;->A04:Lcom/facebook/ads/redexgen/X/FC;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/FC;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0L:Lcom/facebook/ads/redexgen/X/Ad;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/Af;->A0A(ILcom/facebook/ads/redexgen/X/Ad;Z)Lcom/facebook/ads/redexgen/X/Ad;

    move-result-object v0

    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/Ad;->A03:Ljava/lang/Object;

    .line 27444
    .local v2, "uid":Ljava/lang/Object;
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/DW;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/DW;->A0U:[Lcom/facebook/ads/redexgen/X/AY;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/DW;->A0N:Lcom/facebook/ads/redexgen/X/H7;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0J:Lcom/facebook/ads/redexgen/X/AF;

    .line 27445
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AF;->A5a()Lcom/facebook/ads/redexgen/X/HA;

    move-result-object v7

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/DW;->A07:Lcom/facebook/ads/redexgen/X/FE;

    .line 27446
    invoke-virtual/range {v4 .. v10}, Lcom/facebook/ads/redexgen/X/AI;->A0L([Lcom/facebook/ads/redexgen/X/AY;Lcom/facebook/ads/redexgen/X/H7;Lcom/facebook/ads/redexgen/X/HA;Lcom/facebook/ads/redexgen/X/FE;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/AH;)Lcom/facebook/ads/redexgen/X/UN;

    move-result-object v2

    .line 27447
    .local v0, "mediaPeriod":Lcom/facebook/ads/redexgen/X/UN;
    iget-wide v0, v10, Lcom/facebook/ads/redexgen/X/AH;->A03:J

    invoke-interface {v2, p0, v0, v1}, Lcom/facebook/ads/redexgen/X/UN;->ACV(Lcom/facebook/ads/redexgen/X/UO;J)V

    .line 27448
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/DW;->A0l(Z)V

    goto :goto_0
.end method

.method private A0D()V
    .locals 2

    .line 27449
    const/4 v1, 0x1

    invoke-direct {p0, v1, v1, v1}, Lcom/facebook/ads/redexgen/X/DW;->A0p(ZZZ)V

    .line 27450
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0J:Lcom/facebook/ads/redexgen/X/AF;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AF;->ABO()V

    .line 27451
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/DW;->A0O(I)V

    .line 27452
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0F:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 27453
    monitor-enter p0

    .line 27454
    :try_start_0
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/DW;->A0A:Z

    .line 27455
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 27456
    monitor-exit p0

    .line 27457
    return-void

    .line 27458
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private A0E()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 27459
    move-object v3, p0

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/DW;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AI;->A0Q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 27460
    return-void

    .line 27461
    :cond_0
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/DW;->A0G:Lcom/facebook/ads/redexgen/X/WA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/WA;->A70()Lcom/facebook/ads/redexgen/X/AL;

    move-result-object v0

    iget v5, v0, Lcom/facebook/ads/redexgen/X/AL;->A01:F

    .line 27462
    .local v3, "playbackSpeed":F
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/DW;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AI;->A0H()Lcom/facebook/ads/redexgen/X/AG;

    move-result-object v7

    .line 27463
    .local v0, "periodHolder":Lcom/facebook/ads/redexgen/X/AG;
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/DW;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AI;->A0I()Lcom/facebook/ads/redexgen/X/AG;

    move-result-object v4

    .line 27464
    .local v0, "readingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    const/4 v8, 0x1

    .line 27465
    .local v0, "selectionsChangedForReadPeriod":Z
    :goto_0
    if-eqz v7, :cond_1

    iget-boolean v0, v7, Lcom/facebook/ads/redexgen/X/AG;->A06:Z

    if-nez v0, :cond_2

    .line 27466
    .end local v0    # "selectionsChangedForReadPeriod":Z
    .restart local v5
    :cond_1
    return-void

    .line 27467
    :cond_2
    invoke-virtual {v7, v5}, Lcom/facebook/ads/redexgen/X/AG;->A0J(F)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 27468
    const/4 v6, 0x4

    if-eqz v8, :cond_c

    .line 27469
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/DW;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AI;->A0H()Lcom/facebook/ads/redexgen/X/AG;

    move-result-object v4

    .line 27470
    .local v0, "playingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/DW;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/AI;->A0T(Lcom/facebook/ads/redexgen/X/AG;)Z

    move-result v5

    .line 27471
    .local v7, "recreateStreams":Z
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/DW;->A0T:[Lcom/facebook/ads/redexgen/X/W7;

    array-length v0, v0

    new-array v2, v0, [Z

    .line 27472
    .local v0, "streamResetFlags":[Z
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/AK;->A0A:J

    .line 27473
    invoke-virtual {v4, v0, v1, v5, v2}, Lcom/facebook/ads/redexgen/X/AG;->A0C(JZ[Z)J

    move-result-wide v9

    .line 27474
    .local v4, "periodPositionUs":J
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/AG;->A03:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/AG;->A04:Lcom/facebook/ads/redexgen/X/H8;

    invoke-direct {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/DW;->A0j(Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/H8;)V

    .line 27475
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/AK;->A00:I

    if-eq v0, v6, :cond_7

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/AK;->A0A:J

    cmp-long v7, v9, v0

    sget-object v5, Lcom/facebook/ads/redexgen/X/DW;->A0W:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v5, v0

    const/4 v0, 0x7

    aget-object v5, v5, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_6

    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 27476
    .end local v5
    .local v0, "selectionsChangedForReadPeriod":Z
    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/DW;->A0W:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    goto :goto_1

    .end local v0    # "selectionsChangedForReadPeriod":Z
    .restart local v5
    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/DW;->A0W:[Ljava/lang/String;

    const-string v1, "MN97UfSCYxd4CAUi8QNz032y2RIKH6mB"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "O1uxFrLXrPUKDvks0eJnT60TLdOxAUMs"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-ne v7, v4, :cond_5

    .line 27477
    const/4 v8, 0x0

    .line 27478
    .end local v5
    .restart local v0    # "selectionsChangedForReadPeriod":Z
    .end local v5
    .restart local v0    # "selectionsChangedForReadPeriod":Z
    :cond_5
    iget-object v7, v7, Lcom/facebook/ads/redexgen/X/AG;->A01:Lcom/facebook/ads/redexgen/X/AG;

    goto :goto_0

    :cond_6
    sget-object v5, Lcom/facebook/ads/redexgen/X/DW;->A0W:[Ljava/lang/String;

    const-string v1, "HrUwSZLSOeDonx"

    const/4 v0, 0x3

    aput-object v1, v5, v0

    if-eqz v7, :cond_7

    .line 27479
    iget-object v7, v3, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v8, v7, Lcom/facebook/ads/redexgen/X/AK;->A04:Lcom/facebook/ads/redexgen/X/FC;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-wide v11, v0, Lcom/facebook/ads/redexgen/X/AK;->A01:J

    .line 27480
    invoke-virtual/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/AK;->A04(Lcom/facebook/ads/redexgen/X/FC;JJ)Lcom/facebook/ads/redexgen/X/AK;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    .line 27481
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/DW;->A0I:Lcom/facebook/ads/redexgen/X/A8;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/A8;->A05(I)V

    .line 27482
    invoke-direct {v3, v9, v10}, Lcom/facebook/ads/redexgen/X/DW;->A0Q(J)V

    .line 27483
    :cond_7
    const/4 v6, 0x0

    .line 27484
    .local v0, "enabledRendererCount":I
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/DW;->A0T:[Lcom/facebook/ads/redexgen/X/W7;

    array-length v0, v0

    new-array v5, v0, [Z

    .line 27485
    .local v0, "rendererWasEnabledFlags":[Z
    const/4 v8, 0x0

    .local v6, "i":I
    :goto_2
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/DW;->A0T:[Lcom/facebook/ads/redexgen/X/W7;

    array-length v0, v1

    if-ge v8, v0, :cond_d

    .line 27486
    aget-object v7, v1, v8

    .line 27487
    .local v5, "renderer":Lcom/facebook/ads/redexgen/X/W7;
    invoke-interface {v7}, Lcom/facebook/ads/redexgen/X/W7;->A7H()I

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_3
    aput-boolean v0, v5, v8

    .line 27488
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/AG;->A0A:[Lcom/facebook/ads/redexgen/X/FZ;

    aget-object v1, v0, v8

    .line 27489
    .local v0, "sampleStream":Lcom/facebook/ads/redexgen/X/FZ;
    if-eqz v1, :cond_8

    .line 27490
    add-int/lit8 v6, v6, 0x1

    .line 27491
    :cond_8
    aget-boolean v0, v5, v8

    if-eqz v0, :cond_9

    .line 27492
    invoke-interface {v7}, Lcom/facebook/ads/redexgen/X/W7;->A7M()Lcom/facebook/ads/redexgen/X/FZ;

    move-result-object v0

    if-eq v1, v0, :cond_a

    .line 27493
    invoke-direct {v3, v7}, Lcom/facebook/ads/redexgen/X/DW;->A0c(Lcom/facebook/ads/redexgen/X/W7;)V

    .line 27494
    .end local v0    # "sampleStream":Lcom/facebook/ads/redexgen/X/FZ;
    .end local v5    # "renderer":Lcom/facebook/ads/redexgen/X/W7;
    .end local v0
    .restart local v5    # "renderer":Lcom/facebook/ads/redexgen/X/W7;
    :cond_9
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 27495
    :cond_a
    aget-boolean v0, v2, v8

    if-eqz v0, :cond_9

    .line 27496
    .end local v0
    .local v5, "selectionsChangedForReadPeriod":Z
    iget-wide v0, v3, Lcom/facebook/ads/redexgen/X/DW;->A03:J

    invoke-interface {v7, v0, v1}, Lcom/facebook/ads/redexgen/X/W7;->ADO(J)V

    goto :goto_4

    .line 27497
    :cond_b
    const/4 v0, 0x0

    goto :goto_3

    .line 27498
    .end local v5    # "selectionsChangedForReadPeriod":Z
    .restart local v0    # "sampleStream":Lcom/facebook/ads/redexgen/X/FZ;
    .end local v0    # "sampleStream":Lcom/facebook/ads/redexgen/X/FZ;
    .restart local v5    # "selectionsChangedForReadPeriod":Z
    :cond_c
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/DW;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/AI;->A0T(Lcom/facebook/ads/redexgen/X/AG;)Z

    .line 27499
    iget-boolean v0, v7, Lcom/facebook/ads/redexgen/X/AG;->A06:Z

    if-eqz v0, :cond_e

    .line 27500
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    iget-wide v4, v0, Lcom/facebook/ads/redexgen/X/AH;->A03:J

    iget-wide v0, v3, Lcom/facebook/ads/redexgen/X/DW;->A03:J

    .line 27501
    invoke-virtual {v7, v0, v1}, Lcom/facebook/ads/redexgen/X/AG;->A09(J)J

    move-result-wide v0

    .line 27502
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 27503
    .local v0, "loadingPeriodPositionUs":J
    const/4 v0, 0x0

    invoke-virtual {v7, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/AG;->A0B(JZ)J

    .line 27504
    iget-object v1, v7, Lcom/facebook/ads/redexgen/X/AG;->A03:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/AG;->A04:Lcom/facebook/ads/redexgen/X/H8;

    invoke-direct {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/DW;->A0j(Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/H8;)V

    goto :goto_5

    .line 27505
    .end local v5    # "selectionsChangedForReadPeriod":Z
    .restart local v0    # "loadingPeriodPositionUs":J
    .end local v0    # "loadingPeriodPositionUs":J
    .end local v6    # "i":I
    .restart local v5    # "selectionsChangedForReadPeriod":Z
    :cond_d
    iget-object v2, v3, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/AG;->A03:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/AG;->A04:Lcom/facebook/ads/redexgen/X/H8;

    .line 27506
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AK;->A05(Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/H8;)Lcom/facebook/ads/redexgen/X/AK;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    .line 27507
    invoke-direct {v3, v5, v6}, Lcom/facebook/ads/redexgen/X/DW;->A0q([ZI)V

    .line 27508
    .end local v0
    .end local v7    # "recreateStreams":Z
    .end local v0
    .end local v4    # "periodPositionUs":J
    .end local v0
    .end local v0
    .end local v0
    :cond_e
    :goto_5
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/AK;->A00:I

    const/4 v0, 0x4

    if-eq v1, v0, :cond_f

    .line 27509
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DW;->A09()V

    .line 27510
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DW;->A0J()V

    .line 27511
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/DW;->A0Q:Lcom/facebook/ads/redexgen/X/IA;

    const/4 v0, 0x2

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/IA;->ADd(I)Z

    .line 27512
    :cond_f
    return-void
.end method

.method private A0F()V
    .locals 3

    .line 27513
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0R:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    .local p0, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 27514
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0R:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/A7;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/DW;->A0s(Lcom/facebook/ads/redexgen/X/A7;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 27515
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0R:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/A7;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/A7;->A03:Lcom/facebook/ads/redexgen/X/AW;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/AW;->A0B(Z)V

    .line 27516
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0R:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 27517
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 27518
    .end local p0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0R:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 27519
    return-void
.end method

.method private A0G()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 27520
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/DW;->A09:Z

    .line 27521
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0G:Lcom/facebook/ads/redexgen/X/WA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/WA;->A06()V

    .line 27522
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/DW;->A0C:[Lcom/facebook/ads/redexgen/X/W7;

    array-length v3, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v0, v4, v5

    .line 27523
    .local v4, "renderer":Lcom/facebook/ads/redexgen/X/W7;
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/W7;->start()V

    sget-object v2, Lcom/facebook/ads/redexgen/X/DW;->A0W:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    .line 27524
    .end local v4    # "renderer":Lcom/facebook/ads/redexgen/X/W7;
    sget-object v2, Lcom/facebook/ads/redexgen/X/DW;->A0W:[Ljava/lang/String;

    const-string v1, "gKwRXENn7ya9G8UcZmB92xpFKNUIVe40"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 27525
    :cond_1
    return-void
.end method

.method private A0H()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 27526
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0G:Lcom/facebook/ads/redexgen/X/WA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/WA;->A07()V

    .line 27527
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/DW;->A0C:[Lcom/facebook/ads/redexgen/X/W7;

    array-length v2, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, v3, v1

    .line 27528
    .local v2, "renderer":Lcom/facebook/ads/redexgen/X/W7;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/DW;->A0d(Lcom/facebook/ads/redexgen/X/W7;)V

    .line 27529
    .end local v2    # "renderer":Lcom/facebook/ads/redexgen/X/W7;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 27530
    :cond_0
    return-void
.end method

.method private A0I()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 27531
    move-object v1, p0

    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/DW;->A07:Lcom/facebook/ads/redexgen/X/FE;

    if-nez v2, :cond_0

    .line 27532
    return-void

    .line 27533
    :cond_0
    iget v0, v1, Lcom/facebook/ads/redexgen/X/DW;->A01:I

    if-lez v0, :cond_1

    .line 27534
    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/FE;->A93()V

    .line 27535
    return-void

    .line 27536
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DW;->A0C()V

    .line 27537
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/DW;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AI;->A0G()Lcom/facebook/ads/redexgen/X/AG;

    move-result-object v0

    .line 27538
    .local v1, "loadingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AG;->A0I()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 27539
    :cond_2
    invoke-direct {v1, v2}, Lcom/facebook/ads/redexgen/X/DW;->A0l(Z)V

    .line 27540
    :cond_3
    :goto_0
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/DW;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AI;->A0Q()Z

    move-result v0

    if-nez v0, :cond_5

    .line 27541
    return-void

    .line 27542
    :cond_4
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/AK;->A08:Z

    if-nez v0, :cond_3

    .line 27543
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DW;->A09()V

    goto :goto_0

    .line 27544
    :cond_5
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/DW;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AI;->A0H()Lcom/facebook/ads/redexgen/X/AG;

    move-result-object v4

    .line 27545
    .local v0, "playingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/DW;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AI;->A0I()Lcom/facebook/ads/redexgen/X/AG;

    move-result-object v5

    .line 27546
    .local v0, "readingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    const/4 v8, 0x0

    .line 27547
    .local v0, "advancedPlayingPeriod":Z
    :goto_1
    iget-boolean v0, v1, Lcom/facebook/ads/redexgen/X/DW;->A08:Z

    if-eqz v0, :cond_8

    if-eq v4, v5, :cond_8

    iget-wide v6, v1, Lcom/facebook/ads/redexgen/X/DW;->A03:J

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/AG;->A01:Lcom/facebook/ads/redexgen/X/AG;

    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/AG;->A00:J

    cmp-long v0, v6, v2

    if-ltz v0, :cond_8

    .line 27548
    if-eqz v8, :cond_6

    .line 27549
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DW;->A0A()V

    .line 27550
    :cond_6
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/AH;->A06:Z

    if-eqz v0, :cond_7

    .line 27551
    const/4 v3, 0x0

    .line 27552
    .local v2, "discontinuityReason":I
    :goto_2
    move-object v2, v4

    .line 27553
    .local v0, "oldPlayingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/DW;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AI;->A0D()Lcom/facebook/ads/redexgen/X/AG;

    move-result-object v4

    .line 27554
    invoke-direct {v1, v2}, Lcom/facebook/ads/redexgen/X/DW;->A0W(Lcom/facebook/ads/redexgen/X/AG;)V

    .line 27555
    iget-object v6, v1, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/AH;->A04:Lcom/facebook/ads/redexgen/X/FC;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    iget-wide v8, v0, Lcom/facebook/ads/redexgen/X/AH;->A03:J

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    iget-wide v10, v0, Lcom/facebook/ads/redexgen/X/AH;->A00:J

    .line 27556
    invoke-virtual/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/AK;->A04(Lcom/facebook/ads/redexgen/X/FC;JJ)Lcom/facebook/ads/redexgen/X/AK;

    move-result-object v0

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    .line 27557
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/DW;->A0I:Lcom/facebook/ads/redexgen/X/A8;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/A8;->A05(I)V

    .line 27558
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DW;->A0J()V

    .line 27559
    const/4 v8, 0x1

    .line 27560
    .end local v2    # "discontinuityReason":I
    .end local v0    # "oldPlayingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    goto :goto_1

    .line 27561
    :cond_7
    const/4 v3, 0x3

    goto :goto_2

    .line 27562
    :cond_8
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/AH;->A05:Z

    if-eqz v0, :cond_b

    .line 27563
    const/4 v4, 0x0

    .local v2, "i":I
    :goto_3
    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/DW;->A0T:[Lcom/facebook/ads/redexgen/X/W7;

    array-length v0, v2

    if-ge v4, v0, :cond_a

    .line 27564
    aget-object v3, v2, v4

    .line 27565
    .local v2, "renderer":Lcom/facebook/ads/redexgen/X/W7;
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/AG;->A0A:[Lcom/facebook/ads/redexgen/X/FZ;

    aget-object v2, v0, v4

    .line 27566
    .local v0, "sampleStream":Lcom/facebook/ads/redexgen/X/FZ;
    if-eqz v2, :cond_9

    .line 27567
    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/W7;->A7M()Lcom/facebook/ads/redexgen/X/FZ;

    move-result-object v0

    if-ne v0, v2, :cond_9

    .line 27568
    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/W7;->A7e()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 27569
    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/W7;->ADj()V

    .line 27570
    .end local v2    # "renderer":Lcom/facebook/ads/redexgen/X/W7;
    .end local v0    # "sampleStream":Lcom/facebook/ads/redexgen/X/FZ;
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 27571
    .end local v2
    :cond_a
    return-void

    .line 27572
    :cond_b
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/AG;->A01:Lcom/facebook/ads/redexgen/X/AG;

    if-eqz v0, :cond_c

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/AG;->A01:Lcom/facebook/ads/redexgen/X/AG;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/AG;->A06:Z

    if-nez v0, :cond_d

    .line 27573
    .end local v1    # "loadingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    .end local v0
    .restart local v8
    .restart local v0    # "sampleStream":Lcom/facebook/ads/redexgen/X/FZ;
    :cond_c
    return-void

    .line 27574
    :cond_d
    const/4 v4, 0x0

    .local v2, "i":I
    :goto_4
    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/DW;->A0T:[Lcom/facebook/ads/redexgen/X/W7;

    array-length v0, v2

    if-ge v4, v0, :cond_10

    .line 27575
    aget-object v3, v2, v4

    .line 27576
    .local v0, "renderer":Lcom/facebook/ads/redexgen/X/W7;
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/AG;->A0A:[Lcom/facebook/ads/redexgen/X/FZ;

    aget-object v2, v0, v4

    .line 27577
    .local v0, "sampleStream":Lcom/facebook/ads/redexgen/X/FZ;
    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/W7;->A7M()Lcom/facebook/ads/redexgen/X/FZ;

    move-result-object v0

    if-ne v0, v2, :cond_e

    if-eqz v2, :cond_f

    .line 27578
    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/W7;->A7e()Z

    move-result v0

    if-nez v0, :cond_f

    .line 27579
    .restart local v0    # "sampleStream":Lcom/facebook/ads/redexgen/X/FZ;
    .restart local v0    # "sampleStream":Lcom/facebook/ads/redexgen/X/FZ;
    :cond_e
    return-void

    .line 27580
    .end local v0    # "sampleStream":Lcom/facebook/ads/redexgen/X/FZ;
    .end local v0
    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 27581
    .end local v2    # "i":I
    .end local v0
    .end local v0
    :cond_10
    iget-object v8, v5, Lcom/facebook/ads/redexgen/X/AG;->A04:Lcom/facebook/ads/redexgen/X/H8;

    .line 27582
    .local v2, "oldTrackSelectorResult":Lcom/facebook/ads/redexgen/X/H8;
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/DW;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AI;->A0E()Lcom/facebook/ads/redexgen/X/AG;

    move-result-object v7

    .line 27583
    iget-object v6, v7, Lcom/facebook/ads/redexgen/X/AG;->A04:Lcom/facebook/ads/redexgen/X/H8;

    .line 27584
    .local v0, "newTrackSelectorResult":Lcom/facebook/ads/redexgen/X/H8;
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/AG;->A08:Lcom/facebook/ads/redexgen/X/UN;

    .line 27585
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/UN;->ACo()J

    move-result-wide v4

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v4, v2

    if-eqz v0, :cond_16

    const/4 v10, 0x1

    .line 27586
    .local v0, "initialDiscontinuity":Z
    :goto_5
    const/4 v5, 0x0

    .local v0, "i":I
    :goto_6
    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/DW;->A0T:[Lcom/facebook/ads/redexgen/X/W7;

    array-length v0, v2

    if-ge v5, v0, :cond_17

    .line 27587
    aget-object v4, v2, v5

    .line 27588
    .local v0, "renderer":Lcom/facebook/ads/redexgen/X/W7;
    invoke-virtual {v8, v5}, Lcom/facebook/ads/redexgen/X/H8;->A00(I)Z

    move-result v0

    .line 27589
    .local v0, "rendererWasEnabled":Z
    if-nez v0, :cond_12

    .line 27590
    .end local v1
    .end local v0    # "rendererWasEnabled":Z
    .end local v0
    .end local v0
    .restart local v8
    .restart local v0    # "rendererWasEnabled":Z
    :cond_11
    :goto_7
    add-int/lit8 v5, v5, 0x1

    move-object v1, p0

    goto :goto_6

    .line 27591
    :cond_12
    if-eqz v10, :cond_13

    .line 27592
    invoke-interface {v4}, Lcom/facebook/ads/redexgen/X/W7;->ADj()V

    goto :goto_7

    .line 27593
    :cond_13
    invoke-interface {v4}, Lcom/facebook/ads/redexgen/X/W7;->A7y()Z

    move-result v0

    if-nez v0, :cond_11

    .line 27594
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/H8;->A01:Lcom/facebook/ads/redexgen/X/H5;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/H5;->A01(I)Lcom/facebook/ads/redexgen/X/H4;

    move-result-object v9

    .line 27595
    .local v4, "newSelection":Lcom/facebook/ads/redexgen/X/H4;
    invoke-virtual {v6, v5}, Lcom/facebook/ads/redexgen/X/H8;->A00(I)Z

    move-result v3

    .line 27596
    .local v0, "newRendererEnabled":Z
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/DW;->A0U:[Lcom/facebook/ads/redexgen/X/AY;

    aget-object v0, v0, v5

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AY;->A7R()I

    move-result v1

    const/4 v0, 0x5

    if-ne v1, v0, :cond_14

    const/4 v2, 0x1

    .line 27597
    .local v2, "isNoSampleRenderer":Z
    :goto_8
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/H8;->A03:[Lcom/facebook/ads/redexgen/X/AZ;

    aget-object v1, v0, v5

    .line 27598
    .local v5, "oldConfig":Lcom/facebook/ads/redexgen/X/AZ;
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/H8;->A03:[Lcom/facebook/ads/redexgen/X/AZ;

    aget-object v0, v0, v5

    .line 27599
    .local v0, "newConfig":Lcom/facebook/ads/redexgen/X/AZ;
    if-eqz v3, :cond_15

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/AZ;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    if-nez v2, :cond_15

    .line 27600
    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/DW;->A0w(Lcom/facebook/ads/redexgen/X/H4;)[Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v3

    .line 27601
    .local p0, "formats":[Lcom/facebook/ads/internal/exoplayer2/Format;
    .end local v1
    .local v8, "loadingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/AG;->A0A:[Lcom/facebook/ads/redexgen/X/FZ;

    aget-object v2, v0, v5

    .line 27602
    .end local v2    # "isNoSampleRenderer":Z
    .end local v0    # "newConfig":Lcom/facebook/ads/redexgen/X/AZ;
    .local v0, "playingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    .local v6, "isNoSampleRenderer":Z
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/AG;->A08()J

    move-result-wide v0

    .line 27603
    invoke-interface {v4, v3, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/W7;->ADE([Lcom/facebook/ads/internal/exoplayer2/Format;Lcom/facebook/ads/redexgen/X/FZ;J)V

    .line 27604
    .end local p0    # "formats":[Lcom/facebook/ads/internal/exoplayer2/Format;
    goto :goto_7

    .line 27605
    :cond_14
    const/4 v2, 0x0

    goto :goto_8

    .line 27606
    .end local v8    # "loadingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    .end local v0    # "playingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    .end local v6    # "isNoSampleRenderer":Z
    .restart local v1    # "loadingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    .restart local v2    # "isNoSampleRenderer":Z
    .restart local v0    # "playingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    .end local v1    # "loadingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    .end local v2    # "isNoSampleRenderer":Z
    .end local v0    # "playingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    .restart local v8    # "loadingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    .restart local v0    # "playingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    .restart local v6    # "isNoSampleRenderer":Z
    :cond_15
    invoke-interface {v4}, Lcom/facebook/ads/redexgen/X/W7;->ADj()V

    goto :goto_7

    .line 27607
    :cond_16
    const/4 v10, 0x0

    goto :goto_5

    .line 27608
    .end local v0    # "playingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    .end local v8    # "loadingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    .end local v0
    .restart local v1    # "loadingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    .restart local v0    # "playingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    :cond_17
    return-void
.end method

.method private A0J()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 27609
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AI;->A0Q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 27610
    return-void

    .line 27611
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AI;->A0H()Lcom/facebook/ads/redexgen/X/AG;

    move-result-object v4

    .line 27612
    .local p0, "playingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/AG;->A08:Lcom/facebook/ads/redexgen/X/UN;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/UN;->ACo()J

    move-result-wide v7

    .line 27613
    .local v1, "periodPositionUs":J
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v7, v1

    if-eqz v0, :cond_3

    .line 27614
    invoke-direct {p0, v7, v8}, Lcom/facebook/ads/redexgen/X/DW;->A0Q(J)V

    .line 27615
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/AK;->A0A:J

    cmp-long v0, v7, v1

    if-eqz v0, :cond_1

    .line 27616
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v6, v5, Lcom/facebook/ads/redexgen/X/AK;->A04:Lcom/facebook/ads/redexgen/X/FC;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-wide v9, v0, Lcom/facebook/ads/redexgen/X/AK;->A01:J

    .line 27617
    invoke-virtual/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/AK;->A04(Lcom/facebook/ads/redexgen/X/FC;JJ)Lcom/facebook/ads/redexgen/X/AK;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    .line 27618
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DW;->A0I:Lcom/facebook/ads/redexgen/X/A8;

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/A8;->A05(I)V

    .line 27619
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    .line 27620
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0C:[Lcom/facebook/ads/redexgen/X/W7;

    array-length v0, v0

    if-nez v0, :cond_2

    .line 27621
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/AH;->A01:J

    .line 27622
    :goto_1
    iput-wide v0, v2, Lcom/facebook/ads/redexgen/X/AK;->A09:J

    .line 27623
    return-void

    .line 27624
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/AG;->A0D(Z)J

    move-result-wide v0

    goto :goto_1

    .line 27625
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0G:Lcom/facebook/ads/redexgen/X/WA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/WA;->A05()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A03:J

    .line 27626
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A03:J

    invoke-virtual {v4, v0, v1}, Lcom/facebook/ads/redexgen/X/AG;->A09(J)J

    move-result-wide v2

    .line 27627
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/AK;->A0A:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/facebook/ads/redexgen/X/DW;->A0R(JJ)V

    .line 27628
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iput-wide v2, v0, Lcom/facebook/ads/redexgen/X/AK;->A0A:J

    goto :goto_0
.end method

.method public static A0K()V
    .locals 1

    const/16 v0, 0xa0

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/DW;->A0V:[B

    return-void

    :array_0
    .array-data 1
        0x2t
        0x3ft
        0x28t
        0x17t
        0x2bt
        0x26t
        0x3et
        0x22t
        0x35t
        0xet
        0x2at
        0x37t
        0x2bt
        0xet
        0x29t
        0x33t
        0x22t
        0x35t
        0x29t
        0x26t
        0x2bt
        0x5at
        0x67t
        0x70t
        0x4ft
        0x73t
        0x7et
        0x66t
        0x7at
        0x6dt
        0x56t
        0x72t
        0x6ft
        0x73t
        0x56t
        0x71t
        0x6bt
        0x7at
        0x6dt
        0x71t
        0x7et
        0x73t
        0x25t
        0x57t
        0x7et
        0x71t
        0x7bt
        0x73t
        0x7at
        0x6dt
        0x5t
        0x2bt
        0x22t
        0x23t
        0x3et
        0x25t
        0x22t
        0x2bt
        0x6ct
        0x21t
        0x29t
        0x3ft
        0x3ft
        0x2dt
        0x2bt
        0x29t
        0x3ft
        0x6ct
        0x3ft
        0x29t
        0x22t
        0x38t
        0x6ct
        0x2dt
        0x2at
        0x38t
        0x29t
        0x3et
        0x6ct
        0x3et
        0x29t
        0x20t
        0x29t
        0x2dt
        0x3ft
        0x29t
        0x62t
        0x64t
        0x43t
        0x59t
        0x48t
        0x5ft
        0x43t
        0x4ct
        0x41t
        0xdt
        0x5ft
        0x58t
        0x43t
        0x59t
        0x44t
        0x40t
        0x48t
        0xdt
        0x48t
        0x5ft
        0x5ft
        0x42t
        0x5ft
        0x3t
        0x43t
        0x7ft
        0x72t
        0x6at
        0x71t
        0x72t
        0x70t
        0x78t
        0x33t
        0x76t
        0x61t
        0x61t
        0x7ct
        0x61t
        0x3dt
        0x33t
        0xft
        0x15t
        0x12t
        0x3t
        0x5t
        0x40t
        0x5t
        0x12t
        0x12t
        0xft
        0x12t
        0x4et
        0x5at
        0x7dt
        0x66t
        0x79t
        0x29t
        0x6ft
        0x68t
        0x60t
        0x65t
        0x6ct
        0x6dt
        0x27t
        0x60t
        0x6bt
        0x57t
        0x6bt
        0x69t
        0x61t
        0x53t
        0x6bt
        0x76t
        0x6ft
    .end array-data
.end method

.method public static A0L()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "9CWTH87r52A0fKhKyExv1CzeyTR87ktN"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "msncUda2vNDOKScttNKiKU61eZSngWu4"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "n0Nvk3s5P4Kb30FjWB90of1awz"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "m9HnkXgPLyKBxuypjlZsRzAgNq8lMgL2"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "QipZdPUzf5ACoppTs8PkYPWVx39qPkK0"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "5kfkR1"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "apzhdkcumRpF8NewL7M5aDOCivsqPvro"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/DW;->A0W:[Ljava/lang/String;

    return-void
.end method

.method private A0M(F)V
    .locals 5

    .line 27629
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AI;->A0F()Lcom/facebook/ads/redexgen/X/AG;

    move-result-object v4

    .line 27630
    .local p0, "periodHolder":Lcom/facebook/ads/redexgen/X/AG;
    :goto_0
    if-eqz v4, :cond_2

    .line 27631
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/AG;->A04:Lcom/facebook/ads/redexgen/X/H8;

    if-eqz v0, :cond_1

    .line 27632
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/AG;->A04:Lcom/facebook/ads/redexgen/X/H8;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/H8;->A01:Lcom/facebook/ads/redexgen/X/H5;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/H5;->A02()[Lcom/facebook/ads/redexgen/X/H4;

    move-result-object v3

    .line 27633
    .local p1, "trackSelections":[Lcom/facebook/ads/redexgen/X/H4;
    array-length v2, v3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v0, v3, v1

    .line 27634
    .local v0, "trackSelection":Lcom/facebook/ads/redexgen/X/H4;
    if-eqz v0, :cond_0

    .line 27635
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/H4;->AB8(F)V

    .line 27636
    .end local v0    # "trackSelection":Lcom/facebook/ads/redexgen/X/H4;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 27637
    .end local p1    # "trackSelections":[Lcom/facebook/ads/redexgen/X/H4;
    :cond_1
    iget-object v4, v4, Lcom/facebook/ads/redexgen/X/AG;->A01:Lcom/facebook/ads/redexgen/X/AG;

    goto :goto_0

    .line 27638
    :cond_2
    return-void
.end method

.method private A0N(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 27639
    iput p1, p0, Lcom/facebook/ads/redexgen/X/DW;->A02:I

    .line 27640
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/AI;->A0S(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 27641
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/DW;->A0k(Z)V

    .line 27642
    :cond_0
    return-void
.end method

.method private A0O(I)V
    .locals 1

    .line 27643
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/AK;->A00:I

    if-eq v0, p1, :cond_0

    .line 27644
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/AK;->A02(I)Lcom/facebook/ads/redexgen/X/AK;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    .line 27645
    :cond_0
    return-void
.end method

.method private A0P(IZI)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 27646
    move-object v2, p0

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/DW;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AI;->A0H()Lcom/facebook/ads/redexgen/X/AG;

    move-result-object v3

    .line 27647
    .local p2, "playingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/DW;->A0T:[Lcom/facebook/ads/redexgen/X/W7;

    aget-object v4, v0, p1

    .line 27648
    .local p3, "renderer":Lcom/facebook/ads/redexgen/X/W7;
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/DW;->A0C:[Lcom/facebook/ads/redexgen/X/W7;

    aput-object v4, v0, p3

    .line 27649
    invoke-interface {v4}, Lcom/facebook/ads/redexgen/X/W7;->A7H()I

    move-result v0

    if-nez v0, :cond_0

    .line 27650
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/AG;->A04:Lcom/facebook/ads/redexgen/X/H8;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/H8;->A03:[Lcom/facebook/ads/redexgen/X/AZ;

    aget-object v5, v0, p1

    .line 27651
    .local v0, "rendererConfiguration":Lcom/facebook/ads/redexgen/X/AZ;
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/AG;->A04:Lcom/facebook/ads/redexgen/X/H8;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/H8;->A01:Lcom/facebook/ads/redexgen/X/H5;

    .line 27652
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/H5;->A01(I)Lcom/facebook/ads/redexgen/X/H4;

    move-result-object v0

    .line 27653
    .local v5, "newSelection":Lcom/facebook/ads/redexgen/X/H4;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/DW;->A0w(Lcom/facebook/ads/redexgen/X/H4;)[Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v6

    .line 27654
    .local v0, "formats":[Lcom/facebook/ads/internal/exoplayer2/Format;
    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/DW;->A08:Z

    if-eqz v0, :cond_2

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/AK;->A00:I

    const/4 v0, 0x3

    if-ne v1, v0, :cond_2

    const/4 v1, 0x1

    .line 27655
    .local v0, "playing":Z
    :goto_0
    if-nez p2, :cond_1

    if-eqz v1, :cond_1

    const/4 v10, 0x1

    .line 27656
    .local v0, "joining":Z
    :goto_1
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/AG;->A0A:[Lcom/facebook/ads/redexgen/X/FZ;

    aget-object v7, v0, p1

    iget-wide v8, v2, Lcom/facebook/ads/redexgen/X/DW;->A03:J

    .line 27657
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/AG;->A08()J

    move-result-wide v11

    .line 27658
    invoke-interface/range {v4 .. v12}, Lcom/facebook/ads/redexgen/X/W7;->A56(Lcom/facebook/ads/redexgen/X/AZ;[Lcom/facebook/ads/internal/exoplayer2/Format;Lcom/facebook/ads/redexgen/X/FZ;JZJ)V

    .line 27659
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/DW;->A0G:Lcom/facebook/ads/redexgen/X/WA;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/WA;->A0A(Lcom/facebook/ads/redexgen/X/W7;)V

    .line 27660
    if-eqz v1, :cond_0

    .line 27661
    invoke-interface {v4}, Lcom/facebook/ads/redexgen/X/W7;->start()V

    .line 27662
    .end local v0    # "joining":Z
    .end local v0
    .end local v5    # "newSelection":Lcom/facebook/ads/redexgen/X/H4;
    .end local v0
    .end local v0
    :cond_0
    return-void

    .line 27663
    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    .line 27664
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private A0Q(J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 27665
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AI;->A0Q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 27666
    :goto_0
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/DW;->A03:J

    .line 27667
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/DW;->A0G:Lcom/facebook/ads/redexgen/X/WA;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A03:J

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/WA;->A08(J)V

    .line 27668
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/DW;->A0C:[Lcom/facebook/ads/redexgen/X/W7;

    array-length v4, v5

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v2, v5, v3

    .line 27669
    .local v0, "renderer":Lcom/facebook/ads/redexgen/X/W7;
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A03:J

    invoke-interface {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/W7;->ADO(J)V

    .line 27670
    .end local v0    # "renderer":Lcom/facebook/ads/redexgen/X/W7;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 27671
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AI;->A0H()Lcom/facebook/ads/redexgen/X/AG;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/AG;->A0A(J)J

    move-result-wide p1

    goto :goto_0

    .line 27672
    :cond_1
    return-void
.end method

.method private A0R(JJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 27673
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0R:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AK;->A04:Lcom/facebook/ads/redexgen/X/FC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FC;->A01()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27674
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/DW;
    .end local p1    # null:J
    .end local p3    # null:J
    :cond_0
    return-void

    .line 27675
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/AK;->A02:J

    cmp-long v0, v1, p1

    if-nez v0, :cond_2

    .line 27676
    const-wide/16 v0, 0x1

    sub-long/2addr p1, v0

    .line 27677
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AK;->A04:Lcom/facebook/ads/redexgen/X/FC;

    iget v3, v0, Lcom/facebook/ads/redexgen/X/FC;->A02:I

    .line 27678
    .local p0, "currentPeriodIndex":I
    iget v5, p0, Lcom/facebook/ads/redexgen/X/DW;->A00:I

    const/4 v6, 0x0

    if-lez v5, :cond_5

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/DW;->A0R:Ljava/util/ArrayList;

    sget-object v1, Lcom/facebook/ads/redexgen/X/DW;->A0W:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x79

    if-eq v1, v0, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/DW;->A0W:[Ljava/lang/String;

    const-string v1, "ynRGziCX82mnlQCARyKfo3e2woxjwLwq"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "nXQokINfmvPjdgcMHxa3zIX7Qc5chTCa"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    add-int/lit8 v0, v5, -0x1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/A7;

    goto :goto_0

    :cond_5
    move-object v0, v6

    .line 27679
    .local p1, "previousInfo":Lcom/facebook/ads/redexgen/X/A7;
    :goto_0
    if-eqz v0, :cond_9

    iget v1, v0, Lcom/facebook/ads/redexgen/X/A7;->A00:I

    if-gt v1, v3, :cond_6

    iget v1, v0, Lcom/facebook/ads/redexgen/X/A7;->A00:I

    if-ne v1, v3, :cond_9

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/A7;->A01:J

    cmp-long v0, v1, p1

    if-lez v0, :cond_9

    .line 27680
    :cond_6
    iget v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A00:I

    add-int/lit8 v4, v0, -0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/DW;->A0W:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x79

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/DW;->A0W:[Ljava/lang/String;

    const-string v1, "ps9lAWuPleDqLdbG1sUJQdsKCtarkKWu"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "IXk1BLHDPSqYl3HWcKw5z2FrsHklvvLR"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iput v4, p0, Lcom/facebook/ads/redexgen/X/DW;->A00:I

    .line 27681
    iget v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A00:I

    if-lez v0, :cond_8

    :goto_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DW;->A0R:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/A7;

    goto :goto_0

    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/DW;->A0W:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iput v4, p0, Lcom/facebook/ads/redexgen/X/DW;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A00:I

    if-lez v0, :cond_8

    goto :goto_1

    :cond_8
    move-object v0, v6

    goto :goto_0

    .line 27682
    :cond_9
    iget v1, p0, Lcom/facebook/ads/redexgen/X/DW;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0R:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_c

    .line 27683
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DW;->A0R:Ljava/util/ArrayList;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A00:I

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/A7;

    .line 27684
    .local p3, "nextInfo":Lcom/facebook/ads/redexgen/X/A7;
    :goto_2
    if-eqz v4, :cond_d

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/A7;->A02:Ljava/lang/Object;

    if-eqz v0, :cond_d

    iget v0, v4, Lcom/facebook/ads/redexgen/X/A7;->A00:I

    if-lt v0, v3, :cond_a

    iget v0, v4, Lcom/facebook/ads/redexgen/X/A7;->A00:I

    if-ne v0, v3, :cond_d

    iget-wide v0, v4, Lcom/facebook/ads/redexgen/X/A7;->A01:J

    cmp-long v2, v0, p1

    if-gtz v2, :cond_d

    .line 27685
    :cond_a
    iget v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A00:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A00:I

    .line 27686
    iget v1, p0, Lcom/facebook/ads/redexgen/X/DW;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0R:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_b

    .line 27687
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DW;->A0R:Ljava/util/ArrayList;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A00:I

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/A7;

    goto :goto_2

    .line 27688
    :cond_b
    move-object v4, v6

    goto :goto_2

    .line 27689
    :cond_c
    move-object v4, v6

    goto :goto_2

    .line 27690
    :cond_d
    :goto_3
    if-eqz v4, :cond_12

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/A7;->A02:Ljava/lang/Object;

    if-eqz v0, :cond_12

    iget v5, v4, Lcom/facebook/ads/redexgen/X/A7;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/DW;->A0W:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/DW;->A0W:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-ne v5, v3, :cond_12

    iget-wide v1, v4, Lcom/facebook/ads/redexgen/X/A7;->A01:J

    cmp-long v0, v1, p1

    if-lez v0, :cond_12

    iget-wide v1, v4, Lcom/facebook/ads/redexgen/X/A7;->A01:J

    cmp-long v0, v1, p3

    if-gtz v0, :cond_12

    .line 27691
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/A7;->A03:Lcom/facebook/ads/redexgen/X/AW;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/DW;->A0a(Lcom/facebook/ads/redexgen/X/AW;)V

    .line 27692
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/A7;->A03:Lcom/facebook/ads/redexgen/X/AW;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AW;->A0C()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/A7;->A03:Lcom/facebook/ads/redexgen/X/AW;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AW;->A0E()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 27693
    :cond_e
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DW;->A0R:Ljava/util/ArrayList;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A00:I

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 27694
    :goto_4
    iget v1, p0, Lcom/facebook/ads/redexgen/X/DW;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0R:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_f

    .line 27695
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DW;->A0R:Ljava/util/ArrayList;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A00:I

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/A7;

    goto :goto_3

    .line 27696
    :cond_f
    move-object v4, v6

    goto :goto_3

    .line 27697
    :cond_10
    iget v4, p0, Lcom/facebook/ads/redexgen/X/DW;->A00:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/DW;->A0W:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_11

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_11
    sget-object v2, Lcom/facebook/ads/redexgen/X/DW;->A0W:[Ljava/lang/String;

    const-string v1, "SjnUfyn5GaXIYpiFbQZT"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    add-int/lit8 v0, v4, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A00:I

    goto :goto_4

    .line 27698
    :cond_12
    return-void
.end method

.method private A0S(JJ)V
    .locals 2

    .line 27699
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0Q:Lcom/facebook/ads/redexgen/X/IA;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/IA;->AD9(I)V

    .line 27700
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0Q:Lcom/facebook/ads/redexgen/X/IA;

    add-long/2addr p1, p3

    invoke-interface {v0, v1, p1, p2}, Lcom/facebook/ads/redexgen/X/IA;->ADe(IJ)Z

    .line 27701
    return-void
.end method

.method private A0T(Lcom/facebook/ads/redexgen/X/A6;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 27702
    move-object v0, p0

    iget-object v2, p1, Lcom/facebook/ads/redexgen/X/A6;->A01:Lcom/facebook/ads/redexgen/X/FE;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DW;->A07:Lcom/facebook/ads/redexgen/X/FE;

    if-eq v2, v1, :cond_0

    .line 27703
    return-void

    .line 27704
    :cond_0
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v10, v1, Lcom/facebook/ads/redexgen/X/AK;->A03:Lcom/facebook/ads/redexgen/X/Af;

    .line 27705
    .local v0, "oldTimeline":Lcom/facebook/ads/redexgen/X/Af;
    iget-object v6, p1, Lcom/facebook/ads/redexgen/X/A6;->A00:Lcom/facebook/ads/redexgen/X/Af;

    .line 27706
    .local p1, "timeline":Lcom/facebook/ads/redexgen/X/Af;
    iget-object v2, p1, Lcom/facebook/ads/redexgen/X/A6;->A02:Ljava/lang/Object;

    .line 27707
    .local v2, "manifest":Ljava/lang/Object;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DW;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v1, v6}, Lcom/facebook/ads/redexgen/X/AI;->A0O(Lcom/facebook/ads/redexgen/X/Af;)V

    .line 27708
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    invoke-virtual {v1, v6, v2}, Lcom/facebook/ads/redexgen/X/AK;->A03(Lcom/facebook/ads/redexgen/X/Af;Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/AK;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    .line 27709
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DW;->A0F()V

    .line 27710
    iget v7, v0, Lcom/facebook/ads/redexgen/X/DW;->A01:I

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-lez v7, :cond_8

    .line 27711
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/DW;->A0I:Lcom/facebook/ads/redexgen/X/A8;

    invoke-virtual {v3, v7}, Lcom/facebook/ads/redexgen/X/A8;->A04(I)V

    .line 27712
    iput v5, v0, Lcom/facebook/ads/redexgen/X/DW;->A01:I

    .line 27713
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/DW;->A04:Lcom/facebook/ads/redexgen/X/A9;

    if-eqz v3, :cond_4

    .line 27714
    invoke-direct {v0, v3, v4}, Lcom/facebook/ads/redexgen/X/DW;->A04(Lcom/facebook/ads/redexgen/X/A9;Z)Landroid/util/Pair;

    move-result-object v3

    .line 27715
    .local v1, "periodPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/DW;->A04:Lcom/facebook/ads/redexgen/X/A9;

    .line 27716
    if-nez v3, :cond_2

    .line 27717
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DW;->A08()V

    .line 27718
    :cond_1
    :goto_0
    return-void

    .line 27719
    :cond_2
    iget-object v1, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 27720
    .local v1, "periodIndex":I
    iget-object v1, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 27721
    .local v10, "positionUs":J
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DW;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v1, v2, v6, v7}, Lcom/facebook/ads/redexgen/X/AI;->A0M(IJ)Lcom/facebook/ads/redexgen/X/FC;

    move-result-object v3

    .line 27722
    .local v2, "periodId":Lcom/facebook/ads/redexgen/X/FC;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    .line 27723
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/FC;->A01()Z

    move-result v1

    if-eqz v1, :cond_3

    const-wide/16 v4, 0x0

    .line 27724
    :goto_1
    invoke-virtual/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/AK;->A04(Lcom/facebook/ads/redexgen/X/FC;JJ)Lcom/facebook/ads/redexgen/X/AK;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    goto :goto_0

    .line 27725
    :cond_3
    move-wide v4, v6

    goto :goto_1

    .line 27726
    .end local v1    # "periodIndex":I
    .end local v1
    .end local v10    # "positionUs":J
    .end local v2    # "periodId":Lcom/facebook/ads/redexgen/X/FC;
    :cond_4
    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    sget-object v4, Lcom/facebook/ads/redexgen/X/DW;->A0W:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v3, v4, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v3, 0x19

    if-eq v4, v3, :cond_7

    sget-object v5, Lcom/facebook/ads/redexgen/X/DW;->A0W:[Ljava/lang/String;

    const-string v4, "Q83nUDT3oyNipBwhbHf07KAhAiPMypD0"

    const/4 v3, 0x4

    aput-object v4, v5, v3

    iget-wide v4, v7, Lcom/facebook/ads/redexgen/X/AK;->A02:J

    cmp-long v3, v4, v1

    if-nez v3, :cond_1

    .line 27727
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Af;->A0E()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 27728
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DW;->A08()V

    goto :goto_0

    .line 27729
    :cond_5
    iget-boolean v3, v0, Lcom/facebook/ads/redexgen/X/DW;->A0B:Z

    .line 27730
    invoke-virtual {v6, v3}, Lcom/facebook/ads/redexgen/X/Af;->A05(Z)I

    move-result v3

    .line 27731
    invoke-direct {v0, v6, v3, v1, v2}, Lcom/facebook/ads/redexgen/X/DW;->A05(Lcom/facebook/ads/redexgen/X/Af;IJ)Landroid/util/Pair;

    move-result-object v3

    .line 27732
    .local v1, "defaultPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    iget-object v1, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 27733
    .restart local v1    # "defaultPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    iget-object v1, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 27734
    .local v10, "startPositionUs":J
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DW;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v1, v2, v6, v7}, Lcom/facebook/ads/redexgen/X/AI;->A0M(IJ)Lcom/facebook/ads/redexgen/X/FC;

    move-result-object v3

    .line 27735
    .restart local v2    # "periodId":Lcom/facebook/ads/redexgen/X/FC;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    .line 27736
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/FC;->A01()Z

    move-result v1

    if-eqz v1, :cond_6

    const-wide/16 v4, 0x0

    .line 27737
    :goto_2
    invoke-virtual/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/AK;->A04(Lcom/facebook/ads/redexgen/X/FC;JJ)Lcom/facebook/ads/redexgen/X/AK;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    goto :goto_0

    .line 27738
    :cond_6
    move-wide v4, v6

    goto :goto_2

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 27739
    :cond_8
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v3, v3, Lcom/facebook/ads/redexgen/X/AK;->A04:Lcom/facebook/ads/redexgen/X/FC;

    iget v9, v3, Lcom/facebook/ads/redexgen/X/FC;->A02:I

    .line 27740
    .local v1, "playingPeriodIndex":I
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-wide v11, v3, Lcom/facebook/ads/redexgen/X/AK;->A01:J

    .line 27741
    .local v5, "contentPositionUs":J
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/Af;->A0E()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 27742
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Af;->A0E()Z

    move-result v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/DW;->A0W:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v1, v2, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v1, 0x19

    if-eq v2, v1, :cond_b

    sget-object v3, Lcom/facebook/ads/redexgen/X/DW;->A0W:[Ljava/lang/String;

    const-string v2, "1KGsvMsCvyILq34Pf2gRLbST6naYlwKh"

    const/4 v1, 0x4

    aput-object v2, v3, v1

    if-nez v4, :cond_9

    .line 27743
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DW;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    .line 27744
    invoke-virtual {v1, v9, v11, v12}, Lcom/facebook/ads/redexgen/X/AI;->A0M(IJ)Lcom/facebook/ads/redexgen/X/FC;

    move-result-object v8

    .line 27745
    .local v1, "periodId":Lcom/facebook/ads/redexgen/X/FC;
    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    .line 27746
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/FC;->A01()Z

    move-result v1

    if-eqz v1, :cond_a

    const-wide/16 v9, 0x0

    .line 27747
    .end local v5    # "contentPositionUs":J
    .local v10, "contentPositionUs":J
    :goto_3
    invoke-virtual/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/AK;->A04(Lcom/facebook/ads/redexgen/X/FC;JJ)Lcom/facebook/ads/redexgen/X/AK;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    .line 27748
    .end local v5
    .restart local v10    # "contentPositionUs":J
    :cond_9
    return-void

    .line 27749
    :cond_a
    move-wide v9, v11

    goto :goto_3

    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 27750
    .end local v10    # "contentPositionUs":J
    .restart local v5    # "contentPositionUs":J
    :cond_c
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/DW;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/AI;->A0F()Lcom/facebook/ads/redexgen/X/AG;

    move-result-object v3

    .line 27751
    .local v1, "periodHolder":Lcom/facebook/ads/redexgen/X/AG;
    if-nez v3, :cond_d

    .line 27752
    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/DW;->A0L:Lcom/facebook/ads/redexgen/X/Ad;

    invoke-virtual {v10, v9, v7, v4}, Lcom/facebook/ads/redexgen/X/Af;->A0A(ILcom/facebook/ads/redexgen/X/Ad;Z)Lcom/facebook/ads/redexgen/X/Ad;

    move-result-object v7

    iget-object v7, v7, Lcom/facebook/ads/redexgen/X/Ad;->A03:Ljava/lang/Object;

    .line 27753
    .local v7, "playingPeriodUid":Ljava/lang/Object;
    :goto_4
    invoke-virtual {v6, v7}, Lcom/facebook/ads/redexgen/X/Af;->A04(Ljava/lang/Object;)I

    move-result v7

    .line 27754
    .local v1, "periodIndex":I
    const/4 v8, -0x1

    if-ne v7, v8, :cond_13

    .line 27755
    invoke-direct {v0, v9, v10, v6}, Lcom/facebook/ads/redexgen/X/DW;->A01(ILcom/facebook/ads/redexgen/X/Af;Lcom/facebook/ads/redexgen/X/Af;)I

    move-result v7

    .line 27756
    .local v1, "newPeriodIndex":I
    if-ne v7, v8, :cond_e

    .line 27757
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DW;->A08()V

    .line 27758
    return-void

    .line 27759
    :cond_d
    iget-object v7, v3, Lcom/facebook/ads/redexgen/X/AG;->A09:Ljava/lang/Object;

    goto :goto_4

    .line 27760
    :cond_e
    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/DW;->A0L:Lcom/facebook/ads/redexgen/X/Ad;

    .line 27761
    invoke-virtual {v6, v7, v5}, Lcom/facebook/ads/redexgen/X/Af;->A09(ILcom/facebook/ads/redexgen/X/Ad;)Lcom/facebook/ads/redexgen/X/Ad;

    move-result-object v5

    iget v5, v5, Lcom/facebook/ads/redexgen/X/Ad;->A00:I

    .line 27762
    invoke-direct {v0, v6, v5, v1, v2}, Lcom/facebook/ads/redexgen/X/DW;->A05(Lcom/facebook/ads/redexgen/X/Af;IJ)Landroid/util/Pair;

    move-result-object v2

    .line 27763
    .local v6, "defaultPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 27764
    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 27765
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DW;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v1, v5, v10, v11}, Lcom/facebook/ads/redexgen/X/AI;->A0M(IJ)Lcom/facebook/ads/redexgen/X/FC;

    move-result-object v7

    .line 27766
    .restart local v2    # "periodId":Lcom/facebook/ads/redexgen/X/FC;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DW;->A0L:Lcom/facebook/ads/redexgen/X/Ad;

    invoke-virtual {v6, v5, v1, v4}, Lcom/facebook/ads/redexgen/X/Af;->A0A(ILcom/facebook/ads/redexgen/X/Ad;Z)Lcom/facebook/ads/redexgen/X/Ad;

    .line 27767
    if-eqz v3, :cond_10

    .line 27768
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DW;->A0L:Lcom/facebook/ads/redexgen/X/Ad;

    iget-object v4, v1, Lcom/facebook/ads/redexgen/X/Ad;->A03:Ljava/lang/Object;

    .line 27769
    .local v10, "newPeriodUid":Ljava/lang/Object;
    iget-object v2, v3, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    const/4 v1, -0x1

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/AH;->A00(I)Lcom/facebook/ads/redexgen/X/AH;

    move-result-object v1

    iput-object v1, v3, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    .line 27770
    :goto_5
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/AG;->A01:Lcom/facebook/ads/redexgen/X/AG;

    if-eqz v1, :cond_10

    .line 27771
    iget-object v3, v3, Lcom/facebook/ads/redexgen/X/AG;->A01:Lcom/facebook/ads/redexgen/X/AG;

    .line 27772
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/AG;->A09:Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 27773
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/DW;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    invoke-virtual {v2, v1, v5}, Lcom/facebook/ads/redexgen/X/AI;->A0K(Lcom/facebook/ads/redexgen/X/AH;I)Lcom/facebook/ads/redexgen/X/AH;

    move-result-object v1

    iput-object v1, v3, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    goto :goto_5

    .line 27774
    :cond_f
    iget-object v2, v3, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    const/4 v1, -0x1

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/AH;->A00(I)Lcom/facebook/ads/redexgen/X/AH;

    move-result-object v1

    iput-object v1, v3, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    goto :goto_5

    .line 27775
    .end local v10    # "newPeriodUid":Ljava/lang/Object;
    :cond_10
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/FC;->A01()Z

    move-result v1

    if-eqz v1, :cond_11

    const-wide/16 v1, 0x0

    .end local v0    # "oldTimeline":Lcom/facebook/ads/redexgen/X/Af;
    .local v10, "oldTimeline":Lcom/facebook/ads/redexgen/X/Af;
    :goto_6
    invoke-direct {v0, v7, v1, v2}, Lcom/facebook/ads/redexgen/X/DW;->A02(Lcom/facebook/ads/redexgen/X/FC;J)J

    move-result-wide v8

    .line 27776
    .local p1, "seekPositionUs":J
    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    sget-object v3, Lcom/facebook/ads/redexgen/X/DW;->A0W:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v2, v3, v1

    const/4 v1, 0x2

    aget-object v3, v3, v1

    const/16 v1, 0x17

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v2, v1, :cond_12

    sget-object v3, Lcom/facebook/ads/redexgen/X/DW;->A0W:[Ljava/lang/String;

    const-string v2, "hXCSaAvxQ"

    const/4 v1, 0x3

    aput-object v2, v3, v1

    invoke-virtual/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/AK;->A04(Lcom/facebook/ads/redexgen/X/FC;JJ)Lcom/facebook/ads/redexgen/X/AK;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    .line 27777
    return-void

    .line 27778
    :cond_11
    move-wide v1, v10

    goto :goto_6

    :cond_12
    sget-object v3, Lcom/facebook/ads/redexgen/X/DW;->A0W:[Ljava/lang/String;

    const-string v2, "8SXH0z2JJTzcFZqfgESvudKKYohqhXMF"

    const/4 v1, 0x5

    aput-object v2, v3, v1

    const-string v2, "Gt3Q9EzmR2dyPF6bnX5XETXY3wQqy32s"

    const/4 v1, 0x7

    aput-object v2, v3, v1

    invoke-virtual/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/AK;->A04(Lcom/facebook/ads/redexgen/X/FC;JJ)Lcom/facebook/ads/redexgen/X/AK;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    .line 27779
    return-void

    .line 27780
    .end local p1    # "seekPositionUs":J
    .end local v1    # "newPeriodIndex":I
    .end local v10    # "oldTimeline":Lcom/facebook/ads/redexgen/X/Af;
    .end local v6    # "defaultPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .end local v2    # "periodId":Lcom/facebook/ads/redexgen/X/FC;
    .restart local v0    # "oldTimeline":Lcom/facebook/ads/redexgen/X/Af;
    .end local v0    # "oldTimeline":Lcom/facebook/ads/redexgen/X/Af;
    .restart local v10    # "oldTimeline":Lcom/facebook/ads/redexgen/X/Af;
    :cond_13
    if-eq v7, v9, :cond_14

    .line 27781
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    invoke-virtual {v1, v7}, Lcom/facebook/ads/redexgen/X/AK;->A01(I)Lcom/facebook/ads/redexgen/X/AK;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    .line 27782
    :cond_14
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v4, v1, Lcom/facebook/ads/redexgen/X/AK;->A04:Lcom/facebook/ads/redexgen/X/FC;

    .line 27783
    .local p1, "playingPeriodId":Lcom/facebook/ads/redexgen/X/FC;
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/FC;->A01()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 27784
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DW;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v1, v7, v11, v12}, Lcom/facebook/ads/redexgen/X/AI;->A0M(IJ)Lcom/facebook/ads/redexgen/X/FC;

    move-result-object v8

    .line 27785
    .local v0, "periodId":Lcom/facebook/ads/redexgen/X/FC;
    invoke-virtual {v8, v4}, Lcom/facebook/ads/redexgen/X/FC;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 27786
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/FC;->A01()Z

    move-result v1

    if-eqz v1, :cond_15

    const-wide/16 v1, 0x0

    :goto_7
    invoke-direct {v0, v8, v1, v2}, Lcom/facebook/ads/redexgen/X/DW;->A02(Lcom/facebook/ads/redexgen/X/FC;J)J

    move-result-wide v9

    .line 27787
    .local v6, "seekPositionUs":J
    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    .end local v7    # "playingPeriodUid":Ljava/lang/Object;
    .local v1, "playingPeriodUid":Ljava/lang/Object;
    .end local v5    # "contentPositionUs":J
    .local v3, "contentPositionUs":J
    invoke-virtual/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/AK;->A04(Lcom/facebook/ads/redexgen/X/FC;JJ)Lcom/facebook/ads/redexgen/X/AK;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    .line 27788
    return-void

    .line 27789
    :cond_15
    move-wide v1, v11

    goto :goto_7

    .line 27790
    .end local v7
    .end local v5
    .restart local v1    # "playingPeriodUid":Ljava/lang/Object;
    .restart local v3    # "contentPositionUs":J
    :cond_16
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/DW;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/DW;->A03:J

    invoke-virtual {v3, v4, v1, v2}, Lcom/facebook/ads/redexgen/X/AI;->A0V(Lcom/facebook/ads/redexgen/X/FC;J)Z

    move-result v1

    if-nez v1, :cond_17

    .line 27791
    invoke-direct {v0, v5}, Lcom/facebook/ads/redexgen/X/DW;->A0k(Z)V

    .line 27792
    :cond_17
    return-void
.end method

.method private A0U(Lcom/facebook/ads/redexgen/X/A9;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 27793
    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/DW;->A0I:Lcom/facebook/ads/redexgen/X/A8;

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/A8;->A04(I)V

    .line 27794
    move-object/from16 v9, p1

    invoke-direct {v7, v9, v8}, Lcom/facebook/ads/redexgen/X/DW;->A04(Lcom/facebook/ads/redexgen/X/A9;Z)Landroid/util/Pair;

    move-result-object v4

    .line 27795
    .local v0, "resolvedSeekPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 27796
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/DW;->A00()I

    move-result v0

    new-instance v14, Lcom/facebook/ads/redexgen/X/FC;

    invoke-direct {v14, v0}, Lcom/facebook/ads/redexgen/X/FC;-><init>(I)V

    .line 27797
    .local v10, "periodId":Lcom/facebook/ads/redexgen/X/FC;
    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    .line 27798
    .local v8, "periodPositionUs":J
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 27799
    .local v0, "contentPositionUs":J
    const/4 v12, 0x1

    .line 27800
    .local v15, "seekPositionAdjusted":Z
    .local v10, "seekPositionAdjusted":Z
    :goto_0
    const/4 v6, 0x2

    goto :goto_1

    .line 27801
    .end local v10    # "seekPositionAdjusted":Z
    .end local v8    # "periodPositionUs":J
    .end local v0    # "contentPositionUs":J
    .end local v15    # "seekPositionAdjusted":Z
    :cond_0
    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 27802
    .local v10, "periodIndex":I
    iget-object v0, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 27803
    .restart local v0    # "contentPositionUs":J
    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/DW;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v2, v3, v0, v1}, Lcom/facebook/ads/redexgen/X/AI;->A0M(IJ)Lcom/facebook/ads/redexgen/X/FC;

    move-result-object v14

    .line 27804
    .local v8, "periodId":Lcom/facebook/ads/redexgen/X/FC;
    invoke-virtual {v14}, Lcom/facebook/ads/redexgen/X/FC;->A01()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 27805
    const-wide/16 v15, 0x0

    .line 27806
    .local v15, "periodPositionUs":J
    const/4 v12, 0x1

    .local v5, "seekPositionAdjusted":Z
    goto :goto_0

    .line 27807
    .end local v5    # "seekPositionAdjusted":Z
    .end local v15    # "periodPositionUs":J
    :cond_1
    iget-object v2, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    .line 27808
    .restart local v15    # "periodPositionUs":J
    iget-wide v3, v9, Lcom/facebook/ads/redexgen/X/A9;->A01:J

    cmp-long v2, v3, v10

    if-nez v2, :cond_2

    const/4 v12, 0x1

    goto :goto_0

    :cond_2
    const/4 v12, 0x0

    goto :goto_0

    .line 27809
    :goto_1
    :try_start_0
    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/DW;->A07:Lcom/facebook/ads/redexgen/X/FE;

    if-eqz v2, :cond_a

    iget v2, v7, Lcom/facebook/ads/redexgen/X/DW;->A01:I

    if-lez v2, :cond_3

    goto/16 :goto_2

    .line 27810
    :cond_3
    cmp-long v2, v15, v10

    if-nez v2, :cond_4

    .line 27811
    const/4 v2, 0x4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {v7, v2}, Lcom/facebook/ads/redexgen/X/DW;->A0O(I)V

    .line 27812
    invoke-direct {v7, v5, v8, v5}, Lcom/facebook/ads/redexgen/X/DW;->A0p(ZZZ)V

    goto :goto_5

    .line 27813
    :cond_4
    move-wide v4, v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 27814
    .local v8, "newPeriodPositionUs":J
    :try_start_2
    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v2, v2, Lcom/facebook/ads/redexgen/X/AK;->A04:Lcom/facebook/ads/redexgen/X/FC;

    invoke-virtual {v14, v2}, Lcom/facebook/ads/redexgen/X/FC;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 27815
    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/DW;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/AI;->A0H()Lcom/facebook/ads/redexgen/X/AG;

    move-result-object v3

    .line 27816
    .local v15, "playingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    if-eqz v3, :cond_5

    const-wide/16 v8, 0x0

    cmp-long v2, v4, v8

    if-eqz v2, :cond_5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 27817
    :try_start_3
    iget-object v3, v3, Lcom/facebook/ads/redexgen/X/AG;->A08:Lcom/facebook/ads/redexgen/X/UN;

    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/DW;->A06:Lcom/facebook/ads/redexgen/X/Ab;

    .line 27818
    invoke-interface {v3, v4, v5, v2}, Lcom/facebook/ads/redexgen/X/UN;->A5X(JLcom/facebook/ads/redexgen/X/Ab;)J

    move-result-wide v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 27819
    :cond_5
    :try_start_4
    invoke-static {v4, v5}, Lcom/facebook/ads/redexgen/X/9u;->A01(J)J

    move-result-wide v10

    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .end local v0    # "contentPositionUs":J
    .local v12, "resolvedSeekPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    :try_start_5
    iget-wide v2, v2, Lcom/facebook/ads/redexgen/X/AK;->A0A:J

    invoke-static {v2, v3}, Lcom/facebook/ads/redexgen/X/9u;->A01(J)J

    move-result-wide v8

    cmp-long v2, v10, v8

    if-nez v2, :cond_8

    .line 27820
    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-wide v15, v2, Lcom/facebook/ads/redexgen/X/AK;->A0A:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 27821
    .end local v15    # "playingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    .local v12, "periodPositionUs":J
    iget-object v13, v7, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    .end local v15
    .local p0, "playingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    move-wide/from16 v17, v0

    invoke-virtual/range {v13 .. v18}, Lcom/facebook/ads/redexgen/X/AK;->A04(Lcom/facebook/ads/redexgen/X/FC;JJ)Lcom/facebook/ads/redexgen/X/AK;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/DW;->A0W:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/DW;->A0W:[Ljava/lang/String;

    const-string v1, "syLoOfV6jy6VCXkAVhYEnkhJTzUCvOXN"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    iput-object v3, v7, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    .line 27822
    if-eqz v12, :cond_6

    .line 27823
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/DW;->A0I:Lcom/facebook/ads/redexgen/X/A8;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/A8;->A05(I)V

    .line 27824
    :cond_6
    return-void

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 27825
    .end local v0
    .restart local v12    # "periodPositionUs":J
    :cond_8
    :try_start_6
    invoke-direct {v7, v14, v4, v5}, Lcom/facebook/ads/redexgen/X/DW;->A02(Lcom/facebook/ads/redexgen/X/FC;J)J

    move-result-wide v3

    .line 27826
    .end local v8    # "newPeriodPositionUs":J
    .local v9, "newPeriodPositionUs":J
    cmp-long v2, v15, v3

    if-eqz v2, :cond_9

    goto :goto_3

    :cond_9
    const/4 v2, 0x0

    goto :goto_4

    .line 27827
    .end local v0
    .restart local v12    # "periodPositionUs":J
    :cond_a
    :goto_2
    iput-object v9, v7, Lcom/facebook/ads/redexgen/X/DW;->A04:Lcom/facebook/ads/redexgen/X/A9;

    goto :goto_5

    .line 27828
    :goto_3
    const/4 v2, 0x1

    :goto_4
    or-int/2addr v12, v2

    .line 27829
    move-wide v15, v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 27830
    :goto_5
    iget-object v13, v7, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    move-wide/from16 v17, v0

    invoke-virtual/range {v13 .. v18}, Lcom/facebook/ads/redexgen/X/AK;->A04(Lcom/facebook/ads/redexgen/X/FC;JJ)Lcom/facebook/ads/redexgen/X/AK;

    move-result-object v0

    iput-object v0, v7, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    .line 27831
    if-eqz v12, :cond_b

    .line 27832
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/DW;->A0I:Lcom/facebook/ads/redexgen/X/A8;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/A8;->A05(I)V

    .line 27833
    :cond_b
    return-void

    .line 27834
    :catchall_0
    move-exception v2

    goto :goto_6

    .end local v12    # "periodPositionUs":J
    .restart local v0    # "contentPositionUs":J
    :catchall_1
    move-exception v2

    goto :goto_6

    :catchall_2
    move-exception v2

    .end local v0    # "contentPositionUs":J
    .restart local v12    # "periodPositionUs":J
    :goto_6
    iget-object v13, v7, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    move-wide/from16 v17, v0

    invoke-virtual/range {v13 .. v18}, Lcom/facebook/ads/redexgen/X/AK;->A04(Lcom/facebook/ads/redexgen/X/FC;JJ)Lcom/facebook/ads/redexgen/X/AK;

    move-result-object v0

    iput-object v0, v7, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    .line 27835
    if-eqz v12, :cond_c

    .line 27836
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/DW;->A0I:Lcom/facebook/ads/redexgen/X/A8;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/A8;->A05(I)V

    .line 27837
    :cond_c
    throw v2
.end method

.method public static synthetic A0V(Lcom/facebook/ads/redexgen/X/DW;Lcom/facebook/ads/redexgen/X/AW;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 27838
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/DW;->A0Y(Lcom/facebook/ads/redexgen/X/AW;)V

    return-void
.end method

.method private A0W(Lcom/facebook/ads/redexgen/X/AG;)V
    .locals 9
    .param p1    # Lcom/facebook/ads/redexgen/X/AG;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 27839
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AI;->A0H()Lcom/facebook/ads/redexgen/X/AG;

    move-result-object v5

    .line 27840
    .local p0, "newPlayingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    if-eqz v5, :cond_0

    if-ne p1, v5, :cond_1

    .line 27841
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/AG;
    .end local v0
    :cond_0
    return-void

    .line 27842
    :cond_1
    const/4 v4, 0x0

    .line 27843
    .local p1, "enabledRendererCount":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0T:[Lcom/facebook/ads/redexgen/X/W7;

    array-length v0, v0

    new-array v3, v0, [Z

    .line 27844
    .local v0, "rendererWasEnabledFlags":[Z
    const/4 v7, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DW;->A0T:[Lcom/facebook/ads/redexgen/X/W7;

    array-length v0, v1

    if-ge v7, v0, :cond_7

    .line 27845
    aget-object v6, v1, v7

    .line 27846
    .local v4, "renderer":Lcom/facebook/ads/redexgen/X/W7;
    invoke-interface {v6}, Lcom/facebook/ads/redexgen/X/W7;->A7H()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_1
    aput-boolean v0, v3, v7

    .line 27847
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/AG;->A04:Lcom/facebook/ads/redexgen/X/H8;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/H8;->A00(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 27848
    add-int/lit8 v4, v4, 0x1

    .line 27849
    :cond_2
    aget-boolean v8, v3, v7

    sget-object v1, Lcom/facebook/ads/redexgen/X/DW;->A0W:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/DW;->A0W:[Ljava/lang/String;

    const-string v1, "7KHA3H3uXykqXnPcO9p495kTNrNRwv7i"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v8, :cond_5

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/AG;->A04:Lcom/facebook/ads/redexgen/X/H8;

    .line 27850
    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/H8;->A00(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 27851
    invoke-interface {v6}, Lcom/facebook/ads/redexgen/X/W7;->A7y()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 27852
    invoke-interface {v6}, Lcom/facebook/ads/redexgen/X/W7;->A7M()Lcom/facebook/ads/redexgen/X/FZ;

    move-result-object v1

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/AG;->A0A:[Lcom/facebook/ads/redexgen/X/FZ;

    aget-object v0, v0, v7

    if-ne v1, v0, :cond_5

    .line 27853
    :cond_4
    invoke-direct {p0, v6}, Lcom/facebook/ads/redexgen/X/DW;->A0c(Lcom/facebook/ads/redexgen/X/W7;)V

    .line 27854
    .end local v4    # "renderer":Lcom/facebook/ads/redexgen/X/W7;
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 27855
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 27856
    .end local v5    # "i":I
    :cond_7
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/AG;->A03:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/AG;->A04:Lcom/facebook/ads/redexgen/X/H8;

    .line 27857
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AK;->A05(Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/H8;)Lcom/facebook/ads/redexgen/X/AK;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    .line 27858
    invoke-direct {p0, v3, v4}, Lcom/facebook/ads/redexgen/X/DW;->A0q([ZI)V

    .line 27859
    return-void
.end method

.method private A0X(Lcom/facebook/ads/redexgen/X/AL;)V
    .locals 1

    .line 27860
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0G:Lcom/facebook/ads/redexgen/X/WA;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/WA;->ADr(Lcom/facebook/ads/redexgen/X/AL;)Lcom/facebook/ads/redexgen/X/AL;

    .line 27861
    return-void
.end method

.method private A0Y(Lcom/facebook/ads/redexgen/X/AW;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 27862
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/AW;->A0E()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27863
    return-void

    .line 27864
    :cond_0
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/AW;->A05()Lcom/facebook/ads/redexgen/X/AV;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/AW;->A01()I

    move-result v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/AW;->A0A()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AV;->A7a(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27865
    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/AW;->A0B(Z)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/DW;->A0W:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    .line 27866
    sget-object v2, Lcom/facebook/ads/redexgen/X/DW;->A0W:[Ljava/lang/String;

    const-string v1, "k37P31g8XP6FRtrM6"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 27867
    :catchall_0
    move-exception v0

    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/AW;->A0B(Z)V

    .line 27868
    throw v0
.end method

.method private A0Z(Lcom/facebook/ads/redexgen/X/AW;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 27869
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/AW;->A03()J

    move-result-wide v3

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    .line 27870
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/DW;->A0a(Lcom/facebook/ads/redexgen/X/AW;)V

    .line 27871
    :goto_0
    return-void

    .line 27872
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A07:Lcom/facebook/ads/redexgen/X/FE;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A01:I

    if-lez v0, :cond_2

    .line 27873
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/DW;
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DW;->A0R:Ljava/util/ArrayList;

    new-instance v0, Lcom/facebook/ads/redexgen/X/A7;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/A7;-><init>(Lcom/facebook/ads/redexgen/X/AW;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 27874
    :cond_2
    new-instance v4, Lcom/facebook/ads/redexgen/X/A7;

    invoke-direct {v4, p1}, Lcom/facebook/ads/redexgen/X/A7;-><init>(Lcom/facebook/ads/redexgen/X/AW;)V

    .line 27875
    .local p0, "pendingMessageInfo":Lcom/facebook/ads/redexgen/X/A7;
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/DW;->A0s(Lcom/facebook/ads/redexgen/X/A7;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 27876
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/DW;->A0R:Ljava/util/ArrayList;

    sget-object v2, Lcom/facebook/ads/redexgen/X/DW;->A0W:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/DW;->A0W:[Ljava/lang/String;

    const-string v1, "3pu5jVKKTrzrSZq8nUsu"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27877
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0R:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_0

    .line 27878
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/AW;->A0B(Z)V

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0a(Lcom/facebook/ads/redexgen/X/AW;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 27879
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/AW;->A04()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0Q:Lcom/facebook/ads/redexgen/X/IA;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/IA;->A6j()Landroid/os/Looper;

    move-result-object v0

    if-ne v1, v0, :cond_2

    .line 27880
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/DW;->A0Y(Lcom/facebook/ads/redexgen/X/AW;)V

    .line 27881
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget v2, v0, Lcom/facebook/ads/redexgen/X/AK;->A00:I

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq v2, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/AK;->A00:I

    if-ne v0, v1, :cond_1

    .line 27882
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0Q:Lcom/facebook/ads/redexgen/X/IA;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/IA;->ADd(I)Z

    .line 27883
    :cond_1
    :goto_0
    return-void

    .line 27884
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DW;->A0Q:Lcom/facebook/ads/redexgen/X/IA;

    const/16 v0, 0xf

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/IA;->A9E(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private A0b(Lcom/facebook/ads/redexgen/X/AW;)V
    .locals 2

    .line 27885
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/AW;->A04()Landroid/os/Handler;

    move-result-object v1

    .line 27886
    .local p0, "handler":Landroid/os/Handler;
    new-instance v0, Lcom/facebook/ads/redexgen/X/A5;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/A5;-><init>(Lcom/facebook/ads/redexgen/X/DW;Lcom/facebook/ads/redexgen/X/AW;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27887
    return-void
.end method

.method private A0c(Lcom/facebook/ads/redexgen/X/W7;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 27888
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0G:Lcom/facebook/ads/redexgen/X/WA;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/WA;->A09(Lcom/facebook/ads/redexgen/X/W7;)V

    .line 27889
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/DW;->A0d(Lcom/facebook/ads/redexgen/X/W7;)V

    .line 27890
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/W7;->A4k()V

    .line 27891
    return-void
.end method

.method private A0d(Lcom/facebook/ads/redexgen/X/W7;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 27892
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/W7;->A7H()I

    move-result v1

    const/4 v0, 0x2

    if-ne v1, v0, :cond_0

    .line 27893
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/W7;->stop()V

    .line 27894
    :cond_0
    return-void
.end method

.method private A0e(Lcom/facebook/ads/redexgen/X/Ab;)V
    .locals 0

    .line 27895
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/DW;->A06:Lcom/facebook/ads/redexgen/X/Ab;

    .line 27896
    return-void
.end method

.method private A0f(Lcom/facebook/ads/redexgen/X/UN;)V
    .locals 3

    .line 27897
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/AI;->A0U(Lcom/facebook/ads/redexgen/X/UN;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 27898
    return-void

    .line 27899
    :cond_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/DW;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A03:J

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/AI;->A0N(J)V

    .line 27900
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DW;->A09()V

    .line 27901
    return-void
.end method

.method private A0g(Lcom/facebook/ads/redexgen/X/UN;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 27902
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/AI;->A0U(Lcom/facebook/ads/redexgen/X/UN;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 27903
    return-void

    .line 27904
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AI;->A0G()Lcom/facebook/ads/redexgen/X/AG;

    move-result-object v2

    .line 27905
    .local p0, "loadingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0G:Lcom/facebook/ads/redexgen/X/WA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/WA;->A70()Lcom/facebook/ads/redexgen/X/AL;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/AL;->A01:F

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/AG;->A0F(F)V

    .line 27906
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/AG;->A03:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/AG;->A04:Lcom/facebook/ads/redexgen/X/H8;

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/DW;->A0j(Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/H8;)V

    .line 27907
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AI;->A0Q()Z

    move-result v0

    if-nez v0, :cond_2

    .line 27908
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/DW;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    sget-object v1, Lcom/facebook/ads/redexgen/X/DW;->A0W:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/DW;->A0W:[Ljava/lang/String;

    const-string v1, "GJdpIFqbhOjOreMpNHY"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/AI;->A0D()Lcom/facebook/ads/redexgen/X/AG;

    move-result-object v0

    .line 27909
    .local p1, "playingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/AH;->A03:J

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/DW;->A0Q(J)V

    .line 27910
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/DW;->A0W(Lcom/facebook/ads/redexgen/X/AG;)V

    .line 27911
    .end local p1    # "playingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    :cond_2
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DW;->A09()V

    .line 27912
    return-void
.end method

.method private final A0h(Lcom/facebook/ads/redexgen/X/UN;)V
    .locals 2

    .line 27913
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DW;->A0Q:Lcom/facebook/ads/redexgen/X/IA;

    const/16 v0, 0xa

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/IA;->A9E(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 27914
    return-void
.end method

.method private A0i(Lcom/facebook/ads/redexgen/X/FE;ZZ)V
    .locals 3

    .line 27915
    iget v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A01:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A01:I

    .line 27916
    invoke-direct {p0, v2, p2, p3}, Lcom/facebook/ads/redexgen/X/DW;->A0p(ZZZ)V

    .line 27917
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0J:Lcom/facebook/ads/redexgen/X/AF;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AF;->onPrepared()V

    .line 27918
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/DW;->A07:Lcom/facebook/ads/redexgen/X/FE;

    .line 27919
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/DW;->A0O(I)V

    .line 27920
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0H:Lcom/facebook/ads/redexgen/X/W8;

    invoke-interface {p1, v0, v2, p0}, Lcom/facebook/ads/redexgen/X/FE;->ACY(Lcom/facebook/ads/redexgen/X/W8;ZLcom/facebook/ads/redexgen/X/FD;)V

    .line 27921
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0Q:Lcom/facebook/ads/redexgen/X/IA;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/IA;->ADd(I)Z

    .line 27922
    return-void
.end method

.method private A0j(Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/H8;)V
    .locals 3

    .line 27923
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/DW;->A0J:Lcom/facebook/ads/redexgen/X/AF;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DW;->A0T:[Lcom/facebook/ads/redexgen/X/W7;

    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/H8;->A01:Lcom/facebook/ads/redexgen/X/H5;

    invoke-interface {v2, v1, p1, v0}, Lcom/facebook/ads/redexgen/X/AF;->ABq([Lcom/facebook/ads/redexgen/X/W7;Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/H5;)V

    .line 27924
    return-void
.end method

.method private A0k(Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 27925
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AI;->A0H()Lcom/facebook/ads/redexgen/X/AG;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/AH;->A04:Lcom/facebook/ads/redexgen/X/FC;

    .line 27926
    .local p0, "periodId":Lcom/facebook/ads/redexgen/X/FC;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/AK;->A0A:J

    .line 27927
    const/4 v0, 0x1

    invoke-direct {p0, v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/DW;->A03(Lcom/facebook/ads/redexgen/X/FC;JZ)J

    move-result-wide v4

    .line 27928
    .local v1, "newPositionUs":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/AK;->A0A:J

    cmp-long v0, v4, v1

    if-eqz v0, :cond_0

    .line 27929
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-wide v6, v2, Lcom/facebook/ads/redexgen/X/AK;->A01:J

    .line 27930
    invoke-virtual/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/AK;->A04(Lcom/facebook/ads/redexgen/X/FC;JJ)Lcom/facebook/ads/redexgen/X/AK;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    .line 27931
    if-eqz p1, :cond_0

    .line 27932
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DW;->A0I:Lcom/facebook/ads/redexgen/X/A8;

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/A8;->A05(I)V

    .line 27933
    :cond_0
    return-void
.end method

.method private A0l(Z)V
    .locals 4

    .line 27934
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/AK;->A08:Z

    if-eq v0, p1, :cond_0

    .line 27935
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    sget-object v1, Lcom/facebook/ads/redexgen/X/DW;->A0W:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/DW;->A0W:[Ljava/lang/String;

    const-string v1, "8LQ3MGEz"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v3, p1}, Lcom/facebook/ads/redexgen/X/AK;->A06(Z)Lcom/facebook/ads/redexgen/X/AK;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    .line 27936
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0m(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 27937
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A09:Z

    .line 27938
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/DW;->A08:Z

    .line 27939
    if-nez p1, :cond_1

    .line 27940
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DW;->A0H()V

    .line 27941
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DW;->A0J()V

    .line 27942
    :cond_0
    :goto_0
    return-void

    .line 27943
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget v2, v0, Lcom/facebook/ads/redexgen/X/AK;->A00:I

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-ne v2, v0, :cond_2

    .line 27944
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DW;->A0G()V

    .line 27945
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0Q:Lcom/facebook/ads/redexgen/X/IA;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/IA;->ADd(I)Z

    goto :goto_0

    .line 27946
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/AK;->A00:I

    if-ne v0, v1, :cond_0

    .line 27947
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0Q:Lcom/facebook/ads/redexgen/X/IA;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/IA;->ADd(I)Z

    goto :goto_0
.end method

.method private A0n(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 27948
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/DW;->A0B:Z

    .line 27949
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/AI;->A0W(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 27950
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/DW;->A0k(Z)V

    .line 27951
    :cond_0
    return-void
.end method

.method private A0o(ZZ)V
    .locals 3

    .line 27952
    const/4 v2, 0x1

    invoke-direct {p0, v2, p1, p1}, Lcom/facebook/ads/redexgen/X/DW;->A0p(ZZZ)V

    .line 27953
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DW;->A0I:Lcom/facebook/ads/redexgen/X/A8;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A01:I

    .line 27954
    add-int/2addr v0, p2

    .line 27955
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/A8;->A04(I)V

    .line 27956
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A01:I

    .line 27957
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0J:Lcom/facebook/ads/redexgen/X/AF;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AF;->ABj()V

    .line 27958
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/DW;->A0O(I)V

    .line 27959
    return-void
.end method

.method private A0p(ZZZ)V
    .locals 17

    .line 27960
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/DW;->A0Q:Lcom/facebook/ads/redexgen/X/IA;

    const/4 v0, 0x2

    invoke-interface {v2, v0}, Lcom/facebook/ads/redexgen/X/IA;->AD9(I)V

    .line 27961
    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/facebook/ads/redexgen/X/DW;->A09:Z

    .line 27962
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/DW;->A0G:Lcom/facebook/ads/redexgen/X/WA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/WA;->A07()V

    .line 27963
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/facebook/ads/redexgen/X/DW;->A03:J

    .line 27964
    iget-object v9, v1, Lcom/facebook/ads/redexgen/X/DW;->A0C:[Lcom/facebook/ads/redexgen/X/W7;

    array-length v8, v9

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v0, v9, v7

    .line 27965
    .local v0, "renderer":Lcom/facebook/ads/redexgen/X/W7;
    :try_start_0
    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/DW;->A0c(Lcom/facebook/ads/redexgen/X/W7;)V

    goto :goto_2
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/A0; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 27966
    :catch_0
    move-exception v6

    goto :goto_1

    :catch_1
    move-exception v6

    .line 27967
    .local p0, "e":Ljava/lang/Exception;
    :goto_1
    const/4 v3, 0x0

    const/16 v2, 0x15

    const/16 v0, 0x7a

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/DW;->A06(III)Ljava/lang/String;

    move-result-object v5

    const/16 v3, 0x8a

    const/16 v2, 0xc

    const/16 v0, 0x34

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/DW;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 27968
    .end local p0    # "e":Ljava/lang/Exception;
    .end local v0    # "renderer":Lcom/facebook/ads/redexgen/X/W7;
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 27969
    :cond_0
    new-array v0, v4, [Lcom/facebook/ads/redexgen/X/W7;

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/DW;->A0C:[Lcom/facebook/ads/redexgen/X/W7;

    .line 27970
    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/DW;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    xor-int/lit8 v0, p2, 0x1

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/AI;->A0P(Z)V

    .line 27971
    invoke-direct {v1, v4}, Lcom/facebook/ads/redexgen/X/DW;->A0l(Z)V

    .line 27972
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 27973
    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/DW;->A04:Lcom/facebook/ads/redexgen/X/A9;

    .line 27974
    :cond_1
    if-eqz p3, :cond_3

    .line 27975
    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/DW;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Af;->A00:Lcom/facebook/ads/redexgen/X/Af;

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/AI;->A0O(Lcom/facebook/ads/redexgen/X/Af;)V

    .line 27976
    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/DW;->A0R:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/A7;

    .line 27977
    .local v1, "pendingMessageInfo":Lcom/facebook/ads/redexgen/X/A7;
    iget-object v2, v2, Lcom/facebook/ads/redexgen/X/A7;->A03:Lcom/facebook/ads/redexgen/X/AW;

    invoke-virtual {v2, v4}, Lcom/facebook/ads/redexgen/X/AW;->A0B(Z)V

    .line 27978
    .end local v1    # "pendingMessageInfo":Lcom/facebook/ads/redexgen/X/A7;
    goto :goto_3

    .line 27979
    :cond_2
    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/DW;->A0R:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 27980
    iput v4, v1, Lcom/facebook/ads/redexgen/X/DW;->A00:I

    .line 27981
    :cond_3
    new-instance v5, Lcom/facebook/ads/redexgen/X/AK;

    .line 27982
    if-eqz p3, :cond_b

    sget-object v6, Lcom/facebook/ads/redexgen/X/Af;->A00:Lcom/facebook/ads/redexgen/X/Af;

    .line 27983
    :goto_4
    if-eqz p3, :cond_a

    move-object v7, v0

    .line 27984
    :goto_5
    if-eqz p2, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/DW;->A00()I

    move-result v2

    new-instance v8, Lcom/facebook/ads/redexgen/X/FC;

    invoke-direct {v8, v2}, Lcom/facebook/ads/redexgen/X/FC;-><init>(I)V

    .line 27985
    :goto_6
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz p2, :cond_8

    move-wide v9, v11

    .line 27986
    :goto_7
    if-eqz p2, :cond_7

    :goto_8
    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget v13, v2, Lcom/facebook/ads/redexgen/X/AK;->A00:I

    const/4 v14, 0x0

    .line 27987
    if-eqz p3, :cond_6

    sget-object v15, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;->A04:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    :goto_9
    sget-object v3, Lcom/facebook/ads/redexgen/X/DW;->A0W:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v2, v3, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v2, 0x1c

    if-eq v3, v2, :cond_c

    .line 27988
    sget-object v4, Lcom/facebook/ads/redexgen/X/DW;->A0W:[Ljava/lang/String;

    const-string v3, "CdayoU1L06yZbATDTIF9lUJq02cqWOoQ"

    const/4 v2, 0x5

    aput-object v3, v4, v2

    const-string v3, "StExqVp2cPbGmGgGh2GloRyaeS7q7qUA"

    const/4 v2, 0x7

    aput-object v3, v4, v2

    if-eqz p3, :cond_5

    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/DW;->A0O:Lcom/facebook/ads/redexgen/X/H8;

    :goto_a
    move-object/from16 v16, v2

    invoke-direct/range {v5 .. v16}, Lcom/facebook/ads/redexgen/X/AK;-><init>(Lcom/facebook/ads/redexgen/X/Af;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/FC;JJIZLcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/H8;)V

    iput-object v5, v1, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    .line 27989
    if-eqz p1, :cond_4

    .line 27990
    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/DW;->A07:Lcom/facebook/ads/redexgen/X/FE;

    if-eqz v2, :cond_4

    .line 27991
    invoke-interface {v2, v1}, Lcom/facebook/ads/redexgen/X/FE;->AD6(Lcom/facebook/ads/redexgen/X/FD;)V

    .line 27992
    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/DW;->A07:Lcom/facebook/ads/redexgen/X/FE;

    .line 27993
    :cond_4
    return-void

    .line 27994
    :cond_5
    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v2, v2, Lcom/facebook/ads/redexgen/X/AK;->A06:Lcom/facebook/ads/redexgen/X/H8;

    goto :goto_a

    .line 27995
    :cond_6
    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v15, v2, Lcom/facebook/ads/redexgen/X/AK;->A05:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    goto :goto_9

    .line 27996
    :cond_7
    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-wide v11, v2, Lcom/facebook/ads/redexgen/X/AK;->A01:J

    goto :goto_8

    .line 27997
    :cond_8
    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-wide v9, v2, Lcom/facebook/ads/redexgen/X/AK;->A0A:J

    goto :goto_7

    .line 27998
    :cond_9
    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v8, v2, Lcom/facebook/ads/redexgen/X/AK;->A04:Lcom/facebook/ads/redexgen/X/FC;

    goto :goto_6

    .line 27999
    :cond_a
    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v7, v2, Lcom/facebook/ads/redexgen/X/AK;->A07:Ljava/lang/Object;

    goto :goto_5

    .line 28000
    :cond_b
    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v6, v2, Lcom/facebook/ads/redexgen/X/AK;->A03:Lcom/facebook/ads/redexgen/X/Af;

    goto :goto_4

    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0q([ZI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 28001
    new-array v0, p2, [Lcom/facebook/ads/redexgen/X/W7;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0C:[Lcom/facebook/ads/redexgen/X/W7;

    .line 28002
    const/4 v4, 0x0

    .line 28003
    .local p0, "enabledRendererCount":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AI;->A0H()Lcom/facebook/ads/redexgen/X/AG;

    move-result-object v3

    .line 28004
    .local p1, "playingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    const/4 v2, 0x0

    .local p2, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0T:[Lcom/facebook/ads/redexgen/X/W7;

    array-length v0, v0

    if-ge v2, v0, :cond_1

    .line 28005
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/AG;->A04:Lcom/facebook/ads/redexgen/X/H8;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/H8;->A00(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28006
    aget-boolean v1, p1, v2

    add-int/lit8 v0, v4, 0x1

    .end local p0    # "enabledRendererCount":I
    .local v4, "enabledRendererCount":I
    invoke-direct {p0, v2, v1, v4}, Lcom/facebook/ads/redexgen/X/DW;->A0P(IZI)V

    move v4, v0

    .line 28007
    .end local v4    # "enabledRendererCount":I
    .restart local p0    # "enabledRendererCount":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 28008
    .end local p2    # "i":I
    :cond_1
    return-void
.end method

.method private A0r()Z
    .locals 6

    .line 28009
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AI;->A0H()Lcom/facebook/ads/redexgen/X/AG;

    move-result-object v5

    .line 28010
    .local p0, "playingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/AH;->A01:J

    .line 28011
    .local v0, "playingPeriodDurationUs":J
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/AK;->A0A:J

    cmp-long v0, v1, v3

    if-ltz v0, :cond_0

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/AG;->A01:Lcom/facebook/ads/redexgen/X/AG;

    if-eqz v0, :cond_1

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/AG;->A01:Lcom/facebook/ads/redexgen/X/AG;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/AG;->A06:Z

    if-nez v0, :cond_0

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/AG;->A01:Lcom/facebook/ads/redexgen/X/AG;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AH;->A04:Lcom/facebook/ads/redexgen/X/FC;

    .line 28012
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FC;->A01()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 28013
    :goto_0
    return v0

    .line 28014
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0s(Lcom/facebook/ads/redexgen/X/A7;)Z
    .locals 7

    .line 28015
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/A7;->A02:Ljava/lang/Object;

    const/4 v6, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 28016
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/A7;->A03:Lcom/facebook/ads/redexgen/X/AW;

    .line 28017
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AW;->A09()Lcom/facebook/ads/redexgen/X/Af;

    move-result-object v5

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/A7;->A03:Lcom/facebook/ads/redexgen/X/AW;

    .line 28018
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AW;->A02()I

    move-result v3

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/A7;->A03:Lcom/facebook/ads/redexgen/X/AW;

    .line 28019
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AW;->A03()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/9u;->A00(J)J

    move-result-wide v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/A9;

    invoke-direct {v0, v5, v3, v1, v2}, Lcom/facebook/ads/redexgen/X/A9;-><init>(Lcom/facebook/ads/redexgen/X/Af;IJ)V

    .line 28020
    invoke-direct {p0, v0, v4}, Lcom/facebook/ads/redexgen/X/DW;->A04(Lcom/facebook/ads/redexgen/X/A9;Z)Landroid/util/Pair;

    move-result-object v3

    .line 28021
    .local p0, "periodPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    if-nez v3, :cond_2

    .line 28022
    return v4

    .line 28023
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/AK;->A03:Lcom/facebook/ads/redexgen/X/Af;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/A7;->A02:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Af;->A04(Ljava/lang/Object;)I

    move-result v1

    .line 28024
    .local p0, "index":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    .line 28025
    return v4

    .line 28026
    :cond_1
    iput v1, p1, Lcom/facebook/ads/redexgen/X/A7;->A00:I

    goto :goto_0

    .line 28027
    :cond_2
    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 28028
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 28029
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/AK;->A03:Lcom/facebook/ads/redexgen/X/Af;

    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 28030
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0L:Lcom/facebook/ads/redexgen/X/Ad;

    invoke-virtual {v4, v3, v0, v6}, Lcom/facebook/ads/redexgen/X/Af;->A0A(ILcom/facebook/ads/redexgen/X/Ad;Z)Lcom/facebook/ads/redexgen/X/Ad;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ad;->A03:Ljava/lang/Object;

    .line 28031
    invoke-virtual {p1, v5, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/A7;->A02(IJLjava/lang/Object;)V

    .line 28032
    .end local p0    # "index":I
    .end local p0
    :goto_0
    return v6
.end method

.method private A0t(Lcom/facebook/ads/redexgen/X/W7;)Z
    .locals 2

    .line 28033
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AI;->A0I()Lcom/facebook/ads/redexgen/X/AG;

    move-result-object v1

    .line 28034
    .local p0, "readingPeriodHolder":Lcom/facebook/ads/redexgen/X/AG;
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/AG;->A01:Lcom/facebook/ads/redexgen/X/AG;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/AG;->A01:Lcom/facebook/ads/redexgen/X/AG;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/AG;->A06:Z

    if-eqz v0, :cond_0

    .line 28035
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/W7;->A7e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 28036
    :goto_0
    return v0

    .line 28037
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0u(Lcom/facebook/ads/redexgen/X/FC;JLcom/facebook/ads/redexgen/X/AG;)Z
    .locals 5

    .line 28038
    iget-object v0, p4, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AH;->A04:Lcom/facebook/ads/redexgen/X/FC;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/FC;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p4, Lcom/facebook/ads/redexgen/X/AG;->A06:Z

    if-eqz v0, :cond_1

    .line 28039
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/AK;->A03:Lcom/facebook/ads/redexgen/X/Af;

    iget-object v0, p4, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AH;->A04:Lcom/facebook/ads/redexgen/X/FC;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/FC;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0L:Lcom/facebook/ads/redexgen/X/Ad;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Af;->A09(ILcom/facebook/ads/redexgen/X/Ad;)Lcom/facebook/ads/redexgen/X/Ad;

    .line 28040
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0L:Lcom/facebook/ads/redexgen/X/Ad;

    invoke-virtual {v0, p2, p3}, Lcom/facebook/ads/redexgen/X/Ad;->A04(J)I

    move-result v1

    .line 28041
    .local p0, "nextAdGroupIndex":I
    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0L:Lcom/facebook/ads/redexgen/X/Ad;

    .line 28042
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Ad;->A09(I)J

    move-result-wide v3

    iget-object v0, p4, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/AH;->A02:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    .line 28043
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 28044
    .end local p0    # "nextAdGroupIndex":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private A0v(Z)Z
    .locals 8

    .line 28045
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0C:[Lcom/facebook/ads/redexgen/X/W7;

    array-length v0, v0

    if-nez v0, :cond_0

    .line 28046
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DW;->A0r()Z

    move-result v0

    return v0

    .line 28047
    :cond_0
    const/4 v7, 0x0

    if-nez p1, :cond_1

    .line 28048
    return v7

    .line 28049
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/DW;->A05:Lcom/facebook/ads/redexgen/X/AK;

    sget-object v1, Lcom/facebook/ads/redexgen/X/DW;->A0W:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x79

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/DW;->A0W:[Ljava/lang/String;

    const-string v1, "2"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/AK;->A08:Z

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 28050
    return v1

    .line 28051
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0K:Lcom/facebook/ads/redexgen/X/AI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AI;->A0G()Lcom/facebook/ads/redexgen/X/AG;

    move-result-object v6

    .line 28052
    .local p1, "loadingHolder":Lcom/facebook/ads/redexgen/X/AG;
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/AG;->A02:Lcom/facebook/ads/redexgen/X/AH;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/AH;->A05:Z

    xor-int/2addr v0, v1

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/AG;->A0D(Z)J

    move-result-wide v2

    .line 28053
    .local v0, "bufferedPositionUs":J
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/DW;->A0J:Lcom/facebook/ads/redexgen/X/AF;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A03:J

    .line 28054
    invoke-virtual {v6, v0, v1}, Lcom/facebook/ads/redexgen/X/AG;->A09(J)J

    move-result-wide v0

    sub-long/2addr v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0G:Lcom/facebook/ads/redexgen/X/WA;

    .line 28055
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/WA;->A70()Lcom/facebook/ads/redexgen/X/AL;

    move-result-object v0

    iget v1, v0, Lcom/facebook/ads/redexgen/X/AL;->A01:F

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A09:Z

    .line 28056
    invoke-interface {v4, v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/AF;->ADz(JFZ)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const/4 v7, 0x1

    .line 28057
    :cond_5
    return v7
.end method

.method public static A0w(Lcom/facebook/ads/redexgen/X/H4;)[Lcom/facebook/ads/internal/exoplayer2/Format;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 28058
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/H4;->length()I

    move-result v3

    .line 28059
    .local p0, "length":I
    :goto_0
    new-array v2, v3, [Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 28060
    .local v3, "formats":[Lcom/facebook/ads/internal/exoplayer2/Format;
    const/4 v1, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v1, v3, :cond_1

    .line 28061
    invoke-interface {p0, v1}, Lcom/facebook/ads/redexgen/X/H4;->A6X(I)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    aput-object v0, v2, v1

    .line 28062
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 28063
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 28064
    .end local v2    # "i":I
    :cond_1
    return-object v2
.end method


# virtual methods
.method public final A0x()Landroid/os/Looper;
    .locals 1

    .line 28065
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0F:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized A0y()V
    .locals 2

    monitor-enter p0

    .line 28066
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0A:Z

    if-eqz v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28067
    monitor-exit p0

    return-void

    .line 28068
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DW;->A0Q:Lcom/facebook/ads/redexgen/X/IA;

    const/4 v0, 0x7

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/IA;->ADd(I)Z

    .line 28069
    const/4 v1, 0x0

    .line 28070
    .local p0, "wasInterrupted":Z
    :goto_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0A:Z

    if-nez v0, :cond_1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28071
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28072
    .end local v1
    .local v0, "e":Ljava/lang/InterruptedException;
    :catch_0
    const/4 v1, 0x1

    .line 28073
    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 28074
    :cond_1
    if-eqz v1, :cond_2

    .line 28075
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 28076
    :cond_2
    monitor-exit p0

    return-void

    .line 28077
    .end local p0    # "wasInterrupted":Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final A0z(Lcom/facebook/ads/redexgen/X/Af;IJ)V
    .locals 3

    .line 28078
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/DW;->A0Q:Lcom/facebook/ads/redexgen/X/IA;

    new-instance v1, Lcom/facebook/ads/redexgen/X/A9;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/A9;-><init>(Lcom/facebook/ads/redexgen/X/Af;IJ)V

    .line 28079
    const/4 v0, 0x3

    invoke-interface {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/IA;->A9E(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 28080
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 28081
    return-void
.end method

.method public final A10(Lcom/facebook/ads/redexgen/X/FE;ZZ)V
    .locals 2

    .line 28082
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DW;->A0Q:Lcom/facebook/ads/redexgen/X/IA;

    .line 28083
    const/4 v0, 0x0

    invoke-interface {v1, v0, p2, p3, p1}, Lcom/facebook/ads/redexgen/X/IA;->A9D(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 28084
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 28085
    return-void
.end method

.method public final A11(Z)V
    .locals 3

    .line 28086
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/DW;->A0Q:Lcom/facebook/ads/redexgen/X/IA;

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-interface {v2, v0, p1, v1}, Lcom/facebook/ads/redexgen/X/IA;->A9C(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 28087
    return-void
.end method

.method public final A12(Z)V
    .locals 3

    .line 28088
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/DW;->A0Q:Lcom/facebook/ads/redexgen/X/IA;

    const/4 v1, 0x0

    const/4 v0, 0x6

    invoke-interface {v2, v0, p1, v1}, Lcom/facebook/ads/redexgen/X/IA;->A9C(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 28089
    return-void
.end method

.method public final bridge synthetic A9o(Lcom/facebook/ads/redexgen/X/Fb;)V
    .locals 0

    .line 28090
    check-cast p1, Lcom/facebook/ads/redexgen/X/UN;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/DW;->A0h(Lcom/facebook/ads/redexgen/X/UN;)V

    return-void
.end method

.method public final AB7(Lcom/facebook/ads/redexgen/X/AL;)V
    .locals 2

    .line 28091
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DW;->A0E:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {v1, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 28092
    iget v0, p1, Lcom/facebook/ads/redexgen/X/AL;->A01:F

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/DW;->A0M(F)V

    .line 28093
    return-void
.end method

.method public final ABF(Lcom/facebook/ads/redexgen/X/UN;)V
    .locals 2

    .line 28094
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DW;->A0Q:Lcom/facebook/ads/redexgen/X/IA;

    const/16 v0, 0x9

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/IA;->A9E(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 28095
    return-void
.end method

.method public final ABe(Lcom/facebook/ads/redexgen/X/FE;Lcom/facebook/ads/redexgen/X/Af;Ljava/lang/Object;)V
    .locals 3

    .line 28096
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/DW;->A0Q:Lcom/facebook/ads/redexgen/X/IA;

    new-instance v1, Lcom/facebook/ads/redexgen/X/A6;

    invoke-direct {v1, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/A6;-><init>(Lcom/facebook/ads/redexgen/X/FE;Lcom/facebook/ads/redexgen/X/Af;Ljava/lang/Object;)V

    .line 28097
    const/16 v0, 0x8

    invoke-interface {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/IA;->A9E(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 28098
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 28099
    return-void
.end method

.method public final declared-synchronized ADf(Lcom/facebook/ads/redexgen/X/AW;)V
    .locals 4

    monitor-enter p0

    .line 28100
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0A:Z

    if-eqz v0, :cond_1

    .line 28101
    const/4 v2, 0x0

    const/16 v1, 0x15

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DW;->A06(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x32

    const/16 v1, 0x25

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DW;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28102
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/AW;->A0B(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28103
    monitor-exit p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/DW;->A0W:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/DW;->A0W:[Ljava/lang/String;

    const-string v1, "B9C1mQCvwbipbV5ehugLUIhoFikqinV5"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "kZyCc9FrHh403MwXAdr6LTmoGE3qTqiF"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 28104
    .end local v0
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DW;->A0Q:Lcom/facebook/ads/redexgen/X/IA;

    const/16 v0, 0xe

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/IA;->A9E(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28105
    monitor-exit p0

    return-void

    .line 28106
    .end local v2
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 8

    .line 28107
    const/4 v2, 0x0

    const/16 v1, 0x15

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DW;->A06(III)Ljava/lang/String;

    move-result-object v7

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 28108
    return v6

    .line 28109
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/facebook/ads/redexgen/X/FE;

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DW;->A0i(Lcom/facebook/ads/redexgen/X/FE;ZZ)V

    goto :goto_5

    .line 28110
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/DW;->A0m(Z)V

    goto :goto_5

    .line 28111
    :pswitch_2
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DW;->A07()V

    goto :goto_5

    .line 28112
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/A9;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/DW;->A0U(Lcom/facebook/ads/redexgen/X/A9;)V

    goto :goto_5

    .line 28113
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/AL;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/DW;->A0X(Lcom/facebook/ads/redexgen/X/AL;)V

    goto :goto_5

    .line 28114
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ab;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/DW;->A0e(Lcom/facebook/ads/redexgen/X/Ab;)V

    goto :goto_5

    .line 28115
    :pswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    invoke-direct {p0, v0, v4}, Lcom/facebook/ads/redexgen/X/DW;->A0o(ZZ)V

    goto :goto_5

    .line 28116
    :pswitch_7
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DW;->A0D()V

    .line 28117
    return v4

    .line 28118
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/A6;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/DW;->A0T(Lcom/facebook/ads/redexgen/X/A6;)V

    goto :goto_5

    .line 28119
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/UN;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/DW;->A0g(Lcom/facebook/ads/redexgen/X/UN;)V

    goto :goto_5

    .line 28120
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/UN;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/DW;->A0f(Lcom/facebook/ads/redexgen/X/UN;)V

    goto :goto_5

    .line 28121
    :pswitch_b
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DW;->A0E()V

    goto :goto_5

    .line 28122
    :pswitch_c
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/DW;->A0N(I)V

    goto :goto_5

    .line 28123
    :pswitch_d
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/DW;->A0n(Z)V

    goto :goto_5

    .line 28124
    :pswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/AW;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/DW;->A0Z(Lcom/facebook/ads/redexgen/X/AW;)V

    goto :goto_5

    .line 28125
    :pswitch_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/AW;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/DW;->A0b(Lcom/facebook/ads/redexgen/X/AW;)V

    .line 28126
    :goto_5
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DW;->A0A()V

    goto :goto_6
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/A0; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 28127
    .end local v0
    :catch_0
    move-exception v3

    .line 28128
    .local v0, "e":Ljava/io/IOException;
    const/16 v2, 0x7d

    const/16 v1, 0xd

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DW;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28129
    invoke-direct {p0, v6, v6}, Lcom/facebook/ads/redexgen/X/DW;->A0o(ZZ)V

    .line 28130
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DW;->A0E:Landroid/os/Handler;

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/A0;->A00(Ljava/io/IOException;)Lcom/facebook/ads/redexgen/X/A0;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 28131
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DW;->A0A()V

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_6

    .line 28132
    :catch_1
    move-exception v3

    .line 28133
    .local v0, "e":Lcom/facebook/ads/redexgen/X/A0;
    const/16 v2, 0x6e

    const/16 v1, 0xf

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DW;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28134
    invoke-direct {p0, v6, v6}, Lcom/facebook/ads/redexgen/X/DW;->A0o(ZZ)V

    .line 28135
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DW;->A0E:Landroid/os/Handler;

    invoke-virtual {v0, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 28136
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DW;->A0A()V

    goto :goto_6

    .line 28137
    :catch_2
    move-exception v3

    .line 28138
    .local v0, "e":Ljava/lang/RuntimeException;
    const/16 v2, 0x57

    const/16 v1, 0x17

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DW;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28139
    invoke-direct {p0, v6, v6}, Lcom/facebook/ads/redexgen/X/DW;->A0o(ZZ)V

    .line 28140
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DW;->A0E:Landroid/os/Handler;

    .line 28141
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/A0;->A02(Ljava/lang/RuntimeException;)Lcom/facebook/ads/redexgen/X/A0;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 28142
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 28143
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DW;->A0A()V

    .line 28144
    :goto_6
    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method
