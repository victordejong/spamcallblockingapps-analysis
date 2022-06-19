.class public Lk61;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk61$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "k61"

.field public static final b:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Call Control/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lfa1;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lfa1;->m()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "); "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; Android "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; Model "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; Build "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; SIMs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lb91;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lk61;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lx61;

    invoke-direct {v0}, Lx61;-><init>()V

    iput-object p0, v0, Lx61;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lx61;->a()Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "migrate"

    invoke-static {v0, p0}, Lk61;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    return-void
.end method

.method public static B(Lt61;)Z
    .locals 4

    invoke-virtual {p0}, Lt61;->a()Lorg/json/JSONObject;

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    sget-object p0, Lk61;->a:Ljava/lang/String;

    const-string v1, "We haven\'t any entries, so just skip them"

    invoke-static {p0, v1}, Lj91;->k(Ljava/lang/Object;Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "ctl"

    invoke-static {v2, p0}, Lk61;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    :try_end_0
    .catch Lk61$a; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception p0

    sget-object v0, Lk61;->a:Ljava/lang/String;

    const-string v2, "Error sending contacts"

    invoke-static {v0, v2, p0}, Lj91;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lk61$a;->b()I

    move-result v2

    const/16 v3, 0x1f4

    if-eq v2, v3, :cond_1

    const/16 v3, -0x1f4

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lk61;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error sending contacts with code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lk61$a;->b()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ". Considering "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lj91;->k(Ljava/lang/Object;Ljava/lang/String;)V

    return v0
.end method

.method public static C(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lk61;->D(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result p0

    return p0
.end method

.method public static D(Ljava/lang/String;Lorg/json/JSONObject;)Z
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Lg71;

    invoke-direct {v0}, Lg71;-><init>()V

    iput-object p0, v0, Lg71;->a:Ljava/lang/String;

    iput-object p1, v0, Lg71;->b:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lg71;->a()Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    :try_start_0
    const-string p1, "push_register"

    invoke-static {p1, p0}, Lk61;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    :try_end_0
    .catch Lk61$a; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    return v1
.end method

.method public static E(Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, La71;

    invoke-direct {v0}, La71;-><init>()V

    iput-object p0, v0, La71;->a:Ljava/lang/String;

    invoke-virtual {v0}, La71;->a()Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "coupon_code"

    invoke-static {v0, p0}, Lk61;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    return-void

    :cond_1
    new-instance p0, Lk61$a;

    const/16 v0, 0x190

    const-string v1, "Cannot build request"

    invoke-direct {p0, v1, v0}, Lk61$a;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public static F(Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lh71;

    invoke-direct {v0}, Lh71;-><init>()V

    iput-object p0, v0, Lh71;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lh71;->a()Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "feedback"

    invoke-static {v0, p0}, Lk61;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    return-void

    :cond_1
    new-instance p0, Lk61$a;

    const/16 v0, 0x190

    const-string v1, "Cannot build request"

    invoke-direct {p0, v1, v0}, Lk61$a;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public static G(Ljavax/net/ssl/HttpsURLConnection;)V
    .locals 1

    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    return-void
.end method

.method public static a()Lo61;
    .locals 3

    new-instance v0, Lo61;

    invoke-direct {v0}, Lo61;-><init>()V

    invoke-virtual {v0}, Lo61;->a()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "frw"

    invoke-static {v2, v1}, Lk61;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo61;->b(Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Lk61$a;

    const/16 v1, 0x190

    const-string v2, "Can\'t build request"

    invoke-direct {v0, v2, v1}, Lk61$a;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public static b(Lr61;)Lr61;
    .locals 2

    invoke-virtual {p0}, Lr61;->a()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "connect"

    invoke-static {v1, v0}, Lk61;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lr61;->b(Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance p0, Lk61$a;

    const/16 v0, 0x190

    const-string v1, "Cannot build request"

    invoke-direct {p0, v1, v0}, Lk61$a;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public static c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x3

    invoke-static {p0, p1, v0}, Lk61;->d(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/String;
    .locals 11

    const-string v0, "/"

    const-class v1, Lk61;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requesting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". Retry "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rsub-int/lit8 v3, p2, 0x3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lfa1;->w()Z

    move-result v2

    const/16 v3, -0x1f4

    if-eqz v2, :cond_9

    sget-object v2, Lta1;->H:Lta1;

    invoke-virtual {v2}, Lta1;->d()Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lr71$a;->I0:Lr71$a;

    invoke-virtual {v2}, Lr71$a;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "frw"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "frw should be called first"

    invoke-static {p0, p1}, Lj91;->k(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lk61$a;

    invoke-direct {p0, p1, v3}, Lk61$a;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_1
    :goto_0
    const/16 v2, 0x1f4

    :try_start_0
    invoke-static {}, Lk61;->e()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    invoke-static {}, Lk91;->a()V

    const/4 p1, -0x1

    :try_start_1
    new-instance v1, Ljava/net/URL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "https://www.everycaller.com/api/android/41/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URLConnection;

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-static {v0}, Lk61;->G(Ljavax/net/ssl/HttpsURLConnection;)V

    const-string v5, "POST"

    invoke-virtual {v0, v5}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    invoke-virtual {v0, v4}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    const/16 v4, 0x61a8

    invoke-virtual {v0, v4}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0, v4}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    const-string v4, "Content-Type"

    const-string v5, "application/json; charset=utf-8"

    invoke-virtual {v0, v4, v5}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "User-Agent"

    sget-object v5, Lk61;->b:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Accept"

    const-string v5, "application/json"

    invoke-virtual {v0, v4, v5}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lka1;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    const-string v4, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v5, 0x0

    :try_start_4
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x1000

    new-array v7, v7, [B

    :goto_2
    invoke-virtual {v5, v7}, Ljava/io/InputStream;->read([B)I

    move-result v8

    if-eq v8, p1, :cond_3

    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v9, v7, v10, v8}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lka1;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v5, :cond_4

    :goto_3
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    goto :goto_4

    :catchall_0
    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    :goto_4
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doPost : Request: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":\n response status code:"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    const/16 v1, 0xc8

    if-ne v5, v1, :cond_5

    return-object v4

    :cond_5
    new-instance v1, Lk61$a;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v5}, Lk61$a;-><init>(Ljava/lang/String;I)V

    throw v1

    :catchall_1
    move-exception v0

    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    sget-object v1, Lk61;->a:Ljava/lang/String;

    const-string v4, "doPost: IOException when executing request "

    invoke-static {v1, v4, v0}, Lj91;->H(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    instance-of v1, v0, Lk61$a;

    if-nez v1, :cond_7

    add-int/2addr p2, p1

    if-lez p2, :cond_6

    const-wide/16 v0, 0xbb8

    :try_start_6
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    invoke-static {p0, v3, p2}, Lk61;->d(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    new-instance p0, Lk61$a;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lk61$a;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_7
    check-cast v0, Lk61$a;

    throw v0

    :catch_0
    move-exception p0

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lj91;->k(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lk61$a;

    const-string p1, "error building json"

    invoke-direct {p0, p1, v2}, Lk61$a;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_8
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "no permissions"

    invoke-static {p0, p1}, Lj91;->k(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lk61$a;

    invoke-direct {p0, p1, v3}, Lk61$a;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_9
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "no internet"

    invoke-static {p0, p1}, Lj91;->k(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lk61$a;

    invoke-direct {p0, p1, v3}, Lk61$a;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public static e()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "identification"

    invoke-static {}, Lk61;->w()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-class v1, Lk61;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lj91;->k(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lk61$a;

    const/16 v1, 0x1f4

    const-string v2, "error building json"

    invoke-direct {v0, v2, v1}, Lk61$a;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public static f()V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string v1, "https://www.everycaller.com/static/common/blocked_apps"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URLConnection;

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-static {v0}, Lk61;->G(Ljavax/net/ssl/HttpsURLConnection;)V

    const/16 v1, 0x61a8

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-static {}, Lr71;->j()V

    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lr71;->e(Ljava/lang/String;)V

    invoke-static {v2}, Lr81;->I(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v0, Lr71$a;->a1:Lr71$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lr71$a;->n(Ljava/lang/Long;)V

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lk61;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t check blocked apps"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lj91;->k(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static g(Ln61;Z)Ln61;
    .locals 1

    invoke-virtual {p0}, Ln61;->a()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ll61;->c(Lu61;)Lu61;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    check-cast p1, Ln61;

    return-object p1

    :cond_1
    const-string p1, "get_caller"

    invoke-static {p1, v0}, Lk61;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ln61;->c(Ljava/lang/String;)V

    invoke-static {p0}, Ll61;->e(Lu61;)V

    return-object p0

    :cond_2
    new-instance p0, Lk61$a;

    const/16 p1, 0x190

    const-string v0, "Cannot build request"

    invoke-direct {p0, v0, p1}, Lk61$a;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public static h()V
    .locals 5

    sget-object v0, Lr71$a;->x1:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->e()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lr71$a;->X0:Lr71$a;

    invoke-virtual {v2}, Lr71$a;->g()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lk61;->i()V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Lp61;

    invoke-direct {v0}, Lp61;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "gcl"

    invoke-static {v2, v1}, Lk61;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lp61;->b(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static i()V
    .locals 17

    sget-object v0, Lr71$a;->y1:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->e()I

    move-result v1

    sget-object v0, Lr71$a;->v1:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    move-object v2, v0

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, -0x1

    const-string v7, ""

    move-object v10, v7

    move-object v11, v10

    const/4 v8, 0x3

    const/4 v9, -0x1

    const/4 v12, 0x0

    :goto_0
    if-lez v8, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Requesting community. Retry "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rsub-int/lit8 v13, v8, 0x3

    add-int/2addr v13, v3

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " of "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lfa1;->w()Z

    move-result v0

    if-eqz v0, :cond_a

    :try_start_0
    new-instance v0, Ljava/net/URL;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "db."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v14, v1, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v13

    invoke-static {v13}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/net/URLConnection;

    check-cast v13, Ljava/net/HttpURLConnection;

    const-string v14, "GET"

    invoke-virtual {v13, v14}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v13, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const-string v14, "X-CC-D"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v14, 0x61a8

    invoke-virtual {v13, v14}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v13, v14}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->connect()V

    const-string v14, "X-CC-V"

    invoke-virtual {v13, v14}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "X-CC-U"

    invoke-virtual {v13, v15}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v16, :cond_1

    :try_start_1
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v12, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    const/4 v12, 0x1

    goto/16 :goto_5

    :cond_1
    :try_start_2
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v9

    :cond_2
    :goto_1
    const-string v14, "X-CC-Protocol"

    invoke-virtual {v13, v14}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v11, :cond_3

    move-object v11, v7

    :cond_3
    if-ne v1, v9, :cond_4

    goto/16 :goto_6

    :cond_4
    const/4 v14, 0x0

    :try_start_3
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x1000

    new-array v5, v5, [B

    :goto_2
    invoke-virtual {v14, v5}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-eq v3, v6, :cond_5

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5, v4, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, -0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lka1;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v14, :cond_6

    :goto_3
    :try_start_4
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    goto :goto_4

    :catchall_1
    if-eqz v14, :cond_6

    goto :goto_3

    :cond_6
    :goto_4
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doPost : Request: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ":\n response status code:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    const/16 v0, 0xc8

    if-ne v3, v0, :cond_7

    goto :goto_6

    :cond_7
    new-instance v0, Lk61$a;

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5, v3}, Lk61$a;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    :goto_5
    sget-object v3, Lk61;->a:Ljava/lang/String;

    const-string v5, "doPost: IOException when executing request "

    invoke-static {v3, v5, v0}, Lj91;->H(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    instance-of v3, v0, Lk61$a;

    if-nez v3, :cond_9

    const/4 v3, 0x1

    if-le v8, v3, :cond_8

    const-wide/16 v5, 0xbb8

    :try_start_5
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    add-int/lit8 v8, v8, -0x1

    const/4 v5, 0x3

    const/4 v6, -0x1

    goto/16 :goto_0

    :cond_8
    new-instance v1, Lk61$a;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1f4

    invoke-direct {v1, v0, v2}, Lk61$a;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_9
    check-cast v0, Lk61$a;

    throw v0

    :cond_a
    const-class v0, Lk61;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "no internet"

    invoke-static {v0, v1}, Lj91;->k(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lk61$a;

    const/16 v2, -0x1f4

    invoke-direct {v0, v1, v2}, Lk61$a;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_b
    :goto_6
    if-ne v1, v9, :cond_d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-gtz v9, :cond_c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lr71$a;->w1:Lr71$a;

    invoke-virtual {v2}, Lr71$a;->g()J

    move-result-wide v2

    sub-long/2addr v0, v2

    :cond_c
    sget-object v2, Lr71$a;->X0:Lr71$a;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lr71$a;->n(Ljava/lang/Long;)V

    return-void

    :cond_d
    new-instance v0, Lp61;

    invoke-direct {v0}, Lp61;-><init>()V

    invoke-virtual {v0, v10, v12, v9, v11}, Lp61;->c(Ljava/lang/String;ZILjava/lang/String;)Z

    return-void
.end method

.method public static j()Lq61;
    .locals 3

    new-instance v0, Lq61;

    invoke-direct {v0}, Lq61;-><init>()V

    invoke-virtual {v0}, Lq61;->a()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "get_stats"

    invoke-static {v2, v1}, Lk61;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lq61;->b(Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Lk61$a;

    const/16 v1, 0x190

    const-string v2, "Can\'t build request"

    invoke-direct {v0, v2, v1}, Lk61$a;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public static k()Ljava/lang/String;
    .locals 3

    new-instance v0, Ls61;

    invoke-direct {v0}, Ls61;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "get_connect_token"

    invoke-static {v2, v1}, Lk61;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls61;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Ls61;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static l()Lx61;
    .locals 3

    new-instance v0, Lx61;

    invoke-direct {v0}, Lx61;-><init>()V

    invoke-virtual {v0}, Lx61;->a()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "migrate"

    invoke-static {v2, v1}, Lk61;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx61;->b(Ljava/lang/String;)V

    return-object v0
.end method

.method public static m(Lv61;)Lv61;
    .locals 2

    invoke-virtual {p0}, Lv61;->a()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Ll61;->c(Lu61;)Lu61;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Lv61;

    return-object v1

    :cond_0
    const-string v1, "lookup_reverse_instant"

    invoke-static {v1, v0}, Lk61;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ld71;->c(Ljava/lang/String;)V

    invoke-static {p0}, Ll61;->e(Lu61;)V

    return-object p0

    :cond_1
    new-instance p0, Lk61$a;

    const/16 v0, 0x190

    const-string v1, "Cannot build request"

    invoke-direct {p0, v1, v0}, Lk61$a;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public static n()[B
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lq71;->b:[B

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-byte v5, v1, v4

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Byte;

    const/16 v2, -0x4e

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v3

    const/16 v2, 0x33

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lq71;->a:[B

    array-length v2, v1

    :goto_1
    if-ge v3, v2, :cond_1

    aget-byte v4, v1, v3

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/16 v1, 0x1f

    const/16 v2, 0x1f

    :goto_2
    if-ltz v2, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    const/16 v2, 0x20

    new-array v2, v2, [B

    :goto_3
    if-ltz v1, :cond_3

    add-int/lit8 v3, v1, 0x20

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_3
    return-object v2
.end method

.method public static o(Lw61;)Lw61;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lk61;->p(Lw61;Z)Lw61;

    move-result-object p0

    return-object p0
.end method

.method public static p(Lw61;Z)Lw61;
    .locals 1

    invoke-virtual {p0}, Lw61;->a()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ll61;->c(Lu61;)Lu61;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    check-cast p1, Lw61;

    return-object p1

    :cond_1
    const-string p1, "lookup"

    invoke-static {p1, v0}, Lk61;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lw61;->d(Ljava/lang/String;)V

    invoke-static {p0}, Ll61;->e(Lu61;)V

    return-object p0

    :cond_2
    new-instance p0, Lk61$a;

    const/16 p1, 0x190

    const-string v0, "Cannot build request"

    invoke-direct {p0, v0, p1}, Lk61$a;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public static q()J
    .locals 3

    :try_start_0
    invoke-static {}, Lk61;->e()Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0

    :catchall_0
    move-exception v0

    sget-object v1, Lk61;->a:Ljava/lang/String;

    const-string v2, "Unable to build a bare minimum request"

    invoke-static {v1, v2, v0}, Lj91;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static r()V
    .locals 3

    new-instance v0, Lz61;

    invoke-direct {v0}, Lz61;-><init>()V

    invoke-virtual {v0}, Lz61;->a()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "get_reports_activity"

    invoke-static {v2, v1}, Lk61;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lz61;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lk61$a;

    const/16 v1, 0x190

    const-string v2, "Can\'t build request"

    invoke-direct {v0, v2, v1}, Lk61$a;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public static s(Lc71;)Lc71;
    .locals 2

    invoke-virtual {p0}, Lc71;->a()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "reports"

    invoke-static {v1, v0}, Lk61;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc71;->b(Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance p0, Lk61$a;

    const/16 v0, 0x190

    const-string v1, "Cannot build request"

    invoke-direct {p0, v1, v0}, Lk61$a;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public static t(Ld71;)Ld71;
    .locals 2

    invoke-virtual {p0}, Ld71;->a()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Ll61;->c(Lu61;)Lu61;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Ld71;

    return-object v1

    :cond_0
    const-string v1, "lookup_reverse"

    invoke-static {v1, v0}, Lk61;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ld71;->c(Ljava/lang/String;)V

    invoke-static {p0}, Ll61;->e(Lu61;)V

    return-object p0

    :cond_1
    new-instance p0, Lk61$a;

    const/16 v0, 0x190

    const-string v1, "Cannot build request"

    invoke-direct {p0, v1, v0}, Lk61$a;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public static u()V
    .locals 3

    new-instance v0, Le71;

    invoke-direct {v0}, Le71;-><init>()V

    invoke-virtual {v0}, Le71;->a()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "get_carrier_spam_list"

    invoke-static {v2, v1}, Lk61;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Le71;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lk61$a;

    const/16 v1, 0x190

    const-string v2, "Can\'t build request"

    invoke-direct {v0, v2, v1}, Lk61$a;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public static v()V
    .locals 3

    new-instance v0, Lm61;

    invoke-direct {v0}, Lm61;-><init>()V

    invoke-virtual {v0}, Lm61;->a()Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v2, "get_area_codes"

    invoke-static {v2, v1}, Lk61;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lm61;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static w()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "id"

    invoke-static {}, Lb91;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "imei"

    invoke-static {}, Lb91;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "name"

    invoke-static {}, Lb91;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "vendor"

    const-string v2, "android_market"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "app_version"

    invoke-static {}, Lfa1;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "build"

    invoke-static {}, Lfa1;->m()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-class v2, Lk61;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lj91;->k(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public static x(Ly61;)V
    .locals 2

    invoke-virtual {p0}, Ly61;->a()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "purchase"

    invoke-static {v1, v0}, Lk61;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ly61;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p0, Lk61$a;

    const/16 v0, 0x190

    const-string v1, "Cannot build request"

    invoke-direct {p0, v1, v0}, Lk61$a;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public static y(Lb71;)Z
    .locals 2

    invoke-virtual {p0}, Lb71;->a()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "report"

    invoke-static {v1, v0}, Lk61;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb71;->b(Ljava/lang/String;)V

    iget-boolean p0, p0, Lb71;->g:Z

    return p0

    :cond_0
    new-instance p0, Lk61$a;

    const/16 v0, 0x190

    const-string v1, "Cannot build request"

    invoke-direct {p0, v1, v0}, Lk61$a;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public static z()V
    .locals 3

    new-instance v0, Lf71;

    invoke-direct {v0}, Lf71;-><init>()V

    invoke-virtual {v0}, Lf71;->a()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "synchronize"

    invoke-static {v2, v1}, Lk61;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf71;->b(Ljava/lang/String;)V

    return-void
.end method
