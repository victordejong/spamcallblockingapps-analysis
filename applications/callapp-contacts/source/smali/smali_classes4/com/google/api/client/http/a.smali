.class public abstract Lcom/google/api/client/http/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/client/http/j;


# instance fields
.field private computedLength:J

.field private mediaType:Lcom/google/api/client/http/p;


# direct methods
.method protected constructor <init>(Lcom/google/api/client/http/p;)V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 37
    iput-wide v0, p0, Lcom/google/api/client/http/a;->computedLength:J

    .line 53
    iput-object p1, p0, Lcom/google/api/client/http/a;->mediaType:Lcom/google/api/client/http/p;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 45
    :cond_0
    new-instance v0, Lcom/google/api/client/http/p;

    invoke-direct {v0, p1}, Lcom/google/api/client/http/p;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_0
    invoke-direct {p0, p1}, Lcom/google/api/client/http/a;-><init>(Lcom/google/api/client/http/p;)V

    return-void
.end method

.method public static computeLength(Lcom/google/api/client/http/j;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    invoke-interface {p0}, Lcom/google/api/client/http/j;->retrySupported()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 132
    :cond_0
    invoke-static {p0}, Lcom/google/api/client/a/o;->a(Lcom/google/api/client/a/ad;)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method protected computeLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    invoke-static {p0}, Lcom/google/api/client/http/a;->computeLength(Lcom/google/api/client/http/j;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected final getCharset()Ljava/nio/charset/Charset;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/google/api/client/http/a;->mediaType:Lcom/google/api/client/http/p;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/api/client/http/p;->b()Ljava/nio/charset/Charset;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/api/client/http/a;->mediaType:Lcom/google/api/client/http/p;

    .line 97
    invoke-virtual {v0}, Lcom/google/api/client/http/p;->b()Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0

    .line 95
    :cond_1
    :goto_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getLength()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    iget-wide v0, p0, Lcom/google/api/client/http/a;->computedLength:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/google/api/client/http/a;->computeLength()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/api/client/http/a;->computedLength:J

    .line 64
    :cond_0
    iget-wide v0, p0, Lcom/google/api/client/http/a;->computedLength:J

    return-wide v0
.end method

.method public final getMediaType()Lcom/google/api/client/http/p;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/google/api/client/http/a;->mediaType:Lcom/google/api/client/http/p;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/google/api/client/http/a;->mediaType:Lcom/google/api/client/http/p;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/api/client/http/p;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public retrySupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setMediaType(Lcom/google/api/client/http/p;)Lcom/google/api/client/http/a;
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/google/api/client/http/a;->mediaType:Lcom/google/api/client/http/p;

    return-object p0
.end method
