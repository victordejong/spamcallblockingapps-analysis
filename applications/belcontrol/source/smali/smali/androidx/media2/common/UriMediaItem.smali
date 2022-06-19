.class public Landroidx/media2/common/UriMediaItem;
.super Landroidx/media2/common/MediaItem;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/common/UriMediaItem$a;
    }
.end annotation


# instance fields
.field public e:Landroid/net/Uri;

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/media2/common/MediaItem;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/media2/common/UriMediaItem$a;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/media2/common/MediaItem;-><init>(Landroidx/media2/common/MediaItem$a;)V

    iget-object v0, p1, Landroidx/media2/common/UriMediaItem$a;->d:Landroid/net/Uri;

    iput-object v0, p0, Landroidx/media2/common/UriMediaItem;->e:Landroid/net/Uri;

    iget-object v0, p1, Landroidx/media2/common/UriMediaItem$a;->e:Ljava/util/Map;

    iget-object p1, p1, Landroidx/media2/common/UriMediaItem$a;->f:Ljava/util/List;

    iput-object p1, p0, Landroidx/media2/common/UriMediaItem;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public j()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroidx/media2/common/UriMediaItem;->e:Landroid/net/Uri;

    return-object v0
.end method
