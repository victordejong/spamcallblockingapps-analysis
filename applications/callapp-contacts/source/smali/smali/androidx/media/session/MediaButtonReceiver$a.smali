.class final Landroidx/media/session/MediaButtonReceiver$a;
.super Landroid/support/v4/media/MediaBrowserCompat$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media/session/MediaButtonReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field c:Landroid/support/v4/media/MediaBrowserCompat;

.field private final d:Landroid/content/Context;

.field private final e:Landroid/content/Intent;

.field private final f:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    .line 142
    invoke-direct {p0}, Landroid/support/v4/media/MediaBrowserCompat$b;-><init>()V

    .line 143
    iput-object p1, p0, Landroidx/media/session/MediaButtonReceiver$a;->d:Landroid/content/Context;

    .line 144
    iput-object p2, p0, Landroidx/media/session/MediaButtonReceiver$a;->e:Landroid/content/Intent;

    .line 145
    iput-object p3, p0, Landroidx/media/session/MediaButtonReceiver$a;->f:Landroid/content/BroadcastReceiver$PendingResult;

    return-void
.end method

.method private d()V
    .locals 1

    .line 172
    iget-object v0, p0, Landroidx/media/session/MediaButtonReceiver$a;->c:Landroid/support/v4/media/MediaBrowserCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat;->b()V

    .line 173
    iget-object v0, p0, Landroidx/media/session/MediaButtonReceiver$a;->f:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 154
    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object v1, p0, Landroidx/media/session/MediaButtonReceiver$a;->d:Landroid/content/Context;

    iget-object v2, p0, Landroidx/media/session/MediaButtonReceiver$a;->c:Landroid/support/v4/media/MediaBrowserCompat;

    .line 155
    invoke-virtual {v2}, Landroid/support/v4/media/MediaBrowserCompat;->c()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/support/v4/media/session/MediaControllerCompat;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 156
    iget-object v1, p0, Landroidx/media/session/MediaButtonReceiver$a;->e:Landroid/content/Intent;

    const-string v2, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    .line 157
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaControllerCompat;->a(Landroid/view/KeyEvent;)Z

    .line 158
    invoke-direct {p0}, Landroidx/media/session/MediaButtonReceiver$a;->d()V

    return-void
.end method

.method public final b()V
    .locals 0

    .line 163
    invoke-direct {p0}, Landroidx/media/session/MediaButtonReceiver$a;->d()V

    return-void
.end method

.method public final c()V
    .locals 0

    .line 168
    invoke-direct {p0}, Landroidx/media/session/MediaButtonReceiver$a;->d()V

    return-void
.end method
