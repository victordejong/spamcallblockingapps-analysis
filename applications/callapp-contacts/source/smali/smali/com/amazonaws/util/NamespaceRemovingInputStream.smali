.class Lcom/amazonaws/util/NamespaceRemovingInputStream;
.super Lcom/amazonaws/internal/SdkFilterInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;
    }
.end annotation


# instance fields
.field private final a:[B

.field private b:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 48
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lcom/amazonaws/internal/SdkFilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 p1, 0xc8

    new-array p1, p1, [B

    .line 33
    iput-object p1, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream;->a:[B

    const/4 p1, 0x0

    .line 36
    iput-boolean p1, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream;->b:Z

    return-void
.end method


# virtual methods
.method public read()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-virtual {p0}, Lcom/amazonaws/util/NamespaceRemovingInputStream;->abortIfNeeded()V

    .line 58
    iget-object v0, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v1, 0x78

    if-ne v0, v1, :cond_6

    .line 59
    iget-boolean v1, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream;->b:Z

    if-nez v1, :cond_6

    .line 60
    iget-object v1, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream;->a:[B

    int-to-byte v2, v0

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 61
    iget-object v1, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream;->in:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream;->a:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/io/InputStream;->mark(I)V

    .line 62
    iget-object v1, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream;->in:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream;->a:[B

    array-length v4, v2

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v5, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 63
    iget-object v2, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    .line 65
    new-instance v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream;->a:[B

    add-int/2addr v1, v5

    sget-object v6, Lcom/amazonaws/util/StringUtils;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v4, v3, v1, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 1121
    new-instance v1, Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;

    invoke-direct {v1, v2}, Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;-><init>(Ljava/lang/String;)V

    const-string v4, "xmlns"

    .line 1122
    invoke-virtual {v1, v4}, Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->a(Ljava/lang/String;)Z

    move-result v4

    const/4 v6, -0x1

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    const-string v4, " "

    .line 1125
    invoke-virtual {v1, v4}, Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->b(Ljava/lang/String;)Z

    const-string v7, "="

    .line 1126
    invoke-virtual {v1, v7}, Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->a(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_1

    .line 1128
    :cond_1
    invoke-virtual {v1, v4}, Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->b(Ljava/lang/String;)Z

    const-string v4, "\""

    .line 1130
    invoke-virtual {v1, v4}, Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->a(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_1

    .line 1174
    :cond_2
    iget-object v7, v1, Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->a:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_3

    const/4 v4, 0x0

    goto :goto_0

    .line 1177
    :cond_3
    iget-object v7, v1, Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->a:Ljava/lang/String;

    add-int/2addr v4, v5

    invoke-virtual {v7, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->a:Ljava/lang/String;

    const/4 v4, 0x1

    :goto_0
    if-nez v4, :cond_4

    goto :goto_1

    .line 1135
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 2153
    iget-object v1, v1, Lcom/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer;->a:Ljava/lang/String;

    .line 1135
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v6, v2, v1

    :goto_1
    if-lez v6, :cond_6

    :goto_2
    add-int/lit8 v0, v6, -0x1

    if-ge v3, v0, :cond_5

    .line 70
    iget-object v0, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 72
    :cond_5
    iget-object v0, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 73
    iput-boolean v5, p0, Lcom/amazonaws/util/NamespaceRemovingInputStream;->b:Z

    :cond_6
    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/amazonaws/util/NamespaceRemovingInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    .line 87
    invoke-virtual {p0}, Lcom/amazonaws/util/NamespaceRemovingInputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    return v2

    :cond_0
    return v0

    :cond_1
    add-int v2, v0, p2

    int-to-byte v1, v1

    .line 94
    aput-byte v1, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return p3
.end method
