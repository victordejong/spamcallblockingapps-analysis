.class public Landroidx/media2/common/UriMediaItem;
.super Landroidx/media2/common/MediaItem;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/common/UriMediaItem$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/net/Uri;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/media2/common/UriMediaItem$a;)V
    .locals 1

    .line 50
    invoke-direct {p0, p1}, Landroidx/media2/common/MediaItem;-><init>(Landroidx/media2/common/MediaItem$a;)V

    .line 51
    iget-object v0, p1, Landroidx/media2/common/UriMediaItem$a;->a:Landroid/net/Uri;

    iput-object v0, p0, Landroidx/media2/common/UriMediaItem;->a:Landroid/net/Uri;

    .line 52
    iget-object v0, p1, Landroidx/media2/common/UriMediaItem$a;->b:Ljava/util/Map;

    iput-object v0, p0, Landroidx/media2/common/UriMediaItem;->b:Ljava/util/Map;

    .line 53
    iget-object p1, p1, Landroidx/media2/common/UriMediaItem$a;->c:Ljava/util/List;

    iput-object p1, p0, Landroidx/media2/common/UriMediaItem;->c:Ljava/util/List;

    return-void
.end method
