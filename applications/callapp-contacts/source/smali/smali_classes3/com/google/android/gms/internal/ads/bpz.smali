.class public final Lcom/google/android/gms/internal/ads/bpz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/css;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/css<",
        "Lcom/google/android/gms/internal/ads/bqc;",
        "Lcom/google/android/gms/internal/ads/bqb;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/gms/internal/ads/th;

.field private final d:Ljava/lang/String;

.field private final e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/th;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bpz;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bpz;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bpz;->c:Lcom/google/android/gms/internal/ads/th;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bpz;->d:Ljava/lang/String;

    .line 6
    iput p5, p0, Lcom/google/android/gms/internal/ads/bpz;->e:I

    return-void
.end method

.method private final a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/ta;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/bqb;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzcnp;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    const-string v3, "Received error HTTP response code: "

    const-string v4, "doritos_v2"

    const-string v5, "doritos"

    :try_start_0
    const-string v6, "http_timeout_millis"

    const v7, 0xea60

    .line 9
    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 1027
    iget v7, v0, Lcom/google/android/gms/internal/ads/ta;->g:I

    const/4 v8, -0x2

    const/4 v15, 0x1

    if-eq v7, v8, :cond_2

    .line 2027
    iget v2, v0, Lcom/google/android/gms/internal/ads/ta;->g:I

    if-ne v2, v15, :cond_1

    .line 2028
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/ta;->a:Ljava/util/List;

    if-eqz v2, :cond_0

    const-string v2, ", "

    .line 3028
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ta;->a:Ljava/util/List;

    .line 14
    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzex(Ljava/lang/String;)V

    .line 15
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcnp;

    sget-object v2, Lcom/google/android/gms/internal/ads/cqj;->zzhow:Lcom/google/android/gms/internal/ads/cqj;

    const-string v3, "Error building request URL."

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzcnp;-><init>(Lcom/google/android/gms/internal/ads/cqj;Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcnp;

    sget-object v2, Lcom/google/android/gms/internal/ads/cqj;->zzhov:Lcom/google/android/gms/internal/ads/cqj;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzcnp;-><init>(Lcom/google/android/gms/internal/ads/cqj;)V

    throw v0

    .line 17
    :cond_2
    new-instance v7, Lcom/google/android/gms/internal/ads/bqb;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/bqb;-><init>()V

    const-string v8, "SDK version: "

    .line 18
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/bpz;->b:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v8, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_3
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v8, v9

    :goto_0
    invoke-static {v8}, Lcom/google/android/gms/ads/internal/util/zzd;->zzey(Ljava/lang/String;)V

    const-string v8, "AdRequestServiceImpl: Sending request: "

    .line 19
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v8, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_4
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v8, v9

    :goto_1
    invoke-static {v8}, Lcom/google/android/gms/ads/internal/util/zzd;->zzdz(Ljava/lang/String;)V

    .line 20
    new-instance v8, Ljava/net/URL;

    move-object/from16 v9, p1

    invoke-direct {v8, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 21
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    const/4 v9, 0x0

    .line 23
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lcom/google/android/gms/common/util/f;

    move-result-object v10

    invoke-interface {v10}, Lcom/google/android/gms/common/util/f;->b()J

    move-result-wide v16

    const/16 v18, 0x0

    .line 25
    :goto_2
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    move-object v13, v8

    check-cast v13, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 26
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    move-result-object v8

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/bpz;->a:Landroid/content/Context;

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/bpz;->b:Ljava/lang/String;
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzcnp; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    const/4 v11, 0x0

    const/16 v19, 0x0

    move-object v12, v13

    move-object v15, v13

    move/from16 v13, v19

    move-object v1, v14

    move v14, v6

    .line 28
    :try_start_2
    invoke-virtual/range {v8 .. v14}, Lcom/google/android/gms/ads/internal/util/zzj;->zza(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;ZI)V

    .line 3033
    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/ta;->e:Z

    if-eqz v8, :cond_5

    .line 29
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "Cookie"

    move-object/from16 v9, p4

    .line 30
    invoke-virtual {v15, v8, v9}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    move-object/from16 v9, p4

    .line 4032
    :goto_3
    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/ta;->d:Z
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzcnp; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    const-string v10, ""

    if-eqz v8, :cond_8

    :try_start_3
    const-string v8, "pii"

    .line 32
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 34
    invoke-virtual {v8, v5, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    const-string v11, "x-afma-drt-cookie"

    .line 36
    invoke-virtual {v8, v5, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 37
    invoke-virtual {v15, v11, v12}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :cond_6
    invoke-virtual {v8, v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_8

    const-string v11, "x-afma-drt-v2-cookie"

    .line 40
    invoke-virtual {v8, v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 41
    invoke-virtual {v15, v11, v8}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    const-string v8, "DSID signal does not exist."

    .line 42
    invoke-static {v8}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    :cond_8
    :goto_4
    if-eqz v0, :cond_9

    .line 5030
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/ta;->c:Ljava/lang/String;

    .line 45
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_9

    const/4 v11, 0x1

    .line 46
    invoke-virtual {v15, v11}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 6030
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/ta;->c:Ljava/lang/String;

    .line 47
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    .line 48
    array-length v12, v11

    invoke-virtual {v15, v12}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V
    :try_end_3
    .catch Lcom/google/android/gms/internal/ads/zzcnp; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 50
    :try_start_4
    new-instance v12, Ljava/io/BufferedOutputStream;

    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 51
    :try_start_5
    invoke-virtual {v12, v11}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 52
    :try_start_6
    invoke-static {v12}, Lcom/google/android/gms/common/util/l;->a(Ljava/io/Closeable;)V

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v8, v12

    goto :goto_5

    :catchall_1
    move-exception v0

    const/4 v8, 0x0

    .line 54
    :goto_5
    invoke-static {v8}, Lcom/google/android/gms/common/util/l;->a(Ljava/io/Closeable;)V

    .line 55
    throw v0

    :cond_9
    const/4 v11, 0x0

    .line 56
    :goto_6
    new-instance v12, Lcom/google/android/gms/internal/ads/yu;

    invoke-direct {v12}, Lcom/google/android/gms/internal/ads/yu;-><init>()V

    .line 57
    invoke-virtual {v12, v15, v11}, Lcom/google/android/gms/internal/ads/yu;->a(Ljava/net/HttpURLConnection;[B)V

    .line 58
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v11

    .line 59
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v13

    .line 60
    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 61
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v8, v19

    check-cast v8, Ljava/lang/String;

    .line 62
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    .line 63
    invoke-interface {v1, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 64
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_7

    .line 65
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p2

    goto :goto_7

    .line 67
    :cond_b
    invoke-virtual {v12, v15, v11}, Lcom/google/android/gms/internal/ads/yu;->a(Ljava/net/HttpURLConnection;I)V

    .line 68
    iput v11, v7, Lcom/google/android/gms/internal/ads/bqb;->a:I

    .line 69
    iput-object v1, v7, Lcom/google/android/gms/internal/ads/bqb;->b:Ljava/util/Map;

    .line 70
    iput-object v10, v7, Lcom/google/android/gms/internal/ads/bqb;->c:Ljava/lang/String;
    :try_end_6
    .catch Lcom/google/android/gms/internal/ads/zzcnp; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    const/16 v0, 0xc8

    const/16 v8, 0x12c

    if-lt v11, v0, :cond_e

    if-ge v11, v8, :cond_e

    .line 73
    :try_start_7
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 74
    :try_start_8
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzj;->zza(Ljava/io/InputStreamReader;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 75
    :try_start_9
    invoke-static {v1}, Lcom/google/android/gms/common/util/l;->a(Ljava/io/Closeable;)V

    .line 79
    invoke-virtual {v12, v0}, Lcom/google/android/gms/internal/ads/yu;->a(Ljava/lang/String;)V

    .line 80
    iput-object v0, v7, Lcom/google/android/gms/internal/ads/bqb;->c:Ljava/lang/String;

    .line 81
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->df:Lcom/google/android/gms/internal/ads/af;

    .line 82
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 83
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_8

    .line 84
    :cond_c
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcnp;

    sget-object v1, Lcom/google/android/gms/internal/ads/cqj;->zzhox:Lcom/google/android/gms/internal/ads/cqj;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzcnp;-><init>(Lcom/google/android/gms/internal/ads/cqj;)V

    throw v0

    .line 85
    :cond_d
    :goto_8
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lcom/google/android/gms/common/util/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/f;->b()J

    move-result-wide v0

    sub-long v0, v0, v16

    iput-wide v0, v7, Lcom/google/android/gms/internal/ads/bqb;->d:J
    :try_end_9
    .catch Lcom/google/android/gms/internal/ads/zzcnp; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 87
    :try_start_a
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    return-object v7

    :catchall_2
    move-exception v0

    move-object v8, v1

    goto :goto_9

    :catchall_3
    move-exception v0

    const/4 v8, 0x0

    .line 77
    :goto_9
    :try_start_b
    invoke-static {v8}, Lcom/google/android/gms/common/util/l;->a(Ljava/io/Closeable;)V

    .line 78
    throw v0

    :cond_e
    if-lt v11, v8, :cond_11

    const/16 v0, 0x190

    if-ge v11, v0, :cond_11

    const-string v0, "Location"

    .line 91
    invoke-virtual {v15, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_10

    .line 95
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    add-int/lit8 v10, v18, 0x1

    .line 100
    sget-object v11, Lcom/google/android/gms/internal/ads/aq;->cS:Lcom/google/android/gms/internal/ads/af;

    .line 101
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v12

    invoke-virtual {v12, v11}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v11

    .line 102
    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11
    :try_end_b
    .catch Lcom/google/android/gms/internal/ads/zzcnp; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    if-gt v10, v11, :cond_f

    .line 105
    :try_start_c
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    move-object/from16 v0, p2

    move-object v14, v1

    move/from16 v18, v10

    const/4 v15, 0x1

    move-object/from16 v1, p0

    goto/16 :goto_2

    :cond_f
    :try_start_d
    const-string v0, "Too many redirects."

    .line 103
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    .line 104
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcnp;

    sget-object v1, Lcom/google/android/gms/internal/ads/cqj;->zzhov:Lcom/google/android/gms/internal/ads/cqj;

    const-string v2, "Too many redirects"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcnp;-><init>(Lcom/google/android/gms/internal/ads/cqj;Ljava/lang/String;)V

    throw v0

    :cond_10
    const-string v0, "No location header to follow redirect."

    .line 93
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    .line 94
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcnp;

    sget-object v1, Lcom/google/android/gms/internal/ads/cqj;->zzhov:Lcom/google/android/gms/internal/ads/cqj;

    const-string v2, "No location header to follow redirect"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcnp;-><init>(Lcom/google/android/gms/internal/ads/cqj;Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    .line 99
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcnp;

    sget-object v2, Lcom/google/android/gms/internal/ads/cqj;->zzhov:Lcom/google/android/gms/internal/ads/cqj;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzcnp;-><init>(Lcom/google/android/gms/internal/ads/cqj;Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catch Lcom/google/android/gms/internal/ads/zzcnp; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :catch_0
    move-exception v0

    goto :goto_a

    :catchall_4
    move-exception v0

    move-object v15, v13

    goto :goto_b

    :catch_1
    move-exception v0

    move-object v15, v13

    .line 109
    :goto_a
    :try_start_e
    sget-object v1, Lcom/google/android/gms/internal/ads/aq;->eT:Lcom/google/android/gms/internal/ads/af;

    .line 110
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v1

    .line 111
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 112
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lcom/google/android/gms/common/util/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/f;->b()J

    move-result-wide v0

    sub-long v0, v0, v16

    iput-wide v0, v7, Lcom/google/android/gms/internal/ads/bqb;->d:J
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 114
    :try_start_f
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2

    return-object v7

    .line 117
    :cond_12
    :try_start_10
    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    :catchall_5
    move-exception v0

    .line 118
    :goto_b
    :try_start_11
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 120
    throw v0
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_2

    :catch_2
    move-exception v0

    const-string v1, "Error while connecting to ad server: "

    .line 122
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_13

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_13
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 123
    :goto_c
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    .line 124
    new-instance v2, Lcom/google/android/gms/internal/ads/zzcnp;

    sget-object v3, Lcom/google/android/gms/internal/ads/cqj;->zzhov:Lcom/google/android/gms/internal/ads/cqj;

    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/gms/internal/ads/zzcnp;-><init>(Lcom/google/android/gms/internal/ads/cqj;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 125
    check-cast p1, Lcom/google/android/gms/internal/ads/bqc;

    .line 7005
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/bqc;->b:Lcom/google/android/gms/internal/ads/ta;

    .line 7031
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ta;->f:Ljava/lang/String;

    .line 8005
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/bqc;->b:Lcom/google/android/gms/internal/ads/ta;

    .line 8006
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/bqc;->a:Lorg/json/JSONObject;

    .line 127
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bpz;->d:Ljava/lang/String;

    .line 128
    invoke-direct {p0, v0, v1, p1, v2}, Lcom/google/android/gms/internal/ads/bpz;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/ta;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/bqb;

    move-result-object p1

    return-object p1
.end method
