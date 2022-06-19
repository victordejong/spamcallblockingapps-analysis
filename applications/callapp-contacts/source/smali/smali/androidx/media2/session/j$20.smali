.class final Landroidx/media2/session/j$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/j$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/j;->a(ILandroidx/versionedparcelable/ParcelImpl;IJJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/versionedparcelable/ParcelImpl;

.field final synthetic b:I

.field final synthetic c:J

.field final synthetic d:J

.field final synthetic e:J

.field final synthetic f:Landroidx/media2/session/j;


# direct methods
.method constructor <init>(Landroidx/media2/session/j;Landroidx/versionedparcelable/ParcelImpl;IJJJ)V
    .locals 0

    .line 130
    iput-object p1, p0, Landroidx/media2/session/j$20;->f:Landroidx/media2/session/j;

    iput-object p2, p0, Landroidx/media2/session/j$20;->a:Landroidx/versionedparcelable/ParcelImpl;

    iput p3, p0, Landroidx/media2/session/j$20;->b:I

    iput-wide p4, p0, Landroidx/media2/session/j$20;->c:J

    iput-wide p6, p0, Landroidx/media2/session/j$20;->d:J

    iput-wide p8, p0, Landroidx/media2/session/j$20;->e:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/session/h;)V
    .locals 9

    .line 133
    iget-object v0, p0, Landroidx/media2/session/j$20;->a:Landroidx/versionedparcelable/ParcelImpl;

    .line 1078
    invoke-static {v0}, Landroidx/versionedparcelable/a;->a(Landroid/os/Parcelable;)Landroidx/versionedparcelable/c;

    move-result-object v0

    .line 133
    check-cast v0, Landroidx/media2/common/MediaItem;

    if-nez v0, :cond_0

    const-string p1, "MediaControllerStub"

    const-string v0, "onBufferingStateChanged(): Ignoring null item"

    .line 135
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 138
    :cond_0
    iget v1, p0, Landroidx/media2/session/j$20;->b:I

    iget-wide v2, p0, Landroidx/media2/session/j$20;->c:J

    iget-wide v4, p0, Landroidx/media2/session/j$20;->d:J

    iget-wide v6, p0, Landroidx/media2/session/j$20;->e:J

    .line 1950
    iget-object v8, p1, Landroidx/media2/session/h;->d:Ljava/lang/Object;

    monitor-enter v8

    .line 1951
    :try_start_0
    iput v1, p1, Landroidx/media2/session/h;->w:I

    .line 1952
    iput-wide v2, p1, Landroidx/media2/session/h;->x:J

    .line 1953
    iput-wide v4, p1, Landroidx/media2/session/h;->p:J

    .line 1954
    iput-wide v6, p1, Landroidx/media2/session/h;->q:J

    .line 1955
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1956
    iget-object v2, p1, Landroidx/media2/session/h;->b:Landroidx/media2/session/MediaController;

    new-instance v3, Landroidx/media2/session/h$14;

    invoke-direct {v3, p1, v0, v1}, Landroidx/media2/session/h$14;-><init>(Landroidx/media2/session/h;Landroidx/media2/common/MediaItem;I)V

    invoke-virtual {v2, v3}, Landroidx/media2/session/MediaController;->b(Landroidx/media2/session/MediaController$b;)V

    return-void

    :catchall_0
    move-exception p1

    .line 1955
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
