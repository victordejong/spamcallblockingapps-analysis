.class final Landroidx/media2/session/n$d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/n$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/n$d;->a(Landroidx/media2/common/MediaItem;Landroidx/media2/common/MediaMetadata;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Landroidx/media2/session/n;

.field final synthetic c:Landroidx/media2/session/n$d;


# direct methods
.method constructor <init>(Landroidx/media2/session/n$d;Ljava/util/List;Landroidx/media2/session/n;)V
    .locals 0

    .line 1802
    iput-object p1, p0, Landroidx/media2/session/n$d$1;->c:Landroidx/media2/session/n$d;

    iput-object p2, p0, Landroidx/media2/session/n$d$1;->a:Ljava/util/List;

    iput-object p3, p0, Landroidx/media2/session/n$d$1;->b:Landroidx/media2/session/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/session/MediaSession$a;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1805
    iget-object v2, p0, Landroidx/media2/session/n$d$1;->a:Ljava/util/List;

    iget-object v0, p0, Landroidx/media2/session/n$d$1;->b:Landroidx/media2/session/n;

    .line 1806
    invoke-virtual {v0}, Landroidx/media2/session/n;->l()Landroidx/media2/common/MediaMetadata;

    move-result-object v3

    iget-object v0, p0, Landroidx/media2/session/n$d$1;->b:Landroidx/media2/session/n;

    .line 1807
    invoke-virtual {v0}, Landroidx/media2/session/n;->n()I

    move-result v4

    iget-object v0, p0, Landroidx/media2/session/n$d$1;->b:Landroidx/media2/session/n;

    .line 1808
    invoke-virtual {v0}, Landroidx/media2/session/n;->o()I

    move-result v5

    iget-object v0, p0, Landroidx/media2/session/n$d$1;->b:Landroidx/media2/session/n;

    .line 1809
    invoke-virtual {v0}, Landroidx/media2/session/n;->p()I

    move-result v6

    move-object v0, p1

    move v1, p2

    .line 1805
    invoke-virtual/range {v0 .. v6}, Landroidx/media2/session/MediaSession$a;->a(ILjava/util/List;Landroidx/media2/common/MediaMetadata;III)V

    return-void
.end method
