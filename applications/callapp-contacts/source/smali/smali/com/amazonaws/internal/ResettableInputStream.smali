.class public Lcom/amazonaws/internal/ResettableInputStream;
.super Lcom/amazonaws/internal/ReleasableInputStream;
.source "SourceFile"


# static fields
.field private static final a:Lcom/amazonaws/logging/Log;


# instance fields
.field private final b:Ljava/io/File;

.field private final c:Ljava/io/FileInputStream;

.field private final d:Ljava/nio/channels/FileChannel;

.field private e:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-class v0, Lcom/amazonaws/internal/ResettableInputStream;

    .line 47
    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/internal/ResettableInputStream;->a:Lcom/amazonaws/logging/Log;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0, p1}, Lcom/amazonaws/internal/ResettableInputStream;-><init>(Ljava/io/FileInputStream;Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/FileInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, p1, v0}, Lcom/amazonaws/internal/ResettableInputStream;-><init>(Ljava/io/FileInputStream;Ljava/io/File;)V

    return-void
.end method

.method private constructor <init>(Ljava/io/FileInputStream;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    invoke-direct {p0, p1}, Lcom/amazonaws/internal/ReleasableInputStream;-><init>(Ljava/io/InputStream;)V

    .line 108
    iput-object p2, p0, Lcom/amazonaws/internal/ResettableInputStream;->b:Ljava/io/File;

    .line 109
    iput-object p1, p0, Lcom/amazonaws/internal/ResettableInputStream;->c:Ljava/io/FileInputStream;

    .line 110
    invoke-virtual {p1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/internal/ResettableInputStream;->d:Ljava/nio/channels/FileChannel;

    .line 111
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/amazonaws/internal/ResettableInputStream;->e:J

    return-void
.end method

.method public static a(Ljava/io/FileInputStream;)Lcom/amazonaws/internal/ResettableInputStream;
    .locals 0

    .line 274
    invoke-static {p0}, Lcom/amazonaws/internal/ResettableInputStream;->b(Ljava/io/FileInputStream;)Lcom/amazonaws/internal/ResettableInputStream;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/io/FileInputStream;)Lcom/amazonaws/internal/ResettableInputStream;
    .locals 2

    .line 296
    :try_start_0
    new-instance v0, Lcom/amazonaws/internal/ResettableInputStream;

    invoke-direct {v0, p0}, Lcom/amazonaws/internal/ResettableInputStream;-><init>(Ljava/io/FileInputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 298
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    invoke-virtual {p0}, Lcom/amazonaws/internal/ResettableInputStream;->abortIfNeeded()V

    .line 182
    iget-object v0, p0, Lcom/amazonaws/internal/ResettableInputStream;->c:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v0

    return v0
.end method

.method public mark(I)V
    .locals 3

    .line 142
    invoke-virtual {p0}, Lcom/amazonaws/internal/ResettableInputStream;->abortIfNeeded()V

    .line 144
    :try_start_0
    iget-object p1, p0, Lcom/amazonaws/internal/ResettableInputStream;->d:Ljava/nio/channels/FileChannel;

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazonaws/internal/ResettableInputStream;->e:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    sget-object p1, Lcom/amazonaws/internal/ResettableInputStream;->a:Lcom/amazonaws/logging/Log;

    invoke-interface {p1}, Lcom/amazonaws/logging/Log;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "File input stream marked at position "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/amazonaws/internal/ResettableInputStream;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazonaws/logging/Log;->a(Ljava/lang/Object;)V

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 146
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    const-string v1, "Failed to mark the file position"

    invoke-direct {v0, v1, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final markSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    invoke-virtual {p0}, Lcom/amazonaws/internal/ResettableInputStream;->abortIfNeeded()V

    .line 188
    iget-object v0, p0, Lcom/amazonaws/internal/ResettableInputStream;->c:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    invoke-virtual {p0}, Lcom/amazonaws/internal/ResettableInputStream;->abortIfNeeded()V

    .line 200
    iget-object v0, p0, Lcom/amazonaws/internal/ResettableInputStream;->c:Ljava/io/FileInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/FileInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public reset()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    invoke-virtual {p0}, Lcom/amazonaws/internal/ResettableInputStream;->abortIfNeeded()V

    .line 173
    iget-object v0, p0, Lcom/amazonaws/internal/ResettableInputStream;->d:Ljava/nio/channels/FileChannel;

    iget-wide v1, p0, Lcom/amazonaws/internal/ResettableInputStream;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 174
    sget-object v0, Lcom/amazonaws/internal/ResettableInputStream;->a:Lcom/amazonaws/logging/Log;

    invoke-interface {v0}, Lcom/amazonaws/logging/Log;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Reset to position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/amazonaws/internal/ResettableInputStream;->e:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public skip(J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    invoke-virtual {p0}, Lcom/amazonaws/internal/ResettableInputStream;->abortIfNeeded()V

    .line 194
    iget-object v0, p0, Lcom/amazonaws/internal/ResettableInputStream;->c:Ljava/io/FileInputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide p1

    return-wide p1
.end method
