.class public final Lp9/v$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp9/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Lp9/m;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lp9/w;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lp9/j;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lp9/t;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lp9/t;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lp9/o$b;

.field public g:Ljava/net/ProxySelector;

.field public h:Lp9/l;

.field public i:Lp9/c;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public j:Ljavax/net/SocketFactory;

.field public k:Ljavax/net/ssl/HostnameVerifier;

.field public l:Lp9/g;

.field public m:Lp9/b;

.field public n:Lp9/b;

.field public o:Lp9/i;

.field public p:Lp9/n;

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:I

.field public u:I

.field public v:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lp9/v$b;->d:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lp9/v$b;->e:Ljava/util/List;

    .line 4
    new-instance v0, Lp9/m;

    invoke-direct {v0}, Lp9/m;-><init>()V

    iput-object v0, p0, Lp9/v$b;->a:Lp9/m;

    .line 5
    sget-object v0, Lp9/v;->y:Ljava/util/List;

    iput-object v0, p0, Lp9/v$b;->b:Ljava/util/List;

    .line 6
    sget-object v0, Lp9/v;->z:Ljava/util/List;

    iput-object v0, p0, Lp9/v$b;->c:Ljava/util/List;

    .line 7
    sget-object v0, Lp9/o;->a:Lp9/o;

    .line 8
    new-instance v1, Lp9/p;

    invoke-direct {v1, v0}, Lp9/p;-><init>(Lp9/o;)V

    .line 9
    iput-object v1, p0, Lp9/v$b;->f:Lp9/o$b;

    .line 10
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    iput-object v0, p0, Lp9/v$b;->g:Ljava/net/ProxySelector;

    if-nez v0, :cond_0

    .line 11
    new-instance v0, Ly9/a;

    invoke-direct {v0}, Ly9/a;-><init>()V

    iput-object v0, p0, Lp9/v$b;->g:Ljava/net/ProxySelector;

    .line 12
    :cond_0
    sget-object v0, Lp9/l;->a:Lp9/l;

    iput-object v0, p0, Lp9/v$b;->h:Lp9/l;

    .line 13
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lp9/v$b;->j:Ljavax/net/SocketFactory;

    .line 14
    sget-object v0, Lz9/d;->a:Lz9/d;

    iput-object v0, p0, Lp9/v$b;->k:Ljavax/net/ssl/HostnameVerifier;

    .line 15
    sget-object v0, Lp9/g;->c:Lp9/g;

    iput-object v0, p0, Lp9/v$b;->l:Lp9/g;

    .line 16
    sget-object v0, Lp9/b;->a:Lp9/b;

    iput-object v0, p0, Lp9/v$b;->m:Lp9/b;

    .line 17
    iput-object v0, p0, Lp9/v$b;->n:Lp9/b;

    .line 18
    new-instance v0, Lp9/i;

    invoke-direct {v0}, Lp9/i;-><init>()V

    iput-object v0, p0, Lp9/v$b;->o:Lp9/i;

    .line 19
    sget-object v0, Lp9/n;->a:Lp9/n;

    iput-object v0, p0, Lp9/v$b;->p:Lp9/n;

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lp9/v$b;->q:Z

    .line 21
    iput-boolean v0, p0, Lp9/v$b;->r:Z

    .line 22
    iput-boolean v0, p0, Lp9/v$b;->s:Z

    const/16 v0, 0x2710

    .line 23
    iput v0, p0, Lp9/v$b;->t:I

    .line 24
    iput v0, p0, Lp9/v$b;->u:I

    .line 25
    iput v0, p0, Lp9/v$b;->v:I

    return-void
.end method
