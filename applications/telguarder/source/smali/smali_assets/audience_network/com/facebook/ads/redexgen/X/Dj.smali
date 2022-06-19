.class public final Lcom/facebook/ads/redexgen/X/Dj;
.super Lcom/facebook/ads/redexgen/X/Wi;
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
        "Lcom/facebook/ads/redexgen/X/Wi<",
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

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Dj;->A03()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Dj;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/8K;Ljava/lang/String;Ljava/lang/String;IDDLjava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 28805
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Dj;->A03:Lcom/facebook/ads/redexgen/X/8K;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Dj;->A06:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Dj;->A05:Ljava/lang/String;

    iput p4, p0, Lcom/facebook/ads/redexgen/X/Dj;->A02:I

    iput-wide p5, p0, Lcom/facebook/ads/redexgen/X/Dj;->A01:D

    iput-wide p7, p0, Lcom/facebook/ads/redexgen/X/Dj;->A00:D

    iput-object p9, p0, Lcom/facebook/ads/redexgen/X/Dj;->A04:Ljava/lang/String;

    iput-object p10, p0, Lcom/facebook/ads/redexgen/X/Dj;->A07:Ljava/util/Map;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wi;-><init>()V

    return-void
.end method

.method private final A00()Ljava/lang/String;
    .locals 18
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 28806
    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dj;->A01(III)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Dj;->A03:Lcom/facebook/ads/redexgen/X/8K;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8K;->A02(Lcom/facebook/ads/redexgen/X/8K;)Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v2

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Dj;->A06:Ljava/lang/String;

    invoke-interface {v2, v0}, Lcom/facebook/ads/redexgen/X/8d;->A7p(Ljava/lang/String;)V

    .line 28807
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Dj;->A05:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v7, 0x0

    if-eqz v0, :cond_0

    .line 28808
    return-object v7

    .line 28809
    :cond_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/8K;->A06()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 28810
    const/4 v6, 0x0

    .line 28811
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Dj;->A03:Lcom/facebook/ads/redexgen/X/8K;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8K;->A0F()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 28812
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 28813
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Dj;->A03:Lcom/facebook/ads/redexgen/X/8K;

    .line 28814
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8K;->A03(Lcom/facebook/ads/redexgen/X/8K;)Lcom/facebook/ads/redexgen/X/Wk;

    move-result-object v8

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Dj;->A03:Lcom/facebook/ads/redexgen/X/8K;

    .line 28815
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8K;->A04(Lcom/facebook/ads/redexgen/X/8K;)Lcom/facebook/ads/redexgen/X/Wj;

    move-result-object v2

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Dj;->A05:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Wj;->A0C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget v10, v1, Lcom/facebook/ads/redexgen/X/Dj;->A02:I

    iget-object v11, v1, Lcom/facebook/ads/redexgen/X/Dj;->A06:Ljava/lang/String;

    iget-wide v12, v1, Lcom/facebook/ads/redexgen/X/Dj;->A01:D

    iget-wide v14, v1, Lcom/facebook/ads/redexgen/X/Dj;->A00:D

    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/Dj;->A04:Ljava/lang/String;

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Dj;->A07:Ljava/util/Map;

    .line 28816
    move-object/from16 v16, v2

    move-object/from16 v17, v0

    invoke-virtual/range {v8 .. v17}, Lcom/facebook/ads/redexgen/X/Wk;->A0E(Ljava/lang/String;ILjava/lang/String;DDLjava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    .line 28817
    .local v0, "eventId":Ljava/lang/String;
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28818
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28819
    :try_start_1
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28820
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 28821
    :catch_0
    move-exception v3

    .line 28822
    .local v1, "e":Ljava/lang/Exception;
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Dj;->A03:Lcom/facebook/ads/redexgen/X/8K;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8K;->A02(Lcom/facebook/ads/redexgen/X/8K;)Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v0

    .line 28823
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/8e;->A0n:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    .line 28824
    invoke-interface {v2, v4, v1, v0}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 28825
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/8K;->A06()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 28826
    return-object v5

    .line 28827
    :catch_1
    move-exception v5

    .line 28828
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v0, Lcom/facebook/ads/redexgen/X/8M;->A05:Lcom/facebook/ads/redexgen/X/8M;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/8N;->A01(Lcom/facebook/ads/redexgen/X/8M;)V

    .line 28829
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Dj;->A03:Lcom/facebook/ads/redexgen/X/8K;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8K;->A02(Lcom/facebook/ads/redexgen/X/8K;)Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v0

    .line 28830
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v3

    sget v2, Lcom/facebook/ads/redexgen/X/8e;->A0m:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v0, v5}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    .line 28831
    invoke-interface {v3, v4, v2, v0}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 28832
    if-eqz v6, :cond_2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 28833
    :try_start_3
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 28834
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 28835
    :catch_2
    move-exception v3

    .line 28836
    .local v4, "e":Ljava/lang/Exception;
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Dj;->A03:Lcom/facebook/ads/redexgen/X/8K;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8K;->A02(Lcom/facebook/ads/redexgen/X/8K;)Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v0

    .line 28837
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/8e;->A0n:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    .line 28838
    invoke-interface {v2, v4, v1, v0}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 28839
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    invoke-static {}, Lcom/facebook/ads/redexgen/X/8K;->A06()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dj;->A09:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    .line 28840
    sget-object v2, Lcom/facebook/ads/redexgen/X/Dj;->A09:[Ljava/lang/String;

    const-string v1, "EWFU97r"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "WG930h2"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return-object v7

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 28841
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .end local v0
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 28842
    :try_start_4
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 28843
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 28844
    :catch_3
    move-exception v3

    .line 28845
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Dj;->A03:Lcom/facebook/ads/redexgen/X/8K;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8K;->A02(Lcom/facebook/ads/redexgen/X/8K;)Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v0

    .line 28846
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/8e;->A0n:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    .line 28847
    invoke-interface {v2, v4, v1, v0}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 28848
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_2
    invoke-static {}, Lcom/facebook/ads/redexgen/X/8K;->A06()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 28849
    throw v5
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Dj;->A08:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x7a

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
    .locals 4

    const/16 v0, 0x8

    new-array v3, v0, [B

    sget-object v1, Lcom/facebook/ads/redexgen/X/Dj;->A09:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x20

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dj;->A09:[Ljava/lang/String;

    const-string v1, "0lpDBp9tBU8jLddyd5eWZp"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    fill-array-data v3, :array_0

    sput-object v3, Lcom/facebook/ads/redexgen/X/Dj;->A08:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :array_0
    .array-data 1
        0x38t
        0x35t
        0x48t
        0x35t
        0x36t
        0x35t
        0x47t
        0x39t
    .end array-data
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ZKW0rplATEIsE5gjt8qXTQnY"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "r6HJdeSoORQdJfGxA0AnZWlkU33wQIlK"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "lLZOtDHAe6uwMhK1fYaqg"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "CFnqFcdcZfU1FaRsph1ThokBMpi4uqZk"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "TONJvFd"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "LRRDDC4"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "oqOd7Km"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "E"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Dj;->A09:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final bridge synthetic A04()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 28850
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dj;->A00()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
