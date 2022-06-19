.class public abstract Landroid/support/v4/media/session/MediaControllerCompat$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/MediaControllerCompat$a$b;,
        Landroid/support/v4/media/session/MediaControllerCompat$a$c;,
        Landroid/support/v4/media/session/MediaControllerCompat$a$a;
    }
.end annotation


# instance fields
.field final a:Landroid/media/session/MediaController$Callback;

.field b:Landroid/support/v4/media/session/MediaControllerCompat$a$b;

.field c:Landroid/support/v4/media/session/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 696
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 697
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 698
    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat$a$a;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/MediaControllerCompat$a$a;-><init>(Landroid/support/v4/media/session/MediaControllerCompat$a;)V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a;->a:Landroid/media/session/MediaController$Callback;

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 700
    iput-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a;->a:Landroid/media/session/MediaController$Callback;

    .line 701
    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat$a$c;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/MediaControllerCompat$a$c;-><init>(Landroid/support/v4/media/session/MediaControllerCompat$a;)V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a;->c:Landroid/support/v4/media/session/a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method final a(ILjava/lang/Object;Landroid/os/Bundle;)V
    .locals 1

    .line 848
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a;->b:Landroid/support/v4/media/session/MediaControllerCompat$a$b;

    if-eqz v0, :cond_0

    .line 849
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompat$a$b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 850
    invoke-virtual {p1, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 851
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method final a(Landroid/os/Handler;)V
    .locals 1

    if-nez p1, :cond_0

    .line 836
    iget-object p1, p0, Landroid/support/v4/media/session/MediaControllerCompat$a;->b:Landroid/support/v4/media/session/MediaControllerCompat$a$b;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 837
    iput-boolean v0, p1, Landroid/support/v4/media/session/MediaControllerCompat$a$b;->a:Z

    .line 838
    iget-object p1, p0, Landroid/support/v4/media/session/MediaControllerCompat$a;->b:Landroid/support/v4/media/session/MediaControllerCompat$a$b;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v4/media/session/MediaControllerCompat$a$b;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 839
    iput-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a;->b:Landroid/support/v4/media/session/MediaControllerCompat$a$b;

    return-void

    .line 842
    :cond_0
    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat$a$b;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Landroid/support/v4/media/session/MediaControllerCompat$a$b;-><init>(Landroid/support/v4/media/session/MediaControllerCompat$a;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a;->b:Landroid/support/v4/media/session/MediaControllerCompat$a$b;

    const/4 p1, 0x1

    .line 843
    iput-boolean p1, v0, Landroid/support/v4/media/session/MediaControllerCompat$a$b;->a:Z

    :cond_1
    return-void
.end method

.method public a(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/support/v4/media/session/MediaControllerCompat$d;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public binderDied()V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    .line 828
    invoke-virtual {p0, v0, v1, v1}, Landroid/support/v4/media/session/MediaControllerCompat$a;->a(ILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method
