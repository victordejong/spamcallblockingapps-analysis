.class public final Lgt;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lls;


# instance fields
.field public final a:Lls;

.field public b:J

.field public c:Landroid/net/Uri;

.field public d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lls;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lls;

    iput-object p1, p0, Lgt;->a:Lls;

    sget-object p1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object p1, p0, Lgt;->c:Landroid/net/Uri;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lgt;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Los;)J
    .locals 2

    iget-object v0, p1, Los;->a:Landroid/net/Uri;

    iput-object v0, p0, Lgt;->c:Landroid/net/Uri;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lgt;->d:Ljava/util/Map;

    iget-object v0, p0, Lgt;->a:Lls;

    invoke-interface {v0, p1}, Lls;->a(Los;)J

    move-result-wide v0

    invoke-virtual {p0}, Lgt;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lgt;->c:Landroid/net/Uri;

    invoke-virtual {p0}, Lgt;->getResponseHeaders()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lgt;->d:Ljava/util/Map;

    return-wide v0
.end method

.method public b(Lht;)V
    .locals 1

    iget-object v0, p0, Lgt;->a:Lls;

    invoke-interface {v0, p1}, Lls;->b(Lht;)V

    return-void
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lgt;->b:J

    return-wide v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lgt;->a:Lls;

    invoke-interface {v0}, Lls;->close()V

    return-void
.end method

.method public d()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lgt;->c:Landroid/net/Uri;

    return-object v0
.end method

.method public e()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lgt;->d:Ljava/util/Map;

    return-object v0
.end method

.method public f()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lgt;->b:J

    return-void
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lgt;->a:Lls;

    invoke-interface {v0}, Lls;->getResponseHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lgt;->a:Lls;

    invoke-interface {v0}, Lls;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public read([BII)I
    .locals 2

    iget-object v0, p0, Lgt;->a:Lls;

    invoke-interface {v0, p1, p2, p3}, Lls;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    iget-wide p2, p0, Lgt;->b:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lgt;->b:J

    :cond_0
    return p1
.end method
