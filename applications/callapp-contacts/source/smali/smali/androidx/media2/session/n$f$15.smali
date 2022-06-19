.class final Landroidx/media2/session/n$f$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/n$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/n$f;->onPlaybackCompleted(Landroidx/media2/common/SessionPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/session/n$f;


# direct methods
.method constructor <init>(Landroidx/media2/session/n$f;)V
    .locals 0

    .line 1529
    iput-object p1, p0, Landroidx/media2/session/n$f$15;->a:Landroidx/media2/session/n$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/session/MediaSession$a;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1532
    invoke-virtual {p1, p2}, Landroidx/media2/session/MediaSession$a;->a(I)V

    return-void
.end method
