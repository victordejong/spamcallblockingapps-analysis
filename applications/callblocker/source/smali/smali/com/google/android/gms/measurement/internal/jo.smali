.class public Lcom/google/android/gms/measurement/internal/jo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@17.4.2"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/gb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/measurement/internal/jo$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/google/android/gms/measurement/internal/jo;


# instance fields
.field private b:Lcom/google/android/gms/measurement/internal/ex;

.field private c:Lcom/google/android/gms/measurement/internal/eg;

.field private d:Lcom/google/android/gms/measurement/internal/c;

.field private e:Lcom/google/android/gms/measurement/internal/ej;

.field private f:Lcom/google/android/gms/measurement/internal/jk;

.field private g:Lcom/google/android/gms/measurement/internal/kf;

.field private final h:Lcom/google/android/gms/measurement/internal/js;

.field private i:Lcom/google/android/gms/measurement/internal/hn;

.field private final j:Lcom/google/android/gms/measurement/internal/fd;

.field private k:Z

.field private l:Z

.field private m:J

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private o:I

.field private p:I

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Ljava/nio/channels/FileLock;

.field private u:Ljava/nio/channels/FileChannel;

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private x:J


# direct methods
.method private constructor <init>(Lcom/google/android/gms/measurement/internal/jt;)V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/jo;-><init>(Lcom/google/android/gms/measurement/internal/jt;Lcom/google/android/gms/measurement/internal/fd;)V

    .line 14
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/measurement/internal/jt;Lcom/google/android/gms/measurement/internal/fd;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/jo;->k:Z

    .line 17
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/jt;->a:Landroid/content/Context;

    .line 19
    invoke-static {v0, v1, v1}, Lcom/google/android/gms/measurement/internal/fd;->a(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/b;Ljava/lang/Long;)Lcom/google/android/gms/measurement/internal/fd;

    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    .line 22
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/jo;->x:J

    .line 24
    new-instance v0, Lcom/google/android/gms/measurement/internal/js;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/js;-><init>(Lcom/google/android/gms/measurement/internal/jo;)V

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jl;->L()V

    .line 27
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->h:Lcom/google/android/gms/measurement/internal/js;

    .line 29
    new-instance v0, Lcom/google/android/gms/measurement/internal/eg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/eg;-><init>(Lcom/google/android/gms/measurement/internal/jo;)V

    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jl;->L()V

    .line 32
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->c:Lcom/google/android/gms/measurement/internal/eg;

    .line 34
    new-instance v0, Lcom/google/android/gms/measurement/internal/ex;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/ex;-><init>(Lcom/google/android/gms/measurement/internal/jo;)V

    .line 36
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jl;->L()V

    .line 37
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/ex;

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    .line 40
    new-instance v1, Lcom/google/android/gms/measurement/internal/jn;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/jn;-><init>(Lcom/google/android/gms/measurement/internal/jo;Lcom/google/android/gms/measurement/internal/jt;)V

    .line 41
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/fa;->a(Ljava/lang/Runnable;)V

    .line 42
    return-void
.end method

.method private final A()V
    .locals 5

    .prologue
    .line 2102
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/jo;->t()V

    .line 2103
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/jo;->q:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/jo;->r:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/jo;->s:Z

    if-eqz v0, :cond_2

    .line 2105
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 2106
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Not stopping services. fetch, network, upload"

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/jo;->q:Z

    .line 2107
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/jo;->r:Z

    .line 2108
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/android/gms/measurement/internal/jo;->s:Z

    .line 2109
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 2110
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2121
    :cond_1
    :goto_0
    return-void

    .line 2113
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 2114
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Stopping uploading service(s)"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 2115
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->n:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2117
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 2118
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 2120
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method private final B()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 2175
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/jo;->t()V

    .line 2177
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    .line 2178
    sget-object v2, Lcom/google/android/gms/measurement/internal/t;->am:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2179
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jo;->t:Ljava/nio/channels/FileLock;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jo;->t:Ljava/nio/channels/FileLock;

    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2181
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 2182
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Storage concurrent access okay"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 2215
    :goto_0
    return v0

    .line 2184
    :cond_0
    const-string/jumbo v1, "google_app_measurement.db"

    .line 2187
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->r()Landroid/content/Context;

    move-result-object v2

    .line 2188
    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    .line 2189
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2190
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "rw"

    invoke-direct {v1, v3, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/jo;->u:Ljava/nio/channels/FileChannel;

    .line 2191
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jo;->u:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/jo;->t:Ljava/nio/channels/FileLock;

    .line 2192
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jo;->t:Ljava/nio/channels/FileLock;

    if-eqz v1, :cond_1

    .line 2194
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 2195
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Storage concurrent access okay"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 2201
    :catch_0
    move-exception v0

    .line 2203
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 2204
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Failed to acquire storage lock"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2215
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2198
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 2199
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Storage concurrent data access panic"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 2206
    :catch_1
    move-exception v0

    .line 2208
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 2209
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Failed to access storage lock file"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 2211
    :catch_2
    move-exception v0

    .line 2213
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 2214
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Storage lock already acquired"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private final a(Ljava/nio/channels/FileChannel;)I
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v0, 0x0

    .line 2216
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/jo;->t()V

    .line 2217
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2219
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 2220
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Bad channel to read from"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 2239
    :cond_1
    :goto_0
    return v0

    .line 2223
    :cond_2
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2224
    const-wide/16 v2, 0x0

    :try_start_0
    invoke-virtual {p1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 2225
    invoke-virtual {p1, v1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 2226
    if-eq v2, v4, :cond_3

    .line 2227
    const/4 v1, -0x1

    if-eq v2, v1, :cond_1

    .line 2229
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 2230
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v3, "Unexpected data length. Bytes read"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2235
    :catch_0
    move-exception v1

    .line 2237
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 2238
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Failed to read from channel"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 2232
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 2233
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0
.end method

.method private final a(Lcom/google/android/gms/measurement/internal/kb;Lcom/google/android/gms/measurement/internal/fg;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/fg;
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    .line 2847
    const/4 v0, 0x0

    .line 2848
    if-nez p2, :cond_12

    .line 2849
    new-instance p2, Lcom/google/android/gms/measurement/internal/fg;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/kb;->a:Ljava/lang/String;

    invoke-direct {p2, v0, v2}, Lcom/google/android/gms/measurement/internal/fg;-><init>(Lcom/google/android/gms/measurement/internal/fd;Ljava/lang/String;)V

    .line 2851
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->i()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v0

    .line 2852
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jw;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/fg;->a(Ljava/lang/String;)V

    .line 2853
    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/fg;->e(Ljava/lang/String;)V

    move v0, v1

    .line 2861
    :cond_0
    :goto_0
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/kb;->b:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/fg;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2862
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/kb;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/fg;->b(Ljava/lang/String;)V

    move v0, v1

    .line 2864
    :cond_1
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/kb;->r:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/fg;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2865
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/kb;->r:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/fg;->c(Ljava/lang/String;)V

    move v0, v1

    .line 2867
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/jy;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2868
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    .line 2869
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/fg;->c()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/t;->ao:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/b;->e(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2870
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/kb;->v:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/fg;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2871
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/kb;->v:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/fg;->d(Ljava/lang/String;)V

    move v0, v1

    .line 2873
    :cond_3
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/kb;->k:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/kb;->k:Ljava/lang/String;

    .line 2874
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/fg;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2875
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/kb;->k:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/fg;->f(Ljava/lang/String;)V

    move v0, v1

    .line 2877
    :cond_4
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/kb;->e:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_5

    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/kb;->e:J

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/fg;->o()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    .line 2878
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/kb;->e:J

    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/measurement/internal/fg;->d(J)V

    move v0, v1

    .line 2880
    :cond_5
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/kb;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/kb;->c:Ljava/lang/String;

    .line 2881
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/fg;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 2882
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/kb;->c:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/fg;->g(Ljava/lang/String;)V

    move v0, v1

    .line 2884
    :cond_6
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/kb;->j:J

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/fg;->m()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7

    .line 2885
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/kb;->j:J

    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/measurement/internal/fg;->c(J)V

    move v0, v1

    .line 2887
    :cond_7
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/kb;->d:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/kb;->d:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/fg;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 2888
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/kb;->d:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/fg;->h(Ljava/lang/String;)V

    move v0, v1

    .line 2890
    :cond_8
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/kb;->f:J

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/fg;->p()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9

    .line 2891
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/kb;->f:J

    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/measurement/internal/fg;->e(J)V

    move v0, v1

    .line 2893
    :cond_9
    iget-boolean v2, p1, Lcom/google/android/gms/measurement/internal/kb;->h:Z

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/fg;->r()Z

    move-result v3

    if-eq v2, v3, :cond_a

    .line 2894
    iget-boolean v0, p1, Lcom/google/android/gms/measurement/internal/kb;->h:Z

    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/fg;->a(Z)V

    move v0, v1

    .line 2896
    :cond_a
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/kb;->g:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/kb;->g:Ljava/lang/String;

    .line 2897
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/fg;->C()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 2898
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/kb;->g:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/fg;->i(Ljava/lang/String;)V

    move v0, v1

    .line 2901
    :cond_b
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    .line 2902
    sget-object v3, Lcom/google/android/gms/measurement/internal/t;->aM:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 2903
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/kb;->l:J

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/fg;->E()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_c

    .line 2904
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/kb;->l:J

    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/measurement/internal/fg;->p(J)V

    move v0, v1

    .line 2906
    :cond_c
    iget-boolean v2, p1, Lcom/google/android/gms/measurement/internal/kb;->o:Z

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/fg;->F()Z

    move-result v3

    if-eq v2, v3, :cond_d

    .line 2907
    iget-boolean v0, p1, Lcom/google/android/gms/measurement/internal/kb;->o:Z

    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/fg;->b(Z)V

    move v0, v1

    .line 2909
    :cond_d
    iget-boolean v2, p1, Lcom/google/android/gms/measurement/internal/kb;->p:Z

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/fg;->G()Z

    move-result v3

    if-eq v2, v3, :cond_e

    .line 2910
    iget-boolean v0, p1, Lcom/google/android/gms/measurement/internal/kb;->p:Z

    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/fg;->c(Z)V

    move v0, v1

    .line 2912
    :cond_e
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/kb;->s:Ljava/lang/Boolean;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/fg;->H()Ljava/lang/Boolean;

    move-result-object v3

    if-eq v2, v3, :cond_f

    .line 2913
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/kb;->s:Ljava/lang/Boolean;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/fg;->a(Ljava/lang/Boolean;)V

    move v0, v1

    .line 2915
    :cond_f
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/kb;->t:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_10

    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/kb;->t:J

    .line 2916
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/fg;->q()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_10

    .line 2917
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/kb;->t:J

    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/measurement/internal/fg;->f(J)V

    move v0, v1

    .line 2919
    :cond_10
    if-eqz v0, :cond_11

    .line 2920
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/measurement/internal/c;->a(Lcom/google/android/gms/measurement/internal/fg;)V

    .line 2921
    :cond_11
    return-object p2

    .line 2855
    :cond_12
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/fg;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2856
    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/fg;->e(Ljava/lang/String;)V

    .line 2858
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->i()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v0

    .line 2859
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jw;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/fg;->a(Ljava/lang/String;)V

    move v0, v1

    .line 2860
    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/measurement/internal/jo;
    .locals 3

    .prologue
    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/google/android/gms/measurement/internal/jo;->a:Lcom/google/android/gms/measurement/internal/jo;

    if-nez v0, :cond_1

    .line 4
    const-class v1, Lcom/google/android/gms/measurement/internal/jo;

    monitor-enter v1

    .line 5
    :try_start_0
    sget-object v0, Lcom/google/android/gms/measurement/internal/jo;->a:Lcom/google/android/gms/measurement/internal/jo;

    if-nez v0, :cond_0

    .line 7
    new-instance v0, Lcom/google/android/gms/measurement/internal/jt;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/jt;-><init>(Landroid/content/Context;)V

    .line 9
    new-instance v2, Lcom/google/android/gms/measurement/internal/jo;

    invoke-direct {v2, v0}, Lcom/google/android/gms/measurement/internal/jo;-><init>(Lcom/google/android/gms/measurement/internal/jt;)V

    .line 10
    sput-object v2, Lcom/google/android/gms/measurement/internal/jo;->a:Lcom/google/android/gms/measurement/internal/jo;

    .line 11
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :cond_1
    sget-object v0, Lcom/google/android/gms/measurement/internal/jo;->a:Lcom/google/android/gms/measurement/internal/jo;

    return-object v0

    .line 11
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private final a(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/kb;
    .locals 32

    .prologue
    .line 2674
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/c;->b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/fg;

    move-result-object v2

    .line 2675
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fg;->l()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2677
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 2678
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->i()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "No app data available; dropping"

    move-object/from16 v0, p1

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2679
    const/4 v3, 0x0

    .line 2708
    :goto_0
    return-object v3

    .line 2680
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gms/measurement/internal/jo;->b(Lcom/google/android/gms/measurement/internal/fg;)Ljava/lang/Boolean;

    move-result-object v3

    .line 2681
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2683
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 2684
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "App version does not match; dropping. appId"

    .line 2685
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2686
    const/4 v3, 0x0

    goto :goto_0

    .line 2687
    :cond_2
    new-instance v3, Lcom/google/android/gms/measurement/internal/kb;

    .line 2688
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fg;->e()Ljava/lang/String;

    move-result-object v5

    .line 2689
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fg;->l()Ljava/lang/String;

    move-result-object v6

    .line 2690
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fg;->m()J

    move-result-wide v7

    .line 2691
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fg;->n()Ljava/lang/String;

    move-result-object v9

    .line 2692
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fg;->o()J

    move-result-wide v10

    .line 2693
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fg;->p()J

    move-result-wide v12

    const/4 v14, 0x0

    .line 2694
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fg;->r()Z

    move-result v15

    const/16 v16, 0x0

    .line 2695
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fg;->i()Ljava/lang/String;

    move-result-object v17

    .line 2696
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fg;->E()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    .line 2697
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fg;->F()Z

    move-result v23

    .line 2698
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fg;->G()Z

    move-result v24

    const/16 v25, 0x0

    .line 2699
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fg;->f()Ljava/lang/String;

    move-result-object v26

    .line 2700
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fg;->H()Ljava/lang/Boolean;

    move-result-object v27

    .line 2701
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fg;->q()J

    move-result-wide v28

    .line 2702
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fg;->I()Ljava/util/List;

    move-result-object v30

    .line 2703
    invoke-static {}, Lcom/google/android/gms/internal/measurement/jy;->b()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2704
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fd;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v4

    .line 2705
    sget-object v31, Lcom/google/android/gms/measurement/internal/t;->ao:Lcom/google/android/gms/measurement/internal/dr;

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v4, v0, v1}, Lcom/google/android/gms/measurement/internal/b;->e(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2706
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fg;->g()Ljava/lang/String;

    move-result-object v31

    :goto_1
    move-object/from16 v4, p1

    .line 2707
    invoke-direct/range {v3 .. v31}, Lcom/google/android/gms/measurement/internal/kb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const/16 v31, 0x0

    goto :goto_1
.end method

.method private static a(Lcom/google/android/gms/internal/measurement/ao$c$a;ILjava/lang/String;)V
    .locals 4

    .prologue
    .line 1730
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ao$c$a;->a()Ljava/util/List;

    move-result-object v2

    .line 1731
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1732
    const-string/jumbo v3, "_err"

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$e;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1744
    :goto_1
    return-void

    .line 1734
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1735
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ao$e;->k()Lcom/google/android/gms/internal/measurement/ao$e$a;

    move-result-object v0

    const-string/jumbo v1, "_err"

    .line 1736
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/ao$e$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$e$a;

    move-result-object v0

    int-to-long v2, p1

    .line 1737
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/ao$e$a;->a(J)Lcom/google/android/gms/internal/measurement/ao$e$a;

    move-result-object v0

    .line 1738
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ed$b;->u()Lcom/google/android/gms/internal/measurement/fn;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$e;

    .line 1739
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ao$e;->k()Lcom/google/android/gms/internal/measurement/ao$e$a;

    move-result-object v1

    const-string/jumbo v2, "_ev"

    .line 1740
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/ao$e$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$e$a;

    move-result-object v1

    .line 1741
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/measurement/ao$e$a;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$e$a;

    move-result-object v1

    .line 1742
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ed$b;->u()Lcom/google/android/gms/internal/measurement/fn;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/ed;

    check-cast v1, Lcom/google/android/gms/internal/measurement/ao$e;

    .line 1743
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/ao$c$a;->a(Lcom/google/android/gms/internal/measurement/ao$e;)Lcom/google/android/gms/internal/measurement/ao$c$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/ao$c$a;->a(Lcom/google/android/gms/internal/measurement/ao$e;)Lcom/google/android/gms/internal/measurement/ao$c$a;

    goto :goto_1
.end method

.method private static a(Lcom/google/android/gms/internal/measurement/ao$c$a;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1722
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ao$c$a;->a()Ljava/util/List;

    move-result-object v2

    .line 1723
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1724
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$e;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1726
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/ao$c$a;->b(I)Lcom/google/android/gms/internal/measurement/ao$c$a;

    .line 1729
    :cond_0
    return-void

    .line 1728
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private static a(Lcom/google/android/gms/internal/measurement/ao$g$a;)V
    .locals 6

    .prologue
    .line 1644
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/ao$g$a;->b(J)Lcom/google/android/gms/internal/measurement/ao$g$a;

    move-result-object v0

    const-wide/high16 v2, -0x8000000000000000L

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/ao$g$a;->c(J)Lcom/google/android/gms/internal/measurement/ao$g$a;

    .line 1645
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ao$g$a;->b()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1646
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/ao$g$a;->b(I)Lcom/google/android/gms/internal/measurement/ao$c;

    move-result-object v1

    .line 1647
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ao$c;->e()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ao$g$a;->f()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 1648
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ao$c;->e()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/internal/measurement/ao$g$a;->b(J)Lcom/google/android/gms/internal/measurement/ao$g$a;

    .line 1649
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ao$c;->e()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ao$g$a;->g()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 1650
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ao$c;->e()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/internal/measurement/ao$g$a;->c(J)Lcom/google/android/gms/internal/measurement/ao$g$a;

    .line 1651
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1652
    :cond_2
    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/measurement/ao$g$a;JZ)V
    .locals 8

    .prologue
    .line 1653
    const-string/jumbo v3, "_lte"

    .line 1654
    if-eqz p4, :cond_0

    .line 1655
    const-string/jumbo v3, "_se"

    .line 1657
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ao$g$a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/measurement/internal/c;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/jx;

    move-result-object v6

    .line 1658
    if-eqz v6, :cond_1

    iget-object v0, v6, Lcom/google/android/gms/measurement/internal/jx;->e:Ljava/lang/Object;

    if-nez v0, :cond_6

    .line 1659
    :cond_1
    new-instance v0, Lcom/google/android/gms/measurement/internal/jx;

    .line 1660
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ao$g$a;->j()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "auto"

    .line 1661
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fd;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v4

    .line 1662
    invoke-interface {v4}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v4

    .line 1663
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/jx;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    move-object v1, v0

    .line 1669
    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ao$k;->j()Lcom/google/android/gms/internal/measurement/ao$k$a;

    move-result-object v0

    .line 1670
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/ao$k$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$k$a;

    move-result-object v0

    .line 1671
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v2

    .line 1672
    invoke-interface {v2}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/measurement/ao$k$a;->a(J)Lcom/google/android/gms/internal/measurement/ao$k$a;

    move-result-object v2

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/jx;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 1673
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/measurement/ao$k$a;->b(J)Lcom/google/android/gms/internal/measurement/ao$k$a;

    move-result-object v0

    .line 1674
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ed$b;->u()Lcom/google/android/gms/internal/measurement/fn;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$k;

    .line 1675
    const/4 v2, 0x0

    .line 1677
    invoke-static {p1, v3}, Lcom/google/android/gms/measurement/internal/js;->a(Lcom/google/android/gms/internal/measurement/ao$g$a;Ljava/lang/String;)I

    move-result v3

    .line 1678
    if-ltz v3, :cond_2

    .line 1679
    invoke-virtual {p1, v3, v0}, Lcom/google/android/gms/internal/measurement/ao$g$a;->a(ILcom/google/android/gms/internal/measurement/ao$k;)Lcom/google/android/gms/internal/measurement/ao$g$a;

    .line 1680
    const/4 v2, 0x1

    .line 1681
    :cond_2
    if-nez v2, :cond_3

    .line 1682
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/ao$g$a;->a(Lcom/google/android/gms/internal/measurement/ao$k;)Lcom/google/android/gms/internal/measurement/ao$g$a;

    .line 1683
    :cond_3
    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-lez v0, :cond_5

    .line 1684
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/c;->a(Lcom/google/android/gms/measurement/internal/jx;)Z

    .line 1685
    const-string/jumbo v0, "lifetime"

    .line 1686
    if-eqz p4, :cond_4

    .line 1687
    const-string/jumbo v0, "session-scoped"

    .line 1689
    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 1690
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Updated engagement user property. scope, value"

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/jx;->e:Ljava/lang/Object;

    .line 1691
    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1692
    :cond_5
    return-void

    .line 1664
    :cond_6
    new-instance v0, Lcom/google/android/gms/measurement/internal/jx;

    .line 1665
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ao$g$a;->j()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "auto"

    .line 1666
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fd;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v4

    .line 1667
    invoke-interface {v4}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v4

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/jx;->e:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    .line 1668
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v6, p2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/jx;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    move-object v1, v0

    goto/16 :goto_0
.end method

.method private final a(Lcom/google/android/gms/measurement/internal/fg;)V
    .locals 10

    .prologue
    const/16 v2, 0xcc

    const/4 v3, 0x0

    .line 1834
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/jo;->t()V

    .line 1835
    invoke-static {}, Lcom/google/android/gms/internal/measurement/jy;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1836
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 1837
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fg;->c()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/google/android/gms/measurement/internal/t;->ao:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/measurement/internal/b;->e(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1838
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fg;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1839
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fg;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1840
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fg;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1841
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fg;->c()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/jo;->a(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    .line 1878
    :goto_0
    return-void

    .line 1843
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fg;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1844
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fg;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1845
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fg;->c()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/jo;->a(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    goto :goto_0

    .line 1848
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 1849
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/fg;)Ljava/lang/String;

    move-result-object v7

    .line 1850
    :try_start_0
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1852
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 1853
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Fetching remote configuration"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fg;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1855
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/ex;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fg;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ex;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/al$b;

    move-result-object v0

    .line 1857
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/ex;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fg;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/ex;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1858
    if-eqz v0, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1859
    new-instance v3, Landroidx/b/a;

    invoke-direct {v3}, Landroidx/b/a;-><init>()V

    .line 1860
    const-string/jumbo v0, "If-Modified-Since"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v3

    .line 1861
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/jo;->q:Z

    .line 1862
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->d()Lcom/google/android/gms/measurement/internal/eg;

    move-result-object v1

    .line 1863
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fg;->c()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Lcom/google/android/gms/measurement/internal/jp;

    invoke-direct {v6, p0}, Lcom/google/android/gms/measurement/internal/jp;-><init>(Lcom/google/android/gms/measurement/internal/jo;)V

    .line 1865
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 1866
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/jl;->K()V

    .line 1867
    invoke-static {v8}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1868
    invoke-static {v6}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1869
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fz;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v9

    new-instance v0, Lcom/google/android/gms/measurement/internal/ek;

    const/4 v4, 0x0

    move-object v3, v8

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/ek;-><init>(Lcom/google/android/gms/measurement/internal/eg;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/ei;)V

    .line 1870
    invoke-virtual {v9, v0}, Lcom/google/android/gms/measurement/internal/fa;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1873
    :catch_0
    move-exception v0

    .line 1874
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 1875
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Failed to parse config URL. Not fetching. appId"

    .line 1876
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fg;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1877
    invoke-virtual {v0, v1, v2, v7}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_2
    move-object v5, v3

    goto :goto_1
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/jo;Lcom/google/android/gms/measurement/internal/jt;)V
    .locals 0

    .prologue
    .line 2997
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/jt;)V

    return-void
.end method

.method private final a(Lcom/google/android/gms/measurement/internal/jt;)V
    .locals 4

    .prologue
    .line 43
    .line 44
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 47
    new-instance v0, Lcom/google/android/gms/measurement/internal/c;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/c;-><init>(Lcom/google/android/gms/measurement/internal/jo;)V

    .line 49
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jl;->L()V

    .line 50
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->d:Lcom/google/android/gms/measurement/internal/c;

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/ex;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/d;)V

    .line 55
    new-instance v0, Lcom/google/android/gms/measurement/internal/kf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/kf;-><init>(Lcom/google/android/gms/measurement/internal/jo;)V

    .line 57
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jl;->L()V

    .line 58
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->g:Lcom/google/android/gms/measurement/internal/kf;

    .line 60
    new-instance v0, Lcom/google/android/gms/measurement/internal/hn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/hn;-><init>(Lcom/google/android/gms/measurement/internal/jo;)V

    .line 62
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jl;->L()V

    .line 63
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->i:Lcom/google/android/gms/measurement/internal/hn;

    .line 65
    new-instance v0, Lcom/google/android/gms/measurement/internal/jk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/jk;-><init>(Lcom/google/android/gms/measurement/internal/jo;)V

    .line 67
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jl;->L()V

    .line 68
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->f:Lcom/google/android/gms/measurement/internal/jk;

    .line 70
    new-instance v0, Lcom/google/android/gms/measurement/internal/ej;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/ej;-><init>(Lcom/google/android/gms/measurement/internal/jo;)V

    .line 71
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->e:Lcom/google/android/gms/measurement/internal/ej;

    .line 72
    iget v0, p0, Lcom/google/android/gms/measurement/internal/jo;->o:I

    iget v1, p0, Lcom/google/android/gms/measurement/internal/jo;->p:I

    if-eq v0, v1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Not all upload components initialized"

    iget v2, p0, Lcom/google/android/gms/measurement/internal/jo;->o:I

    .line 76
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/measurement/internal/jo;->p:I

    .line 77
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 78
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 79
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/jo;->k:Z

    .line 80
    return-void
.end method

.method private final a(ILjava/nio/channels/FileChannel;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2240
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/jo;->t()V

    .line 2241
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2243
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 2244
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v2, "Bad channel to read from"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    move v0, v1

    .line 2266
    :cond_1
    :goto_0
    return v0

    .line 2247
    :cond_2
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 2248
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2249
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 2250
    const-wide/16 v4, 0x0

    :try_start_0
    invoke-virtual {p2, v4, v5}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 2252
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/fd;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v3

    .line 2253
    sget-object v4, Lcom/google/android/gms/measurement/internal/t;->az:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-gt v3, v4, :cond_3

    .line 2254
    const-wide/16 v4, 0x0

    invoke-virtual {p2, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 2255
    :cond_3
    invoke-virtual {p2, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 2256
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 2257
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 2259
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 2260
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Error writing to channel. Bytes written"

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2262
    :catch_0
    move-exception v0

    .line 2264
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 2265
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Failed to write to channel"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    move v0, v1

    .line 2266
    goto :goto_0
.end method

.method private final a(Lcom/google/android/gms/internal/measurement/ao$c$a;Lcom/google/android/gms/internal/measurement/ao$c$a;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1693
    const-string/jumbo v0, "_e"

    .line 1694
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ao$c$a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1695
    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->b(Z)V

    .line 1697
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->h()Lcom/google/android/gms/measurement/internal/js;

    .line 1698
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ed$b;->u()Lcom/google/android/gms/internal/measurement/fn;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$c;

    const-string/jumbo v1, "_sc"

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/js;->a(Lcom/google/android/gms/internal/measurement/ao$c;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$e;

    move-result-object v0

    .line 1699
    if-nez v0, :cond_0

    move-object v1, v2

    .line 1701
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->h()Lcom/google/android/gms/measurement/internal/js;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/ed$b;->u()Lcom/google/android/gms/internal/measurement/fn;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$c;

    const-string/jumbo v3, "_pc"

    invoke-static {v0, v3}, Lcom/google/android/gms/measurement/internal/js;->a(Lcom/google/android/gms/internal/measurement/ao$c;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$e;

    move-result-object v0

    .line 1702
    if-nez v0, :cond_1

    .line 1703
    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1704
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/jo;->b(Lcom/google/android/gms/internal/measurement/ao$c$a;Lcom/google/android/gms/internal/measurement/ao$c$a;)V

    .line 1705
    const/4 v0, 0x1

    .line 1706
    :goto_2
    return v0

    .line 1699
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$e;->d()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 1702
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$e;->d()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1706
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private final a(Ljava/lang/String;J)Z
    .locals 32

    .prologue
    .line 968
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/c;->b()V

    .line 969
    :try_start_0
    new-instance v23, Lcom/google/android/gms/measurement/internal/jo$a;

    const/4 v2, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/jo$a;-><init>(Lcom/google/android/gms/measurement/internal/jo;Lcom/google/android/gms/measurement/internal/jn;)V

    .line 970
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v14

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gms/measurement/internal/jo;->x:J

    move-wide/from16 v16, v0

    .line 972
    invoke-static/range {v23 .. v23}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 974
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/jl;->K()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 975
    const/4 v3, 0x0

    .line 976
    :try_start_1
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/c;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 977
    const/4 v5, 0x0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 978
    const-wide/16 v6, -0x1

    cmp-long v5, v16, v6

    if-eqz v5, :cond_3

    .line 979
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 980
    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object v6, v5

    .line 983
    :goto_0
    const-wide/16 v8, -0x1

    cmp-long v5, v16, v8

    if-eqz v5, :cond_4

    const-string/jumbo v5, "rowid <= ? and "

    :goto_1
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit16 v7, v7, 0x94

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v7, "select app_id, metadata_fingerprint from raw_events where "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "app_id in (select app_id from apps where config_fetched_time >= ?) order by rowid limit 1;"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 984
    invoke-virtual {v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 985
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    if-nez v5, :cond_5

    .line 986
    if-eqz v3, :cond_0

    .line 987
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1074
    :cond_0
    :goto_2
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo$a;->c:Ljava/util/List;

    if-eqz v2, :cond_1

    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo$a;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_1
    const/4 v2, 0x1

    .line 1075
    :goto_3
    if-nez v2, :cond_6a

    .line 1076
    const/16 v20, 0x0

    .line 1077
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo$a;->a:Lcom/google/android/gms/internal/measurement/ao$g;

    .line 1078
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ed;->am()Lcom/google/android/gms/internal/measurement/ed$b;

    move-result-object v2

    .line 1079
    check-cast v2, Lcom/google/android/gms/internal/measurement/ed$b;

    check-cast v2, Lcom/google/android/gms/internal/measurement/ao$g$a;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ao$g$a;->c()Lcom/google/android/gms/internal/measurement/ao$g$a;

    move-result-object v24

    .line 1080
    const/16 v17, 0x0

    .line 1081
    const-wide/16 v18, 0x0

    .line 1083
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    .line 1084
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/jo$a;->a:Lcom/google/android/gms/internal/measurement/ao$g;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/ao$g;->x()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/t;->U:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/b;->e(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v22

    .line 1085
    const/16 v16, 0x0

    .line 1086
    const/4 v15, -0x1

    .line 1087
    const/4 v14, 0x0

    .line 1088
    const/4 v13, -0x1

    .line 1089
    const/4 v2, 0x0

    move/from16 v21, v2

    :goto_4
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo$a;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v21

    if-ge v0, v2, :cond_34

    .line 1091
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo$a;->c:Ljava/util/List;

    move/from16 v0, v21

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ao$c;

    .line 1092
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ed;->am()Lcom/google/android/gms/internal/measurement/ed$b;

    move-result-object v2

    .line 1093
    check-cast v2, Lcom/google/android/gms/internal/measurement/ed$b;

    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$c$a;

    move-object v12, v0

    .line 1094
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/ex;

    move-result-object v2

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/jo$a;->a:Lcom/google/android/gms/internal/measurement/ao$g;

    .line 1095
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/ao$g;->x()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/ao$c$a;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/ex;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1097
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 1098
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Dropping blacklisted raw event. appId"

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/jo$a;->a:Lcom/google/android/gms/internal/measurement/ao$g;

    .line 1099
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ao$g;->x()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1100
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/fd;->j()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v5

    .line 1101
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/ao$c$a;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/dw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1102
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1104
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/ex;

    move-result-object v2

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/jo$a;->a:Lcom/google/android/gms/internal/measurement/ao$g;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/ao$g;->x()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/ex;->g(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1105
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/ex;

    move-result-object v2

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/jo$a;->a:Lcom/google/android/gms/internal/measurement/ao$g;

    .line 1106
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/ao$g;->x()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/ex;->h(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_2
    const/4 v2, 0x1

    .line 1107
    :goto_5
    if-nez v2, :cond_74

    const-string/jumbo v2, "_err"

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/ao$c$a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_74

    .line 1109
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->i()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v2

    .line 1110
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/jo$a;->a:Lcom/google/android/gms/internal/measurement/ao$g;

    .line 1111
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/ao$g;->x()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xb

    const-string/jumbo v5, "_ev"

    .line 1112
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/ao$c$a;->d()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 1113
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/jw;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v2, v13

    move-object v4, v14

    move v5, v15

    move-object/from16 v6, v16

    move-wide/from16 v8, v18

    move/from16 v7, v17

    move/from16 v10, v20

    .line 1354
    :goto_6
    add-int/lit8 v3, v21, 0x1

    move/from16 v21, v3

    move v13, v2

    move-object v14, v4

    move v15, v5

    move-object/from16 v16, v6

    move-wide/from16 v18, v8

    move/from16 v17, v7

    move/from16 v20, v10

    goto/16 :goto_4

    .line 981
    :cond_3
    const/4 v5, 0x1

    :try_start_3
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object v6, v5

    goto/16 :goto_0

    .line 983
    :cond_4
    const-string/jumbo v5, ""

    goto/16 :goto_1

    .line 989
    :cond_5
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 990
    const/4 v5, 0x1

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 991
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v13, v5

    move-object v11, v3

    move-object v12, v4

    .line 1005
    :goto_7
    :try_start_4
    const-string/jumbo v3, "raw_events_metadata"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "metadata"

    aput-object v6, v4, v5

    const-string/jumbo v5, "app_id = ? and metadata_fingerprint = ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v12, v6, v7

    const/4 v7, 0x1

    aput-object v13, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string/jumbo v9, "rowid"

    const-string/jumbo v10, "2"

    .line 1006
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1007
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_a

    .line 1008
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 1009
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Raw event metadata record is missing. appId"

    .line 1010
    invoke-static {v12}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1011
    if-eqz v11, :cond_0

    .line 1012
    :try_start_5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .line 1642
    :catchall_0
    move-exception v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/c;->s_()V

    .line 1643
    throw v2

    .line 993
    :cond_6
    const-wide/16 v6, -0x1

    cmp-long v5, v16, v6

    if-eqz v5, :cond_7

    .line 994
    const/4 v5, 0x2

    :try_start_6
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object v6, v5

    .line 997
    :goto_8
    const-wide/16 v8, -0x1

    cmp-long v5, v16, v8

    if-eqz v5, :cond_8

    const-string/jumbo v5, " and rowid <= ?"

    :goto_9
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x54

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v7, "select metadata_fingerprint from raw_events where app_id = ?"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " order by rowid limit 1;"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 998
    invoke-virtual {v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 999
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v5

    if-nez v5, :cond_9

    .line 1000
    if-eqz v3, :cond_0

    .line 1001
    :try_start_7
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    .line 995
    :cond_7
    const/4 v5, 0x1

    :try_start_8
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput-object v7, v5, v6

    move-object v6, v5

    goto :goto_8

    .line 997
    :cond_8
    const-string/jumbo v5, ""

    goto :goto_9

    .line 1003
    :cond_9
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1004
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object v13, v5

    move-object v11, v3

    move-object v12, v4

    goto/16 :goto_7

    .line 1014
    :cond_a
    const/4 v3, 0x0

    :try_start_9
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-result-object v3

    .line 1015
    :try_start_a
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ao$g;->af()Lcom/google/android/gms/internal/measurement/ao$g$a;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/google/android/gms/measurement/internal/js;->a(Lcom/google/android/gms/internal/measurement/fm;[B)Lcom/google/android/gms/internal/measurement/fm;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/ao$g$a;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/ed$b;->u()Lcom/google/android/gms/internal/measurement/fn;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/ed;

    check-cast v3, Lcom/google/android/gms/internal/measurement/ao$g;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 1025
    :try_start_b
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1026
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v4

    .line 1027
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v4

    const-string/jumbo v5, "Get multiple raw event metadata records, expected one. appId"

    .line 1028
    invoke-static {v12}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 1029
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1030
    :cond_b
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1031
    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Lcom/google/android/gms/measurement/internal/e;->a(Lcom/google/android/gms/internal/measurement/ao$g;)V

    .line 1032
    const-wide/16 v4, -0x1

    cmp-long v3, v16, v4

    if-eqz v3, :cond_c

    .line 1033
    const-string/jumbo v5, "app_id = ? and metadata_fingerprint = ? and rowid <= ?"

    .line 1034
    const/4 v3, 0x3

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v12, v6, v3

    const/4 v3, 0x1

    aput-object v13, v6, v3

    const/4 v3, 0x2

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    .line 1037
    :goto_a
    const-string/jumbo v3, "raw_events"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "rowid"

    aput-object v8, v4, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "name"

    aput-object v8, v4, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "timestamp"

    aput-object v8, v4, v7

    const/4 v7, 0x3

    const-string/jumbo v8, "data"

    aput-object v8, v4, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string/jumbo v9, "rowid"

    const/4 v10, 0x0

    .line 1038
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move-result-object v3

    .line 1039
    :try_start_c
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_d

    .line 1040
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 1041
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v4, "Raw event data disappeared while in transaction. appId"

    .line 1042
    invoke-static {v12}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 1043
    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 1044
    if-eqz v3, :cond_0

    .line 1045
    :try_start_d
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_2

    .line 1017
    :catch_0
    move-exception v2

    .line 1018
    :try_start_e
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v3

    .line 1019
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v3

    const-string/jumbo v4, "Data loss. Failed to merge raw event metadata. appId"

    .line 1020
    invoke-static {v12}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 1021
    invoke-virtual {v3, v4, v5, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 1022
    if-eqz v11, :cond_0

    .line 1023
    :try_start_f
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_2

    .line 1035
    :cond_c
    :try_start_10
    const-string/jumbo v5, "app_id = ? and metadata_fingerprint = ?"

    .line 1036
    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v12, v6, v3

    const/4 v3, 0x1

    aput-object v13, v6, v3
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    goto :goto_a

    .line 1064
    :catch_1
    move-exception v2

    move-object v3, v11

    move-object v4, v12

    .line 1065
    :goto_b
    :try_start_11
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v5

    .line 1066
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v5

    const-string/jumbo v6, "Data loss. Error selecting raw event. appId"

    .line 1067
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v6, v4, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 1068
    if-eqz v3, :cond_0

    .line 1069
    :try_start_12
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_2

    .line 1047
    :cond_d
    const/4 v2, 0x0

    :try_start_13
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1048
    const/4 v2, 0x3

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_5
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    move-result-object v2

    .line 1049
    :try_start_14
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ao$c;->j()Lcom/google/android/gms/internal/measurement/ao$c$a;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/google/android/gms/measurement/internal/js;->a(Lcom/google/android/gms/internal/measurement/fm;[B)Lcom/google/android/gms/internal/measurement/fm;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ao$c$a;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_14} :catch_5
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 1056
    const/4 v6, 0x1

    :try_start_15
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/ao$c$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$c$a;

    move-result-object v6

    const/4 v7, 0x2

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/google/android/gms/internal/measurement/ao$c$a;->a(J)Lcom/google/android/gms/internal/measurement/ao$c$a;

    .line 1057
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ed$b;->u()Lcom/google/android/gms/internal/measurement/fn;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ed;

    check-cast v2, Lcom/google/android/gms/internal/measurement/ao$c;

    move-object/from16 v0, v23

    invoke-interface {v0, v4, v5, v2}, Lcom/google/android/gms/measurement/internal/e;->a(JLcom/google/android/gms/internal/measurement/ao$c;)Z
    :try_end_15
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_15} :catch_5
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    move-result v2

    if-nez v2, :cond_e

    .line 1058
    if-eqz v3, :cond_0

    .line 1059
    :try_start_16
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto/16 :goto_2

    .line 1051
    :catch_2
    move-exception v2

    .line 1052
    :try_start_17
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v4

    .line 1053
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v4

    const-string/jumbo v5, "Data loss. Failed to merge raw event. appId"

    .line 1054
    invoke-static {v12}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1061
    :cond_e
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_17
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_17 .. :try_end_17} :catch_5
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    move-result v2

    if-nez v2, :cond_d

    .line 1062
    if-eqz v3, :cond_0

    .line 1063
    :try_start_18
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 1070
    :catchall_1
    move-exception v2

    :goto_c
    if-eqz v3, :cond_f

    .line 1071
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1072
    :cond_f
    throw v2

    .line 1074
    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 1106
    :cond_11
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 1115
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/ex;

    move-result-object v2

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/jo$a;->a:Lcom/google/android/gms/internal/measurement/ao$g;

    .line 1116
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/ao$g;->x()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/ao$c$a;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/ex;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v25

    .line 1117
    if-nez v25, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->h()Lcom/google/android/gms/measurement/internal/js;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/ao$c$a;->d()Ljava/lang/String;

    move-result-object v3

    .line 1118
    invoke-static {v3}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1119
    const/4 v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_13
    :goto_d
    packed-switch v2, :pswitch_data_0

    .line 1121
    const/4 v2, 0x0

    .line 1122
    :goto_e
    if-eqz v2, :cond_1f

    .line 1123
    :cond_14
    const/4 v4, 0x0

    .line 1124
    const/4 v3, 0x0

    .line 1125
    const/4 v2, 0x0

    move v5, v2

    :goto_f
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/ao$c$a;->b()I

    move-result v2

    if-ge v5, v2, :cond_17

    .line 1126
    const-string/jumbo v2, "_c"

    invoke-virtual {v12, v5}, Lcom/google/android/gms/internal/measurement/ao$c$a;->a(I)Lcom/google/android/gms/internal/measurement/ao$e;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ao$e;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1128
    invoke-virtual {v12, v5}, Lcom/google/android/gms/internal/measurement/ao$c$a;->a(I)Lcom/google/android/gms/internal/measurement/ao$e;

    move-result-object v2

    .line 1129
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ed;->am()Lcom/google/android/gms/internal/measurement/ed$b;

    move-result-object v2

    .line 1130
    check-cast v2, Lcom/google/android/gms/internal/measurement/ed$b;

    check-cast v2, Lcom/google/android/gms/internal/measurement/ao$e$a;

    const-wide/16 v6, 0x1

    .line 1131
    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/measurement/ao$e$a;->a(J)Lcom/google/android/gms/internal/measurement/ao$e$a;

    move-result-object v2

    .line 1132
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ed$b;->u()Lcom/google/android/gms/internal/measurement/fn;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ed;

    check-cast v2, Lcom/google/android/gms/internal/measurement/ao$e;

    .line 1133
    const/4 v4, 0x1

    .line 1134
    invoke-virtual {v12, v5, v2}, Lcom/google/android/gms/internal/measurement/ao$c$a;->a(ILcom/google/android/gms/internal/measurement/ao$e;)Lcom/google/android/gms/internal/measurement/ao$c$a;

    move v2, v3

    .line 1144
    :goto_10
    add-int/lit8 v5, v5, 0x1

    move v3, v2

    goto :goto_f

    .line 1119
    :sswitch_0
    const-string/jumbo v4, "_in"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    const/4 v2, 0x0

    goto :goto_d

    :sswitch_1
    const-string/jumbo v4, "_ui"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    const/4 v2, 0x1

    goto :goto_d

    :sswitch_2
    const-string/jumbo v4, "_ug"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    const/4 v2, 0x2

    goto :goto_d

    .line 1120
    :pswitch_0
    const/4 v2, 0x1

    goto :goto_e

    .line 1135
    :cond_15
    const-string/jumbo v2, "_r"

    invoke-virtual {v12, v5}, Lcom/google/android/gms/internal/measurement/ao$c$a;->a(I)Lcom/google/android/gms/internal/measurement/ao$e;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ao$e;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1137
    invoke-virtual {v12, v5}, Lcom/google/android/gms/internal/measurement/ao$c$a;->a(I)Lcom/google/android/gms/internal/measurement/ao$e;

    move-result-object v2

    .line 1138
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ed;->am()Lcom/google/android/gms/internal/measurement/ed$b;

    move-result-object v2

    .line 1139
    check-cast v2, Lcom/google/android/gms/internal/measurement/ed$b;

    check-cast v2, Lcom/google/android/gms/internal/measurement/ao$e$a;

    const-wide/16 v6, 0x1

    .line 1140
    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/measurement/ao$e$a;->a(J)Lcom/google/android/gms/internal/measurement/ao$e$a;

    move-result-object v2

    .line 1141
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ed$b;->u()Lcom/google/android/gms/internal/measurement/fn;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ed;

    check-cast v2, Lcom/google/android/gms/internal/measurement/ao$e;

    .line 1142
    const/4 v3, 0x1

    .line 1143
    invoke-virtual {v12, v5, v2}, Lcom/google/android/gms/internal/measurement/ao$c$a;->a(ILcom/google/android/gms/internal/measurement/ao$e;)Lcom/google/android/gms/internal/measurement/ao$c$a;

    :cond_16
    move v2, v3

    goto :goto_10

    .line 1145
    :cond_17
    if-nez v4, :cond_18

    if-eqz v25, :cond_18

    .line 1147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 1148
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v4, "Marking event as conversion"

    .line 1149
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/fd;->j()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v5

    .line 1150
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/ao$c$a;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/dw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1151
    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1153
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ao$e;->k()Lcom/google/android/gms/internal/measurement/ao$e$a;

    move-result-object v2

    const-string/jumbo v4, "_c"

    .line 1154
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/measurement/ao$e$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$e$a;

    move-result-object v2

    const-wide/16 v4, 0x1

    .line 1155
    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/measurement/ao$e$a;->a(J)Lcom/google/android/gms/internal/measurement/ao$e$a;

    move-result-object v2

    .line 1156
    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/measurement/ao$c$a;->a(Lcom/google/android/gms/internal/measurement/ao$e$a;)Lcom/google/android/gms/internal/measurement/ao$c$a;

    .line 1157
    :cond_18
    if-nez v3, :cond_19

    .line 1159
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 1160
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Marking event as real-time"

    .line 1161
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fd;->j()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v4

    .line 1162
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/ao$c$a;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/dw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1163
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1165
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ao$e;->k()Lcom/google/android/gms/internal/measurement/ao$e$a;

    move-result-object v2

    const-string/jumbo v3, "_r"

    .line 1166
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/ao$e$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$e$a;

    move-result-object v2

    const-wide/16 v4, 0x1

    .line 1167
    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/measurement/ao$e$a;->a(J)Lcom/google/android/gms/internal/measurement/ao$e$a;

    move-result-object v2

    .line 1168
    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/measurement/ao$c$a;->a(Lcom/google/android/gms/internal/measurement/ao$e$a;)Lcom/google/android/gms/internal/measurement/ao$c$a;

    .line 1169
    :cond_19
    const/4 v2, 0x1

    .line 1171
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v3

    .line 1172
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->w()J

    move-result-wide v4

    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/jo$a;->a:Lcom/google/android/gms/internal/measurement/ao$g;

    .line 1173
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ao$g;->x()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 1174
    invoke-virtual/range {v3 .. v11}, Lcom/google/android/gms/measurement/internal/c;->a(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v3

    .line 1175
    iget-wide v4, v3, Lcom/google/android/gms/measurement/internal/f;->e:J

    .line 1176
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/fd;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v3

    .line 1177
    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/jo$a;->a:Lcom/google/android/gms/internal/measurement/ao$g;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ao$g;->x()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/android/gms/measurement/internal/b;->b(Ljava/lang/String;)I

    move-result v3

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-lez v3, :cond_73

    .line 1178
    const-string/jumbo v2, "_r"

    invoke-static {v12, v2}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/internal/measurement/ao$c$a;Ljava/lang/String;)V

    .line 1180
    :goto_11
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/ao$c$a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/jw;->a(Ljava/lang/String;)Z

    move-result v2

    .line 1181
    if-eqz v2, :cond_1f

    if-eqz v25, :cond_1f

    .line 1183
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v3

    .line 1184
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->w()J

    move-result-wide v4

    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo$a;->a:Lcom/google/android/gms/internal/measurement/ao$g;

    .line 1185
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ao$g;->x()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 1186
    invoke-virtual/range {v3 .. v11}, Lcom/google/android/gms/measurement/internal/c;->a(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v2

    .line 1187
    iget-wide v2, v2, Lcom/google/android/gms/measurement/internal/f;->c:J

    .line 1188
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fd;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v4

    .line 1189
    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/jo$a;->a:Lcom/google/android/gms/internal/measurement/ao$g;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/ao$g;->x()Ljava/lang/String;

    move-result-object v5

    .line 1190
    sget-object v6, Lcom/google/android/gms/measurement/internal/t;->m:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/b;->b(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/dr;)I

    move-result v4

    .line 1191
    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1f

    .line 1193
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 1194
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Too many conversions. Not logging as conversion. appId"

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/jo$a;->a:Lcom/google/android/gms/internal/measurement/ao$g;

    .line 1195
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ao$g;->x()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1196
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1197
    const/4 v5, 0x0

    .line 1198
    const/4 v2, 0x0

    .line 1199
    const/4 v3, -0x1

    .line 1200
    const/4 v4, 0x0

    :goto_12
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/ao$c$a;->b()I

    move-result v6

    if-ge v4, v6, :cond_1c

    .line 1201
    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/measurement/ao$c$a;->a(I)Lcom/google/android/gms/internal/measurement/ao$e;

    move-result-object v6

    .line 1202
    const-string/jumbo v7, "_c"

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ao$e;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 1204
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ed;->am()Lcom/google/android/gms/internal/measurement/ed$b;

    move-result-object v2

    .line 1205
    check-cast v2, Lcom/google/android/gms/internal/measurement/ed$b;

    check-cast v2, Lcom/google/android/gms/internal/measurement/ao$e$a;

    move v3, v4

    .line 1209
    :cond_1a
    :goto_13
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 1207
    :cond_1b
    const-string/jumbo v7, "_err"

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ao$e;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 1208
    const/4 v5, 0x1

    goto :goto_13

    .line 1210
    :cond_1c
    if-eqz v5, :cond_1d

    if-eqz v2, :cond_1d

    .line 1212
    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/measurement/ao$c$a;->b(I)Lcom/google/android/gms/internal/measurement/ao$c$a;

    move/from16 v10, v20

    .line 1227
    :goto_14
    if-eqz v25, :cond_22

    .line 1229
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/ao$c$a;->a()Ljava/util/List;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1230
    const/4 v5, -0x1

    .line 1231
    const/4 v3, -0x1

    .line 1232
    const/4 v4, 0x0

    :goto_15
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    if-ge v4, v2, :cond_21

    .line 1233
    const-string/jumbo v7, "value"

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ao$e;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ao$e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    move v2, v3

    move v5, v4

    .line 1237
    :goto_16
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    goto :goto_15

    .line 1214
    :cond_1d
    if-eqz v2, :cond_1e

    .line 1216
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/cm;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ed$b;

    check-cast v2, Lcom/google/android/gms/internal/measurement/ao$e$a;

    const-string/jumbo v4, "_err"

    .line 1217
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/measurement/ao$e$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$e$a;

    move-result-object v2

    const-wide/16 v4, 0xa

    .line 1218
    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/measurement/ao$e$a;->a(J)Lcom/google/android/gms/internal/measurement/ao$e$a;

    move-result-object v2

    .line 1219
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ed$b;->u()Lcom/google/android/gms/internal/measurement/fn;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ed;

    check-cast v2, Lcom/google/android/gms/internal/measurement/ao$e;

    .line 1220
    invoke-virtual {v12, v3, v2}, Lcom/google/android/gms/internal/measurement/ao$c$a;->a(ILcom/google/android/gms/internal/measurement/ao$e;)Lcom/google/android/gms/internal/measurement/ao$c$a;

    move/from16 v10, v20

    .line 1221
    goto :goto_14

    .line 1223
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 1224
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Did not find conversion parameter. appId"

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/jo$a;->a:Lcom/google/android/gms/internal/measurement/ao$g;

    .line 1225
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ao$g;->x()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1226
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1f
    move/from16 v10, v20

    goto :goto_14

    .line 1235
    :cond_20
    const-string/jumbo v7, "currency"

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ao$e;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ao$e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_72

    move v2, v4

    .line 1236
    goto :goto_16

    .line 1238
    :cond_21
    const/4 v2, -0x1

    if-eq v5, v2, :cond_22

    .line 1239
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ao$e;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ao$e;->e()Z

    move-result v2

    if-nez v2, :cond_23

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ao$e;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ao$e;->g()Z

    move-result v2

    if-nez v2, :cond_23

    .line 1241
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 1242
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->g()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Value must be specified with a numeric type."

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 1244
    invoke-virtual {v12, v5}, Lcom/google/android/gms/internal/measurement/ao$c$a;->b(I)Lcom/google/android/gms/internal/measurement/ao$c$a;

    .line 1245
    const-string/jumbo v2, "_c"

    invoke-static {v12, v2}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/internal/measurement/ao$c$a;Ljava/lang/String;)V

    .line 1246
    const/16 v2, 0x12

    const-string/jumbo v3, "value"

    invoke-static {v12, v2, v3}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/internal/measurement/ao$c$a;ILjava/lang/String;)V

    .line 1271
    :cond_22
    :goto_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    .line 1272
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/jo$a;->a:Lcom/google/android/gms/internal/measurement/ao$g;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/ao$g;->x()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/t;->T:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/b;->e(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v2

    if-eqz v2, :cond_70

    .line 1273
    const-string/jumbo v2, "_e"

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/ao$c$a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 1274
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->h()Lcom/google/android/gms/measurement/internal/js;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/ed$b;->u()Lcom/google/android/gms/internal/measurement/fn;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ed;

    check-cast v2, Lcom/google/android/gms/internal/measurement/ao$c;

    const-string/jumbo v3, "_fr"

    invoke-static {v2, v3}, Lcom/google/android/gms/measurement/internal/js;->a(Lcom/google/android/gms/internal/measurement/ao$c;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$e;

    move-result-object v2

    if-nez v2, :cond_70

    .line 1275
    if-eqz v14, :cond_28

    .line 1276
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/ao$c$a;->f()J

    move-result-wide v2

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/ao$c$a;->f()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gtz v2, :cond_28

    .line 1277
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/cm;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ed$b;

    check-cast v2, Lcom/google/android/gms/internal/measurement/ao$c$a;

    .line 1278
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/internal/measurement/ao$c$a;Lcom/google/android/gms/internal/measurement/ao$c$a;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 1279
    const/16 v16, 0x0

    .line 1280
    const/4 v14, 0x0

    .line 1281
    move-object/from16 v0, v24

    invoke-virtual {v0, v13, v2}, Lcom/google/android/gms/internal/measurement/ao$g$a;->a(ILcom/google/android/gms/internal/measurement/ao$c$a;)Lcom/google/android/gms/internal/measurement/ao$g$a;

    move v3, v13

    move-object v4, v14

    move v5, v15

    move-object/from16 v6, v16

    .line 1333
    :goto_18
    if-nez v22, :cond_75

    .line 1334
    const-string/jumbo v2, "_e"

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/ao$c$a;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    .line 1335
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/ao$c$a;->b()I

    move-result v2

    if-nez v2, :cond_32

    .line 1337
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 1338
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v7, "Engagement event does not contain any parameters. appId"

    move-object/from16 v0, v23

    iget-object v8, v0, Lcom/google/android/gms/measurement/internal/jo$a;->a:Lcom/google/android/gms/internal/measurement/ao$g;

    .line 1339
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/ao$g;->x()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 1340
    invoke-virtual {v2, v7, v8}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    move-wide/from16 v8, v18

    .line 1351
    :goto_19
    move-object/from16 v0, v23

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/jo$a;->c:Ljava/util/List;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/ed$b;->u()Lcom/google/android/gms/internal/measurement/fn;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ed;

    check-cast v2, Lcom/google/android/gms/internal/measurement/ao$c;

    move/from16 v0, v21

    invoke-interface {v7, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1352
    add-int/lit8 v7, v17, 0x1

    .line 1353
    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/measurement/ao$g$a;->a(Lcom/google/android/gms/internal/measurement/ao$c$a;)Lcom/google/android/gms/internal/measurement/ao$g$a;

    move v2, v3

    goto/16 :goto_6

    .line 1248
    :cond_23
    const/4 v4, 0x0

    .line 1249
    const/4 v2, -0x1

    if-ne v3, v2, :cond_24

    .line 1250
    const/4 v2, 0x1

    .line 1261
    :goto_1a
    if-eqz v2, :cond_22

    .line 1263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 1264
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->g()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Value parameter discarded. You must also supply a 3-letter ISO_4217 currency code in the currency parameter."

    .line 1265
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 1267
    invoke-virtual {v12, v5}, Lcom/google/android/gms/internal/measurement/ao$c$a;->b(I)Lcom/google/android/gms/internal/measurement/ao$c$a;

    .line 1268
    const-string/jumbo v2, "_c"

    invoke-static {v12, v2}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/internal/measurement/ao$c$a;Ljava/lang/String;)V

    .line 1269
    const/16 v2, 0x13

    const-string/jumbo v3, "currency"

    invoke-static {v12, v2, v3}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/internal/measurement/ao$c$a;ILjava/lang/String;)V

    goto/16 :goto_17

    .line 1251
    :cond_24
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ao$e;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ao$e;->d()Ljava/lang/String;

    move-result-object v3

    .line 1252
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v6, 0x3

    if-eq v2, v6, :cond_25

    .line 1253
    const/4 v2, 0x1

    goto :goto_1a

    .line 1254
    :cond_25
    const/4 v2, 0x0

    :goto_1b
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_71

    .line 1255
    invoke-virtual {v3, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    .line 1256
    invoke-static {v6}, Ljava/lang/Character;->isLetter(I)Z

    move-result v7

    if-nez v7, :cond_26

    .line 1257
    const/4 v2, 0x1

    .line 1258
    goto :goto_1a

    .line 1259
    :cond_26
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr v2, v6

    .line 1260
    goto :goto_1b

    :cond_27
    move v3, v13

    move-object v4, v14

    move/from16 v5, v17

    move-object v6, v12

    .line 1284
    goto/16 :goto_18

    :cond_28
    move v3, v13

    move-object v4, v14

    move/from16 v5, v17

    move-object v6, v12

    .line 1286
    goto/16 :goto_18

    .line 1287
    :cond_29
    const-string/jumbo v2, "_vs"

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/ao$c$a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1288
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->h()Lcom/google/android/gms/measurement/internal/js;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/ed$b;->u()Lcom/google/android/gms/internal/measurement/fn;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ed;

    check-cast v2, Lcom/google/android/gms/internal/measurement/ao$c;

    const-string/jumbo v3, "_et"

    invoke-static {v2, v3}, Lcom/google/android/gms/measurement/internal/js;->a(Lcom/google/android/gms/internal/measurement/ao$c;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$e;

    move-result-object v2

    if-nez v2, :cond_70

    .line 1289
    if-eqz v16, :cond_2b

    .line 1290
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/measurement/ao$c$a;->f()J

    move-result-wide v2

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/ao$c$a;->f()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2b

    .line 1291
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/measurement/cm;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ed$b;

    check-cast v2, Lcom/google/android/gms/internal/measurement/ao$c$a;

    .line 1292
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/internal/measurement/ao$c$a;Lcom/google/android/gms/internal/measurement/ao$c$a;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 1293
    const/16 v16, 0x0

    .line 1294
    const/4 v14, 0x0

    .line 1295
    move-object/from16 v0, v24

    invoke-virtual {v0, v15, v2}, Lcom/google/android/gms/internal/measurement/ao$g$a;->a(ILcom/google/android/gms/internal/measurement/ao$c$a;)Lcom/google/android/gms/internal/measurement/ao$g$a;

    move v3, v13

    move-object v4, v14

    move v5, v15

    move-object/from16 v6, v16

    goto/16 :goto_18

    :cond_2a
    move/from16 v3, v17

    move-object v4, v12

    move v5, v15

    move-object/from16 v6, v16

    .line 1298
    goto/16 :goto_18

    :cond_2b
    move/from16 v3, v17

    move-object v4, v12

    move v5, v15

    move-object/from16 v6, v16

    .line 1300
    goto/16 :goto_18

    .line 1302
    :cond_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    .line 1303
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/jo$a;->a:Lcom/google/android/gms/internal/measurement/ao$g;

    .line 1304
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/ao$g;->x()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/t;->as:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/b;->e(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v2

    if-eqz v2, :cond_70

    const-string/jumbo v2, "_ab"

    .line 1305
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/ao$c$a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_70

    .line 1306
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->h()Lcom/google/android/gms/measurement/internal/js;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/ed$b;->u()Lcom/google/android/gms/internal/measurement/fn;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ed;

    check-cast v2, Lcom/google/android/gms/internal/measurement/ao$c;

    const-string/jumbo v3, "_et"

    invoke-static {v2, v3}, Lcom/google/android/gms/measurement/internal/js;->a(Lcom/google/android/gms/internal/measurement/ao$c;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$e;

    move-result-object v2

    if-nez v2, :cond_70

    .line 1307
    if-eqz v16, :cond_70

    .line 1308
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/measurement/ao$c$a;->f()J

    move-result-wide v2

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/ao$c$a;->f()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0xfa0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_70

    .line 1309
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/measurement/cm;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ed$b;

    check-cast v2, Lcom/google/android/gms/internal/measurement/ao$c$a;

    .line 1310
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/google/android/gms/measurement/internal/jo;->b(Lcom/google/android/gms/internal/measurement/ao$c$a;Lcom/google/android/gms/internal/measurement/ao$c$a;)V

    .line 1312
    const-string/jumbo v3, "_e"

    .line 1313
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ao$c$a;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1314
    invoke-static {v3}, Lcom/google/android/gms/common/internal/s;->b(Z)V

    .line 1316
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->h()Lcom/google/android/gms/measurement/internal/js;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ed$b;->u()Lcom/google/android/gms/internal/measurement/fn;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/ed;

    check-cast v3, Lcom/google/android/gms/internal/measurement/ao$c;

    const-string/jumbo v4, "_sn"

    invoke-static {v3, v4}, Lcom/google/android/gms/measurement/internal/js;->a(Lcom/google/android/gms/internal/measurement/ao$c;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$e;

    move-result-object v4

    .line 1318
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->h()Lcom/google/android/gms/measurement/internal/js;

    .line 1319
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ed$b;->u()Lcom/google/android/gms/internal/measurement/fn;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/ed;

    check-cast v3, Lcom/google/android/gms/internal/measurement/ao$c;

    const-string/jumbo v5, "_sc"

    invoke-static {v3, v5}, Lcom/google/android/gms/measurement/internal/js;->a(Lcom/google/android/gms/internal/measurement/ao$c;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$e;

    move-result-object v5

    .line 1321
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->h()Lcom/google/android/gms/measurement/internal/js;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ed$b;->u()Lcom/google/android/gms/internal/measurement/fn;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/ed;

    check-cast v3, Lcom/google/android/gms/internal/measurement/ao$c;

    const-string/jumbo v6, "_si"

    invoke-static {v3, v6}, Lcom/google/android/gms/measurement/internal/js;->a(Lcom/google/android/gms/internal/measurement/ao$c;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$e;

    move-result-object v6

    .line 1322
    if-eqz v4, :cond_30

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ao$e;->d()Ljava/lang/String;

    move-result-object v3

    .line 1323
    :goto_1c
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2d

    .line 1324
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->h()Lcom/google/android/gms/measurement/internal/js;

    move-result-object v4

    const-string/jumbo v7, "_sn"

    invoke-virtual {v4, v12, v7, v3}, Lcom/google/android/gms/measurement/internal/js;->a(Lcom/google/android/gms/internal/measurement/ao$c$a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1325
    :cond_2d
    if-eqz v5, :cond_31

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/ao$e;->d()Ljava/lang/String;

    move-result-object v3

    .line 1326
    :goto_1d
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2e

    .line 1327
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->h()Lcom/google/android/gms/measurement/internal/js;

    move-result-object v4

    const-string/jumbo v5, "_sc"

    invoke-virtual {v4, v12, v5, v3}, Lcom/google/android/gms/measurement/internal/js;->a(Lcom/google/android/gms/internal/measurement/ao$c$a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1328
    :cond_2e
    if-eqz v6, :cond_2f

    .line 1329
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->h()Lcom/google/android/gms/measurement/internal/js;

    move-result-object v3

    const-string/jumbo v4, "_si"

    .line 1330
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ao$e;->f()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v12, v4, v5}, Lcom/google/android/gms/measurement/internal/js;->a(Lcom/google/android/gms/internal/measurement/ao$c$a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1331
    :cond_2f
    const/16 v16, 0x0

    .line 1332
    move-object/from16 v0, v24

    invoke-virtual {v0, v15, v2}, Lcom/google/android/gms/internal/measurement/ao$g$a;->a(ILcom/google/android/gms/internal/measurement/ao$c$a;)Lcom/google/android/gms/internal/measurement/ao$g$a;

    move v3, v13

    move-object v4, v14

    move v5, v15

    move-object/from16 v6, v16

    goto/16 :goto_18

    .line 1322
    :cond_30
    const-string/jumbo v3, ""

    goto :goto_1c

    .line 1325
    :cond_31
    const-string/jumbo v3, ""

    goto :goto_1d

    .line 1342
    :cond_32
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->h()Lcom/google/android/gms/measurement/internal/js;

    move-result-object v7

    .line 1343
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/ed$b;->u()Lcom/google/android/gms/internal/measurement/fn;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ed;

    check-cast v2, Lcom/google/android/gms/internal/measurement/ao$c;

    const-string/jumbo v8, "_et"

    invoke-virtual {v7, v2, v8}, Lcom/google/android/gms/measurement/internal/js;->b(Lcom/google/android/gms/internal/measurement/ao$c;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 1344
    if-nez v2, :cond_33

    .line 1346
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 1347
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v7, "Engagement event does not include duration. appId"

    move-object/from16 v0, v23

    iget-object v8, v0, Lcom/google/android/gms/measurement/internal/jo$a;->a:Lcom/google/android/gms/internal/measurement/ao$g;

    .line 1348
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/ao$g;->x()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 1349
    invoke-virtual {v2, v7, v8}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    move-wide/from16 v8, v18

    goto/16 :goto_19

    .line 1350
    :cond_33
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    add-long v18, v18, v8

    move-wide/from16 v8, v18

    goto/16 :goto_19

    .line 1355
    :cond_34
    if-eqz v22, :cond_38

    .line 1356
    const/4 v2, 0x0

    move-wide/from16 v4, v18

    move/from16 v3, v17

    :goto_1e
    if-ge v2, v3, :cond_39

    .line 1357
    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/ao$g$a;->b(I)Lcom/google/android/gms/internal/measurement/ao$c;

    move-result-object v6

    .line 1358
    const-string/jumbo v7, "_e"

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ao$c;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_36

    .line 1359
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->h()Lcom/google/android/gms/measurement/internal/js;

    const-string/jumbo v7, "_fr"

    invoke-static {v6, v7}, Lcom/google/android/gms/measurement/internal/js;->a(Lcom/google/android/gms/internal/measurement/ao$c;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$e;

    move-result-object v7

    if-eqz v7, :cond_36

    .line 1360
    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/ao$g$a;->c(I)Lcom/google/android/gms/internal/measurement/ao$g$a;

    .line 1361
    add-int/lit8 v3, v3, -0x1

    .line 1362
    add-int/lit8 v2, v2, -0x1

    .line 1370
    :cond_35
    :goto_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 1365
    :cond_36
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->h()Lcom/google/android/gms/measurement/internal/js;

    const-string/jumbo v7, "_et"

    invoke-static {v6, v7}, Lcom/google/android/gms/measurement/internal/js;->a(Lcom/google/android/gms/internal/measurement/ao$c;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$e;

    move-result-object v6

    .line 1366
    if-eqz v6, :cond_35

    .line 1367
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ao$e;->e()Z

    move-result v7

    if-eqz v7, :cond_37

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ao$e;->f()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 1368
    :goto_20
    if-eqz v6, :cond_35

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_35

    .line 1369
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v4, v6

    goto :goto_1f

    .line 1367
    :cond_37
    const/4 v6, 0x0

    goto :goto_20

    :cond_38
    move-wide/from16 v4, v18

    .line 1371
    :cond_39
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v4, v5, v2}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/internal/measurement/ao$g$a;JZ)V

    .line 1372
    const/4 v3, 0x0

    .line 1373
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/gms/internal/measurement/ao$g$a;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ao$c;

    .line 1374
    const-string/jumbo v7, "_s"

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ao$c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 1375
    const/4 v2, 0x1

    .line 1378
    :goto_21
    if-eqz v2, :cond_3b

    .line 1379
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    .line 1380
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/gms/internal/measurement/ao$g$a;->j()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "_se"

    .line 1381
    invoke-virtual {v2, v3, v6}, Lcom/google/android/gms/measurement/internal/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1382
    :cond_3b
    const-string/jumbo v2, "_sid"

    .line 1383
    move-object/from16 v0, v24

    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/js;->a(Lcom/google/android/gms/internal/measurement/ao$g$a;Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_44

    const/4 v2, 0x1

    .line 1384
    :goto_22
    if-eqz v2, :cond_45

    .line 1385
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v4, v5, v2}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/internal/measurement/ao$g$a;JZ)V

    .line 1395
    :cond_3c
    :goto_23
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->h()Lcom/google/android/gms/measurement/internal/js;

    move-result-object v2

    .line 1396
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v3

    const-string/jumbo v4, "Checking account type status for ad personalization signals"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 1397
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/jm;->t_()Lcom/google/android/gms/measurement/internal/ex;

    move-result-object v3

    invoke-virtual/range {v24 .. v24}, Lcom/google/android/gms/internal/measurement/ao$g$a;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/ex;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 1398
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/jm;->u_()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v3

    invoke-virtual/range {v24 .. v24}, Lcom/google/android/gms/internal/measurement/ao$g$a;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/c;->b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/fg;

    move-result-object v3

    .line 1399
    if-eqz v3, :cond_3e

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/fg;->F()Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 1400
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fz;->p()Lcom/google/android/gms/measurement/internal/l;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/l;->f()Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 1401
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/dy;->i()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v3

    const-string/jumbo v4, "Turning off ad personalization due to account type"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 1402
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ao$k;->j()Lcom/google/android/gms/internal/measurement/ao$k$a;

    move-result-object v3

    const-string/jumbo v4, "_npa"

    .line 1403
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/measurement/ao$k$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$k$a;

    move-result-object v3

    .line 1404
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fz;->p()Lcom/google/android/gms/measurement/internal/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/l;->d()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/measurement/ao$k$a;->a(J)Lcom/google/android/gms/internal/measurement/ao$k$a;

    move-result-object v2

    const-wide/16 v4, 0x1

    .line 1405
    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/measurement/ao$k$a;->b(J)Lcom/google/android/gms/internal/measurement/ao$k$a;

    move-result-object v2

    .line 1406
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ed$b;->u()Lcom/google/android/gms/internal/measurement/fn;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ed;

    check-cast v2, Lcom/google/android/gms/internal/measurement/ao$k;

    .line 1407
    const/4 v3, 0x0

    .line 1408
    const/4 v4, 0x0

    :goto_24
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/gms/internal/measurement/ao$g$a;->e()I

    move-result v5

    if-ge v4, v5, :cond_3d

    .line 1409
    const-string/jumbo v5, "_npa"

    .line 1410
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/measurement/ao$g$a;->d(I)Lcom/google/android/gms/internal/measurement/ao$k;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/ao$k;->c()Ljava/lang/String;

    move-result-object v6

    .line 1411
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 1412
    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v2}, Lcom/google/android/gms/internal/measurement/ao$g$a;->a(ILcom/google/android/gms/internal/measurement/ao$k;)Lcom/google/android/gms/internal/measurement/ao$g$a;

    .line 1413
    const/4 v3, 0x1

    .line 1416
    :cond_3d
    if-nez v3, :cond_3e

    .line 1417
    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/ao$g$a;->a(Lcom/google/android/gms/internal/measurement/ao$k;)Lcom/google/android/gms/internal/measurement/ao$g$a;

    .line 1419
    :cond_3e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    .line 1421
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/gms/internal/measurement/ao$g$a;->j()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/t;->an:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/b;->e(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 1422
    invoke-static/range {v24 .. v24}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/internal/measurement/ao$g$a;)V

    .line 1424
    :cond_3f
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/gms/internal/measurement/ao$g$a;->m()Lcom/google/android/gms/internal/measurement/ao$g$a;

    move-result-object v8

    .line 1425
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->f()Lcom/google/android/gms/measurement/internal/kf;

    move-result-object v2

    .line 1426
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/gms/internal/measurement/ao$g$a;->j()Ljava/lang/String;

    move-result-object v3

    .line 1427
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/gms/internal/measurement/ao$g$a;->a()Ljava/util/List;

    move-result-object v4

    .line 1428
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/gms/internal/measurement/ao$g$a;->d()Ljava/util/List;

    move-result-object v5

    .line 1429
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/gms/internal/measurement/ao$g$a;->f()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 1430
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/gms/internal/measurement/ao$g$a;->g()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 1431
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/kf;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v2

    .line 1432
    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/measurement/ao$g$a;->c(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/ao$g$a;

    .line 1434
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    .line 1435
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/jo$a;->a:Lcom/google/android/gms/internal/measurement/ao$g;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/ao$g;->x()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/b;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 1437
    new-instance v25, Ljava/util/HashMap;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashMap;-><init>()V

    .line 1438
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 1440
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->i()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v2

    .line 1441
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/jw;->d()Ljava/security/SecureRandom;

    move-result-object v27

    .line 1442
    const/4 v2, 0x0

    move/from16 v22, v2

    :goto_25
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/gms/internal/measurement/ao$g$a;->b()I

    move-result v2

    move/from16 v0, v22

    if-ge v0, v2, :cond_5a

    .line 1443
    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/ao$g$a;->b(I)Lcom/google/android/gms/internal/measurement/ao$c;

    move-result-object v2

    .line 1444
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ed;->am()Lcom/google/android/gms/internal/measurement/ed$b;

    move-result-object v2

    .line 1445
    check-cast v2, Lcom/google/android/gms/internal/measurement/ed$b;

    check-cast v2, Lcom/google/android/gms/internal/measurement/ao$c$a;

    .line 1446
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ao$c$a;->d()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "_ep"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 1448
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->h()Lcom/google/android/gms/measurement/internal/js;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ed$b;->u()Lcom/google/android/gms/internal/measurement/fn;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/ed;

    check-cast v3, Lcom/google/android/gms/internal/measurement/ao$c;

    const-string/jumbo v5, "_en"

    invoke-virtual {v4, v3, v5}, Lcom/google/android/gms/measurement/internal/js;->b(Lcom/google/android/gms/internal/measurement/ao$c;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1449
    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/measurement/internal/n;

    .line 1450
    if-nez v4, :cond_40

    .line 1452
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v4

    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/jo$a;->a:Lcom/google/android/gms/internal/measurement/ao$g;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/ao$g;->x()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/google/android/gms/measurement/internal/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/n;

    move-result-object v4

    .line 1453
    move-object/from16 v0, v25

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1454
    :cond_40
    iget-object v3, v4, Lcom/google/android/gms/measurement/internal/n;->i:Ljava/lang/Long;

    if-nez v3, :cond_43

    .line 1455
    iget-object v3, v4, Lcom/google/android/gms/measurement/internal/n;->j:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    cmp-long v3, v6, v8

    if-lez v3, :cond_41

    .line 1456
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->h()Lcom/google/android/gms/measurement/internal/js;

    move-result-object v3

    const-string/jumbo v5, "_sr"

    iget-object v6, v4, Lcom/google/android/gms/measurement/internal/n;->j:Ljava/lang/Long;

    .line 1457
    invoke-virtual {v3, v2, v5, v6}, Lcom/google/android/gms/measurement/internal/js;->a(Lcom/google/android/gms/internal/measurement/ao$c$a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1458
    :cond_41
    iget-object v3, v4, Lcom/google/android/gms/measurement/internal/n;->k:Ljava/lang/Boolean;

    if-eqz v3, :cond_42

    iget-object v3, v4, Lcom/google/android/gms/measurement/internal/n;->k:Ljava/lang/Boolean;

    .line 1459
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_42

    .line 1460
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->h()Lcom/google/android/gms/measurement/internal/js;

    move-result-object v3

    const-string/jumbo v4, "_efs"

    const-wide/16 v6, 0x1

    .line 1461
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v2, v4, v5}, Lcom/google/android/gms/measurement/internal/js;->a(Lcom/google/android/gms/internal/measurement/ao$c$a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1462
    :cond_42
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ed$b;->u()Lcom/google/android/gms/internal/measurement/fn;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/ed;

    check-cast v3, Lcom/google/android/gms/internal/measurement/ao$c;

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1463
    :cond_43
    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/ao$g$a;->a(ILcom/google/android/gms/internal/measurement/ao$c$a;)Lcom/google/android/gms/internal/measurement/ao$g$a;

    .line 1553
    :goto_26
    add-int/lit8 v2, v22, 0x1

    move/from16 v22, v2

    goto/16 :goto_25

    .line 1383
    :cond_44
    const/4 v2, 0x0

    goto/16 :goto_22

    .line 1386
    :cond_45
    const-string/jumbo v2, "_se"

    .line 1387
    move-object/from16 v0, v24

    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/js;->a(Lcom/google/android/gms/internal/measurement/ao$g$a;Ljava/lang/String;)I

    move-result v2

    .line 1388
    if-ltz v2, :cond_3c

    .line 1389
    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/ao$g$a;->e(I)Lcom/google/android/gms/internal/measurement/ao$g$a;

    .line 1391
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 1392
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Session engagement user property is in the bundle without session ID. appId"

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/jo$a;->a:Lcom/google/android/gms/internal/measurement/ao$g;

    .line 1393
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ao$g;->x()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1394
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_23

    .line 1415
    :cond_46
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_24

    .line 1466
    :cond_47
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/ex;

    move-result-object v3

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/jo$a;->a:Lcom/google/android/gms/internal/measurement/ao$g;

    .line 1467
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ao$g;->x()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/ex;->f(Ljava/lang/String;)J

    move-result-wide v28

    .line 1469
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/fd;->i()Lcom/google/android/gms/measurement/internal/jw;

    .line 1470
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ao$c$a;->f()J

    move-result-wide v4

    move-wide/from16 v0, v28

    invoke-static {v4, v5, v0, v1}, Lcom/google/android/gms/measurement/internal/jw;->a(JJ)J

    move-result-wide v30

    .line 1471
    const/4 v4, 0x1

    .line 1472
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ed$b;->u()Lcom/google/android/gms/internal/measurement/fn;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/ed;

    check-cast v3, Lcom/google/android/gms/internal/measurement/ao$c;

    const-string/jumbo v5, "_dbg"

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 1473
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_48

    if-nez v6, :cond_49

    .line 1474
    :cond_48
    const/4 v3, 0x0

    .line 1483
    :goto_27
    if-nez v3, :cond_6e

    .line 1485
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/ex;

    move-result-object v3

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/jo$a;->a:Lcom/google/android/gms/internal/measurement/ao$g;

    .line 1486
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ao$g;->x()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ao$c$a;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/ex;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    move/from16 v21, v3

    .line 1487
    :goto_28
    if-gtz v21, :cond_50

    .line 1489
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v3

    .line 1490
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v3

    const-string/jumbo v4, "Sample rate must be positive. event, rate"

    .line 1491
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ao$c$a;->d()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1492
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ed$b;->u()Lcom/google/android/gms/internal/measurement/fn;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/ed;

    check-cast v3, Lcom/google/android/gms/internal/measurement/ao$c;

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1493
    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/ao$g$a;->a(ILcom/google/android/gms/internal/measurement/ao$c$a;)Lcom/google/android/gms/internal/measurement/ao$g$a;

    goto/16 :goto_26

    .line 1475
    :cond_49
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/ao$c;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/ao$e;

    .line 1476
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/ao$e;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4a

    .line 1477
    instance-of v5, v6, Ljava/lang/Long;

    if-eqz v5, :cond_4b

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/ao$e;->f()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4d

    :cond_4b
    instance-of v5, v6, Ljava/lang/String;

    if-eqz v5, :cond_4c

    .line 1478
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/ao$e;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4d

    :cond_4c
    instance-of v5, v6, Ljava/lang/Double;

    if-eqz v5, :cond_4e

    .line 1479
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/ao$e;->h()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    :cond_4d
    const/4 v3, 0x1

    goto/16 :goto_27

    :cond_4e
    const/4 v3, 0x0

    .line 1480
    goto/16 :goto_27

    .line 1482
    :cond_4f
    const/4 v3, 0x0

    goto/16 :goto_27

    .line 1495
    :cond_50
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ao$c$a;->d()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/measurement/internal/n;

    .line 1496
    if-nez v3, :cond_6d

    .line 1498
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v3

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/jo$a;->a:Lcom/google/android/gms/internal/measurement/ao$g;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ao$g;->x()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ao$c$a;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/n;

    move-result-object v3

    .line 1499
    if-nez v3, :cond_6d

    .line 1501
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v3

    .line 1502
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v3

    const-string/jumbo v4, "Event being bundled has no eventAggregate. appId, eventName"

    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/jo$a;->a:Lcom/google/android/gms/internal/measurement/ao$g;

    .line 1503
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/ao$g;->x()Ljava/lang/String;

    move-result-object v5

    .line 1504
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ao$c$a;->d()Ljava/lang/String;

    move-result-object v6

    .line 1505
    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1506
    new-instance v3, Lcom/google/android/gms/measurement/internal/n;

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/jo$a;->a:Lcom/google/android/gms/internal/measurement/ao$g;

    .line 1507
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ao$g;->x()Ljava/lang/String;

    move-result-object v4

    .line 1508
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ao$c$a;->d()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x1

    const-wide/16 v8, 0x1

    const-wide/16 v10, 0x1

    .line 1509
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ao$c$a;->f()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v3 .. v19}, Lcom/google/android/gms/measurement/internal/n;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    move-object v4, v3

    .line 1511
    :goto_29
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->h()Lcom/google/android/gms/measurement/internal/js;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ed$b;->u()Lcom/google/android/gms/internal/measurement/fn;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/ed;

    check-cast v3, Lcom/google/android/gms/internal/measurement/ao$c;

    const-string/jumbo v6, "_eid"

    invoke-virtual {v5, v3, v6}, Lcom/google/android/gms/measurement/internal/js;->b(Lcom/google/android/gms/internal/measurement/ao$c;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 1512
    if-eqz v3, :cond_53

    const/4 v5, 0x1

    :goto_2a
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 1513
    const/4 v6, 0x1

    move/from16 v0, v21

    if-ne v0, v6, :cond_54

    .line 1514
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ed$b;->u()Lcom/google/android/gms/internal/measurement/fn;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/ed;

    check-cast v3, Lcom/google/android/gms/internal/measurement/ao$c;

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1515
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_52

    iget-object v3, v4, Lcom/google/android/gms/measurement/internal/n;->i:Ljava/lang/Long;

    if-nez v3, :cond_51

    iget-object v3, v4, Lcom/google/android/gms/measurement/internal/n;->j:Ljava/lang/Long;

    if-nez v3, :cond_51

    iget-object v3, v4, Lcom/google/android/gms/measurement/internal/n;->k:Ljava/lang/Boolean;

    if-eqz v3, :cond_52

    .line 1516
    :cond_51
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v5, v6}, Lcom/google/android/gms/measurement/internal/n;->a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/n;

    move-result-object v3

    .line 1517
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ao$c$a;->d()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1518
    :cond_52
    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/ao$g$a;->a(ILcom/google/android/gms/internal/measurement/ao$c$a;)Lcom/google/android/gms/internal/measurement/ao$g$a;

    goto/16 :goto_26

    .line 1512
    :cond_53
    const/4 v5, 0x0

    goto :goto_2a

    .line 1520
    :cond_54
    move-object/from16 v0, v27

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v6

    if-nez v6, :cond_57

    .line 1521
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->h()Lcom/google/android/gms/measurement/internal/js;

    move-result-object v3

    const-string/jumbo v6, "_sr"

    move/from16 v0, v21

    int-to-long v8, v0

    .line 1522
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v2, v6, v7}, Lcom/google/android/gms/measurement/internal/js;->a(Lcom/google/android/gms/internal/measurement/ao$c$a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1523
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ed$b;->u()Lcom/google/android/gms/internal/measurement/fn;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/ed;

    check-cast v3, Lcom/google/android/gms/internal/measurement/ao$c;

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1524
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_55

    .line 1525
    const/4 v3, 0x0

    move/from16 v0, v21

    int-to-long v6, v0

    .line 1526
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v5, v6}, Lcom/google/android/gms/measurement/internal/n;->a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/n;

    move-result-object v4

    .line 1528
    :cond_55
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ao$c$a;->d()Ljava/lang/String;

    move-result-object v3

    .line 1529
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ao$c$a;->f()J

    move-result-wide v6

    move-wide/from16 v0, v30

    invoke-virtual {v4, v6, v7, v0, v1}, Lcom/google/android/gms/measurement/internal/n;->a(JJ)Lcom/google/android/gms/measurement/internal/n;

    move-result-object v4

    .line 1530
    move-object/from16 v0, v25

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1552
    :cond_56
    :goto_2b
    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/ao$g$a;->a(ILcom/google/android/gms/internal/measurement/ao$c$a;)Lcom/google/android/gms/internal/measurement/ao$g$a;

    goto/16 :goto_26

    .line 1531
    :cond_57
    iget-object v6, v4, Lcom/google/android/gms/measurement/internal/n;->h:Ljava/lang/Long;

    if-eqz v6, :cond_58

    .line 1532
    iget-object v6, v4, Lcom/google/android/gms/measurement/internal/n;->h:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1536
    :goto_2c
    cmp-long v6, v6, v30

    if-eqz v6, :cond_59

    .line 1537
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->h()Lcom/google/android/gms/measurement/internal/js;

    move-result-object v3

    const-string/jumbo v6, "_efs"

    const-wide/16 v8, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v2, v6, v7}, Lcom/google/android/gms/measurement/internal/js;->a(Lcom/google/android/gms/internal/measurement/ao$c$a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1538
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->h()Lcom/google/android/gms/measurement/internal/js;

    move-result-object v3

    const-string/jumbo v6, "_sr"

    move/from16 v0, v21

    int-to-long v8, v0

    .line 1539
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v2, v6, v7}, Lcom/google/android/gms/measurement/internal/js;->a(Lcom/google/android/gms/internal/measurement/ao$c$a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1540
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ed$b;->u()Lcom/google/android/gms/internal/measurement/fn;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/ed;

    check-cast v3, Lcom/google/android/gms/internal/measurement/ao$c;

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1541
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 1542
    const/4 v3, 0x0

    move/from16 v0, v21

    int-to-long v6, v0

    .line 1543
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v3, v5, v6}, Lcom/google/android/gms/measurement/internal/n;->a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/n;

    move-result-object v3

    .line 1545
    :goto_2d
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ao$c$a;->d()Ljava/lang/String;

    move-result-object v4

    .line 1546
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ao$c$a;->f()J

    move-result-wide v6

    move-wide/from16 v0, v30

    invoke-virtual {v3, v6, v7, v0, v1}, Lcom/google/android/gms/measurement/internal/n;->a(JJ)Lcom/google/android/gms/measurement/internal/n;

    move-result-object v3

    .line 1547
    move-object/from16 v0, v25

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b

    .line 1534
    :cond_58
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/fd;->i()Lcom/google/android/gms/measurement/internal/jw;

    .line 1535
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ao$c$a;->g()J

    move-result-wide v6

    move-wide/from16 v0, v28

    invoke-static {v6, v7, v0, v1}, Lcom/google/android/gms/measurement/internal/jw;->a(JJ)J

    move-result-wide v6

    goto :goto_2c

    .line 1548
    :cond_59
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_56

    .line 1550
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ao$c$a;->d()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v3, v6, v7}, Lcom/google/android/gms/measurement/internal/n;->a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/n;

    move-result-object v3

    .line 1551
    move-object/from16 v0, v25

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2b

    .line 1554
    :cond_5a
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual/range {v24 .. v24}, Lcom/google/android/gms/internal/measurement/ao$g$a;->b()I

    move-result v3

    if-ge v2, v3, :cond_5b

    .line 1555
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/gms/internal/measurement/ao$g$a;->c()Lcom/google/android/gms/internal/measurement/ao$g$a;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/measurement/ao$g$a;->a(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/ao$g$a;

    .line 1556
    :cond_5b
    invoke-interface/range {v25 .. v25}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1557
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/n;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/measurement/internal/c;->a(Lcom/google/android/gms/measurement/internal/n;)V

    goto :goto_2e

    .line 1560
    :cond_5c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    .line 1562
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/gms/internal/measurement/ao$g$a;->j()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/t;->an:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/b;->e(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v2

    if-nez v2, :cond_5d

    .line 1563
    invoke-static/range {v24 .. v24}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/internal/measurement/ao$g$a;)V

    .line 1564
    :cond_5d
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo$a;->a:Lcom/google/android/gms/internal/measurement/ao$g;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ao$g;->x()Ljava/lang/String;

    move-result-object v6

    .line 1565
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/google/android/gms/measurement/internal/c;->b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/fg;

    move-result-object v7

    .line 1566
    if-nez v7, :cond_62

    .line 1568
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 1569
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Bundling raw events w/o app info. appId"

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/jo$a;->a:Lcom/google/android/gms/internal/measurement/ao$g;

    .line 1570
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ao$g;->x()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1571
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1592
    :cond_5e
    :goto_2f
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/gms/internal/measurement/ao$g$a;->b()I

    move-result v2

    if-lez v2, :cond_60

    .line 1594
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->y()Lcom/google/android/gms/measurement/internal/kk;

    .line 1598
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/ex;

    move-result-object v2

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/jo$a;->a:Lcom/google/android/gms/internal/measurement/ao$g;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/ao$g;->x()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/ex;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/al$b;

    move-result-object v2

    .line 1599
    if-eqz v2, :cond_5f

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/al$b;->a()Z

    move-result v3

    if-nez v3, :cond_67

    .line 1600
    :cond_5f
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo$a;->a:Lcom/google/android/gms/internal/measurement/ao$g;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ao$g;->M()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 1601
    const-wide/16 v2, -0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/ao$g$a;->i(J)Lcom/google/android/gms/internal/measurement/ao$g$a;

    .line 1608
    :goto_30
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v3

    invoke-virtual/range {v24 .. v24}, Lcom/google/android/gms/internal/measurement/ed$b;->u()Lcom/google/android/gms/internal/measurement/fn;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ed;

    check-cast v2, Lcom/google/android/gms/internal/measurement/ao$g;

    move/from16 v0, v20

    invoke-virtual {v3, v2, v0}, Lcom/google/android/gms/measurement/internal/c;->a(Lcom/google/android/gms/internal/measurement/ao$g;Z)Z

    .line 1609
    :cond_60
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v4

    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/jo$a;->b:Ljava/util/List;

    .line 1610
    invoke-static {v5}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1611
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 1612
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/jl;->K()V

    .line 1613
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "rowid in ("

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1614
    const/4 v2, 0x0

    move v3, v2

    :goto_31
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_68

    .line 1615
    if-eqz v3, :cond_61

    .line 1616
    const-string/jumbo v2, ","

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1617
    :cond_61
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1618
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_31

    .line 1572
    :cond_62
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/gms/internal/measurement/ao$g$a;->b()I

    move-result v2

    if-lez v2, :cond_5e

    .line 1573
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/fg;->k()J

    move-result-wide v2

    .line 1574
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_63

    .line 1575
    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/ao$g$a;->e(J)Lcom/google/android/gms/internal/measurement/ao$g$a;

    .line 1577
    :goto_32
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/fg;->j()J

    move-result-wide v4

    .line 1578
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-nez v8, :cond_6b

    .line 1580
    :goto_33
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_64

    .line 1581
    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/ao$g$a;->d(J)Lcom/google/android/gms/internal/measurement/ao$g$a;

    .line 1583
    :goto_34
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/fg;->v()V

    .line 1584
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/fg;->s()J

    move-result-wide v2

    long-to-int v2, v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/ao$g$a;->g(I)Lcom/google/android/gms/internal/measurement/ao$g$a;

    .line 1585
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/gms/internal/measurement/ao$g$a;->f()J

    move-result-wide v2

    invoke-virtual {v7, v2, v3}, Lcom/google/android/gms/measurement/internal/fg;->a(J)V

    .line 1586
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/gms/internal/measurement/ao$g$a;->g()J

    move-result-wide v2

    invoke-virtual {v7, v2, v3}, Lcom/google/android/gms/measurement/internal/fg;->b(J)V

    .line 1587
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/fg;->D()Ljava/lang/String;

    move-result-object v2

    .line 1588
    if-eqz v2, :cond_65

    .line 1589
    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/ao$g$a;->j(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$g$a;

    .line 1591
    :goto_35
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/google/android/gms/measurement/internal/c;->a(Lcom/google/android/gms/measurement/internal/fg;)V

    goto/16 :goto_2f

    .line 1576
    :cond_63
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/gms/internal/measurement/ao$g$a;->i()Lcom/google/android/gms/internal/measurement/ao$g$a;

    goto :goto_32

    .line 1582
    :cond_64
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/gms/internal/measurement/ao$g$a;->h()Lcom/google/android/gms/internal/measurement/ao$g$a;

    goto :goto_34

    .line 1590
    :cond_65
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/gms/internal/measurement/ao$g$a;->k()Lcom/google/android/gms/internal/measurement/ao$g$a;

    goto :goto_35

    .line 1603
    :cond_66
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 1604
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Did not find measurement config or missing version info. appId"

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/jo$a;->a:Lcom/google/android/gms/internal/measurement/ao$g;

    .line 1605
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ao$g;->x()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1606
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_30

    .line 1607
    :cond_67
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/al$b;->b()J

    move-result-wide v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/ao$g$a;->i(J)Lcom/google/android/gms/internal/measurement/ao$g$a;

    goto/16 :goto_30

    .line 1619
    :cond_68
    const-string/jumbo v2, ")"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1620
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/c;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1621
    const-string/jumbo v3, "raw_events"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v2, v3, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 1622
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_69

    .line 1623
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v3

    .line 1624
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v3

    const-string/jumbo v4, "Deleted fewer rows from raw events table than expected"

    .line 1625
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1626
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1627
    invoke-virtual {v3, v4, v2, v5}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1628
    :cond_69
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v3

    .line 1629
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/c;->e()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    move-result-object v2

    .line 1630
    :try_start_19
    const-string/jumbo v4, "delete from raw_events_metadata where app_id=? and metadata_fingerprint not in (select distinct metadata_fingerprint from raw_events where app_id=?)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_19
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_19 .. :try_end_19} :catch_3
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 1636
    :goto_36
    :try_start_1a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/c;->c()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 1637
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/c;->s_()V

    .line 1638
    const/4 v2, 0x1

    .line 1641
    :goto_37
    return v2

    .line 1632
    :catch_3
    move-exception v2

    .line 1633
    :try_start_1b
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v3

    .line 1634
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v3

    const-string/jumbo v4, "Failed to remove unused event metadata. appId"

    .line 1635
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_36

    .line 1639
    :cond_6a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/c;->c()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    .line 1640
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/c;->s_()V

    .line 1641
    const/4 v2, 0x0

    goto :goto_37

    .line 1070
    :catchall_2
    move-exception v2

    move-object v3, v11

    goto/16 :goto_c

    .line 1064
    :catch_4
    move-exception v2

    goto/16 :goto_b

    :catch_5
    move-exception v2

    move-object v4, v12

    goto/16 :goto_b

    :cond_6b
    move-wide v2, v4

    goto/16 :goto_33

    :cond_6c
    move-object v3, v4

    goto/16 :goto_2d

    :cond_6d
    move-object v4, v3

    goto/16 :goto_29

    :cond_6e
    move/from16 v21, v4

    goto/16 :goto_28

    :cond_6f
    move v2, v3

    goto/16 :goto_21

    :cond_70
    move v3, v13

    move-object v4, v14

    move v5, v15

    move-object/from16 v6, v16

    goto/16 :goto_18

    :cond_71
    move v2, v4

    goto/16 :goto_1a

    :cond_72
    move v2, v3

    goto/16 :goto_16

    :cond_73
    move/from16 v20, v2

    goto/16 :goto_11

    :cond_74
    move v2, v13

    move-object v4, v14

    move v5, v15

    move-object/from16 v6, v16

    move-wide/from16 v8, v18

    move/from16 v7, v17

    move/from16 v10, v20

    goto/16 :goto_6

    :cond_75
    move-wide/from16 v8, v18

    goto/16 :goto_19

    .line 1119
    :sswitch_data_0
    .sparse-switch
        0x171c4 -> :sswitch_0
        0x17331 -> :sswitch_2
        0x17333 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final b(Lcom/google/android/gms/measurement/internal/fg;)Ljava/lang/Boolean;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2122
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fg;->m()J

    move-result-wide v0

    const-wide/32 v2, -0x80000000

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 2124
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->r()Landroid/content/Context;

    move-result-object v0

    .line 2125
    invoke-static {v0}, Lcom/google/android/gms/common/c/c;->a(Landroid/content/Context;)Lcom/google/android/gms/common/c/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fg;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/c/b;->b(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 2126
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fg;->m()J

    move-result-wide v2

    int-to-long v0, v0

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    .line 2127
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2137
    :goto_0
    return-object v0

    .line 2130
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->r()Landroid/content/Context;

    move-result-object v0

    .line 2131
    invoke-static {v0}, Lcom/google/android/gms/common/c/c;->a(Landroid/content/Context;)Lcom/google/android/gms/common/c/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fg;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/c/b;->b(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 2132
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fg;->l()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fg;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2133
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 2136
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    .line 2137
    :cond_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private final b(Lcom/google/android/gms/internal/measurement/ao$c$a;Lcom/google/android/gms/internal/measurement/ao$c$a;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 1707
    const-string/jumbo v0, "_e"

    .line 1708
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ao$c$a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1709
    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->b(Z)V

    .line 1711
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->h()Lcom/google/android/gms/measurement/internal/js;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ed$b;->u()Lcom/google/android/gms/internal/measurement/fn;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$c;

    const-string/jumbo v1, "_et"

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/js;->a(Lcom/google/android/gms/internal/measurement/ao$c;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$e;

    move-result-object v0

    .line 1712
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$e;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$e;->f()J

    move-result-wide v2

    cmp-long v1, v2, v6

    if-gtz v1, :cond_1

    .line 1721
    :cond_0
    :goto_0
    return-void

    .line 1714
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$e;->f()J

    move-result-wide v2

    .line 1716
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->h()Lcom/google/android/gms/measurement/internal/js;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/ed$b;->u()Lcom/google/android/gms/internal/measurement/fn;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$c;

    const-string/jumbo v1, "_et"

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/js;->a(Lcom/google/android/gms/internal/measurement/ao$c;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$e;

    move-result-object v0

    .line 1717
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$e;->f()J

    move-result-wide v4

    cmp-long v1, v4, v6

    if-lez v1, :cond_2

    .line 1718
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ao$e;->f()J

    move-result-wide v0

    add-long/2addr v0, v2

    .line 1719
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->h()Lcom/google/android/gms/measurement/internal/js;

    move-result-object v2

    const-string/jumbo v3, "_et"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, p2, v3, v0}, Lcom/google/android/gms/measurement/internal/js;->a(Lcom/google/android/gms/internal/measurement/ao$c$a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1720
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->h()Lcom/google/android/gms/measurement/internal/js;

    move-result-object v0

    const-string/jumbo v1, "_fr"

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/measurement/internal/js;->a(Lcom/google/android/gms/internal/measurement/ao$c$a;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    move-wide v0, v2

    goto :goto_1
.end method

.method private static b(Lcom/google/android/gms/measurement/internal/jl;)V
    .locals 4

    .prologue
    .line 127
    if-nez p0, :cond_0

    .line 128
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Upload Component not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jl;->J()Z

    move-result v0

    if-nez v0, :cond_1

    .line 130
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Component not initialized: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_1
    return-void
.end method

.method private final b(Lcom/google/android/gms/measurement/internal/r;Lcom/google/android/gms/measurement/internal/kb;)V
    .locals 32

    .prologue
    .line 330
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/kb;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 332
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v30

    .line 333
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->t()V

    .line 334
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->k()V

    .line 335
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/kb;->a:Ljava/lang/String;

    .line 336
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->h()Lcom/google/android/gms/measurement/internal/js;

    invoke-static/range {p1 .. p2}, Lcom/google/android/gms/measurement/internal/js;->a(Lcom/google/android/gms/measurement/internal/r;Lcom/google/android/gms/measurement/internal/kb;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 781
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/google/android/gms/measurement/internal/kb;->h:Z

    if-nez v2, :cond_2

    .line 339
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/jo;->c(Lcom/google/android/gms/measurement/internal/kb;)Lcom/google/android/gms/measurement/internal/fg;

    goto :goto_0

    .line 341
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/ex;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/r;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/ex;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 343
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 344
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v4, "Dropping blacklisted event. appId"

    .line 345
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 346
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/fd;->j()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v6

    .line 347
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/r;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/dw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 348
    invoke-virtual {v2, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 350
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/ex;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/ex;->g(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 351
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/ex;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/ex;->h(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    const/4 v2, 0x1

    move v8, v2

    .line 352
    :goto_1
    if-nez v8, :cond_4

    const-string/jumbo v2, "_err"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/r;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 354
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->i()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v2

    .line 355
    const/16 v4, 0xb

    const-string/jumbo v5, "_ev"

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/r;->a:Ljava/lang/String;

    const/4 v7, 0x0

    .line 356
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/jw;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 357
    :cond_4
    if-eqz v8, :cond_0

    .line 358
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/c;->b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/fg;

    move-result-object v3

    .line 359
    if-eqz v3, :cond_0

    .line 361
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/fg;->u()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/fg;->t()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 363
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v2

    .line 364
    invoke-interface {v2}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v6

    .line 365
    sub-long v4, v6, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    .line 366
    sget-object v2, Lcom/google/android/gms/measurement/internal/t;->y:Lcom/google/android/gms/measurement/internal/dr;

    .line 367
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/google/android/gms/measurement/internal/dr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 368
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 369
    cmp-long v2, v4, v6

    if-lez v2, :cond_0

    .line 371
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 372
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->i()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v4, "Fetching config for blacklisted app"

    invoke-virtual {v2, v4}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 373
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/fg;)V

    goto/16 :goto_0

    .line 351
    :cond_5
    const/4 v2, 0x0

    move v8, v2

    goto :goto_1

    .line 375
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ih;->b()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 376
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    .line 377
    sget-object v4, Lcom/google/android/gms/measurement/internal/t;->aK:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 379
    new-instance v4, Lcom/google/android/gms/measurement/internal/ec;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/r;->a:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/r;->c:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/r;->b:Lcom/google/android/gms/measurement/internal/m;

    .line 380
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/m;->b()Landroid/os/Bundle;

    move-result-object v7

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/google/android/gms/measurement/internal/r;->d:J

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/measurement/internal/ec;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    .line 383
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->i()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v6

    .line 385
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    .line 387
    sget-object v5, Lcom/google/android/gms/measurement/internal/t;->H:Lcom/google/android/gms/measurement/internal/dr;

    const/16 v7, 0x19

    const/16 v8, 0x64

    invoke-virtual {v2, v3, v5, v7, v8}, Lcom/google/android/gms/measurement/internal/b;->a(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/dr;II)I

    move-result v7

    .line 389
    const/4 v2, 0x0

    .line 390
    new-instance v5, Ljava/util/TreeSet;

    iget-object v8, v4, Lcom/google/android/gms/measurement/internal/ec;->d:Landroid/os/Bundle;

    invoke-virtual {v8}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 391
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v5, v2

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 392
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/jw;->a(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 393
    add-int/lit8 v5, v5, 0x1

    .line 394
    if-le v5, v7, :cond_7

    .line 395
    const/16 v9, 0x30

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v9, "Event can\'t contain more than "

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " params"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 396
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v10

    .line 397
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/dy;->d()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v10

    .line 398
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/fz;->s()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v11

    iget-object v12, v4, Lcom/google/android/gms/measurement/internal/ec;->a:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/google/android/gms/measurement/internal/dw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 399
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/fz;->s()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v12

    iget-object v13, v4, Lcom/google/android/gms/measurement/internal/ec;->d:Landroid/os/Bundle;

    invoke-virtual {v12, v13}, Lcom/google/android/gms/measurement/internal/dw;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v12

    .line 400
    invoke-virtual {v10, v9, v11, v12}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 401
    iget-object v9, v4, Lcom/google/android/gms/measurement/internal/ec;->d:Landroid/os/Bundle;

    const/4 v10, 0x5

    invoke-static {v9, v10}, Lcom/google/android/gms/measurement/internal/jw;->b(Landroid/os/Bundle;I)Z

    .line 402
    iget-object v9, v4, Lcom/google/android/gms/measurement/internal/ec;->d:Landroid/os/Bundle;

    invoke-virtual {v9, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_7
    move v2, v5

    move v5, v2

    .line 403
    goto :goto_2

    .line 405
    :cond_8
    new-instance p1, Lcom/google/android/gms/measurement/internal/r;

    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/ec;->a:Ljava/lang/String;

    new-instance v6, Lcom/google/android/gms/measurement/internal/m;

    new-instance v2, Landroid/os/Bundle;

    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/ec;->d:Landroid/os/Bundle;

    invoke-direct {v2, v7}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-direct {v6, v2}, Lcom/google/android/gms/measurement/internal/m;-><init>(Landroid/os/Bundle;)V

    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/ec;->b:Ljava/lang/String;

    iget-wide v8, v4, Lcom/google/android/gms/measurement/internal/ec;->c:J

    move-object/from16 v4, p1

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/measurement/internal/r;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/m;Ljava/lang/String;J)V

    .line 408
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 409
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/google/android/gms/measurement/internal/dy;->a(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 411
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 412
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v4, "Logging event"

    .line 413
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/fd;->j()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v5

    .line 414
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/google/android/gms/measurement/internal/dw;->a(Lcom/google/android/gms/measurement/internal/r;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 415
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/c;->b()V

    .line 416
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/jo;->c(Lcom/google/android/gms/measurement/internal/kb;)Lcom/google/android/gms/measurement/internal/fg;

    .line 417
    invoke-static {}, Lcom/google/android/gms/internal/measurement/in;->b()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 418
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    .line 419
    sget-object v4, Lcom/google/android/gms/measurement/internal/t;->aJ:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    .line 420
    :goto_3
    const-string/jumbo v4, "ecommerce_purchase"

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/r;->a:Ljava/lang/String;

    .line 421
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    if-eqz v2, :cond_11

    const-string/jumbo v2, "purchase"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/r;->a:Ljava/lang/String;

    .line 422
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string/jumbo v2, "refund"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/r;->a:Ljava/lang/String;

    .line 423
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_b
    const/4 v2, 0x1

    move v4, v2

    .line 424
    :goto_4
    const-string/jumbo v2, "_iap"

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/r;->a:Ljava/lang/String;

    .line 425
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    if-eqz v4, :cond_12

    :cond_c
    const/4 v2, 0x1

    .line 426
    :goto_5
    if-eqz v2, :cond_18

    .line 428
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/r;->b:Lcom/google/android/gms/measurement/internal/m;

    const-string/jumbo v5, "currency"

    invoke-virtual {v2, v5}, Lcom/google/android/gms/measurement/internal/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 429
    if-eqz v4, :cond_15

    .line 430
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/r;->b:Lcom/google/android/gms/measurement/internal/m;

    const-string/jumbo v5, "value"

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/m;->c(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide v6, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v4, v6

    .line 431
    const-wide/16 v6, 0x0

    cmpl-double v6, v4, v6

    if-nez v6, :cond_d

    .line 432
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/r;->b:Lcom/google/android/gms/measurement/internal/m;

    const-string/jumbo v5, "value"

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/m;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    long-to-double v4, v4

    const-wide v6, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v4, v6

    .line 433
    :cond_d
    const-wide/high16 v6, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v6, v4, v6

    if-gtz v6, :cond_13

    const-wide/high16 v6, -0x3c20000000000000L    # -9.223372036854776E18

    cmpl-double v6, v4, v6

    if-ltz v6, :cond_13

    .line 434
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    .line 435
    invoke-static {}, Lcom/google/android/gms/internal/measurement/in;->b()Z

    move-result v6

    if-eqz v6, :cond_14

    .line 436
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/fd;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v6

    .line 437
    sget-object v7, Lcom/google/android/gms/measurement/internal/t;->aJ:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v6

    if-eqz v6, :cond_14

    const-string/jumbo v6, "refund"

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/r;->a:Ljava/lang/String;

    .line 438
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 439
    neg-long v4, v4

    move-wide v8, v4

    .line 449
    :goto_6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 450
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 451
    const-string/jumbo v4, "[A-Z]{3}"

    invoke-virtual {v2, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 452
    const-string/jumbo v4, "_ltv_"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_16

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 453
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    invoke-virtual {v2, v3, v5}, Lcom/google/android/gms/measurement/internal/c;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/jx;

    move-result-object v2

    .line 454
    if-eqz v2, :cond_e

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/jx;->e:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/Long;

    if-nez v4, :cond_17

    .line 455
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v4

    .line 456
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    .line 458
    sget-object v6, Lcom/google/android/gms/measurement/internal/t;->D:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v2, v3, v6}, Lcom/google/android/gms/measurement/internal/b;->b(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/dr;)I

    move-result v2

    .line 459
    add-int/lit8 v2, v2, -0x1

    .line 460
    invoke-static {v3}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 461
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 462
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/jl;->K()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    :try_start_1
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/c;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 464
    const-string/jumbo v7, "delete from user_attributes where app_id=? and name in (select name from user_attributes where app_id=? and name like \'_ltv_%\' order by set_timestamp desc limit ?,10);"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    const/4 v11, 0x1

    aput-object v3, v10, v11

    const/4 v11, 0x2

    .line 465
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v11

    .line 466
    invoke-virtual {v6, v7, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 470
    :goto_8
    :try_start_2
    new-instance v2, Lcom/google/android/gms/measurement/internal/jx;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/r;->c:Ljava/lang/String;

    .line 471
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/fd;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v6

    .line 472
    invoke-interface {v6}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/jx;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 478
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/measurement/internal/c;->a(Lcom/google/android/gms/measurement/internal/jx;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 480
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v4

    .line 481
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v4

    const-string/jumbo v5, "Too many unique user properties are set. Ignoring user property. appId"

    .line 482
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 483
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/fd;->j()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v7

    .line 484
    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/jx;->c:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/dw;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/jx;->e:Ljava/lang/Object;

    .line 485
    invoke-virtual {v4, v5, v6, v7, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 487
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->i()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v2

    .line 488
    const/16 v4, 0x9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 489
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/jw;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 490
    :cond_f
    const/4 v2, 0x1

    .line 491
    :goto_a
    if-nez v2, :cond_18

    .line 492
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/c;->c()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 493
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/c;->s_()V

    goto/16 :goto_0

    .line 419
    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 423
    :cond_11
    const/4 v2, 0x0

    move v4, v2

    goto/16 :goto_4

    .line 425
    :cond_12
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 441
    :cond_13
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 442
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v6, "Data lost. Currency value is too big. appId"

    .line 443
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 444
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 445
    invoke-virtual {v2, v6, v7, v4}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 446
    const/4 v2, 0x0

    goto :goto_a

    :cond_14
    move-wide v8, v4

    .line 447
    goto/16 :goto_6

    .line 448
    :cond_15
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/r;->b:Lcom/google/android/gms/measurement/internal/m;

    const-string/jumbo v5, "value"

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/m;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-wide v8, v4

    goto/16 :goto_6

    .line 452
    :cond_16
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_7

    .line 773
    :catchall_0
    move-exception v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/c;->s_()V

    .line 774
    throw v2

    .line 468
    :catch_0
    move-exception v2

    .line 469
    :try_start_4
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v4

    const-string/jumbo v6, "Error pruning currencies. appId"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v6, v7, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 473
    :cond_17
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/jx;->e:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 474
    new-instance v2, Lcom/google/android/gms/measurement/internal/jx;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/r;->c:Ljava/lang/String;

    .line 475
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/fd;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v6

    .line 476
    invoke-interface {v6}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v6

    add-long/2addr v8, v10

    .line 477
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/jx;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    goto/16 :goto_9

    .line 495
    :cond_18
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/r;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/jw;->a(Ljava/lang/String;)Z

    move-result v11

    .line 496
    const-string/jumbo v2, "_err"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/r;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 497
    const-wide/16 v8, 0x1

    .line 498
    invoke-static {}, Lcom/google/android/gms/internal/measurement/in;->b()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 499
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    .line 500
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/kb;->a:Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/measurement/internal/t;->aF:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/measurement/internal/b;->e(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 501
    const-wide/16 v4, 0x1

    .line 502
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->i()Lcom/google/android/gms/measurement/internal/jw;

    .line 503
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/r;->b:Lcom/google/android/gms/measurement/internal/m;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/jw;->a(Lcom/google/android/gms/measurement/internal/m;)J

    move-result-wide v6

    add-long v8, v4, v6

    .line 505
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v4

    .line 506
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->w()J

    move-result-wide v5

    const/4 v10, 0x1

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object v7, v3

    .line 507
    invoke-virtual/range {v4 .. v14}, Lcom/google/android/gms/measurement/internal/c;->a(JLjava/lang/String;JZZZZZ)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v4

    .line 508
    iget-wide v6, v4, Lcom/google/android/gms/measurement/internal/f;->b:J

    .line 509
    sget-object v2, Lcom/google/android/gms/measurement/internal/t;->j:Lcom/google/android/gms/measurement/internal/dr;

    .line 510
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/google/android/gms/measurement/internal/dr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 511
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v8, v2

    .line 512
    sub-long/2addr v6, v8

    .line 513
    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-lez v2, :cond_1b

    .line 514
    const-wide/16 v8, 0x3e8

    rem-long/2addr v6, v8

    const-wide/16 v8, 0x1

    cmp-long v2, v6, v8

    if-nez v2, :cond_1a

    .line 516
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 517
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v5, "Data loss. Too many events logged. appId, count"

    .line 518
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-wide v6, v4, Lcom/google/android/gms/measurement/internal/f;->b:J

    .line 519
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 520
    invoke-virtual {v2, v5, v3, v4}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 521
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/c;->c()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 522
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/c;->s_()V

    goto/16 :goto_0

    .line 524
    :cond_1b
    if-eqz v11, :cond_1d

    .line 525
    :try_start_5
    iget-wide v6, v4, Lcom/google/android/gms/measurement/internal/f;->a:J

    .line 526
    sget-object v2, Lcom/google/android/gms/measurement/internal/t;->l:Lcom/google/android/gms/measurement/internal/dr;

    .line 527
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/google/android/gms/measurement/internal/dr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 528
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v8, v2

    .line 529
    sub-long/2addr v6, v8

    .line 530
    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-lez v2, :cond_1d

    .line 531
    const-wide/16 v8, 0x3e8

    rem-long/2addr v6, v8

    const-wide/16 v8, 0x1

    cmp-long v2, v6, v8

    if-nez v2, :cond_1c

    .line 533
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 534
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v5, "Data loss. Too many public events logged. appId, count"

    .line 535
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    iget-wide v8, v4, Lcom/google/android/gms/measurement/internal/f;->a:J

    .line 536
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 537
    invoke-virtual {v2, v5, v6, v4}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 539
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->i()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v2

    .line 540
    const/16 v4, 0x10

    const-string/jumbo v5, "_ev"

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/r;->a:Ljava/lang/String;

    const/4 v7, 0x0

    .line 541
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/jw;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 542
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/c;->c()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 543
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/c;->s_()V

    goto/16 :goto_0

    .line 545
    :cond_1d
    if-eqz v13, :cond_1f

    .line 546
    :try_start_6
    iget-wide v6, v4, Lcom/google/android/gms/measurement/internal/f;->d:J

    .line 547
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    .line 548
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/kb;->a:Ljava/lang/String;

    .line 549
    sget-object v8, Lcom/google/android/gms/measurement/internal/t;->k:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v2, v5, v8}, Lcom/google/android/gms/measurement/internal/b;->b(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/dr;)I

    move-result v2

    .line 550
    const v5, 0xf4240

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 551
    const/4 v5, 0x0

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 552
    int-to-long v8, v2

    sub-long/2addr v6, v8

    .line 553
    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-lez v2, :cond_1f

    .line 554
    const-wide/16 v8, 0x1

    cmp-long v2, v6, v8

    if-nez v2, :cond_1e

    .line 556
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 557
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v5, "Too many error events logged. appId, count"

    .line 558
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-wide v6, v4, Lcom/google/android/gms/measurement/internal/f;->d:J

    .line 559
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 560
    invoke-virtual {v2, v5, v3, v4}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 561
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/c;->c()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 562
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/c;->s_()V

    goto/16 :goto_0

    .line 564
    :cond_1f
    :try_start_7
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/r;->b:Lcom/google/android/gms/measurement/internal/m;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/m;->b()Landroid/os/Bundle;

    move-result-object v22

    .line 566
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->i()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v2

    .line 567
    const-string/jumbo v4, "_o"

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/r;->c:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0, v4, v5}, Lcom/google/android/gms/measurement/internal/jw;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 569
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->i()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v2

    .line 570
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/jw;->f(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 572
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->i()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v2

    .line 573
    const-string/jumbo v4, "_dbg"

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v2, v0, v4, v5}, Lcom/google/android/gms/measurement/internal/jw;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 575
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->i()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v2

    .line 576
    const-string/jumbo v4, "_r"

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v2, v0, v4, v5}, Lcom/google/android/gms/measurement/internal/jw;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 577
    :cond_20
    const-string/jumbo v2, "_s"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/r;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 579
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/kb;->a:Ljava/lang/String;

    const-string/jumbo v5, "_sno"

    .line 580
    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/measurement/internal/c;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/jx;

    move-result-object v2

    .line 581
    if-eqz v2, :cond_21

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/jx;->e:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/Long;

    if-eqz v4, :cond_21

    .line 583
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fd;->i()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v4

    .line 584
    const-string/jumbo v5, "_sno"

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/jx;->e:Ljava/lang/Object;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0, v5, v2}, Lcom/google/android/gms/measurement/internal/jw;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 585
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/c;->c(Ljava/lang/String;)J

    move-result-wide v4

    .line 586
    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_22

    .line 588
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 589
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v6, "Data lost. Too many events stored on disk, deleted. appId"

    .line 590
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 591
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 592
    invoke-virtual {v2, v6, v7, v4}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 593
    :cond_22
    new-instance v13, Lcom/google/android/gms/measurement/internal/k;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/google/android/gms/measurement/internal/r;->c:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/r;->a:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/google/android/gms/measurement/internal/r;->d:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v22}, Lcom/google/android/gms/measurement/internal/k;-><init>(Lcom/google/android/gms/measurement/internal/fd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    .line 594
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    iget-object v4, v13, Lcom/google/android/gms/measurement/internal/k;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/n;

    move-result-object v2

    .line 595
    if-nez v2, :cond_34

    .line 596
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/c;->h(Ljava/lang/String;)J

    move-result-wide v4

    .line 598
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    .line 599
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/b;->a(Ljava/lang/String;)I

    move-result v2

    int-to-long v6, v2

    cmp-long v2, v4, v6

    if-ltz v2, :cond_23

    if-eqz v11, :cond_23

    .line 601
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 602
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v4, "Too many event names used, ignoring event. appId, name, supported count"

    .line 603
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 604
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/fd;->j()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v6

    .line 605
    iget-object v7, v13, Lcom/google/android/gms/measurement/internal/k;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/dw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 606
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/fd;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v7

    .line 607
    invoke-virtual {v7, v3}, Lcom/google/android/gms/measurement/internal/b;->a(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 608
    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 610
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->i()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v2

    .line 611
    const/16 v4, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 612
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/jw;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 613
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/c;->s_()V

    goto/16 :goto_0

    .line 615
    :cond_23
    :try_start_8
    new-instance v15, Lcom/google/android/gms/measurement/internal/n;

    iget-object v0, v13, Lcom/google/android/gms/measurement/internal/k;->b:Ljava/lang/String;

    move-object/from16 v17, v0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    iget-wide v0, v13, Lcom/google/android/gms/measurement/internal/k;->c:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v16, v3

    invoke-direct/range {v15 .. v29}, Lcom/google/android/gms/measurement/internal/n;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    .line 619
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/google/android/gms/measurement/internal/c;->a(Lcom/google/android/gms/measurement/internal/n;)V

    .line 621
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->t()V

    .line 622
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->k()V

    .line 623
    invoke-static {v13}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    iget-object v2, v13, Lcom/google/android/gms/measurement/internal/k;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 626
    iget-object v2, v13, Lcom/google/android/gms/measurement/internal/k;->a:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/kb;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/common/internal/s;->b(Z)V

    .line 627
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ao$g;->af()Lcom/google/android/gms/internal/measurement/ao$g$a;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/ao$g$a;->a(I)Lcom/google/android/gms/internal/measurement/ao$g$a;

    move-result-object v2

    const-string/jumbo v3, "android"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/ao$g$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$g$a;

    move-result-object v4

    .line 628
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/kb;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 629
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/kb;->a:Ljava/lang/String;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/measurement/ao$g$a;->f(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$g$a;

    .line 630
    :cond_24
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/kb;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 631
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/kb;->d:Ljava/lang/String;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/measurement/ao$g$a;->e(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$g$a;

    .line 632
    :cond_25
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/kb;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 633
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/kb;->c:Ljava/lang/String;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/measurement/ao$g$a;->g(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$g$a;

    .line 634
    :cond_26
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/google/android/gms/measurement/internal/kb;->j:J

    const-wide/32 v6, -0x80000000

    cmp-long v2, v2, v6

    if-eqz v2, :cond_27

    .line 635
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/google/android/gms/measurement/internal/kb;->j:J

    long-to-int v2, v2

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/measurement/ao$g$a;->h(I)Lcom/google/android/gms/internal/measurement/ao$g$a;

    .line 636
    :cond_27
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/google/android/gms/measurement/internal/kb;->e:J

    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/internal/measurement/ao$g$a;->f(J)Lcom/google/android/gms/internal/measurement/ao$g$a;

    .line 637
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/kb;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 638
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/kb;->b:Ljava/lang/String;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/measurement/ao$g$a;->k(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$g$a;

    .line 639
    :cond_28
    invoke-static {}, Lcom/google/android/gms/internal/measurement/jy;->b()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 640
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    .line 641
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/kb;->a:Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/measurement/internal/t;->ao:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v2, v3, v5}, Lcom/google/android/gms/measurement/internal/b;->e(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 642
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ao$g$a;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_29

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/kb;->v:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 643
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/kb;->v:Ljava/lang/String;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/measurement/ao$g$a;->p(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$g$a;

    .line 644
    :cond_29
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ao$g$a;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 645
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ao$g$a;->o()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2a

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/kb;->r:Ljava/lang/String;

    .line 646
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 647
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/kb;->r:Ljava/lang/String;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/measurement/ao$g$a;->o(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$g$a;

    .line 650
    :cond_2a
    :goto_c
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/google/android/gms/measurement/internal/kb;->f:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_2b

    .line 651
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/google/android/gms/measurement/internal/kb;->f:J

    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/internal/measurement/ao$g$a;->h(J)Lcom/google/android/gms/internal/measurement/ao$g$a;

    .line 652
    :cond_2b
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/google/android/gms/measurement/internal/kb;->t:J

    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/internal/measurement/ao$g$a;->k(J)Lcom/google/android/gms/internal/measurement/ao$g$a;

    .line 654
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    .line 655
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/kb;->a:Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/measurement/internal/t;->W:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v2, v3, v5}, Lcom/google/android/gms/measurement/internal/b;->e(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 656
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->h()Lcom/google/android/gms/measurement/internal/js;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/js;->b()Ljava/util/List;

    move-result-object v2

    .line 657
    if-eqz v2, :cond_2c

    .line 658
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/measurement/ao$g$a;->d(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/ao$g$a;

    .line 660
    :cond_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->c()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v2

    .line 661
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/kb;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/el;->a(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v3

    .line 662
    if-eqz v3, :cond_36

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_36

    .line 663
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/google/android/gms/measurement/internal/kb;->o:Z

    if-eqz v2, :cond_2d

    .line 664
    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/measurement/ao$g$a;->h(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$g$a;

    .line 665
    iget-object v2, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v2, :cond_2d

    .line 666
    iget-object v2, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/measurement/ao$g$a;->a(Z)Lcom/google/android/gms/internal/measurement/ao$g$a;

    .line 686
    :cond_2d
    :goto_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->w()Lcom/google/android/gms/measurement/internal/l;

    move-result-object v2

    .line 687
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fy;->A()V

    .line 688
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 689
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/measurement/ao$g$a;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$g$a;

    move-result-object v2

    .line 690
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/fd;->w()Lcom/google/android/gms/measurement/internal/l;

    move-result-object v3

    .line 691
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/fy;->A()V

    .line 692
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 693
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/ao$g$a;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$g$a;

    move-result-object v2

    .line 694
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/fd;->w()Lcom/google/android/gms/measurement/internal/l;

    move-result-object v3

    .line 695
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/l;->w_()J

    move-result-wide v6

    long-to-int v3, v6

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/ao$g$a;->f(I)Lcom/google/android/gms/internal/measurement/ao$g$a;

    move-result-object v2

    .line 696
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/fd;->w()Lcom/google/android/gms/measurement/internal/l;

    move-result-object v3

    .line 697
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/l;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/ao$g$a;->d(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$g$a;

    .line 699
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    .line 700
    sget-object v3, Lcom/google/android/gms/measurement/internal/t;->aM:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 701
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/google/android/gms/measurement/internal/kb;->l:J

    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/internal/measurement/ao$g$a;->j(J)Lcom/google/android/gms/internal/measurement/ao$g$a;

    .line 702
    :cond_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->B()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 703
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ao$g$a;->j()Ljava/lang/String;

    .line 704
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 705
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/measurement/ao$g$a;->n(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$g$a;

    .line 706
    :cond_2f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/kb;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/c;->b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/fg;

    move-result-object v2

    .line 707
    if-nez v2, :cond_31

    .line 708
    new-instance v2, Lcom/google/android/gms/measurement/internal/fg;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/kb;->a:Ljava/lang/String;

    invoke-direct {v2, v3, v5}, Lcom/google/android/gms/measurement/internal/fg;-><init>(Lcom/google/android/gms/measurement/internal/fd;Ljava/lang/String;)V

    .line 710
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/fd;->i()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v3

    .line 711
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/jw;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/fg;->a(Ljava/lang/String;)V

    .line 712
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/kb;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/fg;->f(Ljava/lang/String;)V

    .line 713
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/kb;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/fg;->b(Ljava/lang/String;)V

    .line 715
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/fd;->c()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v3

    .line 716
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/kb;->a:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/google/android/gms/measurement/internal/el;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 717
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/fg;->e(Ljava/lang/String;)V

    .line 718
    const-wide/16 v6, 0x0

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/measurement/internal/fg;->g(J)V

    .line 719
    const-wide/16 v6, 0x0

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/measurement/internal/fg;->a(J)V

    .line 720
    const-wide/16 v6, 0x0

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/measurement/internal/fg;->b(J)V

    .line 721
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/kb;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/fg;->g(Ljava/lang/String;)V

    .line 722
    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/google/android/gms/measurement/internal/kb;->j:J

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/measurement/internal/fg;->c(J)V

    .line 723
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/kb;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/fg;->h(Ljava/lang/String;)V

    .line 724
    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/google/android/gms/measurement/internal/kb;->e:J

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/measurement/internal/fg;->d(J)V

    .line 725
    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/google/android/gms/measurement/internal/kb;->f:J

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/measurement/internal/fg;->e(J)V

    .line 726
    move-object/from16 v0, p2

    iget-boolean v3, v0, Lcom/google/android/gms/measurement/internal/kb;->h:Z

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/fg;->a(Z)V

    .line 728
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/fd;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v3

    .line 729
    sget-object v5, Lcom/google/android/gms/measurement/internal/t;->aM:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v3, v5}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v3

    if-nez v3, :cond_30

    .line 730
    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/google/android/gms/measurement/internal/kb;->l:J

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/measurement/internal/fg;->p(J)V

    .line 731
    :cond_30
    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/google/android/gms/measurement/internal/kb;->t:J

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/measurement/internal/fg;->f(J)V

    .line 732
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/measurement/internal/c;->a(Lcom/google/android/gms/measurement/internal/fg;)V

    .line 733
    :cond_31
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fg;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_32

    .line 734
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fg;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/measurement/ao$g$a;->i(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$g$a;

    .line 735
    :cond_32
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fg;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_33

    .line 736
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fg;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/measurement/ao$g$a;->l(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$g$a;

    .line 737
    :cond_33
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/kb;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/c;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 738
    const/4 v2, 0x0

    move v3, v2

    :goto_e
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_39

    .line 739
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ao$k;->j()Lcom/google/android/gms/internal/measurement/ao$k$a;

    move-result-object v6

    .line 740
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/jx;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/jx;->c:Ljava/lang/String;

    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/measurement/ao$k$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$k$a;

    move-result-object v6

    .line 741
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/jx;

    iget-wide v8, v2, Lcom/google/android/gms/measurement/internal/jx;->d:J

    invoke-virtual {v6, v8, v9}, Lcom/google/android/gms/internal/measurement/ao$k$a;->a(J)Lcom/google/android/gms/internal/measurement/ao$k$a;

    move-result-object v6

    .line 742
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->h()Lcom/google/android/gms/measurement/internal/js;

    move-result-object v7

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/jx;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/jx;->e:Ljava/lang/Object;

    invoke-virtual {v7, v6, v2}, Lcom/google/android/gms/measurement/internal/js;->a(Lcom/google/android/gms/internal/measurement/ao$k$a;Ljava/lang/Object;)V

    .line 743
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/measurement/ao$g$a;->a(Lcom/google/android/gms/internal/measurement/ao$k$a;)Lcom/google/android/gms/internal/measurement/ao$g$a;

    .line 744
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_e

    .line 617
    :cond_34
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    iget-wide v4, v2, Lcom/google/android/gms/measurement/internal/n;->f:J

    invoke-virtual {v13, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/k;->a(Lcom/google/android/gms/measurement/internal/fd;J)Lcom/google/android/gms/measurement/internal/k;

    move-result-object v13

    .line 618
    iget-wide v4, v13, Lcom/google/android/gms/measurement/internal/k;->c:J

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/measurement/internal/n;->a(J)Lcom/google/android/gms/measurement/internal/n;

    move-result-object v15

    goto/16 :goto_b

    .line 648
    :cond_35
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ao$g$a;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2a

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/kb;->r:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 649
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/kb;->r:Ljava/lang/String;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/measurement/ao$g$a;->o(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$g$a;

    goto/16 :goto_c

    .line 668
    :cond_36
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->w()Lcom/google/android/gms/measurement/internal/l;

    move-result-object v2

    .line 670
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/fd;->r()Landroid/content/Context;

    move-result-object v3

    .line 671
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/l;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2d

    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/google/android/gms/measurement/internal/kb;->p:Z

    if-eqz v2, :cond_2d

    .line 673
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->r()Landroid/content/Context;

    move-result-object v2

    .line 674
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 675
    if-nez v2, :cond_38

    .line 677
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 678
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "null secure ID. appId"

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ao$g$a;->j()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 679
    const-string/jumbo v2, "null"

    .line 684
    :cond_37
    :goto_f
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/measurement/ao$g$a;->m(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ao$g$a;

    goto/16 :goto_d

    .line 680
    :cond_38
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 682
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v3

    .line 683
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v3

    const-string/jumbo v5, "empty secure ID. appId"

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ao$g$a;->j()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_f

    .line 746
    :cond_39
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v3

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ed$b;->u()Lcom/google/android/gms/internal/measurement/fn;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ed;

    check-cast v2, Lcom/google/android/gms/internal/measurement/ao$g;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/measurement/internal/c;->a(Lcom/google/android/gms/internal/measurement/ao$g;)J
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-wide v14

    .line 755
    :try_start_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v12

    .line 756
    iget-object v2, v13, Lcom/google/android/gms/measurement/internal/k;->e:Lcom/google/android/gms/measurement/internal/m;

    if-eqz v2, :cond_3d

    .line 757
    iget-object v2, v13, Lcom/google/android/gms/measurement/internal/k;->e:Lcom/google/android/gms/measurement/internal/m;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/m;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 758
    const-string/jumbo v4, "_r"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 759
    const/4 v2, 0x1

    .line 768
    :goto_10
    invoke-virtual {v12, v13, v14, v15, v2}, Lcom/google/android/gms/measurement/internal/c;->a(Lcom/google/android/gms/measurement/internal/k;JZ)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 769
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/gms/measurement/internal/jo;->m:J

    .line 770
    :cond_3b
    :goto_11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/c;->c()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 771
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/c;->s_()V

    .line 775
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->z()V

    .line 777
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 778
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Background event processing time, ms"

    .line 779
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v4, v30

    const-wide/32 v6, 0x7a120

    add-long/2addr v4, v6

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 780
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 748
    :catch_1
    move-exception v2

    .line 750
    :try_start_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v3

    .line 751
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v3

    const-string/jumbo v5, "Data loss. Failed to insert raw event metadata. appId"

    .line 752
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ao$g$a;->j()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 753
    invoke-virtual {v3, v5, v4, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_11

    .line 761
    :cond_3c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/ex;

    move-result-object v2

    iget-object v3, v13, Lcom/google/android/gms/measurement/internal/k;->a:Ljava/lang/String;

    iget-object v4, v13, Lcom/google/android/gms/measurement/internal/k;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/ex;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 763
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v3

    .line 764
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->w()J

    move-result-wide v4

    iget-object v6, v13, Lcom/google/android/gms/measurement/internal/k;->a:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, Lcom/google/android/gms/measurement/internal/c;->a(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v3

    .line 765
    if-eqz v2, :cond_3d

    iget-wide v2, v3, Lcom/google/android/gms/measurement/internal/f;->e:J

    .line 766
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fd;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v4

    .line 767
    iget-object v5, v13, Lcom/google/android/gms/measurement/internal/k;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/b;->b(Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_3d

    const/4 v2, 0x1

    goto/16 :goto_10

    :cond_3d
    const/4 v2, 0x0

    goto/16 :goto_10
.end method

.method private final e(Lcom/google/android/gms/measurement/internal/kb;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2989
    invoke-static {}, Lcom/google/android/gms/internal/measurement/jy;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2990
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    .line 2991
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/kb;->a:Ljava/lang/String;

    sget-object v4, Lcom/google/android/gms/measurement/internal/t;->ao:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/b;->e(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2992
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/kb;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/kb;->v:Ljava/lang/String;

    .line 2993
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/kb;->r:Ljava/lang/String;

    .line 2994
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 2996
    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/kb;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/kb;->r:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private final p()Lcom/google/android/gms/measurement/internal/ej;
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->e:Lcom/google/android/gms/measurement/internal/ej;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Network broadcast receiver not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->e:Lcom/google/android/gms/measurement/internal/ej;

    return-object v0
.end method

.method private final s()Lcom/google/android/gms/measurement/internal/jk;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->f:Lcom/google/android/gms/measurement/internal/jk;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/jo;->b(Lcom/google/android/gms/measurement/internal/jl;)V

    .line 109
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->f:Lcom/google/android/gms/measurement/internal/jk;

    return-object v0
.end method

.method private final t()V
    .locals 1

    .prologue
    .line 120
    .line 121
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 123
    return-void
.end method

.method private final w()J
    .locals 10

    .prologue
    const-wide/16 v8, 0x3c

    .line 132
    .line 133
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    .line 134
    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v2

    .line 135
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->c()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v4

    .line 137
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fy;->A()V

    .line 138
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 139
    iget-object v0, v4, Lcom/google/android/gms/measurement/internal/el;->g:Lcom/google/android/gms/measurement/internal/ep;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ep;->a()J

    move-result-wide v0

    .line 140
    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-nez v5, :cond_0

    .line 141
    const-wide/16 v0, 0x1

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fz;->t()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/jw;->d()Ljava/security/SecureRandom;

    move-result-object v5

    const v6, 0x5265c00

    invoke-virtual {v5, v6}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v5

    int-to-long v6, v5

    add-long/2addr v0, v6

    .line 142
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/el;->g:Lcom/google/android/gms/measurement/internal/ep;

    invoke-virtual {v4, v0, v1}, Lcom/google/android/gms/measurement/internal/ep;->a(J)V

    .line 144
    :cond_0
    add-long/2addr v0, v2

    .line 145
    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    div-long/2addr v0, v8

    div-long/2addr v0, v8

    const-wide/16 v2, 0x18

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private final x()Z
    .locals 1

    .prologue
    .line 1830
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/jo;->t()V

    .line 1831
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->k()V

    .line 1832
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->k()Z

    move-result v0

    .line 1833
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final z()V
    .locals 18

    .prologue
    .line 1963
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->t()V

    .line 1964
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->k()V

    .line 1965
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/gms/measurement/internal/jo;->m:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 1967
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v2

    .line 1968
    invoke-interface {v2}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v2

    .line 1969
    const-wide/32 v4, 0x36ee80

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/gms/measurement/internal/jo;->m:J

    sub-long/2addr v2, v6

    .line 1970
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    sub-long v2, v4, v2

    .line 1971
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 1973
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v4

    .line 1974
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v4

    const-string/jumbo v5, "Upload has been suspended. Will update scheduling later in approximately ms"

    .line 1975
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1976
    invoke-virtual {v4, v5, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1977
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->p()Lcom/google/android/gms/measurement/internal/ej;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/ej;->b()V

    .line 1978
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->s()Lcom/google/android/gms/measurement/internal/jk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/jk;->b()V

    .line 2096
    :goto_0
    return-void

    .line 1980
    :cond_0
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/gms/measurement/internal/jo;->m:J

    .line 1981
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->G()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->x()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1983
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 1984
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Nothing to upload or uploading impossible"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 1985
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->p()Lcom/google/android/gms/measurement/internal/ej;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/ej;->b()V

    .line 1986
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->s()Lcom/google/android/gms/measurement/internal/jk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/jk;->b()V

    goto :goto_0

    .line 1990
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v2

    .line 1991
    invoke-interface {v2}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v4

    .line 1992
    const-wide/16 v6, 0x0

    sget-object v2, Lcom/google/android/gms/measurement/internal/t;->z:Lcom/google/android/gms/measurement/internal/dr;

    .line 1993
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/dr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1994
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 1997
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/c;->z()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/c;->g()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    const/4 v2, 0x1

    move v6, v2

    .line 1998
    :goto_1
    if-eqz v6, :cond_8

    .line 2000
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    .line 2001
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/b;->i()Ljava/lang/String;

    move-result-object v2

    .line 2002
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string/jumbo v3, ".none."

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 2003
    const-wide/16 v10, 0x0

    sget-object v2, Lcom/google/android/gms/measurement/internal/t;->u:Lcom/google/android/gms/measurement/internal/dr;

    .line 2004
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/dr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2005
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 2017
    :goto_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/fd;->c()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v7

    .line 2018
    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/el;->c:Lcom/google/android/gms/measurement/internal/ep;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/ep;->a()J

    move-result-wide v10

    .line 2020
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/fd;->c()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v7

    .line 2021
    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/el;->d:Lcom/google/android/gms/measurement/internal/ep;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/ep;->a()J

    move-result-wide v12

    .line 2022
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/c;->i()J

    move-result-wide v14

    .line 2023
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/c;->j()J

    move-result-wide v16

    .line 2024
    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    .line 2025
    const-wide/16 v16, 0x0

    cmp-long v7, v14, v16

    if-nez v7, :cond_9

    .line 2026
    const-wide/16 v4, 0x0

    .line 2055
    :cond_5
    :goto_3
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-nez v2, :cond_d

    .line 2057
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 2058
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Next upload time is 0"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 2059
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->p()Lcom/google/android/gms/measurement/internal/ej;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/ej;->b()V

    .line 2060
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->s()Lcom/google/android/gms/measurement/internal/jk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/jk;->b()V

    goto/16 :goto_0

    .line 1997
    :cond_6
    const/4 v2, 0x0

    move v6, v2

    goto/16 :goto_1

    .line 2007
    :cond_7
    const-wide/16 v10, 0x0

    sget-object v2, Lcom/google/android/gms/measurement/internal/t;->t:Lcom/google/android/gms/measurement/internal/dr;

    .line 2008
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/dr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2009
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    goto :goto_2

    .line 2012
    :cond_8
    const-wide/16 v10, 0x0

    sget-object v2, Lcom/google/android/gms/measurement/internal/t;->s:Lcom/google/android/gms/measurement/internal/dr;

    .line 2013
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/dr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2014
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    goto/16 :goto_2

    .line 2027
    :cond_9
    sub-long/2addr v14, v4

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    sub-long v14, v4, v14

    .line 2028
    sub-long/2addr v10, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    sub-long v10, v4, v10

    .line 2029
    sub-long/2addr v12, v4

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    sub-long v12, v4, v12

    .line 2030
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 2031
    add-long v4, v14, v8

    .line 2032
    if-eqz v6, :cond_a

    const-wide/16 v6, 0x0

    cmp-long v6, v10, v6

    if-lez v6, :cond_a

    .line 2033
    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    add-long/2addr v4, v2

    .line 2034
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->h()Lcom/google/android/gms/measurement/internal/js;

    move-result-object v6

    invoke-virtual {v6, v10, v11, v2, v3}, Lcom/google/android/gms/measurement/internal/js;->a(JJ)Z

    move-result v6

    if-nez v6, :cond_b

    .line 2035
    add-long v4, v10, v2

    .line 2036
    :cond_b
    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-eqz v2, :cond_5

    cmp-long v2, v12, v14

    if-ltz v2, :cond_5

    .line 2038
    const/4 v2, 0x0

    move v3, v2

    .line 2039
    :goto_4
    const/16 v6, 0x14

    const/4 v7, 0x0

    sget-object v2, Lcom/google/android/gms/measurement/internal/t;->B:Lcom/google/android/gms/measurement/internal/dr;

    .line 2040
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Lcom/google/android/gms/measurement/internal/dr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2041
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2042
    if-ge v3, v2, :cond_c

    .line 2043
    const-wide/16 v6, 0x1

    shl-long/2addr v6, v3

    .line 2045
    const-wide/16 v8, 0x0

    sget-object v2, Lcom/google/android/gms/measurement/internal/t;->A:Lcom/google/android/gms/measurement/internal/dr;

    .line 2046
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lcom/google/android/gms/measurement/internal/dr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2047
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 2048
    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    .line 2049
    cmp-long v2, v4, v12

    if-gtz v2, :cond_5

    .line 2051
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_4

    .line 2052
    :cond_c
    const-wide/16 v4, 0x0

    goto/16 :goto_3

    .line 2062
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->d()Lcom/google/android/gms/measurement/internal/eg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/eg;->b()Z

    move-result v2

    if-nez v2, :cond_e

    .line 2064
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 2065
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "No network"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 2066
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->p()Lcom/google/android/gms/measurement/internal/ej;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/ej;->a()V

    .line 2067
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->s()Lcom/google/android/gms/measurement/internal/jk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/jk;->b()V

    goto/16 :goto_0

    .line 2070
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->c()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v2

    .line 2071
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/el;->e:Lcom/google/android/gms/measurement/internal/ep;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/ep;->a()J

    move-result-wide v6

    .line 2072
    const-wide/16 v8, 0x0

    sget-object v2, Lcom/google/android/gms/measurement/internal/t;->q:Lcom/google/android/gms/measurement/internal/dr;

    .line 2073
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/dr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2074
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 2076
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->h()Lcom/google/android/gms/measurement/internal/js;

    move-result-object v8

    invoke-virtual {v8, v6, v7, v2, v3}, Lcom/google/android/gms/measurement/internal/js;->a(JJ)Z

    move-result v8

    if-nez v8, :cond_10

    .line 2077
    add-long/2addr v2, v6

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 2078
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->p()Lcom/google/android/gms/measurement/internal/ej;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/ej;->b()V

    .line 2080
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fd;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v4

    .line 2081
    invoke-interface {v4}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 2082
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_f

    .line 2083
    const-wide/16 v4, 0x0

    sget-object v2, Lcom/google/android/gms/measurement/internal/t;->v:Lcom/google/android/gms/measurement/internal/dr;

    .line 2084
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/dr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2085
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 2088
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fd;->c()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v4

    .line 2089
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/el;->c:Lcom/google/android/gms/measurement/internal/ep;

    .line 2090
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/fd;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v5

    .line 2091
    invoke-interface {v5}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/ep;->a(J)V

    .line 2093
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v4

    .line 2094
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v4

    const-string/jumbo v5, "Upload scheduled in approximately ms"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2095
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->s()Lcom/google/android/gms/measurement/internal/jk;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/measurement/internal/jk;->a(J)V

    goto/16 :goto_0

    :cond_10
    move-wide v2, v4

    goto :goto_5
.end method


# virtual methods
.method protected final a()V
    .locals 4

    .prologue
    .line 81
    .line 82
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 84
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->h()V

    .line 86
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->c()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v0

    .line 87
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/el;->c:Lcom/google/android/gms/measurement/internal/ep;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ep;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->c()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v0

    .line 90
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/el;->c:Lcom/google/android/gms/measurement/internal/ep;

    .line 91
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    .line 92
    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/ep;->a(J)V

    .line 93
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/jo;->z()V

    .line 94
    return-void
.end method

.method final a(ILjava/lang/Throwable;[BLjava/lang/String;)V
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1745
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/jo;->t()V

    .line 1746
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->k()V

    .line 1747
    if-nez p3, :cond_0

    .line 1748
    const/4 v0, 0x0

    :try_start_0
    new-array p3, v0, [B

    .line 1749
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jo;->v:Ljava/util/List;

    .line 1750
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->v:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1751
    const/16 v0, 0xc8

    if-eq p1, v0, :cond_1

    const/16 v0, 0xcc

    if-ne p1, v0, :cond_6

    :cond_1
    if-nez p2, :cond_6

    .line 1753
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->c()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v0

    .line 1754
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/el;->c:Lcom/google/android/gms/measurement/internal/ep;

    .line 1755
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fd;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v4

    .line 1756
    invoke-interface {v4}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/ep;->a(J)V

    .line 1758
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->c()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v0

    .line 1759
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/el;->d:Lcom/google/android/gms/measurement/internal/ep;

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/ep;->a(J)V

    .line 1760
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/jo;->z()V

    .line 1762
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 1763
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v4, "Successful upload. Got network response. code, size"

    .line 1764
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    array-length v6, p3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1765
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->b()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1766
    :try_start_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1767
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1768
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 1769
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/jl;->K()V

    .line 1770
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/c;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1771
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v9
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1772
    :try_start_4
    const-string/jumbo v6, "queue"

    const-string/jumbo v7, "rowid=?"

    invoke-virtual {v1, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1773
    if-eq v1, v3, :cond_2

    .line 1774
    new-instance v1, Landroid/database/sqlite/SQLiteException;

    const-string/jumbo v6, "Deleted fewer rows from queue than expected"

    invoke-direct {v1, v6}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1776
    :catch_0
    move-exception v1

    .line 1777
    :try_start_5
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v5

    const-string/jumbo v6, "Failed to delete a bundle in a queue table"

    invoke-virtual {v5, v6, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1778
    throw v1
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1779
    :catch_1
    move-exception v1

    .line 1780
    :try_start_6
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/jo;->w:Ljava/util/List;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/jo;->w:Ljava/util/List;

    .line 1781
    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1782
    :cond_3
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1786
    :catchall_0
    move-exception v0

    :try_start_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c;->s_()V

    .line 1787
    throw v0
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1795
    :catch_2
    move-exception v0

    .line 1797
    :try_start_8
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 1798
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v3, "Database error while trying to delete uploaded bundles"

    invoke-virtual {v1, v3, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1800
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    .line 1801
    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/jo;->m:J

    .line 1803
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 1804
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Disable upload, time"

    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/jo;->m:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1824
    :goto_0
    iput-boolean v2, p0, Lcom/google/android/gms/measurement/internal/jo;->r:Z

    .line 1825
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/jo;->A()V

    .line 1826
    return-void

    .line 1783
    :cond_4
    :try_start_9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->c()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1784
    :try_start_a
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->s_()V

    .line 1788
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->w:Ljava/util/List;

    .line 1789
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->d()Lcom/google/android/gms/measurement/internal/eg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/eg;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/jo;->x()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1790
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->l()V

    .line 1793
    :goto_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/jo;->m:J
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_0

    .line 1827
    :catchall_1
    move-exception v0

    iput-boolean v2, p0, Lcom/google/android/gms/measurement/internal/jo;->r:Z

    .line 1828
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/jo;->A()V

    .line 1829
    throw v0

    .line 1791
    :cond_5
    const-wide/16 v0, -0x1

    :try_start_b
    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/jo;->x:J

    .line 1792
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/jo;->z()V
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_1

    .line 1807
    :cond_6
    :try_start_c
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 1808
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v4, "Network upload failed. Will retry later. code, error"

    .line 1809
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5, p2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1811
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->c()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v0

    .line 1812
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/el;->d:Lcom/google/android/gms/measurement/internal/ep;

    .line 1813
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fd;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v4

    .line 1814
    invoke-interface {v4}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/ep;->a(J)V

    .line 1815
    const/16 v0, 0x1f7

    if-eq p1, v0, :cond_7

    const/16 v0, 0x1ad

    if-ne p1, v0, :cond_9

    :cond_7
    move v0, v3

    .line 1816
    :goto_2
    if-eqz v0, :cond_8

    .line 1818
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->c()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v0

    .line 1819
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/el;->e:Lcom/google/android/gms/measurement/internal/ep;

    .line 1820
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/fd;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v3

    .line 1821
    invoke-interface {v3}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/ep;->a(J)V

    .line 1822
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/c;->a(Ljava/util/List;)V

    .line 1823
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/jo;->z()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto/16 :goto_0

    :cond_9
    move v0, v2

    .line 1815
    goto :goto_2
.end method

.method final a(Lcom/google/android/gms/measurement/internal/jl;)V
    .locals 1

    .prologue
    .line 2431
    iget v0, p0, Lcom/google/android/gms/measurement/internal/jo;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/measurement/internal/jo;->o:I

    .line 2432
    return-void
.end method

.method final a(Lcom/google/android/gms/measurement/internal/jv;Lcom/google/android/gms/measurement/internal/kb;)V
    .locals 10

    .prologue
    const/16 v4, 0x18

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 2295
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/jo;->t()V

    .line 2296
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->k()V

    .line 2297
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/jo;->e(Lcom/google/android/gms/measurement/internal/kb;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2391
    :cond_0
    :goto_0
    return-void

    .line 2299
    :cond_1
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/kb;->h:Z

    if-nez v0, :cond_2

    .line 2300
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/jo;->c(Lcom/google/android/gms/measurement/internal/kb;)Lcom/google/android/gms/measurement/internal/fg;

    goto :goto_0

    .line 2303
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->i()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v0

    .line 2304
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/jv;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/jw;->c(Ljava/lang/String;)I

    move-result v2

    .line 2305
    if-eqz v2, :cond_4

    .line 2307
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->i()Lcom/google/android/gms/measurement/internal/jw;

    .line 2308
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/jv;->a:Ljava/lang/String;

    .line 2310
    invoke-static {v0, v4, v3}, Lcom/google/android/gms/measurement/internal/jw;->a(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v4

    .line 2311
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/jv;->a:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/jv;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    .line 2313
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->i()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v0

    .line 2314
    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/kb;->a:Ljava/lang/String;

    const-string/jumbo v3, "_ev"

    .line 2315
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/jw;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 2318
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->i()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v0

    .line 2319
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/jv;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/jv;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/jw;->b(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v2

    .line 2320
    if-eqz v2, :cond_7

    .line 2322
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->i()Lcom/google/android/gms/measurement/internal/jw;

    .line 2323
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/jv;->a:Ljava/lang/String;

    .line 2325
    invoke-static {v0, v4, v3}, Lcom/google/android/gms/measurement/internal/jw;->a(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v4

    .line 2326
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/jv;->a()Ljava/lang/Object;

    move-result-object v0

    .line 2328
    if-eqz v0, :cond_6

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_5

    instance-of v1, v0, Ljava/lang/CharSequence;

    if-eqz v1, :cond_6

    .line 2329
    :cond_5
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2330
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    .line 2332
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->i()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v0

    .line 2333
    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/kb;->a:Ljava/lang/String;

    const-string/jumbo v3, "_ev"

    .line 2334
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/jw;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 2337
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->i()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v0

    .line 2338
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/jv;->a:Ljava/lang/String;

    .line 2339
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/jv;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/jw;->c(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 2340
    if-eqz v6, :cond_0

    .line 2342
    const-string/jumbo v0, "_sid"

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/jv;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2343
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/jv;->b:J

    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/jv;->e:Ljava/lang/String;

    .line 2344
    const-wide/16 v0, 0x0

    .line 2346
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v4

    iget-object v7, p2, Lcom/google/android/gms/measurement/internal/kb;->a:Ljava/lang/String;

    const-string/jumbo v8, "_sno"

    .line 2347
    invoke-virtual {v4, v7, v8}, Lcom/google/android/gms/measurement/internal/c;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/jx;

    move-result-object v4

    .line 2348
    if-eqz v4, :cond_b

    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/jx;->e:Ljava/lang/Object;

    instance-of v7, v7, Ljava/lang/Long;

    if-eqz v7, :cond_b

    .line 2349
    iget-object v0, v4, Lcom/google/android/gms/measurement/internal/jx;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 2364
    :cond_8
    :goto_1
    const-wide/16 v8, 0x1

    add-long/2addr v8, v0

    .line 2365
    new-instance v0, Lcom/google/android/gms/measurement/internal/jv;

    const-string/jumbo v1, "_sno"

    .line 2366
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/jv;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 2367
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/jv;Lcom/google/android/gms/measurement/internal/kb;)V

    .line 2368
    :cond_9
    new-instance v0, Lcom/google/android/gms/measurement/internal/jx;

    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/kb;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/jv;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/jv;->a:Ljava/lang/String;

    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/jv;->b:J

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/jx;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 2370
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 2371
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Setting user property"

    .line 2372
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/fd;->j()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v3

    .line 2373
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/jx;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/dw;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2374
    invoke-virtual {v1, v2, v3, v6}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2375
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c;->b()V

    .line 2376
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/jo;->c(Lcom/google/android/gms/measurement/internal/kb;)Lcom/google/android/gms/measurement/internal/fg;

    .line 2377
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/c;->a(Lcom/google/android/gms/measurement/internal/jx;)Z

    move-result v1

    .line 2378
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/c;->c()V

    .line 2379
    if-nez v1, :cond_a

    .line 2381
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 2382
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Too many unique user properties are set. Ignoring user property"

    .line 2383
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/fd;->j()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v3

    .line 2384
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/jx;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/dw;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/jx;->e:Ljava/lang/Object;

    .line 2385
    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2387
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->i()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v0

    .line 2388
    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/kb;->a:Ljava/lang/String;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2389
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/jw;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2390
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->s_()V

    goto/16 :goto_0

    .line 2350
    :cond_b
    if-eqz v4, :cond_c

    .line 2352
    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v7

    .line 2353
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v7

    const-string/jumbo v8, "Retrieved last session number from database does not contain a valid (long) value"

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/jx;->e:Ljava/lang/Object;

    .line 2354
    invoke-virtual {v7, v8, v4}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2356
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v4

    iget-object v7, p2, Lcom/google/android/gms/measurement/internal/kb;->a:Ljava/lang/String;

    const-string/jumbo v8, "_s"

    .line 2357
    invoke-virtual {v4, v7, v8}, Lcom/google/android/gms/measurement/internal/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/n;

    move-result-object v4

    .line 2358
    if-eqz v4, :cond_8

    .line 2359
    iget-wide v0, v4, Lcom/google/android/gms/measurement/internal/n;->c:J

    .line 2361
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v4

    .line 2362
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v4

    const-string/jumbo v7, "Backfill the session number. Last used session number"

    .line 2363
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2392
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c;->s_()V

    .line 2393
    throw v0
.end method

.method final a(Lcom/google/android/gms/measurement/internal/kb;)V
    .locals 7

    .prologue
    .line 2267
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->v:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->w:Ljava/util/List;

    .line 2269
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->w:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jo;->v:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2270
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/kb;->a:Ljava/lang/String;

    .line 2271
    invoke-static {v2}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 2272
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 2273
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/jl;->K()V

    .line 2274
    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2275
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    .line 2276
    const-string/jumbo v4, "apps"

    const-string/jumbo v5, "app_id=?"

    invoke-virtual {v0, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x0

    .line 2277
    const-string/jumbo v5, "events"

    const-string/jumbo v6, "app_id=?"

    invoke-virtual {v0, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 2278
    const-string/jumbo v5, "user_attributes"

    const-string/jumbo v6, "app_id=?"

    invoke-virtual {v0, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 2279
    const-string/jumbo v5, "conditional_properties"

    const-string/jumbo v6, "app_id=?"

    invoke-virtual {v0, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 2280
    const-string/jumbo v5, "raw_events"

    const-string/jumbo v6, "app_id=?"

    invoke-virtual {v0, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 2281
    const-string/jumbo v5, "raw_events_metadata"

    const-string/jumbo v6, "app_id=?"

    invoke-virtual {v0, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 2282
    const-string/jumbo v5, "queue"

    const-string/jumbo v6, "app_id=?"

    invoke-virtual {v0, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 2283
    const-string/jumbo v5, "audience_filter_values"

    const-string/jumbo v6, "app_id=?"

    invoke-virtual {v0, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 2284
    const-string/jumbo v5, "main_event_params"

    const-string/jumbo v6, "app_id=?"

    invoke-virtual {v0, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v4

    .line 2285
    if-lez v0, :cond_1

    .line 2286
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v3

    const-string/jumbo v4, "Reset analytics data. app, records"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v2, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2292
    :cond_1
    :goto_0
    iget-boolean v0, p1, Lcom/google/android/gms/measurement/internal/kb;->h:Z

    if-eqz v0, :cond_2

    .line 2293
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/jo;->b(Lcom/google/android/gms/measurement/internal/kb;)V

    .line 2294
    :cond_2
    return-void

    .line 2288
    :catch_0
    move-exception v0

    .line 2289
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 2290
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v3, "Error resetting analytics data. appId, error"

    .line 2291
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method final a(Lcom/google/android/gms/measurement/internal/kn;)V
    .locals 1

    .prologue
    .line 2709
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/kn;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/jo;->a(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/kb;

    move-result-object v0

    .line 2710
    if-eqz v0, :cond_0

    .line 2711
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/kn;Lcom/google/android/gms/measurement/internal/kb;)V

    .line 2712
    :cond_0
    return-void
.end method

.method final a(Lcom/google/android/gms/measurement/internal/kn;Lcom/google/android/gms/measurement/internal/kb;)V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2713
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2714
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/kn;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 2715
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/kn;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2716
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/kn;->c:Lcom/google/android/gms/measurement/internal/jv;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2717
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/kn;->c:Lcom/google/android/gms/measurement/internal/jv;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/jv;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 2718
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/jo;->t()V

    .line 2719
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->k()V

    .line 2720
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/jo;->e(Lcom/google/android/gms/measurement/internal/kb;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2793
    :goto_0
    return-void

    .line 2722
    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/kb;->h:Z

    if-nez v0, :cond_1

    .line 2723
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/jo;->c(Lcom/google/android/gms/measurement/internal/kb;)Lcom/google/android/gms/measurement/internal/fg;

    goto :goto_0

    .line 2725
    :cond_1
    new-instance v8, Lcom/google/android/gms/measurement/internal/kn;

    invoke-direct {v8, p1}, Lcom/google/android/gms/measurement/internal/kn;-><init>(Lcom/google/android/gms/measurement/internal/kn;)V

    .line 2726
    iput-boolean v6, v8, Lcom/google/android/gms/measurement/internal/kn;->e:Z

    .line 2727
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->b()V

    .line 2730
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    iget-object v1, v8, Lcom/google/android/gms/measurement/internal/kn;->a:Ljava/lang/String;

    iget-object v2, v8, Lcom/google/android/gms/measurement/internal/kn;->c:Lcom/google/android/gms/measurement/internal/jv;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/jv;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/c;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/kn;

    move-result-object v5

    .line 2731
    if-eqz v5, :cond_2

    iget-object v0, v5, Lcom/google/android/gms/measurement/internal/kn;->b:Ljava/lang/String;

    iget-object v1, v8, Lcom/google/android/gms/measurement/internal/kn;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2733
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 2734
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Updating a conditional user property with different origin. name, origin, origin (from DB)"

    .line 2735
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->j()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v2

    .line 2736
    iget-object v3, v8, Lcom/google/android/gms/measurement/internal/kn;->c:Lcom/google/android/gms/measurement/internal/jv;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/jv;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/dw;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v8, Lcom/google/android/gms/measurement/internal/kn;->b:Ljava/lang/String;

    iget-object v4, v5, Lcom/google/android/gms/measurement/internal/kn;->b:Ljava/lang/String;

    .line 2737
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2738
    :cond_2
    if-eqz v5, :cond_4

    iget-boolean v0, v5, Lcom/google/android/gms/measurement/internal/kn;->e:Z

    if-eqz v0, :cond_4

    .line 2739
    iget-object v0, v5, Lcom/google/android/gms/measurement/internal/kn;->b:Ljava/lang/String;

    iput-object v0, v8, Lcom/google/android/gms/measurement/internal/kn;->b:Ljava/lang/String;

    .line 2740
    iget-wide v0, v5, Lcom/google/android/gms/measurement/internal/kn;->d:J

    iput-wide v0, v8, Lcom/google/android/gms/measurement/internal/kn;->d:J

    .line 2741
    iget-wide v0, v5, Lcom/google/android/gms/measurement/internal/kn;->h:J

    iput-wide v0, v8, Lcom/google/android/gms/measurement/internal/kn;->h:J

    .line 2742
    iget-object v0, v5, Lcom/google/android/gms/measurement/internal/kn;->f:Ljava/lang/String;

    iput-object v0, v8, Lcom/google/android/gms/measurement/internal/kn;->f:Ljava/lang/String;

    .line 2743
    iget-object v0, v5, Lcom/google/android/gms/measurement/internal/kn;->i:Lcom/google/android/gms/measurement/internal/r;

    iput-object v0, v8, Lcom/google/android/gms/measurement/internal/kn;->i:Lcom/google/android/gms/measurement/internal/r;

    .line 2744
    iget-boolean v0, v5, Lcom/google/android/gms/measurement/internal/kn;->e:Z

    iput-boolean v0, v8, Lcom/google/android/gms/measurement/internal/kn;->e:Z

    .line 2745
    new-instance v0, Lcom/google/android/gms/measurement/internal/jv;

    iget-object v1, v8, Lcom/google/android/gms/measurement/internal/kn;->c:Lcom/google/android/gms/measurement/internal/jv;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/jv;->a:Ljava/lang/String;

    iget-object v2, v5, Lcom/google/android/gms/measurement/internal/kn;->c:Lcom/google/android/gms/measurement/internal/jv;

    iget-wide v2, v2, Lcom/google/android/gms/measurement/internal/jv;->b:J

    iget-object v4, v8, Lcom/google/android/gms/measurement/internal/kn;->c:Lcom/google/android/gms/measurement/internal/jv;

    .line 2746
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/jv;->a()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/kn;->c:Lcom/google/android/gms/measurement/internal/jv;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/jv;->e:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/jv;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v8, Lcom/google/android/gms/measurement/internal/kn;->c:Lcom/google/android/gms/measurement/internal/jv;

    move v7, v6

    .line 2752
    :goto_1
    iget-boolean v0, v8, Lcom/google/android/gms/measurement/internal/kn;->e:Z

    if-eqz v0, :cond_3

    .line 2753
    iget-object v6, v8, Lcom/google/android/gms/measurement/internal/kn;->c:Lcom/google/android/gms/measurement/internal/jv;

    .line 2754
    new-instance v0, Lcom/google/android/gms/measurement/internal/jx;

    iget-object v1, v8, Lcom/google/android/gms/measurement/internal/kn;->a:Ljava/lang/String;

    iget-object v2, v8, Lcom/google/android/gms/measurement/internal/kn;->b:Ljava/lang/String;

    iget-object v3, v6, Lcom/google/android/gms/measurement/internal/jv;->a:Ljava/lang/String;

    iget-wide v4, v6, Lcom/google/android/gms/measurement/internal/jv;->b:J

    .line 2755
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/jv;->a()Ljava/lang/Object;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/jx;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 2756
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/c;->a(Lcom/google/android/gms/measurement/internal/jx;)Z

    move-result v1

    .line 2757
    if-eqz v1, :cond_5

    .line 2759
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 2760
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->i()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "User property updated immediately"

    iget-object v3, v8, Lcom/google/android/gms/measurement/internal/kn;->a:Ljava/lang/String;

    .line 2761
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fd;->j()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v4

    .line 2762
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/jx;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/dw;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/jx;->e:Ljava/lang/Object;

    .line 2763
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2771
    :goto_2
    if-eqz v7, :cond_3

    iget-object v0, v8, Lcom/google/android/gms/measurement/internal/kn;->i:Lcom/google/android/gms/measurement/internal/r;

    if-eqz v0, :cond_3

    .line 2772
    new-instance v0, Lcom/google/android/gms/measurement/internal/r;

    iget-object v1, v8, Lcom/google/android/gms/measurement/internal/kn;->i:Lcom/google/android/gms/measurement/internal/r;

    iget-wide v2, v8, Lcom/google/android/gms/measurement/internal/kn;->d:J

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/r;-><init>(Lcom/google/android/gms/measurement/internal/r;J)V

    .line 2773
    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/measurement/internal/jo;->b(Lcom/google/android/gms/measurement/internal/r;Lcom/google/android/gms/measurement/internal/kb;)V

    .line 2774
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/c;->a(Lcom/google/android/gms/measurement/internal/kn;)Z

    move-result v0

    .line 2775
    if-eqz v0, :cond_6

    .line 2777
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 2778
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->i()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Conditional property added"

    iget-object v2, v8, Lcom/google/android/gms/measurement/internal/kn;->a:Ljava/lang/String;

    .line 2779
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/fd;->j()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v3

    .line 2780
    iget-object v4, v8, Lcom/google/android/gms/measurement/internal/kn;->c:Lcom/google/android/gms/measurement/internal/jv;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/jv;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/dw;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v8, Lcom/google/android/gms/measurement/internal/kn;->c:Lcom/google/android/gms/measurement/internal/jv;

    .line 2781
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/jv;->a()Ljava/lang/Object;

    move-result-object v4

    .line 2782
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2791
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2792
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->s_()V

    goto/16 :goto_0

    .line 2747
    :cond_4
    :try_start_1
    iget-object v0, v8, Lcom/google/android/gms/measurement/internal/kn;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2748
    new-instance v0, Lcom/google/android/gms/measurement/internal/jv;

    iget-object v1, v8, Lcom/google/android/gms/measurement/internal/kn;->c:Lcom/google/android/gms/measurement/internal/jv;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/jv;->a:Ljava/lang/String;

    iget-wide v2, v8, Lcom/google/android/gms/measurement/internal/kn;->d:J

    iget-object v4, v8, Lcom/google/android/gms/measurement/internal/kn;->c:Lcom/google/android/gms/measurement/internal/jv;

    .line 2749
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/jv;->a()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v8, Lcom/google/android/gms/measurement/internal/kn;->c:Lcom/google/android/gms/measurement/internal/jv;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/jv;->e:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/jv;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v8, Lcom/google/android/gms/measurement/internal/kn;->c:Lcom/google/android/gms/measurement/internal/jv;

    .line 2750
    const/4 v0, 0x1

    iput-boolean v0, v8, Lcom/google/android/gms/measurement/internal/kn;->e:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 2794
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c;->s_()V

    .line 2795
    throw v0

    .line 2765
    :cond_5
    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 2766
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "(2)Too many active user properties, ignoring"

    iget-object v3, v8, Lcom/google/android/gms/measurement/internal/kn;->a:Ljava/lang/String;

    .line 2767
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 2768
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fd;->j()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v4

    .line 2769
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/jx;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/dw;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/jx;->e:Ljava/lang/Object;

    .line 2770
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 2784
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 2785
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Too many conditional properties, ignoring"

    iget-object v2, v8, Lcom/google/android/gms/measurement/internal/kn;->a:Ljava/lang/String;

    .line 2786
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 2787
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/fd;->j()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v3

    .line 2788
    iget-object v4, v8, Lcom/google/android/gms/measurement/internal/kn;->c:Lcom/google/android/gms/measurement/internal/jv;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/jv;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/dw;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v8, Lcom/google/android/gms/measurement/internal/kn;->c:Lcom/google/android/gms/measurement/internal/jv;

    .line 2789
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/jv;->a()Ljava/lang/Object;

    move-result-object v4

    .line 2790
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3

    :cond_7
    move v7, v6

    goto/16 :goto_1
.end method

.method final a(Lcom/google/android/gms/measurement/internal/r;Lcom/google/android/gms/measurement/internal/kb;)V
    .locals 14

    .prologue
    .line 188
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/kb;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 190
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/jo;->t()V

    .line 191
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->k()V

    .line 192
    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/google/android/gms/measurement/internal/kb;->a:Ljava/lang/String;

    .line 193
    iget-wide v12, p1, Lcom/google/android/gms/measurement/internal/r;->d:J

    .line 194
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->h()Lcom/google/android/gms/measurement/internal/js;

    invoke-static/range {p1 .. p2}, Lcom/google/android/gms/measurement/internal/js;->a(Lcom/google/android/gms/measurement/internal/r;Lcom/google/android/gms/measurement/internal/kb;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 327
    :goto_0
    return-void

    .line 196
    :cond_0
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/google/android/gms/measurement/internal/kb;->h:Z

    if-nez v2, :cond_1

    .line 197
    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/jo;->c(Lcom/google/android/gms/measurement/internal/kb;)Lcom/google/android/gms/measurement/internal/fg;

    goto :goto_0

    .line 200
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    .line 201
    sget-object v3, Lcom/google/android/gms/measurement/internal/t;->ac:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v2, v8, v3}, Lcom/google/android/gms/measurement/internal/b;->e(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 202
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/kb;->u:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 203
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/kb;->u:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/r;->a:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 204
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/r;->b:Lcom/google/android/gms/measurement/internal/m;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/m;->b()Landroid/os/Bundle;

    move-result-object v5

    .line 205
    const-string/jumbo v2, "ga_safelisted"

    const-wide/16 v6, 0x1

    invoke-virtual {v5, v2, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 206
    new-instance v2, Lcom/google/android/gms/measurement/internal/r;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/r;->a:Ljava/lang/String;

    new-instance v4, Lcom/google/android/gms/measurement/internal/m;

    invoke-direct {v4, v5}, Lcom/google/android/gms/measurement/internal/m;-><init>(Landroid/os/Bundle;)V

    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/r;->c:Ljava/lang/String;

    iget-wide v6, p1, Lcom/google/android/gms/measurement/internal/r;->d:J

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/r;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/m;Ljava/lang/String;J)V

    move-object p1, v2

    .line 213
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/c;->b()V

    .line 215
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    .line 216
    invoke-static {v8}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 217
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 218
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/jl;->K()V

    .line 219
    const-wide/16 v4, 0x0

    cmp-long v3, v12, v4

    if-gez v3, :cond_6

    .line 220
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 221
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Invalid time querying timed out conditional properties"

    .line 222
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 223
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 224
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 225
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 229
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/kn;

    .line 230
    if-eqz v2, :cond_3

    .line 232
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v4

    .line 233
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v4

    const-string/jumbo v5, "User property timed out"

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/kn;->a:Ljava/lang/String;

    .line 234
    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/fd;->j()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v7

    .line 235
    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/kn;->c:Lcom/google/android/gms/measurement/internal/jv;

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/jv;->a:Ljava/lang/String;

    invoke-virtual {v7, v9}, Lcom/google/android/gms/measurement/internal/dw;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/kn;->c:Lcom/google/android/gms/measurement/internal/jv;

    .line 236
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/jv;->a()Ljava/lang/Object;

    move-result-object v9

    .line 237
    invoke-virtual {v4, v5, v6, v7, v9}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 238
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/kn;->g:Lcom/google/android/gms/measurement/internal/r;

    if-eqz v4, :cond_4

    .line 239
    new-instance v4, Lcom/google/android/gms/measurement/internal/r;

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/kn;->g:Lcom/google/android/gms/measurement/internal/r;

    invoke-direct {v4, v5, v12, v13}, Lcom/google/android/gms/measurement/internal/r;-><init>(Lcom/google/android/gms/measurement/internal/r;J)V

    move-object/from16 v0, p2

    invoke-direct {p0, v4, v0}, Lcom/google/android/gms/measurement/internal/jo;->b(Lcom/google/android/gms/measurement/internal/r;Lcom/google/android/gms/measurement/internal/kb;)V

    .line 240
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v4

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/kn;->c:Lcom/google/android/gms/measurement/internal/jv;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/jv;->a:Ljava/lang/String;

    invoke-virtual {v4, v8, v2}, Lcom/google/android/gms/measurement/internal/c;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 328
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/c;->s_()V

    .line 329
    throw v2

    .line 209
    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 210
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->i()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Dropping non-safelisted event. appId, event name, origin"

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/r;->a:Ljava/lang/String;

    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/r;->c:Ljava/lang/String;

    .line 211
    invoke-virtual {v2, v3, v8, v4, v5}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 226
    :cond_6
    :try_start_1
    const-string/jumbo v3, "active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout"

    .line 227
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    const/4 v5, 0x1

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 228
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/c;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    goto/16 :goto_1

    .line 243
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    .line 244
    invoke-static {v8}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 245
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 246
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/jl;->K()V

    .line 247
    const-wide/16 v4, 0x0

    cmp-long v3, v12, v4

    if-gez v3, :cond_a

    .line 248
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 249
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Invalid time querying expired conditional properties"

    .line 250
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 251
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 252
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 253
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 258
    :goto_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 259
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/kn;

    .line 260
    if-eqz v2, :cond_8

    .line 262
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v5

    .line 263
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v5

    const-string/jumbo v6, "User property expired"

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/kn;->a:Ljava/lang/String;

    .line 264
    iget-object v9, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/fd;->j()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v9

    .line 265
    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/kn;->c:Lcom/google/android/gms/measurement/internal/jv;

    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/jv;->a:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/dw;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/kn;->c:Lcom/google/android/gms/measurement/internal/jv;

    .line 266
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/jv;->a()Ljava/lang/Object;

    move-result-object v10

    .line 267
    invoke-virtual {v5, v6, v7, v9, v10}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 268
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v5

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/kn;->c:Lcom/google/android/gms/measurement/internal/jv;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/jv;->a:Ljava/lang/String;

    invoke-virtual {v5, v8, v6}, Lcom/google/android/gms/measurement/internal/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/kn;->k:Lcom/google/android/gms/measurement/internal/r;

    if-eqz v5, :cond_9

    .line 270
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/kn;->k:Lcom/google/android/gms/measurement/internal/r;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v5

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/kn;->c:Lcom/google/android/gms/measurement/internal/jv;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/jv;->a:Ljava/lang/String;

    invoke-virtual {v5, v8, v2}, Lcom/google/android/gms/measurement/internal/c;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 254
    :cond_a
    const-string/jumbo v3, "active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live"

    .line 255
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    const/4 v5, 0x1

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 256
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/c;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    goto :goto_3

    .line 273
    :cond_b
    move-object v0, v3

    check-cast v0, Ljava/util/ArrayList;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v3, 0x0

    move v4, v3

    :goto_5
    if-ge v4, v5, :cond_c

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    check-cast v3, Lcom/google/android/gms/measurement/internal/r;

    .line 274
    new-instance v6, Lcom/google/android/gms/measurement/internal/r;

    invoke-direct {v6, v3, v12, v13}, Lcom/google/android/gms/measurement/internal/r;-><init>(Lcom/google/android/gms/measurement/internal/r;J)V

    move-object/from16 v0, p2

    invoke-direct {p0, v6, v0}, Lcom/google/android/gms/measurement/internal/jo;->b(Lcom/google/android/gms/measurement/internal/r;Lcom/google/android/gms/measurement/internal/kb;)V

    goto :goto_5

    .line 277
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/r;->a:Ljava/lang/String;

    .line 278
    invoke-static {v8}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 279
    invoke-static {v3}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 280
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 281
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/jl;->K()V

    .line 282
    const-wide/16 v4, 0x0

    cmp-long v4, v12, v4

    if-gez v4, :cond_f

    .line 283
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v4

    .line 284
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v4

    const-string/jumbo v5, "Invalid time querying triggered conditional properties"

    .line 285
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 286
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fz;->s()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/dw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 287
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 288
    invoke-virtual {v4, v5, v6, v2, v3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 289
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 294
    :goto_6
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v10, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 295
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_d
    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/measurement/internal/kn;

    move-object v9, v0

    .line 296
    if-eqz v9, :cond_d

    .line 297
    iget-object v6, v9, Lcom/google/android/gms/measurement/internal/kn;->c:Lcom/google/android/gms/measurement/internal/jv;

    .line 298
    new-instance v2, Lcom/google/android/gms/measurement/internal/jx;

    iget-object v3, v9, Lcom/google/android/gms/measurement/internal/kn;->a:Ljava/lang/String;

    iget-object v4, v9, Lcom/google/android/gms/measurement/internal/kn;->b:Ljava/lang/String;

    iget-object v5, v6, Lcom/google/android/gms/measurement/internal/jv;->a:Ljava/lang/String;

    .line 299
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/jv;->a()Ljava/lang/Object;

    move-result-object v8

    move-wide v6, v12

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/jx;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 300
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/measurement/internal/c;->a(Lcom/google/android/gms/measurement/internal/jx;)Z

    move-result v3

    .line 301
    if-eqz v3, :cond_10

    .line 303
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v3

    .line 304
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v3

    const-string/jumbo v4, "User property triggered"

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/kn;->a:Ljava/lang/String;

    .line 305
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/fd;->j()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v6

    .line 306
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/jx;->c:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/dw;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/jx;->e:Ljava/lang/Object;

    .line 307
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 315
    :goto_8
    iget-object v3, v9, Lcom/google/android/gms/measurement/internal/kn;->i:Lcom/google/android/gms/measurement/internal/r;

    if-eqz v3, :cond_e

    .line 316
    iget-object v3, v9, Lcom/google/android/gms/measurement/internal/kn;->i:Lcom/google/android/gms/measurement/internal/r;

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    :cond_e
    new-instance v3, Lcom/google/android/gms/measurement/internal/jv;

    invoke-direct {v3, v2}, Lcom/google/android/gms/measurement/internal/jv;-><init>(Lcom/google/android/gms/measurement/internal/jx;)V

    iput-object v3, v9, Lcom/google/android/gms/measurement/internal/kn;->c:Lcom/google/android/gms/measurement/internal/jv;

    .line 318
    const/4 v2, 0x1

    iput-boolean v2, v9, Lcom/google/android/gms/measurement/internal/kn;->e:Z

    .line 319
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/google/android/gms/measurement/internal/c;->a(Lcom/google/android/gms/measurement/internal/kn;)Z

    goto :goto_7

    .line 290
    :cond_f
    const-string/jumbo v4, "active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout"

    .line 291
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v8, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    const/4 v3, 0x2

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    .line 292
    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/measurement/internal/c;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    goto/16 :goto_6

    .line 309
    :cond_10
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v3

    .line 310
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v3

    const-string/jumbo v4, "Too many active user properties, ignoring"

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/kn;->a:Ljava/lang/String;

    .line 311
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 312
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/fd;->j()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v6

    .line 313
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/jx;->c:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/dw;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/jx;->e:Ljava/lang/Object;

    .line 314
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    .line 321
    :cond_11
    invoke-direct/range {p0 .. p2}, Lcom/google/android/gms/measurement/internal/jo;->b(Lcom/google/android/gms/measurement/internal/r;Lcom/google/android/gms/measurement/internal/kb;)V

    .line 322
    move-object v0, v10

    check-cast v0, Ljava/util/ArrayList;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v3, 0x0

    move v4, v3

    :goto_9
    if-ge v4, v5, :cond_12

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    check-cast v3, Lcom/google/android/gms/measurement/internal/r;

    .line 323
    new-instance v6, Lcom/google/android/gms/measurement/internal/r;

    invoke-direct {v6, v3, v12, v13}, Lcom/google/android/gms/measurement/internal/r;-><init>(Lcom/google/android/gms/measurement/internal/r;J)V

    move-object/from16 v0, p2

    invoke-direct {p0, v6, v0}, Lcom/google/android/gms/measurement/internal/jo;->b(Lcom/google/android/gms/measurement/internal/r;Lcom/google/android/gms/measurement/internal/kb;)V

    goto :goto_9

    .line 325
    :cond_12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/c;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 326
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/c;->s_()V

    goto/16 :goto_0
.end method

.method final a(Lcom/google/android/gms/measurement/internal/r;Ljava/lang/String;)V
    .locals 33

    .prologue
    .line 146
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/c;->b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/fg;

    move-result-object v2

    .line 147
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fg;->l()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 149
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 150
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->i()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "No app data available; dropping event"

    move-object/from16 v0, p2

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 187
    :goto_0
    return-void

    .line 152
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gms/measurement/internal/jo;->b(Lcom/google/android/gms/measurement/internal/fg;)Ljava/lang/Boolean;

    move-result-object v3

    .line 153
    if-nez v3, :cond_3

    .line 154
    const-string/jumbo v3, "_ui"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/r;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 156
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v3

    .line 157
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v3

    const-string/jumbo v4, "Could not find package. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 165
    :cond_2
    new-instance v3, Lcom/google/android/gms/measurement/internal/kb;

    .line 166
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fg;->e()Ljava/lang/String;

    move-result-object v5

    .line 167
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fg;->l()Ljava/lang/String;

    move-result-object v6

    .line 168
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fg;->m()J

    move-result-wide v7

    .line 169
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fg;->n()Ljava/lang/String;

    move-result-object v9

    .line 170
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fg;->o()J

    move-result-wide v10

    .line 171
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fg;->p()J

    move-result-wide v12

    const/4 v14, 0x0

    .line 172
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fg;->r()Z

    move-result v15

    const/16 v16, 0x0

    .line 173
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fg;->i()Ljava/lang/String;

    move-result-object v17

    .line 174
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fg;->E()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    .line 175
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fg;->F()Z

    move-result v23

    .line 176
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fg;->G()Z

    move-result v24

    const/16 v25, 0x0

    .line 177
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fg;->f()Ljava/lang/String;

    move-result-object v26

    .line 178
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fg;->H()Ljava/lang/Boolean;

    move-result-object v27

    .line 179
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fg;->q()J

    move-result-wide v28

    .line 180
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fg;->I()Ljava/util/List;

    move-result-object v30

    .line 181
    invoke-static {}, Lcom/google/android/gms/internal/measurement/jy;->b()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 182
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fd;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v4

    .line 183
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fg;->c()Ljava/lang/String;

    move-result-object v31

    sget-object v32, Lcom/google/android/gms/measurement/internal/t;->ao:Lcom/google/android/gms/measurement/internal/dr;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v4, v0, v1}, Lcom/google/android/gms/measurement/internal/b;->e(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 184
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fg;->g()Ljava/lang/String;

    move-result-object v31

    :goto_1
    move-object/from16 v4, p2

    .line 185
    invoke-direct/range {v3 .. v31}, Lcom/google/android/gms/measurement/internal/kb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;)V

    .line 186
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/r;Lcom/google/android/gms/measurement/internal/kb;)V

    goto/16 :goto_0

    .line 158
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    .line 160
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 161
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "App version does not match; dropping event. appId"

    .line 162
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 163
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 185
    :cond_4
    const/16 v31, 0x0

    goto :goto_1
.end method

.method final a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 2097
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/jo;->t()V

    .line 2098
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->n:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2099
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->n:Ljava/util/List;

    .line 2100
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2101
    return-void
.end method

.method final a(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Throwable;",
            "[B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    const/16 v7, 0x130

    const/4 v0, 0x1

    const/16 v6, 0x194

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1879
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/jo;->t()V

    .line 1880
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->k()V

    .line 1881
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1882
    if-nez p4, :cond_0

    .line 1883
    const/4 v3, 0x0

    :try_start_0
    new-array p4, v3, [B

    .line 1885
    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v3

    .line 1886
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v3

    const-string/jumbo v4, "onConfigFetched. Response size"

    array-length v5, p4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1887
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/c;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1888
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/gms/measurement/internal/c;->b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/fg;

    move-result-object v4

    .line 1889
    const/16 v3, 0xc8

    if-eq p2, v3, :cond_1

    const/16 v3, 0xcc

    if-eq p2, v3, :cond_1

    if-ne p2, v7, :cond_2

    :cond_1
    if-nez p3, :cond_2

    move v3, v0

    .line 1890
    :goto_0
    if-nez v4, :cond_3

    .line 1892
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 1893
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v2, "App does not exist in onConfigFetched. appId"

    .line 1894
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1952
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1953
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->s_()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1957
    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/jo;->q:Z

    .line 1958
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/jo;->A()V

    .line 1959
    :goto_2
    return-void

    :cond_2
    move v3, v1

    .line 1889
    goto :goto_0

    .line 1895
    :cond_3
    if-nez v3, :cond_4

    if-ne p2, v6, :cond_c

    .line 1896
    :cond_4
    if-eqz p5, :cond_6

    :try_start_3
    const-string/jumbo v0, "Last-Modified"

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1897
    :goto_3
    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 1898
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1900
    :goto_4
    if-eq p2, v6, :cond_5

    if-ne p2, v7, :cond_8

    .line 1901
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/ex;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/ex;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/al$b;

    move-result-object v0

    if-nez v0, :cond_9

    .line 1902
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/ex;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v2, v3}, Lcom/google/android/gms/measurement/internal/ex;->a(Ljava/lang/String;[BLjava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    if-nez v0, :cond_9

    .line 1903
    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->s_()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1904
    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/jo;->q:Z

    .line 1905
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/jo;->A()V

    goto :goto_2

    :cond_6
    move-object v0, v2

    .line 1896
    goto :goto_3

    :cond_7
    move-object v0, v2

    .line 1899
    goto :goto_4

    .line 1907
    :cond_8
    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/ex;

    move-result-object v2

    invoke-virtual {v2, p1, p4, v0}, Lcom/google/android/gms/measurement/internal/ex;->a(Ljava/lang/String;[BLjava/lang/String;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v0

    if-nez v0, :cond_9

    .line 1908
    :try_start_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->s_()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1909
    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/jo;->q:Z

    .line 1910
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/jo;->A()V

    goto :goto_2

    .line 1913
    :cond_9
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    .line 1914
    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/measurement/internal/fg;->h(J)V

    .line 1915
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/c;->a(Lcom/google/android/gms/measurement/internal/fg;)V

    .line 1916
    if-ne p2, v6, :cond_a

    .line 1918
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 1919
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->g()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v2, "Config not found. Using empty config. appId"

    .line 1920
    invoke-virtual {v0, v2, p1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1927
    :goto_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->d()Lcom/google/android/gms/measurement/internal/eg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/eg;->b()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/jo;->x()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1928
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->l()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 1955
    :catchall_0
    move-exception v0

    :try_start_8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/c;->s_()V

    .line 1956
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1960
    :catchall_1
    move-exception v0

    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/jo;->q:Z

    .line 1961
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/jo;->A()V

    .line 1962
    throw v0

    .line 1922
    :cond_a
    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 1923
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v2, "Successfully fetched config. Got network response. code, size"

    .line 1924
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    array-length v4, p4

    .line 1925
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1926
    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5

    .line 1929
    :cond_b
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/jo;->z()V

    goto/16 :goto_1

    .line 1932
    :cond_c
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v2

    .line 1933
    invoke-interface {v2}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/measurement/internal/fg;->i(J)V

    .line 1934
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/gms/measurement/internal/c;->a(Lcom/google/android/gms/measurement/internal/fg;)V

    .line 1936
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 1937
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Fetching config failed. code, error"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1938
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/ex;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/measurement/internal/ex;->c(Ljava/lang/String;)V

    .line 1940
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->c()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v2

    .line 1941
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/el;->d:Lcom/google/android/gms/measurement/internal/ep;

    .line 1942
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/fd;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v3

    .line 1943
    invoke-interface {v3}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/measurement/internal/ep;->a(J)V

    .line 1944
    const/16 v2, 0x1f7

    if-eq p2, v2, :cond_d

    const/16 v2, 0x1ad

    if-ne p2, v2, :cond_f

    .line 1945
    :cond_d
    :goto_6
    if-eqz v0, :cond_e

    .line 1947
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->c()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v0

    .line 1948
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/el;->e:Lcom/google/android/gms/measurement/internal/ep;

    .line 1949
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v2

    .line 1950
    invoke-interface {v2}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/ep;->a(J)V

    .line 1951
    :cond_e
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/jo;->z()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    :cond_f
    move v0, v1

    .line 1944
    goto :goto_6
.end method

.method final a(Z)V
    .locals 0

    .prologue
    .line 2987
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/jo;->z()V

    .line 2988
    return-void
.end method

.method public final b()Lcom/google/android/gms/measurement/internal/b;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    return-object v0
.end method

.method final b(Lcom/google/android/gms/measurement/internal/jv;Lcom/google/android/gms/measurement/internal/kb;)V
    .locals 6

    .prologue
    .line 2394
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/jo;->t()V

    .line 2395
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->k()V

    .line 2396
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/jo;->e(Lcom/google/android/gms/measurement/internal/kb;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2428
    :goto_0
    return-void

    .line 2398
    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/kb;->h:Z

    if-nez v0, :cond_1

    .line 2399
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/jo;->c(Lcom/google/android/gms/measurement/internal/kb;)Lcom/google/android/gms/measurement/internal/fg;

    goto :goto_0

    .line 2401
    :cond_1
    const-string/jumbo v0, "_npa"

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/jv;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/kb;->s:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 2403
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 2404
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->i()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Falling back to manifest metadata value for ad personalization"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 2405
    new-instance v0, Lcom/google/android/gms/measurement/internal/jv;

    const-string/jumbo v1, "_npa"

    .line 2406
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v2

    .line 2407
    invoke-interface {v2}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v2

    .line 2408
    iget-object v4, p2, Lcom/google/android/gms/measurement/internal/kb;->s:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    const-wide/16 v4, 0x1

    :goto_1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string/jumbo v5, "auto"

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/jv;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 2409
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/jv;Lcom/google/android/gms/measurement/internal/kb;)V

    goto :goto_0

    .line 2408
    :cond_2
    const-wide/16 v4, 0x0

    goto :goto_1

    .line 2412
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 2413
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->i()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Removing user property"

    .line 2414
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->j()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v2

    .line 2415
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/jv;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/dw;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2416
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2417
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->b()V

    .line 2418
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/jo;->c(Lcom/google/android/gms/measurement/internal/kb;)Lcom/google/android/gms/measurement/internal/fg;

    .line 2419
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/kb;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/jv;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2420
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->c()V

    .line 2422
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 2423
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->i()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "User property removed"

    .line 2424
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->j()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v2

    .line 2425
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/jv;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/dw;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2426
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2427
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->s_()V

    goto/16 :goto_0

    .line 2429
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c;->s_()V

    .line 2430
    throw v0
.end method

.method final b(Lcom/google/android/gms/measurement/internal/kb;)V
    .locals 12

    .prologue
    .line 2436
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/jo;->t()V

    .line 2437
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->k()V

    .line 2438
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2439
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/kb;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 2440
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/jo;->e(Lcom/google/android/gms/measurement/internal/kb;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2671
    :goto_0
    return-void

    .line 2442
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/kb;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/c;->b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/fg;

    move-result-object v0

    .line 2443
    if-eqz v0, :cond_1

    .line 2444
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fg;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/kb;->b:Ljava/lang/String;

    .line 2445
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2446
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/fg;->h(J)V

    .line 2447
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/c;->a(Lcom/google/android/gms/measurement/internal/fg;)V

    .line 2448
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/ex;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/kb;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ex;->d(Ljava/lang/String;)V

    .line 2449
    :cond_1
    iget-boolean v0, p1, Lcom/google/android/gms/measurement/internal/kb;->h:Z

    if-nez v0, :cond_2

    .line 2450
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/jo;->c(Lcom/google/android/gms/measurement/internal/kb;)Lcom/google/android/gms/measurement/internal/fg;

    goto :goto_0

    .line 2452
    :cond_2
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/kb;->m:J

    .line 2453
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_3

    .line 2455
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    .line 2456
    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v2

    .line 2458
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->w()Lcom/google/android/gms/measurement/internal/l;

    move-result-object v0

    .line 2459
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/l;->e()V

    .line 2460
    iget v0, p1, Lcom/google/android/gms/measurement/internal/kb;->n:I

    .line 2461
    if-eqz v0, :cond_23

    const/4 v1, 0x1

    if-eq v0, v1, :cond_23

    .line 2463
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 2464
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v4, "Incorrect app type, assuming installed app. appId, appType"

    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/kb;->a:Ljava/lang/String;

    .line 2465
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 2466
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2467
    invoke-virtual {v1, v4, v5, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2468
    const/4 v0, 0x0

    move v10, v0

    .line 2469
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->b()V

    .line 2471
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/kb;->a:Ljava/lang/String;

    const-string/jumbo v4, "_npa"

    .line 2472
    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/measurement/internal/c;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/jx;

    move-result-object v6

    .line 2473
    if-eqz v6, :cond_4

    const-string/jumbo v0, "auto"

    iget-object v1, v6, Lcom/google/android/gms/measurement/internal/jx;->b:Ljava/lang/String;

    .line 2474
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2475
    :cond_4
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/kb;->s:Ljava/lang/Boolean;

    if-eqz v0, :cond_13

    .line 2476
    new-instance v0, Lcom/google/android/gms/measurement/internal/jv;

    const-string/jumbo v1, "_npa"

    .line 2477
    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/kb;->s:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_12

    const-wide/16 v4, 0x1

    :goto_2
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string/jumbo v5, "auto"

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/jv;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 2478
    if-eqz v6, :cond_5

    iget-object v1, v6, Lcom/google/android/gms/measurement/internal/jx;->e:Ljava/lang/Object;

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/jv;->c:Ljava/lang/Long;

    .line 2479
    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 2480
    :cond_5
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/jv;Lcom/google/android/gms/measurement/internal/kb;)V

    .line 2485
    :cond_6
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/kb;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/c;->b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/fg;

    move-result-object v0

    .line 2486
    if-eqz v0, :cond_22

    .line 2487
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->i()Lcom/google/android/gms/measurement/internal/jw;

    .line 2488
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/kb;->b:Ljava/lang/String;

    .line 2489
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fg;->e()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/kb;->r:Ljava/lang/String;

    .line 2490
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fg;->f()Ljava/lang/String;

    move-result-object v6

    .line 2491
    invoke-static {v1, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/jw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 2493
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 2494
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v4, "New GMP App Id passed in. Removing cached database data. appId"

    .line 2495
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fg;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 2496
    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2497
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fg;->c()Ljava/lang/String;

    move-result-object v4

    .line 2498
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/jl;->K()V

    .line 2499
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 2500
    invoke-static {v4}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2501
    :try_start_1
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2502
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    .line 2503
    const-string/jumbo v6, "events"

    const-string/jumbo v7, "app_id=?"

    invoke-virtual {v0, v6, v7, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x0

    .line 2504
    const-string/jumbo v7, "user_attributes"

    const-string/jumbo v8, "app_id=?"

    invoke-virtual {v0, v7, v8, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    add-int/2addr v6, v7

    .line 2505
    const-string/jumbo v7, "conditional_properties"

    const-string/jumbo v8, "app_id=?"

    invoke-virtual {v0, v7, v8, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    add-int/2addr v6, v7

    .line 2506
    const-string/jumbo v7, "apps"

    const-string/jumbo v8, "app_id=?"

    invoke-virtual {v0, v7, v8, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    add-int/2addr v6, v7

    .line 2507
    const-string/jumbo v7, "raw_events"

    const-string/jumbo v8, "app_id=?"

    invoke-virtual {v0, v7, v8, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    add-int/2addr v6, v7

    .line 2508
    const-string/jumbo v7, "raw_events_metadata"

    const-string/jumbo v8, "app_id=?"

    invoke-virtual {v0, v7, v8, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    add-int/2addr v6, v7

    .line 2509
    const-string/jumbo v7, "event_filters"

    const-string/jumbo v8, "app_id=?"

    invoke-virtual {v0, v7, v8, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    add-int/2addr v6, v7

    .line 2510
    const-string/jumbo v7, "property_filters"

    const-string/jumbo v8, "app_id=?"

    invoke-virtual {v0, v7, v8, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    add-int/2addr v6, v7

    .line 2511
    const-string/jumbo v7, "audience_filter_values"

    const-string/jumbo v8, "app_id=?"

    invoke-virtual {v0, v7, v8, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v6

    .line 2512
    if-lez v0, :cond_7

    .line 2513
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v5

    const-string/jumbo v6, "Deleted application data. app, records"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v6, v4, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2519
    :cond_7
    :goto_4
    const/4 v0, 0x0

    move-object v4, v0

    .line 2520
    :goto_5
    if-eqz v4, :cond_8

    .line 2522
    :try_start_2
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fg;->m()J

    move-result-wide v0

    const-wide/32 v6, -0x80000000

    cmp-long v0, v0, v6

    if-eqz v0, :cond_14

    .line 2523
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fg;->m()J

    move-result-wide v0

    iget-wide v6, p1, Lcom/google/android/gms/measurement/internal/kb;->j:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    move v1, v0

    .line 2525
    :goto_6
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fg;->m()J

    move-result-wide v6

    const-wide/32 v8, -0x80000000

    cmp-long v0, v6, v8

    if-nez v0, :cond_15

    .line 2526
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fg;->l()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 2527
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fg;->l()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/kb;->c:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x1

    :goto_7
    or-int/2addr v0, v1

    .line 2528
    if-eqz v0, :cond_8

    .line 2529
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2530
    const-string/jumbo v1, "_pv"

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fg;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2531
    new-instance v4, Lcom/google/android/gms/measurement/internal/r;

    const-string/jumbo v5, "_au"

    new-instance v6, Lcom/google/android/gms/measurement/internal/m;

    invoke-direct {v6, v0}, Lcom/google/android/gms/measurement/internal/m;-><init>(Landroid/os/Bundle;)V

    const-string/jumbo v7, "auto"

    move-wide v8, v2

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/measurement/internal/r;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/m;Ljava/lang/String;J)V

    .line 2532
    invoke-virtual {p0, v4, p1}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/r;Lcom/google/android/gms/measurement/internal/kb;)V

    .line 2533
    :cond_8
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/jo;->c(Lcom/google/android/gms/measurement/internal/kb;)Lcom/google/android/gms/measurement/internal/fg;

    .line 2534
    const/4 v0, 0x0

    .line 2535
    if-nez v10, :cond_16

    .line 2537
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/kb;->a:Ljava/lang/String;

    const-string/jumbo v4, "_f"

    .line 2538
    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/measurement/internal/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/n;

    move-result-object v0

    .line 2543
    :cond_9
    :goto_8
    if-nez v0, :cond_20

    .line 2544
    const-wide/16 v0, 0x1

    const-wide/32 v4, 0x36ee80

    div-long v4, v2, v4

    add-long/2addr v0, v4

    const-wide/32 v4, 0x36ee80

    mul-long/2addr v4, v0

    .line 2545
    if-nez v10, :cond_1d

    .line 2546
    new-instance v0, Lcom/google/android/gms/measurement/internal/jv;

    const-string/jumbo v1, "_fot"

    .line 2547
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string/jumbo v5, "auto"

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/jv;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 2548
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/jv;Lcom/google/android/gms/measurement/internal/kb;)V

    .line 2550
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 2551
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/kb;->b:Ljava/lang/String;

    sget-object v4, Lcom/google/android/gms/measurement/internal/t;->R:Lcom/google/android/gms/measurement/internal/dr;

    .line 2552
    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/measurement/internal/b;->e(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2554
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/jo;->t()V

    .line 2555
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    .line 2556
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->f()Lcom/google/android/gms/measurement/internal/eu;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/kb;->a:Ljava/lang/String;

    .line 2557
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/eu;->a(Ljava/lang/String;)V

    .line 2559
    :cond_a
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/jo;->t()V

    .line 2560
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->k()V

    .line 2561
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 2562
    const-string/jumbo v0, "_c"

    const-wide/16 v4, 0x1

    invoke-virtual {v7, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2563
    const-string/jumbo v0, "_r"

    const-wide/16 v4, 0x1

    invoke-virtual {v7, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2564
    const-string/jumbo v0, "_uwa"

    const-wide/16 v4, 0x0

    invoke-virtual {v7, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2565
    const-string/jumbo v0, "_pfo"

    const-wide/16 v4, 0x0

    invoke-virtual {v7, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2566
    const-string/jumbo v0, "_sys"

    const-wide/16 v4, 0x0

    invoke-virtual {v7, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2567
    const-string/jumbo v0, "_sysu"

    const-wide/16 v4, 0x0

    invoke-virtual {v7, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2569
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 2570
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/kb;->a:Ljava/lang/String;

    sget-object v4, Lcom/google/android/gms/measurement/internal/t;->T:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/measurement/internal/b;->e(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2571
    const-string/jumbo v0, "_et"

    const-wide/16 v4, 0x1

    invoke-virtual {v7, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2572
    :cond_b
    iget-boolean v0, p1, Lcom/google/android/gms/measurement/internal/kb;->q:Z

    if-eqz v0, :cond_c

    .line 2573
    const-string/jumbo v0, "_dac"

    const-wide/16 v4, 0x1

    invoke-virtual {v7, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2574
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/kb;->a:Ljava/lang/String;

    .line 2575
    invoke-static {v1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 2576
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 2577
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jl;->K()V

    .line 2578
    const-string/jumbo v4, "first_open_count"

    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/measurement/internal/c;->h(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v8

    .line 2581
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->r()Landroid/content/Context;

    move-result-object v0

    .line 2582
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2583
    if-nez v0, :cond_17

    .line 2585
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 2586
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "PackageManager is null, first open report might be inaccurate. appId"

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/kb;->a:Ljava/lang/String;

    .line 2587
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 2588
    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2630
    :cond_d
    :goto_9
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-ltz v0, :cond_e

    .line 2631
    const-string/jumbo v0, "_pfo"

    invoke-virtual {v7, v0, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2632
    :cond_e
    new-instance v4, Lcom/google/android/gms/measurement/internal/r;

    const-string/jumbo v5, "_f"

    new-instance v6, Lcom/google/android/gms/measurement/internal/m;

    invoke-direct {v6, v7}, Lcom/google/android/gms/measurement/internal/m;-><init>(Landroid/os/Bundle;)V

    const-string/jumbo v7, "auto"

    move-wide v8, v2

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/measurement/internal/r;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/m;Ljava/lang/String;J)V

    .line 2633
    invoke-virtual {p0, v4, p1}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/r;Lcom/google/android/gms/measurement/internal/kb;)V

    .line 2653
    :cond_f
    :goto_a
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 2654
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/kb;->a:Ljava/lang/String;

    sget-object v4, Lcom/google/android/gms/measurement/internal/t;->U:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/measurement/internal/b;->e(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 2656
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2657
    const-string/jumbo v1, "_et"

    const-wide/16 v4, 0x1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2659
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    .line 2660
    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/kb;->a:Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/measurement/internal/t;->T:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/measurement/internal/b;->e(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2661
    const-string/jumbo v1, "_fr"

    const-wide/16 v4, 0x1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2662
    :cond_10
    new-instance v4, Lcom/google/android/gms/measurement/internal/r;

    const-string/jumbo v5, "_e"

    new-instance v6, Lcom/google/android/gms/measurement/internal/m;

    invoke-direct {v6, v0}, Lcom/google/android/gms/measurement/internal/m;-><init>(Landroid/os/Bundle;)V

    const-string/jumbo v7, "auto"

    move-wide v8, v2

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/measurement/internal/r;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/m;Ljava/lang/String;J)V

    .line 2663
    invoke-virtual {p0, v4, p1}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/r;Lcom/google/android/gms/measurement/internal/kb;)V

    .line 2669
    :cond_11
    :goto_b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->c()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2670
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->s_()V

    goto/16 :goto_0

    .line 2477
    :cond_12
    const-wide/16 v4, 0x0

    goto/16 :goto_2

    .line 2481
    :cond_13
    if-eqz v6, :cond_6

    .line 2482
    :try_start_3
    new-instance v0, Lcom/google/android/gms/measurement/internal/jv;

    const-string/jumbo v1, "_npa"

    const/4 v4, 0x0

    const-string/jumbo v5, "auto"

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/jv;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 2483
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/jo;->b(Lcom/google/android/gms/measurement/internal/jv;Lcom/google/android/gms/measurement/internal/kb;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3

    .line 2672
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c;->s_()V

    .line 2673
    throw v0

    .line 2515
    :catch_0
    move-exception v0

    .line 2516
    :try_start_4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 2517
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v5, "Error deleting application data. appId, error"

    .line 2518
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v5, v4, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2523
    :cond_14
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_6

    .line 2527
    :cond_15
    const/4 v0, 0x0

    goto/16 :goto_7

    .line 2539
    :cond_16
    const/4 v1, 0x1

    if-ne v10, v1, :cond_9

    .line 2541
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/kb;->a:Ljava/lang/String;

    const-string/jumbo v4, "_v"

    .line 2542
    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/measurement/internal/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/n;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    goto/16 :goto_8

    .line 2589
    :cond_17
    const/4 v1, 0x0

    .line 2591
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->r()Landroid/content/Context;

    move-result-object v0

    .line 2592
    invoke-static {v0}, Lcom/google/android/gms/common/c/c;->a(Landroid/content/Context;)Lcom/google/android/gms/common/c/b;

    move-result-object v0

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/kb;->a:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/common/c/b;->b(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v0

    move-object v1, v0

    .line 2600
    :goto_c
    if-eqz v1, :cond_18

    .line 2601
    :try_start_6
    iget-wide v4, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const-wide/16 v10, 0x0

    cmp-long v0, v4, v10

    if-eqz v0, :cond_18

    .line 2602
    const/4 v0, 0x0

    .line 2603
    iget-wide v4, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iget-wide v10, v1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v1, v4, v10

    if-eqz v1, :cond_1b

    .line 2605
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    .line 2606
    sget-object v4, Lcom/google/android/gms/measurement/internal/t;->at:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v1, v4}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 2607
    const-wide/16 v4, 0x0

    cmp-long v1, v8, v4

    if-nez v1, :cond_21

    .line 2608
    const-string/jumbo v1, "_uwa"

    const-wide/16 v4, 0x1

    invoke-virtual {v7, v1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    move v4, v0

    .line 2611
    :goto_d
    new-instance v0, Lcom/google/android/gms/measurement/internal/jv;

    const-string/jumbo v1, "_fi"

    .line 2612
    if-eqz v4, :cond_1c

    const-wide/16 v4, 0x1

    :goto_e
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string/jumbo v5, "auto"

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/jv;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 2613
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/jv;Lcom/google/android/gms/measurement/internal/kb;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2614
    :cond_18
    const/4 v1, 0x0

    .line 2616
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->r()Landroid/content/Context;

    move-result-object v0

    .line 2617
    invoke-static {v0}, Lcom/google/android/gms/common/c/c;->a(Landroid/content/Context;)Lcom/google/android/gms/common/c/b;

    move-result-object v0

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/kb;->a:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/common/c/b;->a(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v0

    .line 2625
    :goto_f
    if-eqz v0, :cond_d

    .line 2626
    :try_start_8
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_19

    .line 2627
    const-string/jumbo v1, "_sys"

    const-wide/16 v4, 0x1

    invoke-virtual {v7, v1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2628
    :cond_19
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_d

    .line 2629
    const-string/jumbo v0, "_sysu"

    const-wide/16 v4, 0x1

    invoke-virtual {v7, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_9

    .line 2594
    :catch_1
    move-exception v0

    .line 2596
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v4

    .line 2597
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v4

    const-string/jumbo v5, "Package info is null, first open report might be inaccurate. appId"

    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/kb;->a:Ljava/lang/String;

    .line 2598
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 2599
    invoke-virtual {v4, v5, v6, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 2609
    :cond_1a
    const-string/jumbo v1, "_uwa"

    const-wide/16 v4, 0x1

    invoke-virtual {v7, v1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    move v4, v0

    goto :goto_d

    .line 2610
    :cond_1b
    const/4 v0, 0x1

    move v4, v0

    goto :goto_d

    .line 2612
    :cond_1c
    const-wide/16 v4, 0x0

    goto :goto_e

    .line 2619
    :catch_2
    move-exception v0

    .line 2621
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v4

    .line 2622
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v4

    const-string/jumbo v5, "Application info is null, first open report might be inaccurate. appId"

    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/kb;->a:Ljava/lang/String;

    .line 2623
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 2624
    invoke-virtual {v4, v5, v6, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_f

    .line 2634
    :cond_1d
    const/4 v0, 0x1

    if-ne v10, v0, :cond_f

    .line 2635
    new-instance v0, Lcom/google/android/gms/measurement/internal/jv;

    const-string/jumbo v1, "_fvt"

    .line 2636
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string/jumbo v5, "auto"

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/jv;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 2637
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/jv;Lcom/google/android/gms/measurement/internal/kb;)V

    .line 2639
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/jo;->t()V

    .line 2640
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->k()V

    .line 2641
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2642
    const-string/jumbo v1, "_c"

    const-wide/16 v4, 0x1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2643
    const-string/jumbo v1, "_r"

    const-wide/16 v4, 0x1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2645
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    .line 2646
    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/kb;->a:Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/measurement/internal/t;->T:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/measurement/internal/b;->e(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 2647
    const-string/jumbo v1, "_et"

    const-wide/16 v4, 0x1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2648
    :cond_1e
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/kb;->q:Z

    if-eqz v1, :cond_1f

    .line 2649
    const-string/jumbo v1, "_dac"

    const-wide/16 v4, 0x1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2650
    :cond_1f
    new-instance v4, Lcom/google/android/gms/measurement/internal/r;

    const-string/jumbo v5, "_v"

    new-instance v6, Lcom/google/android/gms/measurement/internal/m;

    invoke-direct {v6, v0}, Lcom/google/android/gms/measurement/internal/m;-><init>(Landroid/os/Bundle;)V

    const-string/jumbo v7, "auto"

    move-wide v8, v2

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/measurement/internal/r;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/m;Ljava/lang/String;J)V

    .line 2651
    invoke-virtual {p0, v4, p1}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/r;Lcom/google/android/gms/measurement/internal/kb;)V

    goto/16 :goto_a

    .line 2664
    :cond_20
    iget-boolean v0, p1, Lcom/google/android/gms/measurement/internal/kb;->i:Z

    if-eqz v0, :cond_11

    .line 2666
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2667
    new-instance v4, Lcom/google/android/gms/measurement/internal/r;

    const-string/jumbo v5, "_cd"

    new-instance v6, Lcom/google/android/gms/measurement/internal/m;

    invoke-direct {v6, v0}, Lcom/google/android/gms/measurement/internal/m;-><init>(Landroid/os/Bundle;)V

    const-string/jumbo v7, "auto"

    move-wide v8, v2

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/measurement/internal/r;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/m;Ljava/lang/String;J)V

    .line 2668
    invoke-virtual {p0, v4, p1}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/r;Lcom/google/android/gms/measurement/internal/kb;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_b

    :cond_21
    move v4, v0

    goto/16 :goto_d

    :cond_22
    move-object v4, v0

    goto/16 :goto_5

    :cond_23
    move v10, v0

    goto/16 :goto_1
.end method

.method final b(Lcom/google/android/gms/measurement/internal/kn;)V
    .locals 1

    .prologue
    .line 2796
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/kn;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/jo;->a(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/kb;

    move-result-object v0

    .line 2797
    if-eqz v0, :cond_0

    .line 2798
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/jo;->b(Lcom/google/android/gms/measurement/internal/kn;Lcom/google/android/gms/measurement/internal/kb;)V

    .line 2799
    :cond_0
    return-void
.end method

.method final b(Lcom/google/android/gms/measurement/internal/kn;Lcom/google/android/gms/measurement/internal/kb;)V
    .locals 10

    .prologue
    .line 2800
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2801
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/kn;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 2802
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/kn;->c:Lcom/google/android/gms/measurement/internal/jv;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2803
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/kn;->c:Lcom/google/android/gms/measurement/internal/jv;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/jv;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 2804
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/jo;->t()V

    .line 2805
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->k()V

    .line 2806
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/jo;->e(Lcom/google/android/gms/measurement/internal/kb;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2844
    :goto_0
    return-void

    .line 2808
    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/kb;->h:Z

    if-nez v0, :cond_1

    .line 2809
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/jo;->c(Lcom/google/android/gms/measurement/internal/kb;)Lcom/google/android/gms/measurement/internal/fg;

    goto :goto_0

    .line 2811
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->b()V

    .line 2812
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/jo;->c(Lcom/google/android/gms/measurement/internal/kb;)Lcom/google/android/gms/measurement/internal/fg;

    .line 2814
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/kn;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/kn;->c:Lcom/google/android/gms/measurement/internal/jv;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/jv;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/c;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/kn;

    move-result-object v0

    .line 2815
    if-eqz v0, :cond_5

    .line 2817
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 2818
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->i()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Removing conditional user property"

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/kn;->a:Ljava/lang/String;

    .line 2819
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fd;->j()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v4

    .line 2820
    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/kn;->c:Lcom/google/android/gms/measurement/internal/jv;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/jv;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/dw;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2821
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2822
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/kn;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/kn;->c:Lcom/google/android/gms/measurement/internal/jv;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/jv;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/c;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2823
    iget-boolean v1, v0, Lcom/google/android/gms/measurement/internal/kn;->e:Z

    if-eqz v1, :cond_2

    .line 2824
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/kn;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/kn;->c:Lcom/google/android/gms/measurement/internal/jv;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/jv;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2825
    :cond_2
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/kn;->k:Lcom/google/android/gms/measurement/internal/r;

    if-eqz v1, :cond_4

    .line 2826
    const/4 v4, 0x0

    .line 2827
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/kn;->k:Lcom/google/android/gms/measurement/internal/r;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/r;->b:Lcom/google/android/gms/measurement/internal/m;

    if-eqz v1, :cond_3

    .line 2828
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/kn;->k:Lcom/google/android/gms/measurement/internal/r;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/r;->b:Lcom/google/android/gms/measurement/internal/m;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/m;->b()Landroid/os/Bundle;

    move-result-object v4

    .line 2830
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->i()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v1

    .line 2831
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/kn;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/kn;->k:Lcom/google/android/gms/measurement/internal/r;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/r;->a:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/kn;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/kn;->k:Lcom/google/android/gms/measurement/internal/r;

    iget-wide v6, v0, Lcom/google/android/gms/measurement/internal/r;->d:J

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 2832
    invoke-virtual/range {v1 .. v9}, Lcom/google/android/gms/measurement/internal/jw;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/measurement/internal/r;

    move-result-object v0

    .line 2833
    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/measurement/internal/jo;->b(Lcom/google/android/gms/measurement/internal/r;Lcom/google/android/gms/measurement/internal/kb;)V

    .line 2842
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2843
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->s_()V

    goto/16 :goto_0

    .line 2836
    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 2837
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Conditional user property doesn\'t exist"

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/kn;->a:Ljava/lang/String;

    .line 2838
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 2839
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/fd;->j()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v3

    .line 2840
    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/kn;->c:Lcom/google/android/gms/measurement/internal/jv;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/jv;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/dw;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2841
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2845
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c;->s_()V

    .line 2846
    throw v0
.end method

.method public final c()Lcom/google/android/gms/measurement/internal/ex;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/ex;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/jo;->b(Lcom/google/android/gms/measurement/internal/jl;)V

    .line 100
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/ex;

    return-object v0
.end method

.method final c(Lcom/google/android/gms/measurement/internal/kb;)Lcom/google/android/gms/measurement/internal/fg;
    .locals 6

    .prologue
    .line 2922
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/jo;->t()V

    .line 2923
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->k()V

    .line 2924
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2925
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/kb;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 2926
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/kb;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/c;->b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/fg;

    move-result-object v0

    .line 2928
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->c()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v1

    .line 2929
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/kb;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/el;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2930
    invoke-static {}, Lcom/google/android/gms/internal/measurement/jl;->b()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2931
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    .line 2932
    sget-object v3, Lcom/google/android/gms/measurement/internal/t;->au:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2933
    if-nez v0, :cond_9

    .line 2934
    new-instance v0, Lcom/google/android/gms/measurement/internal/fg;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/kb;->a:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/fg;-><init>(Lcom/google/android/gms/measurement/internal/fd;Ljava/lang/String;)V

    .line 2936
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->i()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v2

    .line 2937
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/jw;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/fg;->a(Ljava/lang/String;)V

    .line 2938
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/fg;->e(Ljava/lang/String;)V

    .line 2944
    :cond_0
    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/kb;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/fg;->b(Ljava/lang/String;)V

    .line 2945
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/kb;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/fg;->c(Ljava/lang/String;)V

    .line 2946
    invoke-static {}, Lcom/google/android/gms/internal/measurement/jy;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2947
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    .line 2948
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fg;->c()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/t;->ao:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/b;->e(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2949
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/kb;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/fg;->d(Ljava/lang/String;)V

    .line 2950
    :cond_1
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/kb;->k:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2951
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/kb;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/fg;->f(Ljava/lang/String;)V

    .line 2952
    :cond_2
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/kb;->e:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    .line 2953
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/kb;->e:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/fg;->d(J)V

    .line 2954
    :cond_3
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/kb;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2955
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/kb;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/fg;->g(Ljava/lang/String;)V

    .line 2956
    :cond_4
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/kb;->j:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/fg;->c(J)V

    .line 2957
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/kb;->d:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 2958
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/kb;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/fg;->h(Ljava/lang/String;)V

    .line 2959
    :cond_5
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/kb;->f:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/fg;->e(J)V

    .line 2960
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/kb;->h:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/fg;->a(Z)V

    .line 2961
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/kb;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 2962
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/kb;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/fg;->i(Ljava/lang/String;)V

    .line 2964
    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    .line 2965
    sget-object v2, Lcom/google/android/gms/measurement/internal/t;->aM:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 2966
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/kb;->l:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/fg;->p(J)V

    .line 2967
    :cond_7
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/kb;->o:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/fg;->b(Z)V

    .line 2968
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/kb;->p:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/fg;->c(Z)V

    .line 2969
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/kb;->s:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/fg;->a(Ljava/lang/Boolean;)V

    .line 2970
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/kb;->t:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/fg;->f(J)V

    .line 2971
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fg;->a()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2972
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/c;->a(Lcom/google/android/gms/measurement/internal/fg;)V

    .line 2974
    :cond_8
    :goto_1
    return-object v0

    .line 2939
    :cond_9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fg;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2940
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/fg;->e(Ljava/lang/String;)V

    .line 2942
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->i()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v1

    .line 2943
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/jw;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/fg;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2974
    :cond_a
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/kb;Lcom/google/android/gms/measurement/internal/fg;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/fg;

    move-result-object v0

    goto :goto_1
.end method

.method public final d()Lcom/google/android/gms/measurement/internal/eg;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->c:Lcom/google/android/gms/measurement/internal/eg;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/jo;->b(Lcom/google/android/gms/measurement/internal/jl;)V

    .line 102
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->c:Lcom/google/android/gms/measurement/internal/eg;

    return-object v0
.end method

.method final d(Lcom/google/android/gms/measurement/internal/kb;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 2975
    .line 2976
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    .line 2977
    new-instance v1, Lcom/google/android/gms/measurement/internal/jr;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/jr;-><init>(Lcom/google/android/gms/measurement/internal/jo;Lcom/google/android/gms/measurement/internal/kb;)V

    .line 2978
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/fa;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 2979
    const-wide/16 v2, 0x7530

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2986
    :goto_0
    return-object v0

    .line 2980
    :catch_0
    move-exception v0

    .line 2982
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 2983
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Failed to get app instance id. appId"

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/kb;->a:Ljava/lang/String;

    .line 2984
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 2985
    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2986
    const/4 v0, 0x0

    goto :goto_0

    .line 2980
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public final e()Lcom/google/android/gms/measurement/internal/c;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->d:Lcom/google/android/gms/measurement/internal/c;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/jo;->b(Lcom/google/android/gms/measurement/internal/jl;)V

    .line 104
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->d:Lcom/google/android/gms/measurement/internal/c;

    return-object v0
.end method

.method public final f()Lcom/google/android/gms/measurement/internal/kf;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->g:Lcom/google/android/gms/measurement/internal/kf;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/jo;->b(Lcom/google/android/gms/measurement/internal/jl;)V

    .line 111
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->g:Lcom/google/android/gms/measurement/internal/kf;

    return-object v0
.end method

.method public final g()Lcom/google/android/gms/measurement/internal/hn;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->i:Lcom/google/android/gms/measurement/internal/hn;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/jo;->b(Lcom/google/android/gms/measurement/internal/jl;)V

    .line 113
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->i:Lcom/google/android/gms/measurement/internal/hn;

    return-object v0
.end method

.method public final h()Lcom/google/android/gms/measurement/internal/js;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->h:Lcom/google/android/gms/measurement/internal/js;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/jo;->b(Lcom/google/android/gms/measurement/internal/jl;)V

    .line 115
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->h:Lcom/google/android/gms/measurement/internal/js;

    return-object v0
.end method

.method public final i()Lcom/google/android/gms/measurement/internal/dw;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->j()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v0

    return-object v0
.end method

.method public final j()Lcom/google/android/gms/measurement/internal/jw;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->i()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v0

    return-object v0
.end method

.method final k()V
    .locals 2

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/jo;->k:Z

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "UploadController is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    return-void
.end method

.method final l()V
    .locals 16

    .prologue
    .line 782
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->t()V

    .line 783
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->k()V

    .line 784
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/gms/measurement/internal/jo;->s:Z

    .line 786
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->y()Lcom/google/android/gms/measurement/internal/kk;

    .line 788
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->t()Lcom/google/android/gms/measurement/internal/hu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/hu;->G()Ljava/lang/Boolean;

    move-result-object v2

    .line 789
    if-nez v2, :cond_0

    .line 791
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 792
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Upload data called on the client side before use of service was decided"

    .line 793
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 794
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/gms/measurement/internal/jo;->s:Z

    .line 795
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->A()V

    .line 964
    :goto_0
    return-void

    .line 797
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 799
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 800
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Upload called in the client side when service should be used"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 801
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/gms/measurement/internal/jo;->s:Z

    .line 802
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->A()V

    goto :goto_0

    .line 804
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/gms/measurement/internal/jo;->m:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 805
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->z()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 806
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/gms/measurement/internal/jo;->s:Z

    .line 807
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->A()V

    goto :goto_0

    .line 810
    :cond_2
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->t()V

    .line 811
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->v:Ljava/util/List;

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    .line 812
    :goto_1
    if-eqz v2, :cond_4

    .line 814
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 815
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Uploading requested multiple times"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 816
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/gms/measurement/internal/jo;->s:Z

    .line 817
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->A()V

    goto :goto_0

    .line 811
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 819
    :cond_4
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->d()Lcom/google/android/gms/measurement/internal/eg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/eg;->b()Z

    move-result v2

    if-nez v2, :cond_5

    .line 821
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 822
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Network not connected, ignoring upload request"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 823
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->z()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 824
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/gms/measurement/internal/jo;->s:Z

    .line 825
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->A()V

    goto/16 :goto_0

    .line 828
    :cond_5
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v2

    .line 829
    invoke-interface {v2}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v10

    .line 831
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    .line 832
    const/4 v3, 0x0

    sget-object v4, Lcom/google/android/gms/measurement/internal/t;->P:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/b;->b(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/dr;)I

    move-result v3

    .line 833
    invoke-static {}, Lcom/google/android/gms/measurement/internal/b;->h()J

    move-result-wide v4

    sub-long v4, v10, v4

    .line 834
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_6

    .line 835
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4, v5}, Lcom/google/android/gms/measurement/internal/jo;->a(Ljava/lang/String;J)Z

    move-result v6

    .line 836
    if-eqz v6, :cond_6

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 838
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->c()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v2

    .line 839
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/el;->c:Lcom/google/android/gms/measurement/internal/ep;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/ep;->a()J

    move-result-wide v2

    .line 840
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_7

    .line 842
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v4

    .line 843
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/dy;->i()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v4

    const-string/jumbo v5, "Uploading events. Elapsed time since last upload attempt (ms)"

    sub-long v2, v10, v2

    .line 844
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 845
    invoke-virtual {v4, v5, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 846
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/c;->f()Ljava/lang/String;

    move-result-object v4

    .line 847
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 848
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/gms/measurement/internal/jo;->x:J

    const-wide/16 v6, -0x1

    cmp-long v2, v2, v6

    if-nez v2, :cond_8

    .line 849
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/c;->A()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/gms/measurement/internal/jo;->x:J

    .line 851
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    .line 853
    sget-object v3, Lcom/google/android/gms/measurement/internal/t;->f:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/b;->b(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/dr;)I

    move-result v2

    .line 856
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/fd;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v3

    .line 858
    const/4 v5, 0x0

    sget-object v6, Lcom/google/android/gms/measurement/internal/t;->g:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v3, v4, v6}, Lcom/google/android/gms/measurement/internal/b;->b(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/dr;)I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 861
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v5

    invoke-virtual {v5, v4, v2, v3}, Lcom/google/android/gms/measurement/internal/c;->a(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v3

    .line 862
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f

    .line 863
    const/4 v5, 0x0

    .line 864
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 865
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/measurement/ao$g;

    .line 866
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ao$g;->D()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 867
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ao$g;->D()Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    .line 870
    :goto_3
    if-eqz v6, :cond_14

    .line 871
    const/4 v2, 0x0

    move v5, v2

    :goto_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v5, v2, :cond_14

    .line 872
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/measurement/ao$g;

    .line 873
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ao$g;->D()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 874
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ao$g;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 875
    const/4 v2, 0x0

    invoke-interface {v3, v2, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    move-object v6, v2

    .line 878
    :goto_5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ao$f;->b()Lcom/google/android/gms/internal/measurement/ao$f$a;

    move-result-object v7

    .line 879
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    .line 880
    new-instance v12, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v12, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 882
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    .line 883
    invoke-virtual {v2, v4}, Lcom/google/android/gms/measurement/internal/b;->f(Ljava/lang/String;)Z

    move-result v9

    .line 884
    const/4 v2, 0x0

    move v5, v2

    :goto_6
    if-ge v5, v8, :cond_d

    .line 885
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/measurement/ao$g;

    .line 886
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ed;->am()Lcom/google/android/gms/internal/measurement/ed$b;

    move-result-object v2

    .line 887
    check-cast v2, Lcom/google/android/gms/internal/measurement/ed$b;

    check-cast v2, Lcom/google/android/gms/internal/measurement/ao$g$a;

    .line 888
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 890
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/fd;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v3

    .line 891
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/b;->b()J

    move-result-wide v14

    invoke-virtual {v2, v14, v15}, Lcom/google/android/gms/internal/measurement/ao$g$a;->g(J)Lcom/google/android/gms/internal/measurement/ao$g$a;

    move-result-object v3

    .line 892
    invoke-virtual {v3, v10, v11}, Lcom/google/android/gms/internal/measurement/ao$g$a;->a(J)Lcom/google/android/gms/internal/measurement/ao$g$a;

    move-result-object v3

    .line 893
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/fd;->y()Lcom/google/android/gms/measurement/internal/kk;

    .line 895
    const/4 v13, 0x0

    .line 896
    invoke-virtual {v3, v13}, Lcom/google/android/gms/internal/measurement/ao$g$a;->b(Z)Lcom/google/android/gms/internal/measurement/ao$g$a;

    .line 897
    if-nez v9, :cond_a

    .line 898
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ao$g$a;->n()Lcom/google/android/gms/internal/measurement/ao$g$a;

    .line 900
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/fd;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v3

    .line 901
    sget-object v13, Lcom/google/android/gms/measurement/internal/t;->Y:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v3, v4, v13}, Lcom/google/android/gms/measurement/internal/b;->e(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 902
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ed$b;->u()Lcom/google/android/gms/internal/measurement/fn;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/ed;

    check-cast v3, Lcom/google/android/gms/internal/measurement/ao$g;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/ck;->ai()[B

    move-result-object v3

    .line 903
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->h()Lcom/google/android/gms/measurement/internal/js;

    move-result-object v13

    invoke-virtual {v13, v3}, Lcom/google/android/gms/measurement/internal/js;->a([B)J

    move-result-wide v14

    invoke-virtual {v2, v14, v15}, Lcom/google/android/gms/internal/measurement/ao$g$a;->l(J)Lcom/google/android/gms/internal/measurement/ao$g$a;

    .line 904
    :cond_b
    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/measurement/ao$f$a;->a(Lcom/google/android/gms/internal/measurement/ao$g$a;)Lcom/google/android/gms/internal/measurement/ao$f$a;

    .line 905
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_6

    .line 877
    :cond_c
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto/16 :goto_4

    .line 906
    :cond_d
    const/4 v2, 0x0

    .line 908
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v3

    .line 909
    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lcom/google/android/gms/measurement/internal/dy;->a(I)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 910
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->h()Lcom/google/android/gms/measurement/internal/js;

    move-result-object v3

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/ed$b;->u()Lcom/google/android/gms/internal/measurement/fn;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ed;

    check-cast v2, Lcom/google/android/gms/internal/measurement/ao$f;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/measurement/internal/js;->a(Lcom/google/android/gms/internal/measurement/ao$f;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 911
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->h()Lcom/google/android/gms/measurement/internal/js;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/ed$b;->u()Lcom/google/android/gms/internal/measurement/fn;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ed;

    check-cast v2, Lcom/google/android/gms/internal/measurement/ao$f;

    .line 912
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ck;->ai()[B

    move-result-object v6

    .line 914
    sget-object v2, Lcom/google/android/gms/measurement/internal/t;->p:Lcom/google/android/gms/measurement/internal/dr;

    .line 915
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/google/android/gms/measurement/internal/dr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 916
    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v9, v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 918
    :try_start_6
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 920
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10

    const/4 v2, 0x1

    :goto_8
    invoke-static {v2}, Lcom/google/android/gms/common/internal/s;->b(Z)V

    .line 921
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->v:Ljava/util/List;

    if-eqz v2, :cond_11

    .line 923
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 924
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v12, "Set uploading progress before finishing the previous upload"

    invoke-virtual {v2, v12}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 927
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->c()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v2

    .line 928
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/el;->d:Lcom/google/android/gms/measurement/internal/ep;

    invoke-virtual {v2, v10, v11}, Lcom/google/android/gms/measurement/internal/ep;->a(J)V

    .line 929
    const-string/jumbo v2, "?"

    .line 930
    if-lez v8, :cond_e

    .line 931
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/measurement/ao$f$a;->a(I)Lcom/google/android/gms/internal/measurement/ao$g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ao$g;->x()Ljava/lang/String;

    move-result-object v2

    .line 933
    :cond_e
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v7

    .line 934
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v7

    const-string/jumbo v8, "Uploading data. app, uncompressed size, data"

    array-length v10, v6

    .line 935
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v8, v2, v10, v3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 936
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/gms/measurement/internal/jo;->r:Z

    .line 937
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->d()Lcom/google/android/gms/measurement/internal/eg;

    move-result-object v3

    new-instance v8, Lcom/google/android/gms/measurement/internal/jq;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v4}, Lcom/google/android/gms/measurement/internal/jq;-><init>(Lcom/google/android/gms/measurement/internal/jo;Ljava/lang/String;)V

    .line 939
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 940
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/jl;->K()V

    .line 941
    invoke-static {v5}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    invoke-static {v6}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 943
    invoke-static {v8}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/fz;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v10

    new-instance v2, Lcom/google/android/gms/measurement/internal/ek;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/ek;-><init>(Lcom/google/android/gms/measurement/internal/eg;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/ei;)V

    .line 945
    invoke-virtual {v10, v2}, Lcom/google/android/gms/measurement/internal/fa;->b(Ljava/lang/Runnable;)V
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 962
    :cond_f
    :goto_a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/gms/measurement/internal/jo;->s:Z

    .line 963
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->A()V

    goto/16 :goto_0

    .line 920
    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_8

    .line 925
    :cond_11
    :try_start_7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->v:Ljava/util/List;
    :try_end_7
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_9

    .line 948
    :catch_0
    move-exception v2

    .line 949
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 950
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Failed to parse upload URL. Not uploading. appId"

    .line 951
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 952
    invoke-virtual {v2, v3, v4, v9}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_a

    .line 965
    :catchall_0
    move-exception v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/android/gms/measurement/internal/jo;->s:Z

    .line 966
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->A()V

    .line 967
    throw v2

    .line 954
    :cond_12
    const-wide/16 v2, -0x1

    :try_start_9
    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/gms/measurement/internal/jo;->x:J

    .line 956
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    .line 957
    invoke-static {}, Lcom/google/android/gms/measurement/internal/b;->h()J

    move-result-wide v4

    sub-long v4, v10, v4

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/measurement/internal/c;->a(J)Ljava/lang/String;

    move-result-object v2

    .line 958
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 959
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->e()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/measurement/internal/c;->b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/fg;

    move-result-object v2

    .line 960
    if-eqz v2, :cond_f

    .line 961
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/fg;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_a

    :cond_13
    move-object v3, v2

    goto/16 :goto_7

    :cond_14
    move-object v6, v3

    goto/16 :goto_5

    :cond_15
    move-object v6, v5

    goto/16 :goto_3
.end method

.method final m()V
    .locals 4

    .prologue
    .line 2138
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/jo;->t()V

    .line 2139
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->k()V

    .line 2140
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/jo;->l:Z

    if-nez v0, :cond_0

    .line 2141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/jo;->l:Z

    .line 2142
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/jo;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2144
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->u:Ljava/nio/channels/FileChannel;

    .line 2145
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/jo;->a(Ljava/nio/channels/FileChannel;)I

    move-result v0

    .line 2146
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->x()Lcom/google/android/gms/measurement/internal/dv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dv;->F()I

    move-result v1

    .line 2148
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/jo;->t()V

    .line 2149
    if-le v0, v1, :cond_1

    .line 2151
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 2152
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Panic: can\'t downgrade version. Previous, current version"

    .line 2153
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2154
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2155
    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2174
    :cond_0
    :goto_0
    return-void

    .line 2157
    :cond_1
    if-ge v0, v1, :cond_0

    .line 2159
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/jo;->u:Ljava/nio/channels/FileChannel;

    .line 2160
    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/measurement/internal/jo;->a(ILjava/nio/channels/FileChannel;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2162
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 2163
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Storage version upgraded. Previous, current version"

    .line 2164
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 2166
    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 2167
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Storage version upgrade failed. Previous, current version"

    .line 2168
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2169
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2170
    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method final n()V
    .locals 1

    .prologue
    .line 2433
    iget v0, p0, Lcom/google/android/gms/measurement/internal/jo;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/measurement/internal/jo;->p:I

    .line 2434
    return-void
.end method

.method final o()Lcom/google/android/gms/measurement/internal/fd;
    .locals 1

    .prologue
    .line 2435
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    return-object v0
.end method

.method public final q()Lcom/google/android/gms/common/util/e;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    return-object v0
.end method

.method public final r()Landroid/content/Context;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->r()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final u()Lcom/google/android/gms/measurement/internal/fa;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    return-object v0
.end method

.method public final v()Lcom/google/android/gms/measurement/internal/dy;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    return-object v0
.end method

.method public final y()Lcom/google/android/gms/measurement/internal/kk;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->j:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->y()Lcom/google/android/gms/measurement/internal/kk;

    move-result-object v0

    return-object v0
.end method
