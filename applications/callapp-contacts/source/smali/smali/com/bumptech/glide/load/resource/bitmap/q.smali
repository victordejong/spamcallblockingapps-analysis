.class public final Lcom/bumptech/glide/load/resource/bitmap/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Z

.field public static final b:Z

.field private static final c:Ljava/io/File;

.field private static volatile d:Lcom/bumptech/glide/load/resource/bitmap/q;

.field private static volatile e:I


# instance fields
.field private final f:Z

.field private final g:I

.field private final h:I

.field private i:I

.field private j:Z

.field private final k:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 28
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x1d

    if-ge v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/bumptech/glide/load/resource/bitmap/q;->a:Z

    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    sput-boolean v1, Lcom/bumptech/glide/load/resource/bitmap/q;->b:Z

    .line 61
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/self/fd"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/q;->c:Ljava/io/File;

    const/4 v0, -0x1

    .line 86
    sput v0, Lcom/bumptech/glide/load/resource/bitmap/q;->e:I

    return-void
.end method

.method constructor <init>()V
    .locals 26

    move-object/from16 v0, p0

    .line 118
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    .line 95
    iput-boolean v1, v0, Lcom/bumptech/glide/load/resource/bitmap/q;->j:Z

    .line 104
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, v0, Lcom/bumptech/glide/load/resource/bitmap/q;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1225
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/q;->c()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1229
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1b

    if-eq v2, v4, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const-string v5, "LG-M250"

    const-string v6, "LG-M320"

    const-string v7, "LG-Q710AL"

    const-string v8, "LG-Q710PL"

    const-string v9, "LGM-K121K"

    const-string v10, "LGM-K121L"

    const-string v11, "LGM-K121S"

    const-string v12, "LGM-X320K"

    const-string v13, "LGM-X320L"

    const-string v14, "LGM-X320S"

    const-string v15, "LGM-X401L"

    const-string v16, "LGM-X401S"

    const-string v17, "LM-Q610.FG"

    const-string v18, "LM-Q610.FGN"

    const-string v19, "LM-Q617.FG"

    const-string v20, "LM-Q617.FGN"

    const-string v21, "LM-Q710.FG"

    const-string v22, "LM-Q710.FGN"

    const-string v23, "LM-X220PM"

    const-string v24, "LM-X220QMA"

    const-string v25, "LM-X410PM"

    .line 1233
    filled-new-array/range {v5 .. v25}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1255
    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    :goto_0
    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 119
    :goto_1
    iput-boolean v1, v0, Lcom/bumptech/glide/load/resource/bitmap/q;->f:Z

    .line 120
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_2

    const/16 v1, 0x4e20

    .line 121
    iput v1, v0, Lcom/bumptech/glide/load/resource/bitmap/q;->g:I

    .line 122
    iput v3, v0, Lcom/bumptech/glide/load/resource/bitmap/q;->h:I

    return-void

    :cond_2
    const/16 v1, 0x2bc

    .line 124
    iput v1, v0, Lcom/bumptech/glide/load/resource/bitmap/q;->g:I

    const/16 v1, 0x80

    .line 125
    iput v1, v0, Lcom/bumptech/glide/load/resource/bitmap/q;->h:I

    return-void
.end method

.method public static a()Lcom/bumptech/glide/load/resource/bitmap/q;
    .locals 2

    .line 107
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/q;->d:Lcom/bumptech/glide/load/resource/bitmap/q;

    if-nez v0, :cond_1

    .line 108
    const-class v0, Lcom/bumptech/glide/load/resource/bitmap/q;

    monitor-enter v0

    .line 109
    :try_start_0
    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/q;->d:Lcom/bumptech/glide/load/resource/bitmap/q;

    if-nez v1, :cond_0

    .line 110
    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/q;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/q;-><init>()V

    sput-object v1, Lcom/bumptech/glide/load/resource/bitmap/q;->d:Lcom/bumptech/glide/load/resource/bitmap/q;

    .line 112
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 114
    :cond_1
    :goto_0
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/q;->d:Lcom/bumptech/glide/load/resource/bitmap/q;

    return-object v0
.end method

.method private b()Z
    .locals 1

    .line 203
    sget-boolean v0, Lcom/bumptech/glide/load/resource/bitmap/q;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/q;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 204
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static c()Z
    .locals 20

    .line 259
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    const-string v3, "SC-04J"

    const-string v4, "SM-N935"

    const-string v5, "SM-J720"

    const-string v6, "SM-G570F"

    const-string v7, "SM-G570M"

    const-string v8, "SM-G960"

    const-string v9, "SM-G965"

    const-string v10, "SM-G935"

    const-string v11, "SM-G930"

    const-string v12, "SM-A520"

    const-string v13, "SM-A720F"

    const-string v14, "moto e5"

    const-string v15, "moto e5 play"

    const-string v16, "moto e5 plus"

    const-string v17, "moto e5 cruise"

    const-string v18, "moto g(6) forge"

    const-string v19, "moto g(6) play"

    .line 266
    filled-new-array/range {v3 .. v19}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 286
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method private declared-synchronized d()Z
    .locals 8

    monitor-enter p0

    .line 300
    :try_start_0
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/q;->i:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/load/resource/bitmap/q;->i:I

    const/16 v2, 0x32

    if-lt v0, v2, :cond_2

    const/4 v0, 0x0

    .line 301
    iput v0, p0, Lcom/bumptech/glide/load/resource/bitmap/q;->i:I

    .line 302
    sget-object v2, Lcom/bumptech/glide/load/resource/bitmap/q;->c:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    .line 1294
    sget v3, Lcom/bumptech/glide/load/resource/bitmap/q;->e:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 1295
    sget v3, Lcom/bumptech/glide/load/resource/bitmap/q;->e:I

    goto :goto_0

    .line 1296
    :cond_0
    iget v3, p0, Lcom/bumptech/glide/load/resource/bitmap/q;->g:I

    :goto_0
    int-to-long v3, v3

    int-to-long v5, v2

    cmp-long v7, v5, v3

    if-gez v7, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 304
    :goto_1
    iput-boolean v1, p0, Lcom/bumptech/glide/load/resource/bitmap/q;->j:Z

    if-nez v1, :cond_2

    const-string v0, "Downsampler"

    const/4 v1, 0x5

    .line 306
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Downsampler"

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Excluding HARDWARE bitmap config because we\'re over the file descriptor limit, file descriptors "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", limit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_2
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/bitmap/q;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(IIZZ)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "HardwareConfig"

    if-nez p3, :cond_0

    .line 150
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    return v0

    .line 155
    :cond_0
    iget-boolean p3, p0, Lcom/bumptech/glide/load/resource/bitmap/q;->f:Z

    if-nez p3, :cond_1

    .line 156
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    return v0

    .line 161
    :cond_1
    sget-boolean p3, Lcom/bumptech/glide/load/resource/bitmap/q;->b:Z

    if-nez p3, :cond_2

    .line 162
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    return v0

    .line 167
    :cond_2
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/q;->b()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 168
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    return v0

    :cond_3
    if-eqz p4, :cond_4

    .line 174
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    return v0

    .line 179
    :cond_4
    iget p3, p0, Lcom/bumptech/glide/load/resource/bitmap/q;->h:I

    if-ge p1, p3, :cond_5

    .line 180
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    return v0

    :cond_5
    if-ge p2, p3, :cond_6

    .line 186
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    return v0

    .line 192
    :cond_6
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/q;->d()Z

    move-result p1

    if-nez p1, :cond_7

    .line 193
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    return v0

    :cond_7
    const/4 p1, 0x1

    return p1
.end method
