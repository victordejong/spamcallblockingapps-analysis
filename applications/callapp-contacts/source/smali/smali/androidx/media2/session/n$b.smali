.class final Landroidx/media2/session/n$b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/session/n;


# direct methods
.method constructor <init>(Landroidx/media2/session/n;)V
    .locals 0

    .line 1871
    iput-object p1, p0, Landroidx/media2/session/n$b;->a:Landroidx/media2/session/n;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1874
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1877
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 1878
    iget-object v0, p0, Landroidx/media2/session/n$b;->a:Landroidx/media2/session/n;

    iget-object v0, v0, Landroidx/media2/session/n;->c:Landroid/net/Uri;

    invoke-static {p1, v0}, Landroidx/core/e/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p1, "android.intent.extra.KEY_EVENT"

    .line 1881
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/view/KeyEvent;

    if-nez p1, :cond_2

    return-void

    .line 1885
    :cond_2
    iget-object p2, p0, Landroidx/media2/session/n$b;->a:Landroidx/media2/session/n;

    .line 1975
    iget-object p2, p2, Landroidx/media2/session/n;->f:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 2796
    iget-object p2, p2, Landroid/support/v4/media/session/MediaSessionCompat;->b:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 1885
    invoke-virtual {p2, p1}, Landroid/support/v4/media/session/MediaControllerCompat;->a(Landroid/view/KeyEvent;)Z

    return-void
.end method
