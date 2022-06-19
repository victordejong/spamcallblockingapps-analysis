.class final Landroidx/media2/session/n$40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/n$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/common/MediaItem;

.field final synthetic b:I

.field final synthetic c:J

.field final synthetic d:Landroidx/media2/session/n;


# direct methods
.method constructor <init>(Landroidx/media2/session/n;Landroidx/media2/common/MediaItem;IJ)V
    .locals 0

    .line 1195
    iput-object p1, p0, Landroidx/media2/session/n$40;->d:Landroidx/media2/session/n;

    iput-object p2, p0, Landroidx/media2/session/n$40;->a:Landroidx/media2/common/MediaItem;

    iput p3, p0, Landroidx/media2/session/n$40;->b:I

    iput-wide p4, p0, Landroidx/media2/session/n$40;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/session/MediaSession$a;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1198
    iget-object v2, p0, Landroidx/media2/session/n$40;->a:Landroidx/media2/common/MediaItem;

    iget v3, p0, Landroidx/media2/session/n$40;->b:I

    iget-wide v4, p0, Landroidx/media2/session/n$40;->c:J

    .line 1199
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-object v0, p0, Landroidx/media2/session/n$40;->d:Landroidx/media2/session/n;

    invoke-virtual {v0}, Landroidx/media2/session/n;->e()J

    move-result-wide v8

    move-object v0, p1

    move v1, p2

    .line 1198
    invoke-virtual/range {v0 .. v9}, Landroidx/media2/session/MediaSession$a;->a(ILandroidx/media2/common/MediaItem;IJJJ)V

    return-void
.end method
