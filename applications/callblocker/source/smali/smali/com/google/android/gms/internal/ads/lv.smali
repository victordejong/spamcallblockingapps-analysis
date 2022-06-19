.class final Lcom/google/android/gms/internal/ads/lv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field a:J

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:J

.field final e:J

.field final f:J

.field final g:J

.field final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/dnv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/bzv;)V
    .locals 16

    .prologue
    .line 10
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/bzv;->b:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/bzv;->c:J

    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/bzv;->d:J

    move-object/from16 v0, p2

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/bzv;->e:J

    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/bzv;->f:J

    .line 12
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/bzv;->h:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 13
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/bzv;->h:Ljava/util/List;

    :cond_0
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    .line 20
    invoke-direct/range {v3 .. v14}, Lcom/google/android/gms/internal/ads/lv;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V

    .line 21
    return-void

    .line 14
    :cond_1
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/bzv;->g:Ljava/util/Map;

    .line 15
    new-instance v14, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v14, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 17
    new-instance v15, Lcom/google/android/gms/internal/ads/dnv;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v15, v3, v2}, Lcom/google/android/gms/internal/ads/dnv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJJJ",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/dnv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lv;->b:Ljava/lang/String;

    .line 3
    const-string/jumbo v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/lv;->c:Ljava/lang/String;

    .line 4
    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/lv;->d:J

    .line 5
    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/lv;->e:J

    .line 6
    iput-wide p7, p0, Lcom/google/android/gms/internal/ads/lv;->f:J

    .line 7
    iput-wide p9, p0, Lcom/google/android/gms/internal/ads/lv;->g:J

    .line 8
    iput-object p11, p0, Lcom/google/android/gms/internal/ads/lv;->h:Ljava/util/List;

    .line 9
    return-void
.end method

.method static a(Lcom/google/android/gms/internal/ads/os;)Lcom/google/android/gms/internal/ads/lv;
    .locals 13

    .prologue
    .line 22
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/jy;->a(Ljava/io/InputStream;)I

    move-result v0

    .line 23
    const v1, 0x20150306

    if-eq v0, v1, :cond_0

    .line 24
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 25
    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/jy;->a(Lcom/google/android/gms/internal/ads/os;)Ljava/lang/String;

    move-result-object v2

    .line 26
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/jy;->a(Lcom/google/android/gms/internal/ads/os;)Ljava/lang/String;

    move-result-object v3

    .line 27
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/jy;->b(Ljava/io/InputStream;)J

    move-result-wide v4

    .line 28
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/jy;->b(Ljava/io/InputStream;)J

    move-result-wide v6

    .line 29
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/jy;->b(Ljava/io/InputStream;)J

    move-result-wide v8

    .line 30
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/jy;->b(Ljava/io/InputStream;)J

    move-result-wide v10

    .line 31
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/jy;->b(Lcom/google/android/gms/internal/ads/os;)Ljava/util/List;

    move-result-object v12

    .line 32
    new-instance v1, Lcom/google/android/gms/internal/ads/lv;

    invoke-direct/range {v1 .. v12}, Lcom/google/android/gms/internal/ads/lv;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V

    return-object v1
.end method


# virtual methods
.method final a(Ljava/io/OutputStream;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 33
    const v0, 0x20150306

    :try_start_0
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/jy;->a(Ljava/io/OutputStream;I)V

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lv;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/jy;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lv;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/jy;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 36
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/lv;->d:J

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/jy;->a(Ljava/io/OutputStream;J)V

    .line 37
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/lv;->e:J

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/jy;->a(Ljava/io/OutputStream;J)V

    .line 38
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/lv;->f:J

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/jy;->a(Ljava/io/OutputStream;J)V

    .line 39
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/lv;->g:J

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/jy;->a(Ljava/io/OutputStream;J)V

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lv;->h:Ljava/util/List;

    .line 41
    if-eqz v0, :cond_1

    .line 42
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {p1, v3}, Lcom/google/android/gms/internal/ads/jy;->a(Ljava/io/OutputStream;I)V

    .line 43
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dnv;

    .line 44
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dnv;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/google/android/gms/internal/ads/jy;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dnv;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/jy;->a(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 50
    :catch_0
    move-exception v0

    .line 51
    const-string/jumbo v3, "%s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/ez;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 52
    :goto_2
    return v0

    .line 35
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lv;->c:Ljava/lang/String;

    goto :goto_0

    .line 47
    :cond_1
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/jy;->a(Ljava/io/OutputStream;I)V

    .line 48
    :cond_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    .line 49
    goto :goto_2
.end method
