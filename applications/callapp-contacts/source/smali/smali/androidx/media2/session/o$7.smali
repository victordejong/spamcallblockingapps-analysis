.class final Landroidx/media2/session/o$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/o$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/o;->b(Landroid/support/v4/media/RatingCompat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/media/RatingCompat;

.field final synthetic b:Landroidx/media2/session/o;


# direct methods
.method constructor <init>(Landroidx/media2/session/o;Landroid/support/v4/media/RatingCompat;)V
    .locals 0

    .line 363
    iput-object p1, p0, Landroidx/media2/session/o$7;->b:Landroidx/media2/session/o;

    iput-object p2, p0, Landroidx/media2/session/o$7;->a:Landroid/support/v4/media/RatingCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/session/MediaSession$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 366
    iget-object p1, p0, Landroidx/media2/session/o$7;->b:Landroidx/media2/session/o;

    iget-object p1, p1, Landroidx/media2/session/o;->h:Landroidx/media2/session/MediaSession$c;

    invoke-interface {p1}, Landroidx/media2/session/MediaSession$c;->m()Landroidx/media2/common/MediaItem;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 370
    :cond_0
    iget-object v0, p0, Landroidx/media2/session/o$7;->b:Landroidx/media2/session/o;

    iget-object v0, v0, Landroidx/media2/session/o;->h:Landroidx/media2/session/MediaSession$c;

    invoke-interface {v0}, Landroidx/media2/session/MediaSession$c;->y()Landroidx/media2/session/MediaSession$d;

    iget-object v0, p0, Landroidx/media2/session/o$7;->b:Landroidx/media2/session/o;

    iget-object v0, v0, Landroidx/media2/session/o;->h:Landroidx/media2/session/MediaSession$c;

    invoke-interface {v0}, Landroidx/media2/session/MediaSession$c;->z()Landroidx/media2/session/MediaSession;

    .line 371
    invoke-virtual {p1}, Landroidx/media2/common/MediaItem;->f()Ljava/lang/String;

    iget-object p1, p0, Landroidx/media2/session/o$7;->a:Landroid/support/v4/media/RatingCompat;

    .line 372
    invoke-static {p1}, Landroidx/media2/session/s;->a(Landroid/support/v4/media/RatingCompat;)Landroidx/media2/common/Rating;

    return-void
.end method
