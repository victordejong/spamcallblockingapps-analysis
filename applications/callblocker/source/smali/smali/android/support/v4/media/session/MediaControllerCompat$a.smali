.class public abstract Landroid/support/v4/media/session/MediaControllerCompat$a;
.super Ljava/lang/Object;
.source "MediaControllerCompat.java"

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

    .prologue
    .line 721
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 722
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 723
    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat$a$a;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/MediaControllerCompat$a$a;-><init>(Landroid/support/v4/media/session/MediaControllerCompat$a;)V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a;->a:Landroid/media/session/MediaController$Callback;

    .line 728
    :goto_0
    return-void

    .line 725
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a;->a:Landroid/media/session/MediaController$Callback;

    .line 726
    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat$a$c;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/MediaControllerCompat$a$c;-><init>(Landroid/support/v4/media/session/MediaControllerCompat$a;)V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a;->c:Landroid/support/v4/media/session/a;

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 736
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 829
    return-void
.end method

.method a(ILjava/lang/Object;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 872
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a;->b:Landroid/support/v4/media/session/MediaControllerCompat$a$b;

    if-eqz v0, :cond_0

    .line 873
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a;->b:Landroid/support/v4/media/session/MediaControllerCompat$a$b;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompat$a$b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 874
    invoke-virtual {v0, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 875
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 877
    :cond_0
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 801
    return-void
.end method

.method public a(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 0

    .prologue
    .line 771
    return-void
.end method

.method public a(Landroid/support/v4/media/session/MediaControllerCompat$b;)V
    .locals 0

    .prologue
    .line 809
    return-void
.end method

.method public a(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 0

    .prologue
    .line 762
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 792
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 754
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 782
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 817
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 743
    return-void
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 840
    return-void
.end method
