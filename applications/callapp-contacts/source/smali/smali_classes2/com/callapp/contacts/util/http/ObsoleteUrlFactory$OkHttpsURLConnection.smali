.class final Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpsURLConnection;
.super Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$DelegatingHttpsURLConnection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/util/http/ObsoleteUrlFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OkHttpsURLConnection"
.end annotation


# instance fields
.field private final a:Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;)V
    .locals 0

    .line 1154
    invoke-direct {p0, p1}, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$DelegatingHttpsURLConnection;-><init>(Ljava/net/HttpURLConnection;)V

    .line 1155
    iput-object p1, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpsURLConnection;->a:Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;

    return-void
.end method

.method constructor <init>(Ljava/net/URL;Lokhttp3/OkHttpClient;)V
    .locals 1

    .line 1150
    new-instance v0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;

    invoke-direct {v0, p1, p2}, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;-><init>(Ljava/net/URL;Lokhttp3/OkHttpClient;)V

    invoke-direct {p0, v0}, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpsURLConnection;-><init>(Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;)V

    return-void
.end method


# virtual methods
.method protected final a()Lokhttp3/Handshake;
    .locals 2

    .line 1159
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpsURLConnection;->a:Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;

    iget-object v0, v0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->f:Lokhttp3/Call;

    if-eqz v0, :cond_0

    .line 1163
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpsURLConnection;->a:Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;

    iget-object v0, v0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->k:Lokhttp3/Handshake;

    return-object v0

    .line 1160
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection has not yet been established"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .line 1173
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpsURLConnection;->a:Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;

    iget-object v0, v0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->a:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    return-object v0
.end method

.method public final getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 1187
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpsURLConnection;->a:Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;

    iget-object v0, v0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->a:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method public final setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 2

    .line 1167
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpsURLConnection;->a:Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;

    iget-object v1, v0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->a:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 1168
    invoke-virtual {v1, p1}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 1169
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    iput-object p1, v0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->a:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public final setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1181
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpsURLConnection;->a:Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;

    iget-object v1, v0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->a:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 1182
    invoke-virtual {v1, p1}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 1183
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    iput-object p1, v0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->a:Lokhttp3/OkHttpClient;

    return-void

    .line 1178
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sslSocketFactory == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
