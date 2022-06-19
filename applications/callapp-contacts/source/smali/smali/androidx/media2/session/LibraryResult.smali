.class public Landroidx/media2/session/LibraryResult;
.super Landroidx/versionedparcelable/CustomVersionedParcelable;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/t;


# instance fields
.field a:I

.field b:J

.field c:Landroidx/media2/common/MediaItem;

.field d:Landroidx/media2/common/MediaItem;

.field e:Landroidx/media2/session/MediaLibraryService$LibraryParams;

.field f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/common/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field g:Landroidx/media2/common/ParcelImplListSlice;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 104
    invoke-direct {p0, p1, v0, v0, v0}, Landroidx/media2/session/LibraryResult;-><init>(ILandroidx/media2/common/MediaItem;Ljava/util/List;Landroidx/media2/session/MediaLibraryService$LibraryParams;)V

    return-void
.end method

.method public constructor <init>(ILandroidx/media2/common/MediaItem;Landroidx/media2/session/MediaLibraryService$LibraryParams;)V
    .locals 1

    const/4 v0, 0x0

    .line 116
    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/media2/session/LibraryResult;-><init>(ILandroidx/media2/common/MediaItem;Ljava/util/List;Landroidx/media2/session/MediaLibraryService$LibraryParams;)V

    return-void
.end method

.method private constructor <init>(ILandroidx/media2/common/MediaItem;Ljava/util/List;Landroidx/media2/session/MediaLibraryService$LibraryParams;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media2/common/MediaItem;",
            "Ljava/util/List<",
            "Landroidx/media2/common/MediaItem;",
            ">;",
            "Landroidx/media2/session/MediaLibraryService$LibraryParams;",
            ")V"
        }
    .end annotation

    .line 132
    invoke-direct {p0}, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V

    .line 133
    iput p1, p0, Landroidx/media2/session/LibraryResult;->a:I

    .line 134
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/session/LibraryResult;->b:J

    .line 135
    iput-object p2, p0, Landroidx/media2/session/LibraryResult;->c:Landroidx/media2/common/MediaItem;

    .line 136
    iput-object p3, p0, Landroidx/media2/session/LibraryResult;->f:Ljava/util/List;

    .line 137
    iput-object p4, p0, Landroidx/media2/session/LibraryResult;->e:Landroidx/media2/session/MediaLibraryService$LibraryParams;

    return-void
.end method

.method public constructor <init>(ILjava/util/List;Landroidx/media2/session/MediaLibraryService$LibraryParams;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/media2/common/MediaItem;",
            ">;",
            "Landroidx/media2/session/MediaLibraryService$LibraryParams;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 128
    invoke-direct {p0, p1, v0, p2, p3}, Landroidx/media2/session/LibraryResult;-><init>(ILandroidx/media2/common/MediaItem;Ljava/util/List;Landroidx/media2/session/MediaLibraryService$LibraryParams;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 170
    iget v0, p0, Landroidx/media2/session/LibraryResult;->a:I

    return v0
.end method

.method public final a(Z)V
    .locals 1

    .line 231
    iget-object p1, p0, Landroidx/media2/session/LibraryResult;->c:Landroidx/media2/common/MediaItem;

    if-eqz p1, :cond_1

    .line 232
    monitor-enter p1

    .line 233
    :try_start_0
    iget-object v0, p0, Landroidx/media2/session/LibraryResult;->d:Landroidx/media2/common/MediaItem;

    if-nez v0, :cond_0

    .line 234
    iget-object v0, p0, Landroidx/media2/session/LibraryResult;->c:Landroidx/media2/common/MediaItem;

    invoke-static {v0}, Landroidx/media2/session/s;->a(Landroidx/media2/common/MediaItem;)Landroidx/media2/common/MediaItem;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/session/LibraryResult;->d:Landroidx/media2/common/MediaItem;

    .line 236
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 238
    :cond_1
    :goto_0
    iget-object p1, p0, Landroidx/media2/session/LibraryResult;->f:Ljava/util/List;

    if-eqz p1, :cond_3

    .line 239
    monitor-enter p1

    .line 240
    :try_start_1
    iget-object v0, p0, Landroidx/media2/session/LibraryResult;->g:Landroidx/media2/common/ParcelImplListSlice;

    if-nez v0, :cond_2

    .line 241
    iget-object v0, p0, Landroidx/media2/session/LibraryResult;->f:Ljava/util/List;

    invoke-static {v0}, Landroidx/media2/session/s;->f(Ljava/util/List;)Landroidx/media2/common/ParcelImplListSlice;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/session/LibraryResult;->g:Landroidx/media2/common/ParcelImplListSlice;

    .line 244
    :cond_2
    monitor-exit p1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_3
    return-void
.end method

.method public final e()V
    .locals 1

    .line 254
    iget-object v0, p0, Landroidx/media2/session/LibraryResult;->d:Landroidx/media2/common/MediaItem;

    iput-object v0, p0, Landroidx/media2/session/LibraryResult;->c:Landroidx/media2/common/MediaItem;

    .line 255
    iget-object v0, p0, Landroidx/media2/session/LibraryResult;->g:Landroidx/media2/common/ParcelImplListSlice;

    invoke-static {v0}, Landroidx/media2/session/s;->a(Landroidx/media2/common/ParcelImplListSlice;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/session/LibraryResult;->f:Ljava/util/List;

    return-void
.end method
