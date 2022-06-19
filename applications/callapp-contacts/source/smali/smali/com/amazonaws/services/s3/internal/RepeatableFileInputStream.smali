.class public Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;
.super Lcom/amazonaws/internal/SdkInputStream;
.source "SourceFile"


# static fields
.field private static final a:Lcom/amazonaws/logging/Log;


# instance fields
.field private final b:Ljava/io/File;

.field private c:Ljava/io/FileInputStream;

.field private d:J

.field private e:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "RepeatableFIS"

    .line 37
    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/String;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->a:Lcom/amazonaws/logging/Log;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Lcom/amazonaws/internal/SdkInputStream;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->c:Ljava/io/FileInputStream;

    const-wide/16 v0, 0x0

    .line 41
    iput-wide v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->d:J

    .line 42
    iput-wide v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->e:J

    if-eqz p1, :cond_0

    .line 55
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->c:Ljava/io/FileInputStream;

    .line 56
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->b:Ljava/io/File;

    return-void

    .line 53
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "File cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()Ljava/io/InputStream;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->c:Ljava/io/FileInputStream;

    return-object v0
.end method

.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    invoke-static {}, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->b()V

    .line 113
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->c:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->c:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 119
    invoke-static {}, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->b()V

    return-void
.end method

.method public mark(I)V
    .locals 4

    .line 102
    invoke-static {}, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->b()V

    .line 103
    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->e:J

    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->d:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->e:J

    const-wide/16 v0, 0x0

    .line 104
    iput-wide v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->d:J

    .line 105
    sget-object p1, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->a:Lcom/amazonaws/logging/Log;

    invoke-interface {p1}, Lcom/amazonaws/logging/Log;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Input stream marked at "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    invoke-static {}, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->b()V

    .line 125
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->c:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 127
    iget-wide v1, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->d:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->d:J

    return v0

    :cond_0
    return v1
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    invoke-static {}, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->b()V

    .line 145
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->c:Ljava/io/FileInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/FileInputStream;->read([BII)I

    move-result p1

    .line 146
    iget-wide p2, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->d:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->d:J

    return p1
.end method

.method public reset()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->c:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 78
    invoke-static {}, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->b()V

    .line 79
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->b:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->c:Ljava/io/FileInputStream;

    .line 82
    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->e:J

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 84
    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->c:Ljava/io/FileInputStream;

    invoke-virtual {v2, v0, v1}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto :goto_0

    .line 88
    :cond_0
    sget-object v0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->a:Lcom/amazonaws/logging/Log;

    invoke-interface {v0}, Lcom/amazonaws/logging/Log;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Reset to mark point "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->e:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " after returning "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->d:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " bytes"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V

    .line 92
    :cond_1
    iput-wide v2, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->d:J

    return-void
.end method

.method public skip(J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    invoke-static {}, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->b()V

    .line 137
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->c:Ljava/io/FileInputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide p1

    .line 138
    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->d:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->d:J

    return-wide p1
.end method
