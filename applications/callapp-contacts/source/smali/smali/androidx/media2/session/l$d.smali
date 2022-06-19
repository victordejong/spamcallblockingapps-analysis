.class final Landroidx/media2/session/l$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field public final a:Landroidx/media2/session/MediaSession$b;

.field public final b:Landroidx/media/b$b;

.field public final c:Ljava/lang/String;

.field public final d:Landroid/os/Bundle;

.field public final e:Landroidx/media/MediaBrowserServiceCompat$i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media/MediaBrowserServiceCompat$i<",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaSession$b;Landroidx/media/b$b;Ljava/lang/String;Landroid/os/Bundle;Landroidx/media/MediaBrowserServiceCompat$i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/session/MediaSession$b;",
            "Landroidx/media/b$b;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroidx/media/MediaBrowserServiceCompat$i<",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    iput-object p1, p0, Landroidx/media2/session/l$d;->a:Landroidx/media2/session/MediaSession$b;

    .line 375
    iput-object p2, p0, Landroidx/media2/session/l$d;->b:Landroidx/media/b$b;

    .line 376
    iput-object p3, p0, Landroidx/media2/session/l$d;->c:Ljava/lang/String;

    .line 377
    iput-object p4, p0, Landroidx/media2/session/l$d;->d:Landroid/os/Bundle;

    .line 378
    iput-object p5, p0, Landroidx/media2/session/l$d;->e:Landroidx/media/MediaBrowserServiceCompat$i;

    return-void
.end method
