.class public final Let;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ldt$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Let$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ldt$e;"
    }
.end annotation


# instance fields
.field public final a:Los;

.field public final b:I

.field public final c:Lgt;

.field public final d:Let$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Let$a<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public volatile e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lls;Landroid/net/Uri;ILet$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lls;",
            "Landroid/net/Uri;",
            "I",
            "Let$a<",
            "+TT;>;)V"
        }
    .end annotation

    new-instance v0, Los;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, Los;-><init>(Landroid/net/Uri;I)V

    invoke-direct {p0, p1, v0, p3, p4}, Let;-><init>(Lls;Los;ILet$a;)V

    return-void
.end method

.method public constructor <init>(Lls;Los;ILet$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lls;",
            "Los;",
            "I",
            "Let$a<",
            "+TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lgt;

    invoke-direct {v0, p1}, Lgt;-><init>(Lls;)V

    iput-object v0, p0, Let;->c:Lgt;

    iput-object p2, p0, Let;->a:Los;

    iput p3, p0, Let;->b:I

    iput-object p4, p0, Let;->d:Let$a;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-object v0, p0, Let;->c:Lgt;

    invoke-virtual {v0}, Lgt;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public b()Ljava/util/Map;
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

    iget-object v0, p0, Let;->c:Lgt;

    invoke-virtual {v0}, Lgt;->e()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Let;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final cancelLoad()V
    .locals 0

    return-void
.end method

.method public d()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Let;->c:Lgt;

    invoke-virtual {v0}, Lgt;->d()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final load()V
    .locals 3

    iget-object v0, p0, Let;->c:Lgt;

    invoke-virtual {v0}, Lgt;->f()V

    new-instance v0, Lns;

    iget-object v1, p0, Let;->c:Lgt;

    iget-object v2, p0, Let;->a:Los;

    invoke-direct {v0, v1, v2}, Lns;-><init>(Lls;Los;)V

    :try_start_0
    invoke-virtual {v0}, Lns;->e()V

    iget-object v1, p0, Let;->c:Lgt;

    invoke-virtual {v1}, Lgt;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    iget-object v2, p0, Let;->d:Let$a;

    invoke-interface {v2, v1, v0}, Let$a;->parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Let;->e:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lnu;->k(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lnu;->k(Ljava/io/Closeable;)V

    throw v1
.end method
