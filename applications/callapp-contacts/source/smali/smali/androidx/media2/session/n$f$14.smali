.class final Landroidx/media2/session/n$f$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/n$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/n$f;->onShuffleModeChanged(Landroidx/media2/common/SessionPlayer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroidx/media2/session/n;

.field final synthetic c:Landroidx/media2/session/n$f;


# direct methods
.method constructor <init>(Landroidx/media2/session/n$f;ILandroidx/media2/session/n;)V
    .locals 0

    .line 1516
    iput-object p1, p0, Landroidx/media2/session/n$f$14;->c:Landroidx/media2/session/n$f;

    iput p2, p0, Landroidx/media2/session/n$f$14;->a:I

    iput-object p3, p0, Landroidx/media2/session/n$f$14;->b:Landroidx/media2/session/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/session/MediaSession$a;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1519
    iget v2, p0, Landroidx/media2/session/n$f$14;->a:I

    iget-object v0, p0, Landroidx/media2/session/n$f$14;->b:Landroidx/media2/session/n;

    .line 1520
    invoke-virtual {v0}, Landroidx/media2/session/n;->n()I

    move-result v3

    iget-object v0, p0, Landroidx/media2/session/n$f$14;->b:Landroidx/media2/session/n;

    .line 1521
    invoke-virtual {v0}, Landroidx/media2/session/n;->o()I

    move-result v4

    iget-object v0, p0, Landroidx/media2/session/n$f$14;->b:Landroidx/media2/session/n;

    .line 1522
    invoke-virtual {v0}, Landroidx/media2/session/n;->p()I

    move-result v5

    move-object v0, p1

    move v1, p2

    .line 1519
    invoke-virtual/range {v0 .. v5}, Landroidx/media2/session/MediaSession$a;->a(IIIII)V

    return-void
.end method
