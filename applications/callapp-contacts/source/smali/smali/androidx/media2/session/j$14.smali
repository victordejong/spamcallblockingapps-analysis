.class final Landroidx/media2/session/j$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/j$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/j;->h(ILandroidx/versionedparcelable/ParcelImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/versionedparcelable/ParcelImpl;

.field final synthetic b:I

.field final synthetic c:Landroidx/media2/session/j;


# direct methods
.method constructor <init>(Landroidx/media2/session/j;Landroidx/versionedparcelable/ParcelImpl;I)V
    .locals 0

    .line 446
    iput-object p1, p0, Landroidx/media2/session/j$14;->c:Landroidx/media2/session/j;

    iput-object p2, p0, Landroidx/media2/session/j$14;->a:Landroidx/versionedparcelable/ParcelImpl;

    iput p3, p0, Landroidx/media2/session/j$14;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/session/h;)V
    .locals 4

    .line 449
    iget-object v0, p0, Landroidx/media2/session/j$14;->a:Landroidx/versionedparcelable/ParcelImpl;

    .line 2078
    invoke-static {v0}, Landroidx/versionedparcelable/a;->a(Landroid/os/Parcelable;)Landroidx/versionedparcelable/c;

    move-result-object v0

    .line 449
    check-cast v0, Landroidx/media2/common/SessionPlayer$TrackInfo;

    if-nez v0, :cond_0

    const-string p1, "MediaControllerStub"

    const-string v0, "onTrackSelected(): Ignoring null track info"

    .line 451
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2148
    :cond_0
    iget-object v1, p1, Landroidx/media2/session/h;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 2149
    :try_start_0
    iget-object v2, p1, Landroidx/media2/session/h;->D:Landroid/util/SparseArray;

    .line 3126
    iget v3, v0, Landroidx/media2/common/SessionPlayer$TrackInfo;->b:I

    .line 2149
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 2150
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2151
    iget-object v1, p1, Landroidx/media2/session/h;->b:Landroidx/media2/session/MediaController;

    new-instance v2, Landroidx/media2/session/h$26;

    invoke-direct {v2, p1, v0}, Landroidx/media2/session/h$26;-><init>(Landroidx/media2/session/h;Landroidx/media2/common/SessionPlayer$TrackInfo;)V

    invoke-virtual {v1, v2}, Landroidx/media2/session/MediaController;->b(Landroidx/media2/session/MediaController$b;)V

    return-void

    :catchall_0
    move-exception p1

    .line 2150
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
