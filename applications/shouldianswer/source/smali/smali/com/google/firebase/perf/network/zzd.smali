.class public final Lcom/google/firebase/perf/network/zzd;
.super Ljava/net/HttpURLConnection;
.source "com.google.firebase:firebase-perf@@19.0.2"


# instance fields
.field private final zzgg:Lcom/google/firebase/perf/network/zzf;


# direct methods
.method constructor <init>(Ljava/net/HttpURLConnection;Lcom/google/android/gms/internal/firebase-perf/zzaz;Lcom/google/android/gms/internal/firebase-perf/zzam;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/net/HttpURLConnection;-><init>(Ljava/net/URL;)V

    .line 2
    new-instance v0, Lcom/google/firebase/perf/network/zzf;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/firebase/perf/network/zzf;-><init>(Ljava/net/HttpURLConnection;Lcom/google/android/gms/internal/firebase-perf/zzaz;Lcom/google/android/gms/internal/firebase-perf/zzam;)V

    iput-object v0, p0, Lcom/google/firebase/perf/network/zzd;->zzgg:Lcom/google/firebase/perf/network/zzf;

    return-void
.end method


# virtual methods
.method public final addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzd;->zzgg:Lcom/google/firebase/perf/network/zzf;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/perf/network/zzf;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final connect()V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzd;->zzgg:Lcom/google/firebase/perf/network/zzf;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/zzf;->connect()V

    return-void
.end method

.method public final disconnect()V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzd;->zzgg:Lcom/google/firebase/perf/network/zzf;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/zzf;->disconnect()V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzd;->zzgg:Lcom/google/firebase/perf/network/zzf;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/zzf;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getAllowUserInteraction()Z
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzd;->zzgg:Lcom/google/firebase/perf/network/zzf;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/zzf;->getAllowUserInteraction()Z

    move-result v0

    return v0
.end method

.method public final getConnectTimeout()I
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzd;->zzgg:Lcom/google/firebase/perf/network/zzf;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/zzf;->getConnectTimeout()I

    move-result v0

    return v0
.end method

.method public final getContent()Ljava/lang/Object;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzd;->zzgg:Lcom/google/firebase/perf/network/zzf;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/zzf;->getContent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzd;->zzgg:Lcom/google/firebase/perf/network/zzf;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/zzf;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getContentEncoding()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzd;->zzgg:Lcom/google/firebase/perf/network/zzf;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/zzf;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContentLength()I
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzd;->zzgg:Lcom/google/firebase/perf/network/zzf;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/zzf;->getContentLength()I

    move-result v0

    return v0
.end method

.method public final getContentLengthLong()J
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzd;->zzgg:Lcom/google/firebase/perf/network/zzf;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/zzf;->getContentLengthLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getContentType()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzd;->zzgg:Lcom/google/firebase/perf/network/zzf;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/zzf;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDate()J
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzd;->zzgg:Lcom/google/firebase/perf/network/zzf;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/zzf;->getDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getDefaultUseCaches()Z
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzd;->zzgg:Lcom/google/firebase/perf/network/zzf;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/zzf;->getDefaultUseCaches()Z

    move-result v0

    return v0
.end method

.method public final getDoInput()Z
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzd;->zzgg:Lcom/google/firebase/perf/network/zzf;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/zzf;->getDoInput()Z

    move-result v0

    return v0
.end method

.method public final getDoOutput()Z
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzd;->zzgg:Lcom/google/firebase/perf/network/zzf;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/zzf;->getDoOutput()Z

    move-result v0

    return v0
.end method

.method public final getErrorStream()Ljava/io/InputStream;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzd;->zzgg:Lcom/google/firebase/perf/network/zzf;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/zzf;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final getExpiration()J
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzd;->zzgg:Lcom/google/firebase/perf/network/zzf;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/zzf;->getExpiration()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getHeaderField(I)Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzd;->zzgg:Lcom/google/firebase/perf/network/zzf;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/zzf;->getHeaderField(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzd;->zzgg:Lcom/google/firebase/perf/network/zzf;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/zzf;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getHeaderFieldDate(Ljava/lang/String;J)J
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzd;->zzgg:Lcom/google/firebase/perf/network/zzf;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/firebase/perf/network/zzf;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final getHeaderFieldInt(Ljava/lang/String;I)I
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzd;->zzgg:Lcom/google/firebase/perf/network/zzf;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/perf/network/zzf;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public final getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzd;->zzgg:Lcom/google/firebase/perf/network/zzf;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/zzf;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getHeaderFieldLong(Ljava/lang/String;J)J
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzd;->zzgg:Lcom/google/firebase/perf/network/zzf;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/firebase/perf/network/zzf;->getHeaderFieldLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final getHeaderFields()Ljava/util/Map;
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

    .line 23
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzd;->zzgg:Lcom/google/firebase/perf/network/zzf;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/zzf;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getIfModifiedSince()J
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzd;->zzgg:Lcom/google/firebase/perf/network/zzf;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/zzf;->getIfModifiedSince()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzd;->zzgg:Lcom/google/firebase/perf/network/zzf;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/zzf;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final getInstanceFollowRedirects()Z
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzd;->zzgg:Lcom/google/firebase/perf/network/zzf;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/zzf;->getInstanceFollowRedirects()Z

    move-result v0

    return v0
.end method

.method public final getLastModified()J
    .locals 2

    .line 11
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzd;->zzgg:Lcom/google/firebase/perf/network/zzf;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/zzf;->getLastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzd;->zzgg:Lcom/google/firebase/perf/network/zzf;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/zzf;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public final getPermission()Ljava/security/Permission;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzd;->zzgg:Lcom/google/firebase/perf/network/zzf;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/zzf;->getPermission()Ljava/security/Permission;

    move-result-object v0

    return-object v0
.end method

.method public final getReadTimeout()I
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzd;->zzgg:Lcom/google/firebase/perf/network/zzf;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/zzf;->getReadTimeout()I

    move-result v0

    return v0
.end method

.method public final getRequestMethod()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzd;->zzgg:Lcom/google/firebase/perf/network/zzf;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/zzf;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getRequestProperties()Ljava/util/Map;
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

    .line 42
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzd;->zzgg:Lcom/google/firebase/perf/network/zzf;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/zzf;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzd;->zzgg:Lcom/google/firebase/perf/network/zzf;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/zzf;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getResponseCode()I
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzd;->zzgg:Lcom/google/firebase/perf/network/zzf;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/zzf;->getResponseCode()I

    move-result v0

    return v0
.end method

.method public final getResponseMessage()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzd;->zzgg:Lcom/google/firebase/perf/network/zzf;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/zzf;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getURL()Ljava/net/URL;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzd;->zzgg:Lcom/google/firebase/perf/network/zzf;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/zzf;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public final getUseCaches()Z
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzd;->zzgg:Lcom/google/firebase/perf/network/zzf;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/zzf;->getUseCaches()Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzd;->zzgg:Lcom/google/firebase/perf/network/zzf;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/zzf;->hashCode()I

    move-result v0

    return v0
.end method

.method public final setAllowUserInteraction(Z)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzd;->zzgg:Lcom/google/firebase/perf/network/zzf;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/zzf;->setAllowUserInteraction(Z)V

    return-void
.end method

.method public final setChunkedStreamingMode(I)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzd;->zzgg:Lcom/google/firebase/perf/network/zzf;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/zzf;->setChunkedStreamingMode(I)V

    return-void
.end method

.method public final setConnectTimeout(I)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzd;->zzgg:Lcom/google/firebase/perf/network/zzf;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/zzf;->setConnectTimeout(I)V

    return-void
.end method

.method public final setDefaultUseCaches(Z)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzd;->zzgg:Lcom/google/firebase/perf/network/zzf;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/zzf;->setDefaultUseCaches(Z)V

    return-void
.end method

.method public final setDoInput(Z)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzd;->zzgg:Lcom/google/firebase/perf/network/zzf;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/zzf;->setDoInput(Z)V

    return-void
.end method

.method public final setDoOutput(Z)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzd;->zzgg:Lcom/google/firebase/perf/network/zzf;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/zzf;->setDoOutput(Z)V

    return-void
.end method

.method public final setFixedLengthStreamingMode(I)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzd;->zzgg:Lcom/google/firebase/perf/network/zzf;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/zzf;->setFixedLengthStreamingMode(I)V

    return-void
.end method

.method public final setFixedLengthStreamingMode(J)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzd;->zzgg:Lcom/google/firebase/perf/network/zzf;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/perf/network/zzf;->setFixedLengthStreamingMode(J)V

    return-void
.end method

.method public final setIfModifiedSince(J)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzd;->zzgg:Lcom/google/firebase/perf/network/zzf;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/perf/network/zzf;->setIfModifiedSince(J)V

    return-void
.end method

.method public final setInstanceFollowRedirects(Z)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzd;->zzgg:Lcom/google/firebase/perf/network/zzf;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/zzf;->setInstanceFollowRedirects(Z)V

    return-void
.end method

.method public final setReadTimeout(I)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzd;->zzgg:Lcom/google/firebase/perf/network/zzf;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/zzf;->setReadTimeout(I)V

    return-void
.end method

.method public final setRequestMethod(Ljava/lang/String;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzd;->zzgg:Lcom/google/firebase/perf/network/zzf;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/zzf;->setRequestMethod(Ljava/lang/String;)V

    return-void
.end method

.method public final setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzd;->zzgg:Lcom/google/firebase/perf/network/zzf;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/perf/network/zzf;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setUseCaches(Z)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzd;->zzgg:Lcom/google/firebase/perf/network/zzf;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/zzf;->setUseCaches(Z)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzd;->zzgg:Lcom/google/firebase/perf/network/zzf;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/zzf;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final usingProxy()Z
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzd;->zzgg:Lcom/google/firebase/perf/network/zzf;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/zzf;->usingProxy()Z

    move-result v0

    return v0
.end method
