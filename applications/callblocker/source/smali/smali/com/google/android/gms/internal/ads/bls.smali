.class public final Lcom/google/android/gms/internal/ads/bls;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ckg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/ckg",
        "<",
        "Lcom/google/android/gms/internal/ads/blr;",
        "Lcom/google/android/gms/internal/ads/blu;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/gms/internal/ads/qo;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/qo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bls;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bls;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bls;->c:Lcom/google/android/gms/internal/ads/qo;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bls;->d:Ljava/lang/String;

    .line 6
    return-void
.end method

.method private final a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/qc;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/blu;
    .locals 14

    .prologue
    .line 7
    .line 8
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/qc;->a()I

    move-result v2

    const/4 v3, -0x2

    if-eq v2, v3, :cond_2

    .line 9
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/qc;->a()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 10
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/qc;->b()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11
    const-string/jumbo v2, ", "

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/qc;->b()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;)V

    .line 12
    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/ads/zzclp;

    const-string/jumbo v3, "Error building request URL."

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/qc;->a()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzclp;-><init>(Ljava/lang/String;I)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :catch_0
    move-exception v2

    move-object v3, v2

    .line 107
    const-string/jumbo v4, "Error while connecting to ad server: "

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_11

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    .line 108
    new-instance v4, Lcom/google/android/gms/internal/ads/zzclp;

    const-string/jumbo v5, "Error connecting to ad server:"

    .line 109
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    const/4 v3, 0x2

    invoke-direct {v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzclp;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 13
    :cond_1
    :try_start_1
    new-instance v2, Lcom/google/android/gms/internal/ads/zzclp;

    const-string/jumbo v3, "Internal error."

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzclp;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 14
    :cond_2
    new-instance v7, Lcom/google/android/gms/internal/ads/blu;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/blu;-><init>()V

    .line 15
    const-string/jumbo v3, "SDK version: "

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bls;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;)V

    .line 16
    const-string/jumbo v3, "AdRequestServiceImpl: Sending request: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/uu;->b(Ljava/lang/String;)V

    .line 17
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 18
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->j()Lcom/google/android/gms/common/util/e;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v10

    move v6, v2

    move-object v4, v3

    .line 21
    :goto_4
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bls;->c:Lcom/google/android/gms/internal/ads/qo;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/qo;->a()V

    .line 22
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v4, v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 23
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bls;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/bls;->b:Ljava/lang/String;

    const/4 v9, 0x0

    .line 24
    invoke-virtual {v2, v3, v5, v9, v4}, Lcom/google/android/gms/internal/ads/ve;->a(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;)V

    .line 25
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 26
    const-string/jumbo v2, "Cookie"

    move-object/from16 v0, p4

    invoke-virtual {v4, v2, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/qc;->f()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 28
    const-string/jumbo v2, "pii"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 29
    if-eqz v2, :cond_9

    .line 30
    const-string/jumbo v3, "doritos"

    const-string/jumbo v5, ""

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 31
    const-string/jumbo v3, "x-afma-drt-cookie"

    const-string/jumbo v5, "doritos"

    const-string/jumbo v9, ""

    .line 32
    invoke-virtual {v2, v5, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 33
    invoke-virtual {v4, v3, v5}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :cond_4
    const-string/jumbo v3, "doritos_v2"

    const-string/jumbo v5, ""

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 35
    const-string/jumbo v3, "x-afma-drt-v2-cookie"

    const-string/jumbo v5, "doritos_v2"

    const-string/jumbo v9, ""

    .line 36
    invoke-virtual {v2, v5, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 37
    invoke-virtual {v4, v3, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_5
    :goto_5
    const/4 v2, 0x0

    .line 40
    if-eqz p2, :cond_6

    .line 41
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/qc;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 42
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 43
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/qc;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 44
    array-length v3, v2

    invoke-virtual {v4, v3}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 45
    const/4 v5, 0x0

    .line 46
    :try_start_3
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 47
    :try_start_4
    invoke-virtual {v3, v2}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 48
    :try_start_5
    invoke-static {v3}, Lcom/google/android/gms/common/util/k;->a(Ljava/io/Closeable;)V

    .line 52
    :cond_6
    new-instance v9, Lcom/google/android/gms/internal/ads/xv;

    invoke-direct {v9}, Lcom/google/android/gms/internal/ads/xv;-><init>()V

    .line 53
    invoke-virtual {v9, v4, v2}, Lcom/google/android/gms/internal/ads/xv;->a(Ljava/net/HttpURLConnection;[B)V

    .line 54
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v12

    .line 55
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    .line 56
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 57
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 58
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 59
    invoke-interface {v8, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 60
    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_6

    .line 103
    :catchall_0
    move-exception v2

    :try_start_6
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 104
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bls;->c:Lcom/google/android/gms/internal/ads/qo;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/qo;->b()V

    .line 105
    throw v2

    .line 15
    :cond_7
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 16
    :cond_8
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_3

    .line 38
    :cond_9
    :try_start_7
    const-string/jumbo v2, "DSID signal does not exist."

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 50
    :catchall_1
    move-exception v2

    move-object v3, v5

    :goto_7
    invoke-static {v3}, Lcom/google/android/gms/common/util/k;->a(Ljava/io/Closeable;)V

    .line 51
    throw v2

    .line 61
    :cond_a
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v8, v3, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 63
    :cond_b
    invoke-virtual {v9, v4, v12}, Lcom/google/android/gms/internal/ads/xv;->a(Ljava/net/HttpURLConnection;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 64
    const/16 v2, 0xc8

    if-lt v12, v2, :cond_d

    const/16 v2, 0x12c

    if-ge v12, v2, :cond_d

    .line 65
    const/4 v5, 0x0

    .line 66
    :try_start_8
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 67
    :try_start_9
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/ve;->a(Ljava/io/InputStreamReader;)Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-result-object v2

    .line 68
    :try_start_a
    invoke-static {v3}, Lcom/google/android/gms/common/util/k;->a(Ljava/io/Closeable;)V

    .line 72
    invoke-virtual {v9, v2}, Lcom/google/android/gms/internal/ads/xv;->a(Ljava/lang/String;)V

    .line 73
    iput v12, v7, Lcom/google/android/gms/internal/ads/blu;->a:I

    .line 74
    iput-object v2, v7, Lcom/google/android/gms/internal/ads/blu;->c:Ljava/lang/String;

    .line 75
    iput-object v8, v7, Lcom/google/android/gms/internal/ads/blu;->b:Ljava/util/Map;

    .line 76
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    sget-object v2, Lcom/google/android/gms/internal/ads/edi;->cv:Lcom/google/android/gms/internal/ads/ect;

    .line 77
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v2

    .line 78
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_c

    .line 79
    new-instance v2, Lcom/google/android/gms/internal/ads/zzclp;

    const-string/jumbo v3, "No Fill"

    const/4 v5, 0x3

    invoke-direct {v2, v3, v5}, Lcom/google/android/gms/internal/ads/zzclp;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 70
    :catchall_2
    move-exception v2

    move-object v3, v5

    :goto_8
    invoke-static {v3}, Lcom/google/android/gms/common/util/k;->a(Ljava/io/Closeable;)V

    .line 71
    throw v2

    .line 80
    :cond_c
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->j()Lcom/google/android/gms/common/util/e;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v2

    sub-long/2addr v2, v10

    iput-wide v2, v7, Lcom/google/android/gms/internal/ads/blu;->d:J
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 82
    :try_start_b
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 83
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bls;->c:Lcom/google/android/gms/internal/ads/qo;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/qo;->b()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    .line 84
    return-object v7

    .line 85
    :cond_d
    const/16 v2, 0x12c

    if-lt v12, v2, :cond_f

    const/16 v2, 0x190

    if-ge v12, v2, :cond_f

    .line 86
    :try_start_c
    const-string/jumbo v2, "Location"

    invoke-virtual {v4, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 87
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 88
    const-string/jumbo v2, "No location header to follow redirect."

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    .line 89
    new-instance v2, Lcom/google/android/gms/internal/ads/zzclp;

    const-string/jumbo v3, "No location header to follow redirect"

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzclp;-><init>(Ljava/lang/String;)V

    throw v2

    .line 90
    :cond_e
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 91
    add-int/lit8 v3, v6, 0x1

    .line 95
    sget-object v2, Lcom/google/android/gms/internal/ads/edi;->cm:Lcom/google/android/gms/internal/ads/ect;

    .line 96
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v2

    .line 97
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v3, v2, :cond_10

    .line 98
    const-string/jumbo v2, "Too many redirects."

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    .line 99
    new-instance v2, Lcom/google/android/gms/internal/ads/zzclp;

    const-string/jumbo v3, "Too many redirects"

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzclp;-><init>(Ljava/lang/String;)V

    throw v2

    .line 93
    :cond_f
    const/16 v2, 0x2e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Received error HTTP response code: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    .line 94
    new-instance v2, Lcom/google/android/gms/internal/ads/zzclp;

    const/16 v3, 0x2e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Received error HTTP response code: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzclp;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 100
    :cond_10
    :try_start_d
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 101
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bls;->c:Lcom/google/android/gms/internal/ads/qo;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/qo;->b()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0

    move v6, v3

    move-object v4, v5

    .line 102
    goto/16 :goto_4

    .line 107
    :cond_11
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 109
    :cond_12
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 70
    :catchall_3
    move-exception v2

    goto/16 :goto_8

    .line 50
    :catchall_4
    move-exception v2

    goto/16 :goto_7
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 110
    check-cast p1, Lcom/google/android/gms/internal/ads/blr;

    .line 112
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/blr;->a(Lcom/google/android/gms/internal/ads/blr;)Lcom/google/android/gms/internal/ads/qc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/qc;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/blr;->a(Lcom/google/android/gms/internal/ads/blr;)Lcom/google/android/gms/internal/ads/qc;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/blr;->b(Lcom/google/android/gms/internal/ads/blr;)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bls;->d:Ljava/lang/String;

    .line 113
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/bls;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/qc;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/blu;

    move-result-object v0

    .line 114
    return-object v0
.end method
