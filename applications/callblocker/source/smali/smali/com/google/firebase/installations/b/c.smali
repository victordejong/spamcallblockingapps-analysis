.class public Lcom/google/firebase/installations/b/c;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-installations@@16.2.1"


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/nio/charset/Charset;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Lcom/google/firebase/e/h;

.field private final e:Lcom/google/firebase/b/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const-string/jumbo v0, "[0-9]+s"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/installations/b/c;->a:Ljava/util/regex/Pattern;

    .line 87
    const-string/jumbo v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/installations/b/c;->b:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/firebase/e/h;Lcom/google/firebase/b/c;)V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/google/firebase/installations/b/c;->c:Landroid/content/Context;

    .line 103
    iput-object p2, p0, Lcom/google/firebase/installations/b/c;->d:Lcom/google/firebase/e/h;

    .line 104
    iput-object p3, p0, Lcom/google/firebase/installations/b/c;->e:Lcom/google/firebase/b/c;

    .line 105
    return-void
.end method

.method static a(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 455
    sget-object v0, Lcom/google/firebase/installations/b/c;->a:Ljava/util/regex/Pattern;

    .line 456
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const-string/jumbo v1, "Invalid Expiration Timestamp."

    .line 455
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/s;->b(ZLjava/lang/Object;)V

    .line 458
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 459
    :cond_0
    const-wide/16 v0, 0x0

    .line 458
    :goto_0
    return-wide v0

    .line 460
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method private a(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 4

    .prologue
    const/16 v1, 0x2710

    .line 349
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 350
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 351
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 352
    const-string/jumbo v1, "Content-Type"

    const-string/jumbo v2, "application/json"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const-string/jumbo v1, "Accept"

    const-string/jumbo v2, "application/json"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string/jumbo v1, "Content-Encoding"

    const-string/jumbo v2, "gzip"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string/jumbo v1, "X-Android-Package"

    iget-object v2, p0, Lcom/google/firebase/installations/b/c;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iget-object v1, p0, Lcom/google/firebase/installations/b/c;->e:Lcom/google/firebase/b/c;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/firebase/installations/b/c;->d:Lcom/google/firebase/e/h;

    if-eqz v1, :cond_0

    .line 357
    iget-object v1, p0, Lcom/google/firebase/installations/b/c;->e:Lcom/google/firebase/b/c;

    const-string/jumbo v2, "fire-installations-id"

    invoke-interface {v1, v2}, Lcom/google/firebase/b/c;->a(Ljava/lang/String;)Lcom/google/firebase/b/c$a;

    move-result-object v1

    .line 358
    sget-object v2, Lcom/google/firebase/b/c$a;->a:Lcom/google/firebase/b/c$a;

    if-eq v1, v2, :cond_0

    .line 359
    const-string/jumbo v2, "x-firebase-client"

    iget-object v3, p0, Lcom/google/firebase/installations/b/c;->d:Lcom/google/firebase/e/h;

    invoke-interface {v3}, Lcom/google/firebase/e/h;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-string/jumbo v2, "x-firebase-client-log-type"

    .line 361
    invoke-virtual {v1}, Lcom/google/firebase/b/c$a;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 360
    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :cond_0
    const-string/jumbo v1, "X-Android-Cert"

    invoke-direct {p0}, Lcom/google/firebase/installations/b/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const-string/jumbo v1, "x-goog-api-key"

    invoke-virtual {v0, v1, p2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    return-object v0
.end method

.method private static a()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 226
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 227
    const-string/jumbo v1, "sdkVersion"

    const-string/jumbo v2, "a:16.2.1"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 229
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 230
    const-string/jumbo v2, "installation"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 231
    return-object v1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 199
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 200
    const-string/jumbo v1, "fid"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 201
    const-string/jumbo v1, "appId"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 202
    const-string/jumbo v1, "authVersion"

    const-string/jumbo v2, "FIS_v2"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 203
    const-string/jumbo v1, "sdkVersion"

    const-string/jumbo v2, "a:16.2.1"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 204
    return-object v0
.end method

.method private a(Ljava/net/HttpURLConnection;)V
    .locals 3

    .prologue
    .line 209
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 210
    if-nez v0, :cond_0

    .line 211
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Cannot send GenerateAuthToken request to FIS. No OutputStream available."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_0
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 217
    :try_start_0
    invoke-static {}, Lcom/google/firebase/installations/b/c;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 223
    return-void

    .line 218
    :catch_0
    move-exception v0

    .line 219
    :try_start_1
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    throw v0
.end method

.method private a(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 180
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 181
    if-nez v0, :cond_0

    .line 182
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Cannot send CreateInstallation request to FIS. No OutputStream available."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_0
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 189
    :try_start_0
    invoke-static {p2, p3}, Lcom/google/firebase/installations/b/c;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 188
    invoke-virtual {v1, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 195
    return-void

    .line 190
    :catch_0
    move-exception v0

    .line 191
    :try_start_1
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    throw v0
.end method

.method private b(Ljava/net/HttpURLConnection;)Lcom/google/firebase/installations/b/d;
    .locals 6

    .prologue
    .line 371
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    sget-object v3, Lcom/google/firebase/installations/b/c;->b:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 372
    invoke-static {}, Lcom/google/firebase/installations/b/e;->d()Lcom/google/firebase/installations/b/e$a;

    move-result-object v1

    .line 373
    invoke-static {}, Lcom/google/firebase/installations/b/d;->f()Lcom/google/firebase/installations/b/d$a;

    move-result-object v2

    .line 374
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    .line 375
    :goto_0
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 376
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    .line 377
    const-string/jumbo v4, "name"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 378
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/installations/b/d$a;->a(Ljava/lang/String;)Lcom/google/firebase/installations/b/d$a;

    goto :goto_0

    .line 379
    :cond_0
    const-string/jumbo v4, "fid"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 380
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/installations/b/d$a;->b(Ljava/lang/String;)Lcom/google/firebase/installations/b/d$a;

    goto :goto_0

    .line 381
    :cond_1
    const-string/jumbo v4, "refreshToken"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 382
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/installations/b/d$a;->c(Ljava/lang/String;)Lcom/google/firebase/installations/b/d$a;

    goto :goto_0

    .line 383
    :cond_2
    const-string/jumbo v4, "authToken"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 384
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    .line 385
    :goto_1
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 386
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    .line 387
    const-string/jumbo v4, "token"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 388
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/firebase/installations/b/e$a;->a(Ljava/lang/String;)Lcom/google/firebase/installations/b/e$a;

    goto :goto_1

    .line 389
    :cond_3
    const-string/jumbo v4, "expiresIn"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 391
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/firebase/installations/b/c;->a(Ljava/lang/String;)J

    move-result-wide v4

    .line 390
    invoke-virtual {v1, v4, v5}, Lcom/google/firebase/installations/b/e$a;->a(J)Lcom/google/firebase/installations/b/e$a;

    goto :goto_1

    .line 393
    :cond_4
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_1

    .line 396
    :cond_5
    invoke-virtual {v1}, Lcom/google/firebase/installations/b/e$a;->a()Lcom/google/firebase/installations/b/e;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/installations/b/d$a;->a(Lcom/google/firebase/installations/b/e;)Lcom/google/firebase/installations/b/d$a;

    .line 397
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    goto/16 :goto_0

    .line 399
    :cond_6
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 402
    :cond_7
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    .line 403
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V

    .line 405
    sget-object v0, Lcom/google/firebase/installations/b/d$b;->a:Lcom/google/firebase/installations/b/d$b;

    invoke-virtual {v2, v0}, Lcom/google/firebase/installations/b/d$a;->a(Lcom/google/firebase/installations/b/d$b;)Lcom/google/firebase/installations/b/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/installations/b/d$a;->a()Lcom/google/firebase/installations/b/d;

    move-result-object v0

    return-object v0
.end method

.method private b()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 434
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/installations/b/c;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/firebase/installations/b/c;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/common/util/a;->a(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    .line 436
    if-nez v1, :cond_0

    .line 437
    const-string/jumbo v1, "ContentValues"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Could not get fingerprint hash for package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/installations/b/c;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :goto_0
    return-object v0

    .line 440
    :cond_0
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/common/util/j;->a([BZ)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 442
    :catch_0
    move-exception v1

    .line 443
    const-string/jumbo v2, "ContentValues"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No such package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/firebase/installations/b/c;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private c(Ljava/net/HttpURLConnection;)Lcom/google/firebase/installations/b/e;
    .locals 4

    .prologue
    .line 410
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    sget-object v3, Lcom/google/firebase/installations/b/c;->b:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 411
    invoke-static {}, Lcom/google/firebase/installations/b/e;->d()Lcom/google/firebase/installations/b/e$a;

    move-result-object v1

    .line 412
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    .line 413
    :goto_0
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 414
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 415
    const-string/jumbo v3, "token"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 416
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/installations/b/e$a;->a(Ljava/lang/String;)Lcom/google/firebase/installations/b/e$a;

    goto :goto_0

    .line 417
    :cond_0
    const-string/jumbo v3, "expiresIn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 418
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/firebase/installations/b/c;->a(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/installations/b/e$a;->a(J)Lcom/google/firebase/installations/b/e$a;

    goto :goto_0

    .line 420
    :cond_1
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 423
    :cond_2
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    .line 424
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V

    .line 426
    sget-object v0, Lcom/google/firebase/installations/b/e$b;->a:Lcom/google/firebase/installations/b/e$b;

    invoke-virtual {v1, v0}, Lcom/google/firebase/installations/b/e$a;->a(Lcom/google/firebase/installations/b/e$b;)Lcom/google/firebase/installations/b/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/installations/b/e$a;->a()Lcom/google/firebase/installations/b/e;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/installations/b/d;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 133
    const-string/jumbo v1, "projects/%s/installations"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 135
    new-instance v2, Ljava/net/URL;

    const-string/jumbo v3, "https://%s/%s/%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "firebaseinstallations.googleapis.com"

    aput-object v5, v4, v0

    const-string/jumbo v5, "v1"

    aput-object v5, v4, v6

    const/4 v5, 0x2

    aput-object v1, v4, v5

    .line 137
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 142
    :goto_0
    if-gt v0, v6, :cond_4

    .line 143
    invoke-direct {p0, v2, p1}, Lcom/google/firebase/installations/b/c;->a(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 146
    :try_start_0
    const-string/jumbo v3, "POST"

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 147
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 150
    if-eqz p5, :cond_0

    .line 151
    const-string/jumbo v3, "x-goog-fis-android-iid-migration-auth"

    invoke-virtual {v1, v3, p5}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :cond_0
    invoke-direct {p0, v1, p2, p4}, Lcom/google/firebase/installations/b/c;->a(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 158
    const/16 v4, 0xc8

    if-ne v3, v4, :cond_1

    .line 159
    invoke-direct {p0, v1}, Lcom/google/firebase/installations/b/c;->b(Ljava/net/HttpURLConnection;)Lcom/google/firebase/installations/b/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 170
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 168
    :goto_1
    return-object v0

    .line 162
    :cond_1
    const/16 v4, 0x1ad

    if-eq v3, v4, :cond_2

    const/16 v4, 0x1f4

    if-lt v3, v4, :cond_3

    const/16 v4, 0x258

    if-ge v3, v4, :cond_3

    .line 163
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 170
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 168
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/google/firebase/installations/b/d;->f()Lcom/google/firebase/installations/b/d$a;

    move-result-object v0

    sget-object v2, Lcom/google/firebase/installations/b/d$b;->b:Lcom/google/firebase/installations/b/d$b;

    invoke-virtual {v0, v2}, Lcom/google/firebase/installations/b/d$a;->a(Lcom/google/firebase/installations/b/d$b;)Lcom/google/firebase/installations/b/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/installations/b/d$a;->a()Lcom/google/firebase/installations/b/d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 170
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0

    .line 174
    :cond_4
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/installations/b/e;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 307
    const-string/jumbo v1, "projects/%s/installations/%s/authTokens:generate"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p3, v2, v0

    aput-object p2, v2, v6

    .line 308
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 310
    new-instance v2, Ljava/net/URL;

    const-string/jumbo v3, "https://%s/%s/%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "firebaseinstallations.googleapis.com"

    aput-object v5, v4, v0

    const-string/jumbo v5, "v1"

    aput-object v5, v4, v6

    aput-object v1, v4, v7

    .line 312
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 317
    :goto_0
    if-gt v0, v6, :cond_5

    .line 318
    invoke-direct {p0, v2, p1}, Lcom/google/firebase/installations/b/c;->a(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 320
    :try_start_0
    const-string/jumbo v3, "POST"

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 321
    const-string/jumbo v3, "Authorization"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "FIS_v2 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-direct {p0, v1}, Lcom/google/firebase/installations/b/c;->a(Ljava/net/HttpURLConnection;)V

    .line 325
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 327
    const/16 v4, 0xc8

    if-ne v3, v4, :cond_0

    .line 328
    invoke-direct {p0, v1}, Lcom/google/firebase/installations/b/c;->c(Ljava/net/HttpURLConnection;)Lcom/google/firebase/installations/b/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 342
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 340
    :goto_1
    return-object v0

    .line 331
    :cond_0
    const/16 v4, 0x191

    if-eq v3, v4, :cond_1

    const/16 v4, 0x194

    if-ne v3, v4, :cond_2

    .line 332
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/google/firebase/installations/b/e;->d()Lcom/google/firebase/installations/b/e$a;

    move-result-object v0

    sget-object v2, Lcom/google/firebase/installations/b/e$b;->c:Lcom/google/firebase/installations/b/e$b;

    invoke-virtual {v0, v2}, Lcom/google/firebase/installations/b/e$a;->a(Lcom/google/firebase/installations/b/e$b;)Lcom/google/firebase/installations/b/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/installations/b/e$a;->a()Lcom/google/firebase/installations/b/e;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 342
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 335
    :cond_2
    const/16 v4, 0x1ad

    if-eq v3, v4, :cond_3

    const/16 v4, 0x1f4

    if-lt v3, v4, :cond_4

    const/16 v4, 0x258

    if-ge v3, v4, :cond_4

    .line 336
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 342
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 340
    :cond_4
    :try_start_2
    invoke-static {}, Lcom/google/firebase/installations/b/e;->d()Lcom/google/firebase/installations/b/e$a;

    move-result-object v0

    sget-object v2, Lcom/google/firebase/installations/b/e$b;->b:Lcom/google/firebase/installations/b/e$b;

    invoke-virtual {v0, v2}, Lcom/google/firebase/installations/b/e$a;->a(Lcom/google/firebase/installations/b/e$b;)Lcom/google/firebase/installations/b/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/installations/b/e$a;->a()Lcom/google/firebase/installations/b/e;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 342
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0

    .line 345
    :cond_5
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method
