.class final Landroidx/media/MediaBrowserServiceCompat$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media/MediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:I

.field public final d:Landroidx/media/b$b;

.field public final e:Landroid/os/Bundle;

.field public final f:Landroidx/media/MediaBrowserServiceCompat$l;

.field public final g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroidx/core/e/b<",
            "Landroid/os/IBinder;",
            "Landroid/os/Bundle;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public h:Landroidx/media/MediaBrowserServiceCompat$a;

.field final synthetic i:Landroidx/media/MediaBrowserServiceCompat;


# direct methods
.method constructor <init>(Landroidx/media/MediaBrowserServiceCompat;Ljava/lang/String;IILandroid/os/Bundle;Landroidx/media/MediaBrowserServiceCompat$l;)V
    .locals 0

    .line 794
    iput-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$b;->i:Landroidx/media/MediaBrowserServiceCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 790
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$b;->g:Ljava/util/HashMap;

    .line 795
    iput-object p2, p0, Landroidx/media/MediaBrowserServiceCompat$b;->a:Ljava/lang/String;

    .line 796
    iput p3, p0, Landroidx/media/MediaBrowserServiceCompat$b;->b:I

    .line 797
    iput p4, p0, Landroidx/media/MediaBrowserServiceCompat$b;->c:I

    .line 798
    new-instance p1, Landroidx/media/b$b;

    invoke-direct {p1, p2, p3, p4}, Landroidx/media/b$b;-><init>(Ljava/lang/String;II)V

    iput-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$b;->d:Landroidx/media/b$b;

    .line 799
    iput-object p5, p0, Landroidx/media/MediaBrowserServiceCompat$b;->e:Landroid/os/Bundle;

    .line 800
    iput-object p6, p0, Landroidx/media/MediaBrowserServiceCompat$b;->f:Landroidx/media/MediaBrowserServiceCompat$l;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    .line 805
    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$b;->i:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Landroidx/media/MediaBrowserServiceCompat;->f:Landroidx/media/MediaBrowserServiceCompat$n;

    new-instance v1, Landroidx/media/MediaBrowserServiceCompat$b$1;

    invoke-direct {v1, p0}, Landroidx/media/MediaBrowserServiceCompat$b$1;-><init>(Landroidx/media/MediaBrowserServiceCompat$b;)V

    invoke-virtual {v0, v1}, Landroidx/media/MediaBrowserServiceCompat$n;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
