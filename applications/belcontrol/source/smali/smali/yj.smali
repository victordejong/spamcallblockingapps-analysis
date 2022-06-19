.class public final Lyj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ldk;


# static fields
.field public static final j:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lak;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-string v0, "androidx.media2.exoplayer.external.ext.flac.FlacExtractor"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lak;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error instantiating FLAC extension"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Lyj;->j:Ljava/lang/reflect/Constructor;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lyj;->h:I

    return-void
.end method


# virtual methods
.method public declared-synchronized a(I)Lyj;
    .locals 0

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lyj;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized createExtractors()[Lak;
    .locals 11

    monitor-enter p0

    :try_start_0
    sget-object v0, Lyj;->j:Ljava/lang/reflect/Constructor;

    const/16 v1, 0xd

    if-nez v0, :cond_0

    const/16 v2, 0xd

    goto :goto_0

    :cond_0
    const/16 v2, 0xe

    :goto_0
    new-array v2, v2, [Lak;

    new-instance v3, Lxk;

    iget v4, p0, Lyj;->d:I

    invoke-direct {v3, v4}, Lxk;-><init>(I)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lml;

    iget v5, p0, Lyj;->f:I

    invoke-direct {v3, v5}, Lml;-><init>(I)V

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v3, 0x2

    new-instance v6, Lpl;

    iget v7, p0, Lyj;->e:I

    invoke-direct {v6, v7}, Lpl;-><init>(I)V

    aput-object v6, v2, v3

    const/4 v3, 0x3

    new-instance v6, Lel;

    iget v7, p0, Lyj;->g:I

    iget-boolean v8, p0, Lyj;->a:Z

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    or-int/2addr v7, v8

    invoke-direct {v6, v7}, Lel;-><init>(I)V

    aput-object v6, v2, v3

    const/4 v3, 0x4

    new-instance v6, Lpm;

    const-wide/16 v7, 0x0

    iget v9, p0, Lyj;->b:I

    iget-boolean v10, p0, Lyj;->a:Z

    if-eqz v10, :cond_2

    const/4 v10, 0x1

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    :goto_2
    or-int/2addr v9, v10

    invoke-direct {v6, v7, v8, v9}, Lpm;-><init>(JI)V

    aput-object v6, v2, v3

    const/4 v3, 0x5

    new-instance v6, Ljm;

    invoke-direct {v6}, Ljm;-><init>()V

    aput-object v6, v2, v3

    const/4 v3, 0x6

    new-instance v6, Lon;

    iget v7, p0, Lyj;->h:I

    iget v8, p0, Lyj;->i:I

    invoke-direct {v6, v7, v8}, Lon;-><init>(II)V

    aput-object v6, v2, v3

    const/4 v3, 0x7

    new-instance v6, Lpk;

    invoke-direct {v6}, Lpk;-><init>()V

    aput-object v6, v2, v3

    const/16 v3, 0x8

    new-instance v6, Lzl;

    invoke-direct {v6}, Lzl;-><init>()V

    aput-object v6, v2, v3

    const/16 v3, 0x9

    new-instance v6, Lgn;

    invoke-direct {v6}, Lgn;-><init>()V

    aput-object v6, v2, v3

    const/16 v3, 0xa

    new-instance v6, Ltn;

    invoke-direct {v6}, Ltn;-><init>()V

    aput-object v6, v2, v3

    const/16 v3, 0xb

    new-instance v6, Lmk;

    iget v7, p0, Lyj;->c:I

    iget-boolean v8, p0, Lyj;->a:Z

    if-eqz v8, :cond_3

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :goto_3
    or-int/2addr v5, v7

    invoke-direct {v6, v5}, Lmk;-><init>(I)V

    aput-object v6, v2, v3

    const/16 v3, 0xc

    new-instance v5, Lmm;

    invoke-direct {v5}, Lmm;-><init>()V

    aput-object v5, v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    :try_start_1
    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lak;

    aput-object v0, v2, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected error creating FLAC extractor"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    :goto_4
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
