.class public final Lcom/google/api/client/a/s;
.super Ljava/io/ByteArrayOutputStream;
.source "SourceFile"


# instance fields
.field private a:I

.field private final b:I

.field private c:Z

.field private final d:Ljava/util/logging/Level;

.field private final e:Ljava/util/logging/Logger;


# direct methods
.method public constructor <init>(Ljava/util/logging/Logger;Ljava/util/logging/Level;I)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1125
    invoke-static {p1}, Lcom/google/common/base/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 61
    check-cast p1, Ljava/util/logging/Logger;

    iput-object p1, p0, Lcom/google/api/client/a/s;->e:Ljava/util/logging/Logger;

    .line 2125
    invoke-static {p2}, Lcom/google/common/base/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 62
    check-cast p1, Ljava/util/logging/Level;

    iput-object p1, p0, Lcom/google/api/client/a/s;->d:Ljava/util/logging/Level;

    if-ltz p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3035
    :goto_0
    invoke-static {p1}, Lcom/google/common/base/m;->a(Z)V

    .line 64
    iput p3, p0, Lcom/google/api/client/a/s;->b:I

    return-void
.end method

.method private static a(Ljava/lang/StringBuilder;I)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "1 byte"

    .line 128
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 130
    :cond_0
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " bytes"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final declared-synchronized close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 92
    :try_start_0
    iget-boolean v0, p0, Lcom/google/api/client/a/s;->c:Z

    if-nez v0, :cond_2

    .line 94
    iget v0, p0, Lcom/google/api/client/a/s;->a:I

    if-eqz v0, :cond_1

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Total: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    iget v1, p0, Lcom/google/api/client/a/s;->a:I

    invoke-static {v0, v1}, Lcom/google/api/client/a/s;->a(Ljava/lang/StringBuilder;I)V

    .line 98
    iget v1, p0, Lcom/google/api/client/a/s;->count:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/api/client/a/s;->count:I

    iget v2, p0, Lcom/google/api/client/a/s;->a:I

    if-ge v1, v2, :cond_0

    const-string v1, " (logging first "

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    iget v1, p0, Lcom/google/api/client/a/s;->count:I

    invoke-static {v0, v1}, Lcom/google/api/client/a/s;->a(Ljava/lang/StringBuilder;I)V

    const-string v1, ")"

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/google/api/client/a/s;->e:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 105
    iget v0, p0, Lcom/google/api/client/a/s;->count:I

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/google/api/client/a/s;->e:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/google/api/client/a/s;->d:Ljava/util/logging/Level;

    const-string v2, "UTF-8"

    .line 109
    invoke-virtual {p0, v2}, Lcom/google/api/client/a/s;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "[\\x00-\\x09\\x0B\\x0C\\x0E-\\x1F\\x7F]"

    const-string v4, " "

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 107
    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    .line 112
    iput-boolean v0, p0, Lcom/google/api/client/a/s;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized write(I)V
    .locals 2

    monitor-enter p0

    .line 69
    :try_start_0
    iget-boolean v0, p0, Lcom/google/api/client/a/s;->c:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4035
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/m;->a(Z)V

    .line 70
    iget v0, p0, Lcom/google/api/client/a/s;->a:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/api/client/a/s;->a:I

    .line 71
    iget v0, p0, Lcom/google/api/client/a/s;->count:I

    iget v1, p0, Lcom/google/api/client/a/s;->b:I

    if-ge v0, v1, :cond_1

    .line 72
    invoke-super {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized write([BII)V
    .locals 2

    monitor-enter p0

    .line 78
    :try_start_0
    iget-boolean v0, p0, Lcom/google/api/client/a/s;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5035
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/m;->a(Z)V

    .line 79
    iget v0, p0, Lcom/google/api/client/a/s;->a:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/api/client/a/s;->a:I

    .line 80
    iget v0, p0, Lcom/google/api/client/a/s;->count:I

    iget v1, p0, Lcom/google/api/client/a/s;->b:I

    if-ge v0, v1, :cond_2

    .line 81
    iget v0, p0, Lcom/google/api/client/a/s;->count:I

    add-int/2addr v0, p3

    .line 82
    iget v1, p0, Lcom/google/api/client/a/s;->b:I

    if-le v0, v1, :cond_1

    sub-int/2addr v1, v0

    add-int/2addr p3, v1

    .line 85
    :cond_1
    invoke-super {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
