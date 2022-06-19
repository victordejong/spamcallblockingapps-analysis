.class public Landroidx/media2/session/SessionResult;
.super Landroidx/versionedparcelable/CustomVersionedParcelable;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/t;


# instance fields
.field a:I

.field b:J

.field c:Landroid/os/Bundle;

.field d:Landroidx/media2/common/MediaItem;

.field e:Landroidx/media2/common/MediaItem;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V

    return-void
.end method

.method constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 114
    invoke-direct {p0, p1, v0}, Landroidx/media2/session/SessionResult;-><init>(ILandroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(ILandroid/os/Bundle;)V
    .locals 6

    .line 105
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroidx/media2/session/SessionResult;-><init>(ILandroid/os/Bundle;Landroidx/media2/common/MediaItem;J)V

    return-void
.end method

.method constructor <init>(ILandroid/os/Bundle;Landroidx/media2/common/MediaItem;)V
    .locals 6

    .line 118
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroidx/media2/session/SessionResult;-><init>(ILandroid/os/Bundle;Landroidx/media2/common/MediaItem;J)V

    return-void
.end method

.method constructor <init>(ILandroid/os/Bundle;Landroidx/media2/common/MediaItem;J)V
    .locals 0

    .line 122
    invoke-direct {p0}, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V

    .line 123
    iput p1, p0, Landroidx/media2/session/SessionResult;->a:I

    .line 124
    iput-object p2, p0, Landroidx/media2/session/SessionResult;->c:Landroid/os/Bundle;

    .line 125
    iput-object p3, p0, Landroidx/media2/session/SessionResult;->d:Landroidx/media2/common/MediaItem;

    .line 126
    iput-wide p4, p0, Landroidx/media2/session/SessionResult;->b:J

    return-void
.end method

.method static a(Landroidx/media2/common/SessionPlayer$b;)Landroidx/media2/session/SessionResult;
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 134
    :cond_0
    new-instance v6, Landroidx/media2/session/SessionResult;

    invoke-virtual {p0}, Landroidx/media2/common/SessionPlayer$b;->a()I

    move-result v1

    const/4 v2, 0x0

    .line 2621
    iget-object v3, p0, Landroidx/media2/common/SessionPlayer$b;->b:Landroidx/media2/common/MediaItem;

    .line 3607
    iget-wide v4, p0, Landroidx/media2/common/SessionPlayer$b;->a:J

    move-object v0, v6

    .line 135
    invoke-direct/range {v0 .. v5}, Landroidx/media2/session/SessionResult;-><init>(ILandroid/os/Bundle;Landroidx/media2/common/MediaItem;J)V

    return-object v6
.end method

.method static a(I)Lcom/google/common/util/concurrent/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 139
    invoke-static {}, Landroidx/c/a/b;->a()Landroidx/c/a/b;

    move-result-object v0

    .line 140
    new-instance v1, Landroidx/media2/session/SessionResult;

    invoke-direct {v1, p0}, Landroidx/media2/session/SessionResult;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/c/a/b;->a(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 168
    iget v0, p0, Landroidx/media2/session/SessionResult;->a:I

    return v0
.end method

.method public final a(Z)V
    .locals 1

    .line 226
    iget-object p1, p0, Landroidx/media2/session/SessionResult;->d:Landroidx/media2/common/MediaItem;

    if-eqz p1, :cond_1

    .line 227
    monitor-enter p1

    .line 228
    :try_start_0
    iget-object v0, p0, Landroidx/media2/session/SessionResult;->e:Landroidx/media2/common/MediaItem;

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Landroidx/media2/session/SessionResult;->d:Landroidx/media2/common/MediaItem;

    invoke-static {v0}, Landroidx/media2/session/s;->a(Landroidx/media2/common/MediaItem;)Landroidx/media2/common/MediaItem;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/session/SessionResult;->e:Landroidx/media2/common/MediaItem;

    .line 231
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    return-void
.end method

.method public final e()V
    .locals 1

    .line 241
    iget-object v0, p0, Landroidx/media2/session/SessionResult;->e:Landroidx/media2/common/MediaItem;

    iput-object v0, p0, Landroidx/media2/session/SessionResult;->d:Landroidx/media2/common/MediaItem;

    return-void
.end method
