.class public final Landroidx/media2/common/UriMediaItem$a;
.super Landroidx/media2/common/MediaItem$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/common/UriMediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public d:Landroid/net/Uri;

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroidx/media2/common/UriMediaItem$a;-><init>(Landroid/net/Uri;Ljava/util/Map;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/util/Map;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/media2/common/MediaItem$a;-><init>()V

    const-string v0, "uri cannot be null"

    invoke-static {p1, v0}, Loa;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroidx/media2/common/UriMediaItem$a;->d:Landroid/net/Uri;

    if-eqz p3, :cond_1

    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v0, v0, Ljava/net/CookieManager;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The cookie handler has to be of CookieManager type when cookies are provided"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Landroidx/media2/common/UriMediaItem$a;->d:Landroid/net/Uri;

    if-eqz p2, :cond_2

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Landroidx/media2/common/UriMediaItem$a;->e:Ljava/util/Map;

    :cond_2
    if-eqz p3, :cond_3

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroidx/media2/common/UriMediaItem$a;->f:Ljava/util/List;

    :cond_3
    return-void
.end method


# virtual methods
.method public bridge synthetic a()Landroidx/media2/common/MediaItem;
    .locals 1

    invoke-virtual {p0}, Landroidx/media2/common/UriMediaItem$a;->e()Landroidx/media2/common/UriMediaItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b(J)Landroidx/media2/common/MediaItem$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/media2/common/UriMediaItem$a;->f(J)Landroidx/media2/common/UriMediaItem$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c(Landroidx/media2/common/MediaMetadata;)Landroidx/media2/common/MediaItem$a;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/media2/common/UriMediaItem$a;->g(Landroidx/media2/common/MediaMetadata;)Landroidx/media2/common/UriMediaItem$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic d(J)Landroidx/media2/common/MediaItem$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/media2/common/UriMediaItem$a;->h(J)Landroidx/media2/common/UriMediaItem$a;

    move-result-object p1

    return-object p1
.end method

.method public e()Landroidx/media2/common/UriMediaItem;
    .locals 1

    new-instance v0, Landroidx/media2/common/UriMediaItem;

    invoke-direct {v0, p0}, Landroidx/media2/common/UriMediaItem;-><init>(Landroidx/media2/common/UriMediaItem$a;)V

    return-object v0
.end method

.method public f(J)Landroidx/media2/common/UriMediaItem$a;
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/media2/common/MediaItem$a;->b(J)Landroidx/media2/common/MediaItem$a;

    move-object p1, p0

    check-cast p1, Landroidx/media2/common/UriMediaItem$a;

    return-object p1
.end method

.method public g(Landroidx/media2/common/MediaMetadata;)Landroidx/media2/common/UriMediaItem$a;
    .locals 0

    invoke-super {p0, p1}, Landroidx/media2/common/MediaItem$a;->c(Landroidx/media2/common/MediaMetadata;)Landroidx/media2/common/MediaItem$a;

    move-object p1, p0

    check-cast p1, Landroidx/media2/common/UriMediaItem$a;

    return-object p1
.end method

.method public h(J)Landroidx/media2/common/UriMediaItem$a;
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/media2/common/MediaItem$a;->d(J)Landroidx/media2/common/MediaItem$a;

    move-object p1, p0

    check-cast p1, Landroidx/media2/common/UriMediaItem$a;

    return-object p1
.end method
