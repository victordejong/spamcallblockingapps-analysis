.class Lcom/bytedance/sdk/adnet/core/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/adnet/face/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/adnet/core/f$b;,
        Lcom/bytedance/sdk/adnet/core/f$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/adnet/core/f$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:J

.field private final c:Ljava/io/File;

.field private final d:I


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    const/high16 v0, 0x500000

    .line 108
    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/adnet/core/f;-><init>(Ljava/io/File;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 4

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x10

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/core/f;->a:Ljava/util/Map;

    const-wide/16 v0, 0x0

    .line 60
    iput-wide v0, p0, Lcom/bytedance/sdk/adnet/core/f;->b:J

    .line 97
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/core/f;->c:Ljava/io/File;

    .line 98
    iput p2, p0, Lcom/bytedance/sdk/adnet/core/f;->d:I

    return-void
.end method

.method static a(Ljava/io/InputStream;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 633
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/core/f;->c(Ljava/io/InputStream;)I

    move-result v0

    shl-int/lit8 v0, v0, 0x0

    or-int/lit8 v0, v0, 0x0

    .line 634
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/core/f;->c(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 635
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/core/f;->c(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 636
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/core/f;->c(Ljava/io/InputStream;)I

    move-result p0

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method static a(Lcom/bytedance/sdk/adnet/core/f$b;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 671
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/core/f;->b(Ljava/io/InputStream;)J

    move-result-wide v0

    .line 672
    invoke-static {p0, v0, v1}, Lcom/bytedance/sdk/adnet/core/f;->a(Lcom/bytedance/sdk/adnet/core/f$b;J)[B

    move-result-object p0

    .line 673
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method static a(Ljava/io/OutputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    shr-int/lit8 v0, p1, 0x0

    and-int/lit16 v0, v0, 0xff

    .line 625
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 626
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 627
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    .line 628
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method static a(Ljava/io/OutputStream;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    ushr-long v0, p1, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 641
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x8

    ushr-long v0, p1, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 642
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x10

    ushr-long v0, p1, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 643
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x18

    ushr-long v0, p1, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 644
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 645
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x28

    ushr-long v0, p1, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 646
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x30

    ushr-long v0, p1, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 647
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x38

    ushr-long/2addr p1, v0

    long-to-int p2, p1

    int-to-byte p1, p2

    .line 648
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method static a(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "UTF-8"

    .line 665
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 666
    array-length v0, p1

    int-to-long v0, v0

    invoke-static {p0, v0, v1}, Lcom/bytedance/sdk/adnet/core/f;->a(Ljava/io/OutputStream;J)V

    .line 667
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/core/f$a;)V
    .locals 7

    .line 363
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/f;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 364
    iget-wide v0, p0, Lcom/bytedance/sdk/adnet/core/f;->b:J

    iget-wide v2, p2, Lcom/bytedance/sdk/adnet/core/f$a;->a:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bytedance/sdk/adnet/core/f;->b:J

    goto :goto_0

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/f;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/adnet/core/f$a;

    .line 367
    iget-wide v1, p0, Lcom/bytedance/sdk/adnet/core/f;->b:J

    iget-wide v3, p2, Lcom/bytedance/sdk/adnet/core/f$a;->a:J

    iget-wide v5, v0, Lcom/bytedance/sdk/adnet/core/f$a;->a:J

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/bytedance/sdk/adnet/core/f;->b:J

    .line 369
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/f;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static a(Ljava/util/List;Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/adnet/core/Header;",
            ">;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 678
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/bytedance/sdk/adnet/core/f;->a(Ljava/io/OutputStream;I)V

    .line 679
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/adnet/core/Header;

    .line 680
    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/core/Header;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/bytedance/sdk/adnet/core/f;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 681
    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/core/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/bytedance/sdk/adnet/core/f;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    const/4 p0, 0x0

    .line 684
    invoke-static {p1, p0}, Lcom/bytedance/sdk/adnet/core/f;->a(Ljava/io/OutputStream;I)V

    return-void
.end method

.method static a(Lcom/bytedance/sdk/adnet/core/f$b;J)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 391
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/core/f$b;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-ltz v4, :cond_0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    long-to-int v2, p1

    int-to-long v3, v2

    cmp-long v5, v3, p1

    if-nez v5, :cond_0

    .line 396
    new-array p1, v2, [B

    .line 397
    new-instance p2, Ljava/io/DataInputStream;

    invoke-direct {p2, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p2, p1}, Ljava/io/DataInputStream;->readFully([B)V

    return-object p1

    .line 394
    :cond_0
    new-instance p0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "streamToBytes length="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", maxLength="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static b(Ljava/io/InputStream;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 653
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/core/f;->c(Ljava/io/InputStream;)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const/4 v4, 0x0

    shl-long/2addr v0, v4

    const-wide/16 v4, 0x0

    or-long/2addr v0, v4

    .line 654
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/core/f;->c(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 655
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/core/f;->c(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 656
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/core/f;->c(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 657
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/core/f;->c(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 658
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/core/f;->c(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 659
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/core/f;->c(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 660
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/core/f;->c(Ljava/io/InputStream;)I

    move-result p0

    int-to-long v4, p0

    and-long/2addr v2, v4

    const/16 p0, 0x38

    shl-long/2addr v2, p0

    or-long/2addr v0, v2

    return-wide v0
.end method

.method static b(Lcom/bytedance/sdk/adnet/core/f$b;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/f$b;",
            ")",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/adnet/core/Header;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 689
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/core/f;->a(Ljava/io/InputStream;)I

    move-result v0

    if-ltz v0, :cond_2

    if-nez v0, :cond_0

    .line 694
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    .line 696
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/core/f;->a(Lcom/bytedance/sdk/adnet/core/f$b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 697
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/core/f;->a(Lcom/bytedance/sdk/adnet/core/f$b;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    .line 698
    new-instance v5, Lcom/bytedance/sdk/adnet/core/Header;

    invoke-direct {v5, v3, v4}, Lcom/bytedance/sdk/adnet/core/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v1

    .line 691
    :cond_2
    new-instance p0, Ljava/io/IOException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "readHeaderList size="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private b()V
    .locals 14

    .line 318
    iget-wide v0, p0, Lcom/bytedance/sdk/adnet/core/f;->b:J

    iget v2, p0, Lcom/bytedance/sdk/adnet/core/f;->d:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-void

    .line 321
    :cond_0
    sget-boolean v0, Lcom/bytedance/sdk/adnet/core/o;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "Pruning old cache entries."

    .line 322
    invoke-static {v2, v0}, Lcom/bytedance/sdk/adnet/core/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 325
    :cond_1
    iget-wide v2, p0, Lcom/bytedance/sdk/adnet/core/f;->b:J

    .line 327
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 329
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/f;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v6, 0x0

    .line 330
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v7, :cond_4

    .line 331
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 332
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/bytedance/sdk/adnet/core/f$a;

    .line 333
    iget-object v10, v7, Lcom/bytedance/sdk/adnet/core/f$a;->b:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/bytedance/sdk/adnet/core/f;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 335
    iget-wide v10, p0, Lcom/bytedance/sdk/adnet/core/f;->b:J

    iget-wide v12, v7, Lcom/bytedance/sdk/adnet/core/f$a;->a:J

    sub-long/2addr v10, v12

    iput-wide v10, p0, Lcom/bytedance/sdk/adnet/core/f;->b:J

    goto :goto_0

    :cond_3
    new-array v10, v8, [Ljava/lang/Object;

    .line 337
    iget-object v11, v7, Lcom/bytedance/sdk/adnet/core/f$a;->b:Ljava/lang/String;

    aput-object v11, v10, v1

    iget-object v7, v7, Lcom/bytedance/sdk/adnet/core/f$a;->b:Ljava/lang/String;

    .line 339
    invoke-direct {p0, v7}, Lcom/bytedance/sdk/adnet/core/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v10, v9

    const-string v7, "Could not delete cache entry for key=%s, filename=%s"

    .line 337
    invoke-static {v7, v10}, Lcom/bytedance/sdk/adnet/core/o;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 341
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    add-int/lit8 v6, v6, 0x1

    .line 344
    iget-wide v10, p0, Lcom/bytedance/sdk/adnet/core/f;->b:J

    long-to-float v7, v10

    iget v10, p0, Lcom/bytedance/sdk/adnet/core/f;->d:I

    int-to-float v10, v10

    const v11, 0x3f666666    # 0.9f

    mul-float v10, v10, v11

    cmpg-float v7, v7, v10

    if-gez v7, :cond_2

    .line 349
    :cond_4
    sget-boolean v0, Lcom/bytedance/sdk/adnet/core/o;->a:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 352
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v1

    iget-wide v6, p0, Lcom/bytedance/sdk/adnet/core/f;->b:J

    sub-long/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long/2addr v1, v4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v8

    const-string v1, "pruned %d files, %d bytes, %d ms"

    .line 350
    invoke-static {v1, v0}, Lcom/bytedance/sdk/adnet/core/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method private static c(Ljava/io/InputStream;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 617
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    return p0

    .line 619
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 301
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    .line 302
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 303
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private e(Ljava/lang/String;)V
    .locals 4

    .line 376
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/f;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/adnet/core/f$a;

    if-eqz p1, :cond_0

    .line 378
    iget-wide v0, p0, Lcom/bytedance/sdk/adnet/core/f;->b:J

    iget-wide v2, p1, Lcom/bytedance/sdk/adnet/core/f$a;->a:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bytedance/sdk/adnet/core/f;->b:J

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Lcom/bytedance/sdk/adnet/face/a$a;
    .locals 10

    monitor-enter p0

    .line 135
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 136
    monitor-exit p0

    return-object v1

    .line 138
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/f;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/adnet/core/f$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    if-nez v0, :cond_1

    .line 141
    monitor-exit p0

    return-object v1

    .line 143
    :cond_1
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/adnet/core/f;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    .line 146
    :try_start_3
    new-instance v6, Lcom/bytedance/sdk/adnet/core/f$b;

    new-instance v7, Ljava/io/BufferedInputStream;

    .line 147
    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/adnet/core/f;->a(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-direct {v6, v7, v8, v9}, Lcom/bytedance/sdk/adnet/core/f$b;-><init>(Ljava/io/InputStream;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 149
    :try_start_4
    invoke-static {v6}, Lcom/bytedance/sdk/adnet/core/f$a;->a(Lcom/bytedance/sdk/adnet/core/f$b;)Lcom/bytedance/sdk/adnet/core/f$a;

    move-result-object v7

    .line 150
    iget-object v8, v7, Lcom/bytedance/sdk/adnet/core/f$a;->b:Ljava/lang/String;

    invoke-static {p1, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v0, "%s: key=%s, found=%s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    .line 153
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    aput-object p1, v8, v3

    iget-object v7, v7, Lcom/bytedance/sdk/adnet/core/f$a;->b:Ljava/lang/String;

    aput-object v7, v8, v5

    .line 152
    invoke-static {v0, v8}, Lcom/bytedance/sdk/adnet/core/o;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/adnet/core/f;->e(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 163
    :try_start_5
    invoke-virtual {v6}, Lcom/bytedance/sdk/adnet/core/f$b;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 172
    :try_start_6
    invoke-virtual {v6}, Lcom/bytedance/sdk/adnet/core/f$b;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 156
    :catchall_0
    monitor-exit p0

    return-object v1

    .line 158
    :cond_2
    :try_start_7
    invoke-virtual {v6}, Lcom/bytedance/sdk/adnet/core/f$b;->a()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Lcom/bytedance/sdk/adnet/core/f;->a(Lcom/bytedance/sdk/adnet/core/f$b;J)[B

    move-result-object v7

    .line 159
    invoke-virtual {v0, v7}, Lcom/bytedance/sdk/adnet/core/f$a;->a([B)Lcom/bytedance/sdk/adnet/face/a$a;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 163
    :try_start_8
    invoke-virtual {v6}, Lcom/bytedance/sdk/adnet/core/f$b;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 172
    :try_start_9
    invoke-virtual {v6}, Lcom/bytedance/sdk/adnet/core/f$b;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 159
    :catchall_1
    monitor-exit p0

    return-object v0

    :catchall_2
    move-exception v0

    .line 163
    :try_start_a
    invoke-virtual {v6}, Lcom/bytedance/sdk/adnet/core/f$b;->close()V

    .line 164
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_0

    :catchall_4
    move-exception v0

    move-object v6, v1

    :goto_0
    :try_start_b
    const-string v7, "%s: %s"

    new-array v5, v5, [Ljava/lang/Object;

    .line 166
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    invoke-static {v7, v5}, Lcom/bytedance/sdk/adnet/core/o;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/adnet/core/f;->b(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    if-eqz v6, :cond_3

    .line 172
    :try_start_c
    invoke-virtual {v6}, Lcom/bytedance/sdk/adnet/core/f$b;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 168
    :catchall_5
    :cond_3
    monitor-exit p0

    return-object v1

    :catchall_6
    move-exception p1

    if-eqz v6, :cond_4

    .line 172
    :try_start_d
    invoke-virtual {v6}, Lcom/bytedance/sdk/adnet/core/f$b;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 176
    :catchall_7
    :cond_4
    :try_start_e
    throw p1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method a(Ljava/io/File;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 403
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public declared-synchronized a()V
    .locals 9

    monitor-enter p0

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/f;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/f;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Unable to create cache dir %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 187
    iget-object v3, p0, Lcom/bytedance/sdk/adnet/core/f;->c:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/bytedance/sdk/adnet/core/o;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 189
    :cond_0
    monitor-exit p0

    return-void

    .line 191
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/f;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v0, :cond_2

    .line 193
    monitor-exit p0

    return-void

    .line 195
    :cond_2
    :try_start_2
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 197
    :try_start_3
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 198
    new-instance v6, Lcom/bytedance/sdk/adnet/core/f$b;

    new-instance v7, Ljava/io/BufferedInputStream;

    .line 200
    invoke-virtual {p0, v3}, Lcom/bytedance/sdk/adnet/core/f;->a(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7, v4, v5}, Lcom/bytedance/sdk/adnet/core/f$b;-><init>(Ljava/io/InputStream;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 202
    :try_start_4
    invoke-static {v6}, Lcom/bytedance/sdk/adnet/core/f$a;->a(Lcom/bytedance/sdk/adnet/core/f$b;)Lcom/bytedance/sdk/adnet/core/f$a;

    move-result-object v7

    .line 203
    iput-wide v4, v7, Lcom/bytedance/sdk/adnet/core/f$a;->a:J

    .line 204
    iget-object v4, v7, Lcom/bytedance/sdk/adnet/core/f$a;->b:Ljava/lang/String;

    invoke-direct {p0, v4, v7}, Lcom/bytedance/sdk/adnet/core/f;->a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/core/f$a;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 209
    :catchall_0
    :try_start_5
    invoke-virtual {v6}, Lcom/bytedance/sdk/adnet/core/f$b;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 213
    :catchall_1
    :try_start_6
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 216
    :cond_3
    monitor-exit p0

    return-void

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/face/a$a;)V
    .locals 7

    monitor-enter p0

    .line 245
    :try_start_0
    iget-wide v0, p0, Lcom/bytedance/sdk/adnet/core/f;->b:J

    iget-object v2, p2, Lcom/bytedance/sdk/adnet/face/a$a;->b:[B

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget v2, p0, Lcom/bytedance/sdk/adnet/core/f;->d:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p2, Lcom/bytedance/sdk/adnet/face/a$a;->b:[B

    array-length v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/bytedance/sdk/adnet/core/f;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    int-to-float v1, v1

    const v2, 0x3f666666    # 0.9f

    mul-float v1, v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 247
    monitor-exit p0

    return-void

    .line 249
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/adnet/core/f;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 252
    :try_start_2
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/adnet/core/f;->b(Ljava/io/File;)Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 253
    :try_start_3
    new-instance v1, Lcom/bytedance/sdk/adnet/core/f$a;

    invoke-direct {v1, p1, p2}, Lcom/bytedance/sdk/adnet/core/f$a;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/adnet/face/a$a;)V

    .line 254
    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/adnet/core/f$a;->a(Ljava/io/OutputStream;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 260
    iget-object p2, p2, Lcom/bytedance/sdk/adnet/face/a$a;->b:[B

    invoke-virtual {v4, p2}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 261
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    iput-wide v5, v1, Lcom/bytedance/sdk/adnet/core/f$a;->a:J

    .line 262
    invoke-direct {p0, p1, v1}, Lcom/bytedance/sdk/adnet/core/f;->a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/core/f$a;)V

    .line 263
    invoke-direct {p0}, Lcom/bytedance/sdk/adnet/core/f;->b()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 269
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 272
    monitor-exit p0

    return-void

    .line 264
    :catchall_0
    monitor-exit p0

    return-void

    .line 256
    :cond_1
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    const-string p1, "Failed to write header for %s"

    new-array p2, v3, [Ljava/lang/Object;

    .line 257
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v2

    invoke-static {p1, p2}, Lcom/bytedance/sdk/adnet/core/o;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-object v1, v4

    :catchall_2
    if-eqz v1, :cond_2

    .line 269
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 274
    :catchall_3
    :cond_2
    :try_start_7
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "Could not clean up file %s"

    new-array p2, v3, [Ljava/lang/Object;

    .line 276
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v2

    invoke-static {p1, p2}, Lcom/bytedance/sdk/adnet/core/o;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 278
    :cond_3
    monitor-exit p0

    return-void

    :catchall_4
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method b(Ljava/io/File;)Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 408
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public declared-synchronized b(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 285
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/adnet/core/f;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 286
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/adnet/core/f;->e(Ljava/lang/String;)V

    if-nez v0, :cond_0

    const-string v0, "Could not delete cache entry for key=%s, filename=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    .line 290
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/adnet/core/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    .line 288
    invoke-static {v0, v1}, Lcom/bytedance/sdk/adnet/core/o;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 311
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/bytedance/sdk/adnet/core/f;->c:Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/adnet/core/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
