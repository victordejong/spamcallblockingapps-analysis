.class public final Lcom/facebook/ads/redexgen/X/aR;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/HV;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/C5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ExtractingLoadable"
.end annotation


# static fields
.field public static A0C:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:J

.field public A02:J

.field public A03:Lcom/facebook/ads/redexgen/X/HM;

.field public A04:Z

.field public final A05:Landroid/net/Uri;

.field public final A06:Lcom/facebook/ads/redexgen/X/CN;

.field public final A07:Lcom/facebook/ads/redexgen/X/F8;

.field public final A08:Lcom/facebook/ads/redexgen/X/HI;

.field public final A09:Lcom/facebook/ads/redexgen/X/I3;

.field public volatile A0A:Z

.field public final synthetic A0B:Lcom/facebook/ads/redexgen/X/C5;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/aR;->A04()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/C5;Landroid/net/Uri;Lcom/facebook/ads/redexgen/X/HI;Lcom/facebook/ads/redexgen/X/F8;Lcom/facebook/ads/redexgen/X/I3;)V
    .locals 2

    .line 67391
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aR;->A0B:Lcom/facebook/ads/redexgen/X/C5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67392
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/Hx;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aR;->A05:Landroid/net/Uri;

    .line 67393
    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/Hx;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/HI;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aR;->A08:Lcom/facebook/ads/redexgen/X/HI;

    .line 67394
    invoke-static {p4}, Lcom/facebook/ads/redexgen/X/Hx;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/F8;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aR;->A07:Lcom/facebook/ads/redexgen/X/F8;

    .line 67395
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/aR;->A09:Lcom/facebook/ads/redexgen/X/I3;

    .line 67396
    new-instance v0, Lcom/facebook/ads/redexgen/X/CN;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/CN;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aR;->A06:Lcom/facebook/ads/redexgen/X/CN;

    .line 67397
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/aR;->A04:Z

    .line 67398
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/aR;->A01:J

    .line 67399
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/aR;)J
    .locals 1

    .line 67400
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/aR;->A02:J

    return-wide v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/aR;)J
    .locals 1

    .line 67401
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/aR;->A00:J

    return-wide v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/aR;)J
    .locals 1

    .line 67402
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/aR;->A01:J

    return-wide v0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/aR;)Lcom/facebook/ads/redexgen/X/HM;
    .locals 0

    .line 67403
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/aR;->A03:Lcom/facebook/ads/redexgen/X/HM;

    return-object p0
.end method

.method public static A04()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "nBGgOhUJr5w54zk2FcSY"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "YYZuUd"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "gwBohD1o6c6DfEcFdJm47xfjaEoVukk3"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "3TNnSL"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "hJWvKqQqk09hkKqv49F3L8Ilz7Jhye22"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "G8FOHrMAxxSNQBngbaVWxtAhYQnldn5N"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "v6FRbmkBAKb4FwdIpHjrHHJWg4k1tULi"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "7hirQzfzNIRD79h7knAyc8"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/aR;->A0C:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A05(JJ)V
    .locals 1

    .line 67404
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aR;->A06:Lcom/facebook/ads/redexgen/X/CN;

    iput-wide p1, v0, Lcom/facebook/ads/redexgen/X/CN;->A00:J

    .line 67405
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/aR;->A02:J

    .line 67406
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/aR;->A04:Z

    .line 67407
    return-void
.end method

.method public final A3z()V
    .locals 1

    .line 67408
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/aR;->A0A:Z

    .line 67409
    return-void
.end method

.method public final A8I()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 67410
    const/4 v4, 0x0

    .line 67411
    .local p0, "result":I
    :goto_0
    if-nez v4, :cond_6

    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/aR;->A0A:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/aR;->A0C:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/aR;->A0C:[Ljava/lang/String;

    const-string v1, "6lKOSY"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "aO7eUD"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-nez v3, :cond_6

    .line 67412
    const/4 v3, 0x0

    .line 67413
    .local v4, "input":Lcom/facebook/ads/redexgen/X/CH;
    const/4 v2, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aR;->A06:Lcom/facebook/ads/redexgen/X/CN;

    iget-wide v10, v0, Lcom/facebook/ads/redexgen/X/CN;->A00:J

    .line 67414
    .local v1, "position":J
    new-instance v8, Lcom/facebook/ads/redexgen/X/HM;

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/aR;->A05:Landroid/net/Uri;

    const-wide/16 v12, -0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aR;->A0B:Lcom/facebook/ads/redexgen/X/C5;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/C5;->A08(Lcom/facebook/ads/redexgen/X/C5;)Ljava/lang/String;

    move-result-object v14

    invoke-direct/range {v8 .. v14}, Lcom/facebook/ads/redexgen/X/HM;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    iput-object v8, p0, Lcom/facebook/ads/redexgen/X/aR;->A03:Lcom/facebook/ads/redexgen/X/HM;

    .line 67415
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aR;->A08:Lcom/facebook/ads/redexgen/X/HI;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aR;->A03:Lcom/facebook/ads/redexgen/X/HM;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/HI;->ACC(Lcom/facebook/ads/redexgen/X/HM;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/aR;->A01:J

    .line 67416
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/aR;->A01:J

    const-wide/16 v6, -0x1

    cmp-long v5, v0, v6

    if-eqz v5, :cond_0

    .line 67417
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/aR;->A01:J

    add-long/2addr v0, v10

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/aR;->A01:J

    .line 67418
    :cond_0
    new-instance v8, Lcom/facebook/ads/redexgen/X/Yp;

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/aR;->A08:Lcom/facebook/ads/redexgen/X/HI;

    iget-wide v12, p0, Lcom/facebook/ads/redexgen/X/aR;->A01:J

    invoke-direct/range {v8 .. v13}, Lcom/facebook/ads/redexgen/X/Yp;-><init>(Lcom/facebook/ads/redexgen/X/HI;JJ)V

    move-object v3, v8

    .line 67419
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aR;->A07:Lcom/facebook/ads/redexgen/X/F8;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aR;->A08:Lcom/facebook/ads/redexgen/X/HI;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HI;->A7R()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/facebook/ads/redexgen/X/F8;->A03(Lcom/facebook/ads/redexgen/X/CH;Landroid/net/Uri;)Lcom/facebook/ads/redexgen/X/CG;

    move-result-object v5

    .line 67420
    .local v0, "extractor":Lcom/facebook/ads/redexgen/X/CG;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/aR;->A04:Z

    if-eqz v0, :cond_1

    .line 67421
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/aR;->A02:J

    invoke-interface {v5, v10, v11, v0, v1}, Lcom/facebook/ads/redexgen/X/CG;->ADW(JJ)V

    .line 67422
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/aR;->A04:Z

    .line 67423
    :cond_1
    :goto_1
    if-nez v4, :cond_2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/aR;->A0A:Z

    if-nez v0, :cond_2

    .line 67424
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aR;->A09:Lcom/facebook/ads/redexgen/X/I3;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/I3;->A01()V

    .line 67425
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aR;->A06:Lcom/facebook/ads/redexgen/X/CN;

    invoke-interface {v5, v3, v0}, Lcom/facebook/ads/redexgen/X/CG;->ACk(Lcom/facebook/ads/redexgen/X/CH;Lcom/facebook/ads/redexgen/X/CN;)I

    move-result v4

    .line 67426
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Yp;->A71()J

    move-result-wide v8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aR;->A0B:Lcom/facebook/ads/redexgen/X/C5;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/C5;->A03(Lcom/facebook/ads/redexgen/X/C5;)J

    move-result-wide v6

    add-long/2addr v6, v10

    cmp-long v0, v8, v6

    if-lez v0, :cond_1

    .line 67427
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Yp;->A71()J

    move-result-wide v10

    .line 67428
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aR;->A09:Lcom/facebook/ads/redexgen/X/I3;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/I3;->A02()Z

    .line 67429
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aR;->A0B:Lcom/facebook/ads/redexgen/X/C5;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/C5;->A04(Lcom/facebook/ads/redexgen/X/C5;)Landroid/os/Handler;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aR;->A0B:Lcom/facebook/ads/redexgen/X/C5;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/C5;->A06(Lcom/facebook/ads/redexgen/X/C5;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 67430
    .end local v1    # "position":J
    .end local v0    # "extractor":Lcom/facebook/ads/redexgen/X/CG;
    :cond_2
    if-ne v4, v2, :cond_3

    .line 67431
    const/4 v4, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67432
    :goto_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aR;->A08:Lcom/facebook/ads/redexgen/X/HI;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0X(Lcom/facebook/ads/redexgen/X/HI;)V

    .line 67433
    .end local v4    # "input":Lcom/facebook/ads/redexgen/X/CH;
    goto/16 :goto_0

    .line 67434
    :cond_3
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/aR;->A06:Lcom/facebook/ads/redexgen/X/CN;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Yp;->A71()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/facebook/ads/redexgen/X/CN;->A00:J

    .line 67435
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aR;->A06:Lcom/facebook/ads/redexgen/X/CN;

    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/CN;->A00:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aR;->A03:Lcom/facebook/ads/redexgen/X/HM;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/HM;->A01:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/aR;->A00:J

    goto :goto_2

    .line 67436
    .restart local v4    # "input":Lcom/facebook/ads/redexgen/X/CH;
    :catchall_0
    move-exception v5

    if-eq v4, v2, :cond_4

    .line 67437
    if-eqz v3, :cond_4

    .line 67438
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/aR;->A06:Lcom/facebook/ads/redexgen/X/CN;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Yp;->A71()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/facebook/ads/redexgen/X/CN;->A00:J

    .line 67439
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aR;->A06:Lcom/facebook/ads/redexgen/X/CN;

    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/CN;->A00:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aR;->A03:Lcom/facebook/ads/redexgen/X/HM;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/HM;->A01:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/aR;->A00:J

    .line 67440
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aR;->A08:Lcom/facebook/ads/redexgen/X/HI;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0X(Lcom/facebook/ads/redexgen/X/HI;)V

    .line 67441
    throw v5

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 67442
    .end local v4    # "input":Lcom/facebook/ads/redexgen/X/CH;
    :cond_6
    return-void
.end method
