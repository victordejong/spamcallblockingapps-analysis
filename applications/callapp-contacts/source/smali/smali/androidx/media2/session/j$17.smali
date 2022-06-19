.class final Landroidx/media2/session/j$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/j$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/j;->a(ILandroidx/versionedparcelable/ParcelImpl;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/versionedparcelable/ParcelImpl;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Landroidx/media2/session/j;


# direct methods
.method constructor <init>(Landroidx/media2/session/j;Landroidx/versionedparcelable/ParcelImpl;III)V
    .locals 0

    .line 92
    iput-object p1, p0, Landroidx/media2/session/j$17;->e:Landroidx/media2/session/j;

    iput-object p2, p0, Landroidx/media2/session/j$17;->a:Landroidx/versionedparcelable/ParcelImpl;

    iput p3, p0, Landroidx/media2/session/j$17;->b:I

    iput p4, p0, Landroidx/media2/session/j$17;->c:I

    iput p5, p0, Landroidx/media2/session/j$17;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/session/h;)V
    .locals 5

    .line 95
    iget-object v0, p0, Landroidx/media2/session/j$17;->a:Landroidx/versionedparcelable/ParcelImpl;

    .line 1078
    invoke-static {v0}, Landroidx/versionedparcelable/a;->a(Landroid/os/Parcelable;)Landroidx/versionedparcelable/c;

    move-result-object v0

    .line 96
    check-cast v0, Landroidx/media2/common/MediaItem;

    iget v1, p0, Landroidx/media2/session/j$17;->b:I

    iget v2, p0, Landroidx/media2/session/j$17;->c:I

    iget v3, p0, Landroidx/media2/session/j$17;->d:I

    .line 1889
    iget-object v4, p1, Landroidx/media2/session/h;->d:Ljava/lang/Object;

    monitor-enter v4

    .line 1890
    :try_start_0
    iput-object v0, p1, Landroidx/media2/session/h;->s:Landroidx/media2/common/MediaItem;

    .line 1891
    iput v1, p1, Landroidx/media2/session/h;->t:I

    .line 1892
    iput v2, p1, Landroidx/media2/session/h;->u:I

    .line 1893
    iput v3, p1, Landroidx/media2/session/h;->v:I

    .line 1894
    iget-object v2, p1, Landroidx/media2/session/h;->k:Ljava/util/List;

    if-eqz v2, :cond_0

    if-ltz v1, :cond_0

    iget-object v2, p1, Landroidx/media2/session/h;->k:Ljava/util/List;

    .line 1895
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1896
    iget-object v2, p1, Landroidx/media2/session/h;->k:Ljava/util/List;

    invoke-interface {v2, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1900
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p1, Landroidx/media2/session/h;->p:J

    const-wide/16 v1, 0x0

    .line 1901
    iput-wide v1, p1, Landroidx/media2/session/h;->q:J

    .line 1902
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1903
    iget-object v1, p1, Landroidx/media2/session/h;->b:Landroidx/media2/session/MediaController;

    new-instance v2, Landroidx/media2/session/h$11;

    invoke-direct {v2, p1, v0}, Landroidx/media2/session/h$11;-><init>(Landroidx/media2/session/h;Landroidx/media2/common/MediaItem;)V

    invoke-virtual {v1, v2}, Landroidx/media2/session/MediaController;->b(Landroidx/media2/session/MediaController$b;)V

    return-void

    :catchall_0
    move-exception p1

    .line 1902
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
