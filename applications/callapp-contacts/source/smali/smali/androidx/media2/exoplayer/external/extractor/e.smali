.class public final Landroidx/media2/exoplayer/external/extractor/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/j;


# static fields
.field private static final a:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Landroidx/media2/exoplayer/external/extractor/g;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Z

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-string v0, "androidx.media2.exoplayer.external.ext.flac.FlacExtractor"

    .line 70
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroidx/media2/exoplayer/external/extractor/g;

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 78
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error instantiating FLAC extension"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    const/4 v0, 0x0

    .line 80
    :goto_0
    sput-object v0, Landroidx/media2/exoplayer/external/extractor/e;->a:Ljava/lang/reflect/Constructor;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 94
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/e;->i:I

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Landroidx/media2/exoplayer/external/extractor/e;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 123
    :try_start_0
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/e;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()[Landroidx/media2/exoplayer/external/extractor/g;
    .locals 9

    monitor-enter p0

    .line 217
    :try_start_0
    sget-object v0, Landroidx/media2/exoplayer/external/extractor/e;->a:Ljava/lang/reflect/Constructor;

    const/16 v1, 0xd

    if-nez v0, :cond_0

    const/16 v2, 0xd

    goto :goto_0

    :cond_0
    const/16 v2, 0xe

    :goto_0
    new-array v2, v2, [Landroidx/media2/exoplayer/external/extractor/g;

    .line 218
    new-instance v3, Landroidx/media2/exoplayer/external/extractor/b/d;

    iget v4, p0, Landroidx/media2/exoplayer/external/extractor/e;->e:I

    invoke-direct {v3, v4}, Landroidx/media2/exoplayer/external/extractor/b/d;-><init>(I)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 219
    new-instance v3, Landroidx/media2/exoplayer/external/extractor/mp4/e;

    iget v5, p0, Landroidx/media2/exoplayer/external/extractor/e;->g:I

    invoke-direct {v3, v5}, Landroidx/media2/exoplayer/external/extractor/mp4/e;-><init>(I)V

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v3, 0x2

    .line 220
    new-instance v6, Landroidx/media2/exoplayer/external/extractor/mp4/h;

    iget v7, p0, Landroidx/media2/exoplayer/external/extractor/e;->f:I

    invoke-direct {v6, v7}, Landroidx/media2/exoplayer/external/extractor/mp4/h;-><init>(I)V

    aput-object v6, v2, v3

    const/4 v3, 0x3

    .line 221
    new-instance v6, Landroidx/media2/exoplayer/external/extractor/c/c;

    iget v7, p0, Landroidx/media2/exoplayer/external/extractor/e;->h:I

    .line 224
    iget-boolean v8, p0, Landroidx/media2/exoplayer/external/extractor/e;->b:Z

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    or-int/2addr v7, v8

    .line 226
    invoke-direct {v6, v7}, Landroidx/media2/exoplayer/external/extractor/c/c;-><init>(I)V

    aput-object v6, v2, v3

    const/4 v3, 0x4

    .line 227
    new-instance v6, Landroidx/media2/exoplayer/external/extractor/e/g;

    iget v7, p0, Landroidx/media2/exoplayer/external/extractor/e;->c:I

    .line 230
    iget-boolean v8, p0, Landroidx/media2/exoplayer/external/extractor/e;->b:Z

    if-eqz v8, :cond_2

    const/4 v8, 0x1

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    :goto_2
    or-int/2addr v7, v8

    .line 232
    invoke-direct {v6, v7}, Landroidx/media2/exoplayer/external/extractor/e/g;-><init>(I)V

    aput-object v6, v2, v3

    const/4 v3, 0x5

    .line 233
    new-instance v6, Landroidx/media2/exoplayer/external/extractor/e/a;

    invoke-direct {v6}, Landroidx/media2/exoplayer/external/extractor/e/a;-><init>()V

    aput-object v6, v2, v3

    const/4 v3, 0x6

    .line 234
    new-instance v6, Landroidx/media2/exoplayer/external/extractor/e/af;

    iget v7, p0, Landroidx/media2/exoplayer/external/extractor/e;->i:I

    iget v8, p0, Landroidx/media2/exoplayer/external/extractor/e;->j:I

    invoke-direct {v6, v7, v8}, Landroidx/media2/exoplayer/external/extractor/e/af;-><init>(II)V

    aput-object v6, v2, v3

    const/4 v3, 0x7

    .line 235
    new-instance v6, Landroidx/media2/exoplayer/external/extractor/flv/b;

    invoke-direct {v6}, Landroidx/media2/exoplayer/external/extractor/flv/b;-><init>()V

    aput-object v6, v2, v3

    const/16 v3, 0x8

    .line 236
    new-instance v6, Landroidx/media2/exoplayer/external/extractor/d/c;

    invoke-direct {v6}, Landroidx/media2/exoplayer/external/extractor/d/c;-><init>()V

    aput-object v6, v2, v3

    const/16 v3, 0x9

    .line 237
    new-instance v6, Landroidx/media2/exoplayer/external/extractor/e/x;

    invoke-direct {v6}, Landroidx/media2/exoplayer/external/extractor/e/x;-><init>()V

    aput-object v6, v2, v3

    const/16 v3, 0xa

    .line 238
    new-instance v6, Landroidx/media2/exoplayer/external/extractor/f/a;

    invoke-direct {v6}, Landroidx/media2/exoplayer/external/extractor/f/a;-><init>()V

    aput-object v6, v2, v3

    const/16 v3, 0xb

    .line 239
    new-instance v6, Landroidx/media2/exoplayer/external/extractor/a/a;

    iget v7, p0, Landroidx/media2/exoplayer/external/extractor/e;->d:I

    .line 242
    iget-boolean v8, p0, Landroidx/media2/exoplayer/external/extractor/e;->b:Z

    if-eqz v8, :cond_3

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :goto_3
    or-int/2addr v5, v7

    .line 244
    invoke-direct {v6, v5}, Landroidx/media2/exoplayer/external/extractor/a/a;-><init>(I)V

    aput-object v6, v2, v3

    const/16 v3, 0xc

    .line 245
    new-instance v5, Landroidx/media2/exoplayer/external/extractor/e/d;

    invoke-direct {v5}, Landroidx/media2/exoplayer/external/extractor/e/d;-><init>()V

    aput-object v5, v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    :try_start_1
    new-array v3, v4, [Ljava/lang/Object;

    .line 248
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/extractor/g;

    aput-object v0, v2, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 251
    :try_start_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected error creating FLAC extractor"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 254
    :cond_4
    :goto_4
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
