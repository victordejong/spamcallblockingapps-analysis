.class final Landroidx/media2/session/j$21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/j$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/j;->a(ILandroidx/media2/common/ParcelImplListSlice;Landroidx/versionedparcelable/ParcelImpl;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/common/ParcelImplListSlice;

.field final synthetic b:Landroidx/versionedparcelable/ParcelImpl;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:Landroidx/media2/session/j;


# direct methods
.method constructor <init>(Landroidx/media2/session/j;Landroidx/media2/common/ParcelImplListSlice;Landroidx/versionedparcelable/ParcelImpl;III)V
    .locals 0

    .line 151
    iput-object p1, p0, Landroidx/media2/session/j$21;->f:Landroidx/media2/session/j;

    iput-object p2, p0, Landroidx/media2/session/j$21;->a:Landroidx/media2/common/ParcelImplListSlice;

    iput-object p3, p0, Landroidx/media2/session/j$21;->b:Landroidx/versionedparcelable/ParcelImpl;

    iput p4, p0, Landroidx/media2/session/j$21;->c:I

    iput p5, p0, Landroidx/media2/session/j$21;->d:I

    iput p6, p0, Landroidx/media2/session/j$21;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/session/h;)V
    .locals 6

    .line 154
    iget-object v0, p0, Landroidx/media2/session/j$21;->a:Landroidx/media2/common/ParcelImplListSlice;

    .line 155
    invoke-static {v0}, Landroidx/media2/session/s;->a(Landroidx/media2/common/ParcelImplListSlice;)Ljava/util/List;

    move-result-object v0

    .line 156
    iget-object v1, p0, Landroidx/media2/session/j$21;->b:Landroidx/versionedparcelable/ParcelImpl;

    .line 1078
    invoke-static {v1}, Landroidx/versionedparcelable/a;->a(Landroid/os/Parcelable;)Landroidx/versionedparcelable/c;

    move-result-object v1

    .line 157
    check-cast v1, Landroidx/media2/common/MediaMetadata;

    iget v2, p0, Landroidx/media2/session/j$21;->c:I

    iget v3, p0, Landroidx/media2/session/j$21;->d:I

    iget v4, p0, Landroidx/media2/session/j$21;->e:I

    .line 1969
    iget-object v5, p1, Landroidx/media2/session/h;->d:Ljava/lang/Object;

    monitor-enter v5

    .line 1970
    :try_start_0
    iput-object v0, p1, Landroidx/media2/session/h;->k:Ljava/util/List;

    .line 1971
    iput-object v1, p1, Landroidx/media2/session/h;->l:Landroidx/media2/common/MediaMetadata;

    .line 1972
    iput v2, p1, Landroidx/media2/session/h;->t:I

    .line 1973
    iput v3, p1, Landroidx/media2/session/h;->u:I

    .line 1974
    iput v4, p1, Landroidx/media2/session/h;->v:I

    if-ltz v2, :cond_0

    if-eqz v0, :cond_0

    .line 1976
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1977
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/common/MediaItem;

    iput-object v2, p1, Landroidx/media2/session/h;->s:Landroidx/media2/common/MediaItem;

    .line 1979
    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1980
    iget-object v2, p1, Landroidx/media2/session/h;->b:Landroidx/media2/session/MediaController;

    new-instance v3, Landroidx/media2/session/h$15;

    invoke-direct {v3, p1, v0, v1}, Landroidx/media2/session/h$15;-><init>(Landroidx/media2/session/h;Ljava/util/List;Landroidx/media2/common/MediaMetadata;)V

    invoke-virtual {v2, v3}, Landroidx/media2/session/MediaController;->b(Landroidx/media2/session/MediaController$b;)V

    return-void

    :catchall_0
    move-exception p1

    .line 1979
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
