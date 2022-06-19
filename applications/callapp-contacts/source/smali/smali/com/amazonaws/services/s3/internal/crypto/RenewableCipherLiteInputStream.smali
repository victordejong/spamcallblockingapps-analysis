.class public final Lcom/amazonaws/services/s3/internal/crypto/RenewableCipherLiteInputStream;
.super Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private a:Z


# direct methods
.method protected constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;IZZ)V
    .locals 0

    .line 63
    invoke-direct/range {p0 .. p5}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;IZZ)V

    return-void
.end method


# virtual methods
.method public final mark(I)V
    .locals 1

    .line 93
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/RenewableCipherLiteInputStream;->abortIfNeeded()V

    .line 94
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/internal/crypto/RenewableCipherLiteInputStream;->a:Z

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/RenewableCipherLiteInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    return-void

    .line 95
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Marking is only supported before your first call to read or skip."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final markSupported()Z
    .locals 1

    .line 78
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/RenewableCipherLiteInputStream;->abortIfNeeded()V

    .line 79
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/RenewableCipherLiteInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public final read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 121
    iput-boolean v0, p0, Lcom/amazonaws/services/s3/internal/crypto/RenewableCipherLiteInputStream;->a:Z

    .line 122
    invoke-super {p0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->read()I

    move-result v0

    return v0
.end method

.method public final read([B)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 127
    iput-boolean v0, p0, Lcom/amazonaws/services/s3/internal/crypto/RenewableCipherLiteInputStream;->a:Z

    .line 128
    invoke-super {p0, p1}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->read([B)I

    move-result p1

    return p1
.end method

.method public final read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 134
    iput-boolean v0, p0, Lcom/amazonaws/services/s3/internal/crypto/RenewableCipherLiteInputStream;->a:Z

    .line 135
    invoke-super {p0, p1, p2, p3}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public final reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/RenewableCipherLiteInputStream;->abortIfNeeded()V

    .line 113
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/RenewableCipherLiteInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 114
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/RenewableCipherLiteInputStream;->b()V

    .line 115
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/RenewableCipherLiteInputStream;->a()V

    const/4 v0, 0x0

    .line 116
    iput-boolean v0, p0, Lcom/amazonaws/services/s3/internal/crypto/RenewableCipherLiteInputStream;->a:Z

    return-void
.end method

.method public final skip(J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 140
    iput-boolean v0, p0, Lcom/amazonaws/services/s3/internal/crypto/RenewableCipherLiteInputStream;->a:Z

    .line 141
    invoke-super {p0, p1, p2}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->skip(J)J

    move-result-wide p1

    return-wide p1
.end method
