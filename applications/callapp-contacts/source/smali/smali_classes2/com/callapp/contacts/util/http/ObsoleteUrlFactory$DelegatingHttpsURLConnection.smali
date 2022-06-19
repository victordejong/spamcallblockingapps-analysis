.class abstract Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$DelegatingHttpsURLConnection;
.super Ljavax/net/ssl/HttpsURLConnection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/util/http/ObsoleteUrlFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "DelegatingHttpsURLConnection"
.end annotation


# instance fields
.field private final a:Ljava/net/HttpURLConnection;


# direct methods
.method constructor <init>(Ljava/net/HttpURLConnection;)V
    .locals 1

    .line 882
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;-><init>(Ljava/net/URL;)V

    .line 883
    iput-object p1, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$DelegatingHttpsURLConnection;->a:Ljava/net/HttpURLConnection;

    return-void
.end method


# virtual methods
.method protected abstract a()Lokhttp3/Handshake;
.end method

.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1028
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$DelegatingHttpsURLConnection;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public connect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 926
    iput-boolean v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$DelegatingHttpsURLConnection;->connected:Z

    .line 927
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$DelegatingHttpsURLConnection;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    return-void
.end method

.method public disconnect()V
    .locals 1

    .line 931
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$DelegatingHttpsURLConnection;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void
.end method

.method public getAllowUserInteraction()Z
    .locals 1

    .line 967
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$DelegatingHttpsURLConnection;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getAllowUserInteraction()Z

    move-result v0

    return v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .locals 1

    .line 897
    invoke-virtual {p0}, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$DelegatingHttpsURLConnection;->a()Lokhttp3/Handshake;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 898
    invoke-virtual {v0}, Lokhttp3/Handshake;->cipherSuite()Lokhttp3/CipherSuite;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/CipherSuite;->javaName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .line 1122
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$DelegatingHttpsURLConnection;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getConnectTimeout()I

    move-result v0

    return v0
.end method

.method public getContent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 971
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$DelegatingHttpsURLConnection;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 975
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$DelegatingHttpsURLConnection;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    .line 979
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$DelegatingHttpsURLConnection;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()I
    .locals 1

    .line 983
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$DelegatingHttpsURLConnection;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    return v0
.end method

.method public getContentLengthLong()J
    .locals 2

    .line 988
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$DelegatingHttpsURLConnection;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLengthLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 992
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$DelegatingHttpsURLConnection;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDate()J
    .locals 2

    .line 996
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$DelegatingHttpsURLConnection;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultUseCaches()Z
    .locals 1

    .line 1000
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$DelegatingHttpsURLConnection;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDefaultUseCaches()Z

    move-result v0

    return v0
.end method

.method public getDoInput()Z
    .locals 1

    .line 1004
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$DelegatingHttpsURLConnection;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDoInput()Z

    move-result v0

    return v0
.end method

.method public getDoOutput()Z
    .locals 1

    .line 1008
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$DelegatingHttpsURLConnection;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDoOutput()Z

    move-result v0

    return v0
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .locals 1

    .line 935
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$DelegatingHttpsURLConnection;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getExpiration()J
    .locals 2

    .line 1012
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$DelegatingHttpsURLConnection;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getExpiration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .locals 1

    .line 1016
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$DelegatingHttpsURLConnection;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1032
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$DelegatingHttpsURLConnection;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHeaderFieldDate(Ljava/lang/String;J)J
    .locals 1

    .line 1041
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$DelegatingHttpsURLConnection;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/HttpURLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getHeaderFieldInt(Ljava/lang/String;I)I
    .locals 1

    .line 1045
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$DelegatingHttpsURLConnection;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1

    .line 1049
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$DelegatingHttpsURLConnection;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHeaderFieldLong(Ljava/lang/String;J)J
    .locals 1

    .line 1037
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$DelegatingHttpsURLConnection;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/HttpURLConnection;->getHeaderFieldLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getHeaderFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1020
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$DelegatingHttpsURLConnection;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getIfModifiedSince()J
    .locals 2

    .line 1053
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$DelegatingHttpsURLConnection;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getIfModifiedSince()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1057
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$DelegatingHttpsURLConnection;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getInstanceFollowRedirects()Z
    .locals 1

    .line 959
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$DelegatingHttpsURLConnection;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInstanceFollowRedirects()Z

    move-result v0

    return v0
.end method

.method public getLastModified()J
    .locals 2

    .line 1061
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$DelegatingHttpsURLConnection;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getLastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 3

    .line 902
    invoke-virtual {p0}, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$DelegatingHttpsURLConnection;->a()Lokhttp3/Handshake;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 904
    :cond_0
    invoke-virtual {v0}, Lokhttp3/Handshake;->localCertificates()Ljava/util/List;

    move-result-object v0

    .line 905
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/security/cert/Certificate;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;

    return-object v0

    :cond_1
    return-object v1
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .locals 1

    .line 921
    invoke-virtual {p0}, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$DelegatingHttpsURLConnection;->a()Lokhttp3/Handshake;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 922
    invoke-virtual {v0}, Lokhttp3/Handshake;->localPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1065
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$DelegatingHttpsURLConnection;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .locals 1

    .line 916
    invoke-virtual {p0}, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$DelegatingHttpsURLConnection;->a()Lokhttp3/Handshake;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 917
    invoke-virtual {v0}, Lokhttp3/Handshake;->peerPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPermission()Ljava/security/Permission;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1069
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$DelegatingHttpsURLConnection;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getPermission()Ljava/security/Permission;

    move-result-object v0

    return-object v0
.end method

.method public getReadTimeout()I
    .locals 1

    .line 1130
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$DelegatingHttpsURLConnection;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getReadTimeout()I

    move-result v0

    return v0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .locals 1

    .line 939
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$DelegatingHttpsURLConnection;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1024
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$DelegatingHttpsURLConnection;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1073
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$DelegatingHttpsURLConnection;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getResponseCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 943
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$DelegatingHttpsURLConnection;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    return v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 947
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$DelegatingHttpsURLConnection;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerCertificates()[Ljava/security/cert/Certificate;
    .locals 3

    .line 909
    invoke-virtual {p0}, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$DelegatingHttpsURLConnection;->a()Lokhttp3/Handshake;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 911
    :cond_0
    invoke-virtual {v0}, Lokhttp3/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v0

    .line 912
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/security/cert/Certificate;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;

    return-object v0

    :cond_1
    return-object v1
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    .line 1077
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$DelegatingHttpsURLConnection;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getUseCaches()Z
    .locals 1

    .line 1081
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$DelegatingHttpsURLConnection;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getUseCaches()Z

    move-result v0

    return v0
.end method

.method public setAllowUserInteraction(Z)V
    .locals 1

    .line 1085
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$DelegatingHttpsURLConnection;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    return-void
.end method

.method public setChunkedStreamingMode(I)V
    .locals 1

    .line 1142
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$DelegatingHttpsURLConnection;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 1

    .line 1118
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$DelegatingHttpsURLConnection;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    return-void
.end method

.method public setDefaultUseCaches(Z)V
    .locals 1

    .line 1089
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$DelegatingHttpsURLConnection;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    return-void
.end method

.method public setDoInput(Z)V
    .locals 1

    .line 1093
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$DelegatingHttpsURLConnection;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    return-void
.end method

.method public setDoOutput(Z)V
    .locals 1

    .line 1097
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$DelegatingHttpsURLConnection;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    return-void
.end method

.method public setFixedLengthStreamingMode(I)V
    .locals 1

    .line 1138
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$DelegatingHttpsURLConnection;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    return-void
.end method

.method public setFixedLengthStreamingMode(J)V
    .locals 1

    .line 1102
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$DelegatingHttpsURLConnection;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(J)V

    return-void
.end method

.method public setIfModifiedSince(J)V
    .locals 1

    .line 1106
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$DelegatingHttpsURLConnection;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setIfModifiedSince(J)V

    return-void
.end method

.method public setInstanceFollowRedirects(Z)V
    .locals 1

    .line 963
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$DelegatingHttpsURLConnection;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    return-void
.end method

.method public setReadTimeout(I)V
    .locals 1

    .line 1126
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$DelegatingHttpsURLConnection;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 951
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$DelegatingHttpsURLConnection;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1110
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$DelegatingHttpsURLConnection;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUseCaches(Z)V
    .locals 1

    .line 1114
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$DelegatingHttpsURLConnection;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1134
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$DelegatingHttpsURLConnection;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public usingProxy()Z
    .locals 1

    .line 955
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$DelegatingHttpsURLConnection;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->usingProxy()Z

    move-result v0

    return v0
.end method
