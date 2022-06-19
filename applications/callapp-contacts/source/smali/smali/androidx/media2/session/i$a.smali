.class final Landroidx/media2/session/i$a;
.super Landroid/support/v4/media/MediaBrowserCompat$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic c:Landroidx/media2/session/i;


# direct methods
.method constructor <init>(Landroidx/media2/session/i;)V
    .locals 0

    .line 946
    iput-object p1, p0, Landroidx/media2/session/i$a;->c:Landroidx/media2/session/i;

    invoke-direct {p0}, Landroid/support/v4/media/MediaBrowserCompat$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 951
    iget-object v0, p0, Landroidx/media2/session/i$a;->c:Landroidx/media2/session/i;

    invoke-virtual {v0}, Landroidx/media2/session/i;->q()Landroid/support/v4/media/MediaBrowserCompat;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 953
    iget-object v1, p0, Landroidx/media2/session/i$a;->c:Landroidx/media2/session/i;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat;->c()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/media2/session/i;->a(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    return-void

    .line 954
    :cond_0
    sget-boolean v0, Landroidx/media2/session/i;->b:Z

    if-eqz v0, :cond_1

    .line 955
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 1

    .line 961
    iget-object v0, p0, Landroidx/media2/session/i$a;->c:Landroidx/media2/session/i;

    invoke-virtual {v0}, Landroidx/media2/session/i;->close()V

    return-void
.end method

.method public final c()V
    .locals 1

    .line 966
    iget-object v0, p0, Landroidx/media2/session/i$a;->c:Landroidx/media2/session/i;

    invoke-virtual {v0}, Landroidx/media2/session/i;->close()V

    return-void
.end method
