.class final Landroidx/media2/session/r$23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/r$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/r;->a(Landroidx/media2/session/b;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/media2/session/r$c<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Landroidx/media2/session/r;


# direct methods
.method constructor <init>(Landroidx/media2/session/r;II)V
    .locals 0

    .line 487
    iput-object p1, p0, Landroidx/media2/session/r$23;->c:Landroidx/media2/session/r;

    iput p2, p0, Landroidx/media2/session/r$23;->a:I

    iput p3, p0, Landroidx/media2/session/r$23;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroidx/media2/session/MediaSession$b;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1490
    iget-object p1, p0, Landroidx/media2/session/r$23;->c:Landroidx/media2/session/r;

    iget-object p1, p1, Landroidx/media2/session/r;->e:Landroidx/media2/session/MediaSession$c;

    invoke-interface {p1}, Landroidx/media2/session/MediaSession$c;->E()Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1796
    iget-object p1, p1, Landroid/support/v4/media/session/MediaSessionCompat;->b:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 1492
    iget v0, p0, Landroidx/media2/session/r$23;->a:I

    iget v1, p0, Landroidx/media2/session/r$23;->b:I

    .line 2536
    iget-object p1, p1, Landroid/support/v4/media/session/MediaControllerCompat;->a:Landroid/support/v4/media/session/MediaControllerCompat$b;

    invoke-interface {p1, v0, v1}, Landroid/support/v4/media/session/MediaControllerCompat$b;->a(II)V

    :cond_0
    const/4 p1, 0x0

    .line 1494
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
