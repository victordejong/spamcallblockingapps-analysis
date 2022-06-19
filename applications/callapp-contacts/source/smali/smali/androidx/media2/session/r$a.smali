.class final Landroidx/media2/session/r$a;
.super Landroidx/media2/session/MediaSession$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/session/r;

.field private final b:Landroidx/media2/session/b;


# direct methods
.method constructor <init>(Landroidx/media2/session/r;Landroidx/media2/session/b;)V
    .locals 0

    .line 1181
    iput-object p1, p0, Landroidx/media2/session/r$a;->a:Landroidx/media2/session/r;

    invoke-direct {p0}, Landroidx/media2/session/MediaSession$a;-><init>()V

    .line 1182
    iput-object p2, p0, Landroidx/media2/session/r$a;->b:Landroidx/media2/session/b;

    return-void
.end method


# virtual methods
.method final a()Landroid/os/IBinder;
    .locals 1

    .line 1187
    iget-object v0, p0, Landroidx/media2/session/r$a;->b:Landroidx/media2/session/b;

    invoke-interface {v0}, Landroidx/media2/session/b;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method final a(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1311
    iget-object v0, p0, Landroidx/media2/session/r$a;->b:Landroidx/media2/session/b;

    invoke-interface {v0, p1}, Landroidx/media2/session/b;->a(I)V

    return-void
.end method

.method final a(IIIII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1298
    iget-object v0, p0, Landroidx/media2/session/r$a;->b:Landroidx/media2/session/b;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroidx/media2/session/b;->b(IIIII)V

    return-void
.end method

.method final a(IJJF)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1244
    iget-object v0, p0, Landroidx/media2/session/r$a;->b:Landroidx/media2/session/b;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-interface/range {v0 .. v6}, Landroidx/media2/session/b;->a(IJJF)V

    return-void
.end method

.method final a(IJJI)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1238
    iget-object v0, p0, Landroidx/media2/session/r$a;->b:Landroidx/media2/session/b;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-interface/range {v0 .. v6}, Landroidx/media2/session/b;->a(IJJI)V

    return-void
.end method

.method final a(IJJJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1257
    iget-object v0, p0, Landroidx/media2/session/r$a;->b:Landroidx/media2/session/b;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p6

    invoke-interface/range {v0 .. v7}, Landroidx/media2/session/b;->a(IJJJ)V

    return-void
.end method

.method final a(ILandroidx/media2/common/MediaItem;III)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1263
    iget-object v0, p0, Landroidx/media2/session/r$a;->b:Landroidx/media2/session/b;

    invoke-static {p2}, Landroidx/media2/common/MediaParcelUtils;->a(Landroidx/versionedparcelable/c;)Landroidx/versionedparcelable/ParcelImpl;

    move-result-object v2

    move v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroidx/media2/session/b;->a(ILandroidx/versionedparcelable/ParcelImpl;III)V

    return-void
.end method

.method final a(ILandroidx/media2/common/MediaItem;IJJJ)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    .line 1250
    iget-object v1, v0, Landroidx/media2/session/r$a;->b:Landroidx/media2/session/b;

    invoke-static {p2}, Landroidx/media2/common/MediaParcelUtils;->a(Landroidx/versionedparcelable/c;)Landroidx/versionedparcelable/ParcelImpl;

    move-result-object v3

    move v2, p1

    move v4, p3

    move-wide v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    invoke-interface/range {v1 .. v10}, Landroidx/media2/session/b;->a(ILandroidx/versionedparcelable/ParcelImpl;IJJJ)V

    return-void
.end method

.method final a(ILandroidx/media2/common/MediaItem;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SubtitleData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1370
    invoke-static {p2}, Landroidx/media2/common/MediaParcelUtils;->a(Landroidx/versionedparcelable/c;)Landroidx/versionedparcelable/ParcelImpl;

    move-result-object p2

    .line 1371
    invoke-static {p3}, Landroidx/media2/common/MediaParcelUtils;->a(Landroidx/versionedparcelable/c;)Landroidx/versionedparcelable/ParcelImpl;

    move-result-object p3

    .line 1372
    invoke-static {p4}, Landroidx/media2/common/MediaParcelUtils;->a(Landroidx/versionedparcelable/c;)Landroidx/versionedparcelable/ParcelImpl;

    move-result-object p4

    .line 1373
    iget-object v0, p0, Landroidx/media2/session/r$a;->b:Landroidx/media2/session/b;

    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/media2/session/b;->a(ILandroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;)V

    return-void
.end method

.method final a(ILandroidx/media2/common/MediaMetadata;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1286
    iget-object v0, p0, Landroidx/media2/session/r$a;->a:Landroidx/media2/session/r;

    iget-object v0, v0, Landroidx/media2/session/r;->c:Landroidx/media2/session/a;

    .line 1287
    invoke-virtual {p0}, Landroidx/media2/session/r$a;->a()Landroid/os/IBinder;

    move-result-object v1

    .line 1286
    invoke-virtual {v0, v1}, Landroidx/media2/session/a;->b(Ljava/lang/Object;)Landroidx/media2/session/MediaSession$b;

    move-result-object v0

    .line 1288
    iget-object v1, p0, Landroidx/media2/session/r$a;->a:Landroidx/media2/session/r;

    iget-object v1, v1, Landroidx/media2/session/r;->c:Landroidx/media2/session/a;

    const/16 v2, 0x271c

    invoke-virtual {v1, v0, v2}, Landroidx/media2/session/a;->a(Landroidx/media2/session/MediaSession$b;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1290
    iget-object v0, p0, Landroidx/media2/session/r$a;->b:Landroidx/media2/session/b;

    .line 1291
    invoke-static {p2}, Landroidx/media2/common/MediaParcelUtils;->a(Landroidx/versionedparcelable/c;)Landroidx/versionedparcelable/ParcelImpl;

    move-result-object p2

    .line 1290
    invoke-interface {v0, p1, p2}, Landroidx/media2/session/b;->a(ILandroidx/versionedparcelable/ParcelImpl;)V

    :cond_0
    return-void
.end method

.method final a(ILandroidx/media2/common/SessionPlayer$TrackInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1358
    iget-object v0, p0, Landroidx/media2/session/r$a;->b:Landroidx/media2/session/b;

    invoke-static {p2}, Landroidx/media2/common/MediaParcelUtils;->a(Landroidx/versionedparcelable/c;)Landroidx/versionedparcelable/ParcelImpl;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroidx/media2/session/b;->g(ILandroidx/versionedparcelable/ParcelImpl;)V

    return-void
.end method

.method final a(ILandroidx/media2/common/SessionPlayer$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1192
    invoke-static {p2}, Landroidx/media2/session/SessionResult;->a(Landroidx/media2/common/SessionPlayer$b;)Landroidx/media2/session/SessionResult;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroidx/media2/session/r$a;->a(ILandroidx/media2/session/SessionResult;)V

    return-void
.end method

.method final a(ILandroidx/media2/common/VideoSize;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1335
    invoke-static {p2}, Landroidx/media2/common/MediaParcelUtils;->a(Landroidx/versionedparcelable/c;)Landroidx/versionedparcelable/ParcelImpl;

    move-result-object p2

    .line 1338
    new-instance v0, Landroidx/media2/common/MediaItem$a;

    invoke-direct {v0}, Landroidx/media2/common/MediaItem$a;-><init>()V

    invoke-virtual {v0}, Landroidx/media2/common/MediaItem$a;->a()Landroidx/media2/common/MediaItem;

    move-result-object v0

    .line 1339
    iget-object v1, p0, Landroidx/media2/session/r$a;->b:Landroidx/media2/session/b;

    invoke-static {v0}, Landroidx/media2/common/MediaParcelUtils;->a(Landroidx/versionedparcelable/c;)Landroidx/versionedparcelable/ParcelImpl;

    move-result-object v0

    invoke-interface {v1, p1, v0, p2}, Landroidx/media2/session/b;->a(ILandroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;)V

    return-void
.end method

.method final a(ILandroidx/media2/session/LibraryResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1206
    new-instance p2, Landroidx/media2/session/LibraryResult;

    const/4 v0, -0x1

    invoke-direct {p2, v0}, Landroidx/media2/session/LibraryResult;-><init>(I)V

    .line 1208
    :cond_0
    iget-object v0, p0, Landroidx/media2/session/r$a;->b:Landroidx/media2/session/b;

    invoke-static {p2}, Landroidx/media2/common/MediaParcelUtils;->a(Landroidx/versionedparcelable/c;)Landroidx/versionedparcelable/ParcelImpl;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroidx/media2/session/b;->f(ILandroidx/versionedparcelable/ParcelImpl;)V

    return-void
.end method

.method final a(ILandroidx/media2/session/MediaController$PlaybackInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1219
    iget-object v0, p0, Landroidx/media2/session/r$a;->b:Landroidx/media2/session/b;

    invoke-static {p2}, Landroidx/media2/common/MediaParcelUtils;->a(Landroidx/versionedparcelable/c;)Landroidx/versionedparcelable/ParcelImpl;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroidx/media2/session/b;->b(ILandroidx/versionedparcelable/ParcelImpl;)V

    return-void
.end method

.method final a(ILandroidx/media2/session/SessionResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1198
    new-instance p2, Landroidx/media2/session/SessionResult;

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Landroidx/media2/session/SessionResult;-><init>(ILandroid/os/Bundle;)V

    .line 1200
    :cond_0
    iget-object v0, p0, Landroidx/media2/session/r$a;->b:Landroidx/media2/session/b;

    invoke-static {p2}, Landroidx/media2/common/MediaParcelUtils;->a(Landroidx/versionedparcelable/c;)Landroidx/versionedparcelable/ParcelImpl;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroidx/media2/session/b;->e(ILandroidx/versionedparcelable/ParcelImpl;)V

    return-void
.end method

.method final a(ILjava/util/List;Landroidx/media2/common/MediaMetadata;III)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/media2/common/MediaItem;",
            ">;",
            "Landroidx/media2/common/MediaMetadata;",
            "III)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1270
    iget-object v0, p0, Landroidx/media2/session/r$a;->a:Landroidx/media2/session/r;

    iget-object v0, v0, Landroidx/media2/session/r;->c:Landroidx/media2/session/a;

    .line 1271
    invoke-virtual {p0}, Landroidx/media2/session/r$a;->a()Landroid/os/IBinder;

    move-result-object v1

    .line 1270
    invoke-virtual {v0, v1}, Landroidx/media2/session/a;->b(Ljava/lang/Object;)Landroidx/media2/session/MediaSession$b;

    move-result-object v0

    .line 1272
    iget-object v1, p0, Landroidx/media2/session/r$a;->a:Landroidx/media2/session/r;

    iget-object v1, v1, Landroidx/media2/session/r;->c:Landroidx/media2/session/a;

    const/16 v2, 0x2715

    invoke-virtual {v1, v0, v2}, Landroidx/media2/session/a;->a(Landroidx/media2/session/MediaSession$b;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1274
    iget-object v2, p0, Landroidx/media2/session/r$a;->b:Landroidx/media2/session/b;

    .line 1275
    invoke-static {p2}, Landroidx/media2/session/s;->f(Ljava/util/List;)Landroidx/media2/common/ParcelImplListSlice;

    move-result-object v4

    .line 1276
    invoke-static {p3}, Landroidx/media2/common/MediaParcelUtils;->a(Landroidx/versionedparcelable/c;)Landroidx/versionedparcelable/ParcelImpl;

    move-result-object v5

    move v3, p1

    move v6, p4

    move v7, p5

    move v8, p6

    .line 1274
    invoke-interface/range {v2 .. v8}, Landroidx/media2/session/b;->a(ILandroidx/media2/common/ParcelImplListSlice;Landroidx/versionedparcelable/ParcelImpl;III)V

    return-void

    .line 1277
    :cond_0
    iget-object p2, p0, Landroidx/media2/session/r$a;->a:Landroidx/media2/session/r;

    iget-object p2, p2, Landroidx/media2/session/r;->c:Landroidx/media2/session/a;

    const/16 p4, 0x271c

    invoke-virtual {p2, v0, p4}, Landroidx/media2/session/a;->a(Landroidx/media2/session/MediaSession$b;I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1279
    iget-object p2, p0, Landroidx/media2/session/r$a;->b:Landroidx/media2/session/b;

    .line 1280
    invoke-static {p3}, Landroidx/media2/common/MediaParcelUtils;->a(Landroidx/versionedparcelable/c;)Landroidx/versionedparcelable/ParcelImpl;

    move-result-object p3

    .line 1279
    invoke-interface {p2, p1, p3}, Landroidx/media2/session/b;->a(ILandroidx/versionedparcelable/ParcelImpl;)V

    :cond_1
    return-void
.end method

.method final a(ILjava/util/List;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SessionPlayer$TrackInfo;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ">;",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2065
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 2066
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2067
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/versionedparcelable/c;

    invoke-static {v1}, Landroidx/media2/common/MediaParcelUtils;->a(Landroidx/versionedparcelable/c;)Landroidx/versionedparcelable/ParcelImpl;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1349
    :cond_0
    iget-object v0, p0, Landroidx/media2/session/r$a;->b:Landroidx/media2/session/b;

    .line 1350
    invoke-static {p3}, Landroidx/media2/common/MediaParcelUtils;->a(Landroidx/versionedparcelable/c;)Landroidx/versionedparcelable/ParcelImpl;

    move-result-object v3

    .line 1351
    invoke-static {p4}, Landroidx/media2/common/MediaParcelUtils;->a(Landroidx/versionedparcelable/c;)Landroidx/versionedparcelable/ParcelImpl;

    move-result-object v4

    .line 1352
    invoke-static {p5}, Landroidx/media2/common/MediaParcelUtils;->a(Landroidx/versionedparcelable/c;)Landroidx/versionedparcelable/ParcelImpl;

    move-result-object v5

    .line 1353
    invoke-static {p6}, Landroidx/media2/common/MediaParcelUtils;->a(Landroidx/versionedparcelable/c;)Landroidx/versionedparcelable/ParcelImpl;

    move-result-object v6

    move v1, p1

    .line 1349
    invoke-interface/range {v0 .. v6}, Landroidx/media2/session/b;->a(ILjava/util/List;Landroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;)V

    return-void
.end method

.method final b(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1330
    iget-object v0, p0, Landroidx/media2/session/r$a;->b:Landroidx/media2/session/b;

    invoke-interface {v0, p1}, Landroidx/media2/session/b;->b(I)V

    return-void
.end method

.method final b(IIIII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1305
    iget-object v0, p0, Landroidx/media2/session/r$a;->b:Landroidx/media2/session/b;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroidx/media2/session/b;->a(IIIII)V

    return-void
.end method

.method final b(ILandroidx/media2/common/SessionPlayer$TrackInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1363
    iget-object v0, p0, Landroidx/media2/session/r$a;->b:Landroidx/media2/session/b;

    invoke-static {p2}, Landroidx/media2/common/MediaParcelUtils;->a(Landroidx/versionedparcelable/c;)Landroidx/versionedparcelable/ParcelImpl;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroidx/media2/session/b;->h(ILandroidx/versionedparcelable/ParcelImpl;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 1386
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroidx/media2/session/r$a;

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 1389
    :cond_1
    check-cast p1, Landroidx/media2/session/r$a;

    .line 1390
    invoke-virtual {p0}, Landroidx/media2/session/r$a;->a()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/media2/session/r$a;->a()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/core/e/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1378
    invoke-virtual {p0}, Landroidx/media2/session/r$a;->a()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Landroidx/core/e/a;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
