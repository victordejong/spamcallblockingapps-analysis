.class public final Lcom/facebook/ads/redexgen/X/ER;
.super Lcom/facebook/ads/redexgen/X/XS;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/8K;->A0H(Ljava/lang/String;ILjava/lang/String;DDLjava/lang/String;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/9H;)Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/XS<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static A08:[B

.field public static A09:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:D

.field public final synthetic A01:D

.field public final synthetic A02:I

.field public final synthetic A03:Lcom/facebook/ads/redexgen/X/8K;

.field public final synthetic A04:Ljava/lang/String;

.field public final synthetic A05:Ljava/lang/String;

.field public final synthetic A06:Ljava/lang/String;

.field public final synthetic A07:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/ER;->A03()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/ER;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/8K;Ljava/lang/String;Ljava/lang/String;IDDLjava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 29349
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ER;->A03:Lcom/facebook/ads/redexgen/X/8K;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/ER;->A06:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/ER;->A05:Ljava/lang/String;

    iput p4, p0, Lcom/facebook/ads/redexgen/X/ER;->A02:I

    iput-wide p5, p0, Lcom/facebook/ads/redexgen/X/ER;->A01:D

    iput-wide p7, p0, Lcom/facebook/ads/redexgen/X/ER;->A00:D

    iput-object p9, p0, Lcom/facebook/ads/redexgen/X/ER;->A04:Ljava/lang/String;

    iput-object p10, p0, Lcom/facebook/ads/redexgen/X/ER;->A07:Ljava/util/Map;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XS;-><init>()V

    return-void
.end method

.method private final A00()Ljava/lang/String;
    .locals 18
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 29350
    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ER;->A01(III)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/ER;->A03:Lcom/facebook/ads/redexgen/X/8K;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8K;->A02(Lcom/facebook/ads/redexgen/X/8K;)Lcom/facebook/ads/redexgen/X/XK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v2

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/ER;->A06:Ljava/lang/String;

    invoke-interface {v2, v0}, Lcom/facebook/ads/redexgen/X/8d;->A7n(Ljava/lang/String;)V

    .line 29351
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/ER;->A05:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v7, 0x0

    if-eqz v0, :cond_0

    .line 29352
    return-object v7

    .line 29353
    :cond_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/8K;->A06()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    sget-object v3, Lcom/facebook/ads/redexgen/X/ER;->A09:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v2, v3, v0

    const/4 v0, 0x2

    aget-object v0, v3, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v2, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 29354
    :cond_1
    sget-object v3, Lcom/facebook/ads/redexgen/X/ER;->A09:[Ljava/lang/String;

    const-string v2, "mqnyRlomjFPPGlBu5iJ3A4HRnrnsorAH"

    const/4 v0, 0x1

    aput-object v2, v3, v0

    const-string v2, "vLAqNnzkqKgbXCY8NZfbbPBhHyGRm9s6"

    const/4 v0, 0x4

    aput-object v2, v3, v0

    const/4 v6, 0x0

    .line 29355
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/ER;->A03:Lcom/facebook/ads/redexgen/X/8K;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8K;->A0F()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 29356
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 29357
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/ER;->A03:Lcom/facebook/ads/redexgen/X/8K;

    .line 29358
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8K;->A03(Lcom/facebook/ads/redexgen/X/8K;)Lcom/facebook/ads/redexgen/X/XP;

    move-result-object v8

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/ER;->A03:Lcom/facebook/ads/redexgen/X/8K;

    .line 29359
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8K;->A04(Lcom/facebook/ads/redexgen/X/8K;)Lcom/facebook/ads/redexgen/X/XR;

    move-result-object v2

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/ER;->A05:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/XR;->A0D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget v10, v1, Lcom/facebook/ads/redexgen/X/ER;->A02:I

    iget-object v11, v1, Lcom/facebook/ads/redexgen/X/ER;->A06:Ljava/lang/String;

    iget-wide v12, v1, Lcom/facebook/ads/redexgen/X/ER;->A01:D

    iget-wide v14, v1, Lcom/facebook/ads/redexgen/X/ER;->A00:D

    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/ER;->A04:Ljava/lang/String;

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/ER;->A07:Ljava/util/Map;

    .line 29360
    move-object/from16 v16, v2

    move-object/from16 v17, v0

    invoke-virtual/range {v8 .. v17}, Lcom/facebook/ads/redexgen/X/XP;->A0F(Ljava/lang/String;ILjava/lang/String;DDLjava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    .line 29361
    .local v0, "eventId":Ljava/lang/String;
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29362
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 29363
    :try_start_1
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 29364
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 29365
    :catch_0
    move-exception v3

    .line 29366
    .local v1, "e":Ljava/lang/Exception;
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/ER;->A03:Lcom/facebook/ads/redexgen/X/8K;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8K;->A02(Lcom/facebook/ads/redexgen/X/8K;)Lcom/facebook/ads/redexgen/X/XK;

    move-result-object v0

    .line 29367
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/8e;->A0n:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    .line 29368
    invoke-interface {v2, v4, v1, v0}, Lcom/facebook/ads/redexgen/X/8d;->A8V(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 29369
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/8K;->A06()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/ER;->A09:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/ER;->A09:[Ljava/lang/String;

    const-string v1, "euwrYX6ZBvkkPfbLG6LTpx3NDj"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "qLYaMtYi2WKu9oTuT6ElhKmpF4"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 29370
    return-object v5

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 29371
    :catch_1
    move-exception v5

    .line 29372
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v0, Lcom/facebook/ads/redexgen/X/8M;->A06:Lcom/facebook/ads/redexgen/X/8M;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/8N;->A01(Lcom/facebook/ads/redexgen/X/8M;)V

    .line 29373
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/ER;->A03:Lcom/facebook/ads/redexgen/X/8K;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8K;->A02(Lcom/facebook/ads/redexgen/X/8K;)Lcom/facebook/ads/redexgen/X/XK;

    move-result-object v0

    .line 29374
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v3

    sget v2, Lcom/facebook/ads/redexgen/X/8e;->A0m:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v0, v5}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    .line 29375
    invoke-interface {v3, v4, v2, v0}, Lcom/facebook/ads/redexgen/X/8d;->A8V(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 29376
    if-eqz v6, :cond_4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 29377
    :try_start_3
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 29378
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 29379
    :catch_2
    move-exception v3

    .line 29380
    .local v4, "e":Ljava/lang/Exception;
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/ER;->A03:Lcom/facebook/ads/redexgen/X/8K;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8K;->A02(Lcom/facebook/ads/redexgen/X/8K;)Lcom/facebook/ads/redexgen/X/XK;

    move-result-object v0

    .line 29381
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/8e;->A0n:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    .line 29382
    invoke-interface {v2, v4, v1, v0}, Lcom/facebook/ads/redexgen/X/8d;->A8V(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 29383
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_1
    invoke-static {}, Lcom/facebook/ads/redexgen/X/8K;->A06()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 29384
    return-object v7

    .line 29385
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .end local v0
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 29386
    :try_start_4
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 29387
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 29388
    :catch_3
    move-exception v3

    .line 29389
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/ER;->A03:Lcom/facebook/ads/redexgen/X/8K;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8K;->A02(Lcom/facebook/ads/redexgen/X/8K;)Lcom/facebook/ads/redexgen/X/XK;

    move-result-object v0

    .line 29390
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/8e;->A0n:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    .line 29391
    invoke-interface {v2, v4, v1, v0}, Lcom/facebook/ads/redexgen/X/8d;->A8V(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 29392
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_2
    invoke-static {}, Lcom/facebook/ads/redexgen/X/8K;->A06()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 29393
    throw v5
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/ER;->A08:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x20

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/ER;->A08:[B

    return-void

    :array_0
    .array-data 1
        -0x70t
        -0x73t
        -0x60t
        -0x73t
        -0x72t
        -0x73t
        -0x61t
        -0x6ft
    .end array-data
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "l"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "T0JdG9ZEnLfTeCeftC9G7d8cUsVG3XZb"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "aLcPLzyPnyiGnlL0eBnocVG2Im"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "W3EwFUE7CvVeZV"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "t2q4fu0Y0bIBimY2SigNyotMmunbmEsF"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "TUpEXXUjgi8xLksArOVlucAVZCM"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "AqOn5F5Mae0spU5kh0gbanyLcs"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "chqW8UrgIl8Ef4OOKimE4h"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/ER;->A09:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final bridge synthetic A04()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 29394
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ER;->A00()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
