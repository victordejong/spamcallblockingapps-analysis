.class public final Lrq$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lmq;

.field public b:Lnq;

.field public c:Lir;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/offline/StreamKey;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljr$a;

.field public f:Lwo;

.field public g:Lct;

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lls$a;)V
    .locals 1

    new-instance v0, Ljq;

    invoke-direct {v0, p1}, Ljq;-><init>(Lls$a;)V

    invoke-direct {p0, v0}, Lrq$b;-><init>(Lmq;)V

    return-void
.end method

.method public constructor <init>(Lmq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lmq;

    iput-object p1, p0, Lrq$b;->a:Lmq;

    new-instance p1, Lar;

    invoke-direct {p1}, Lar;-><init>()V

    iput-object p1, p0, Lrq$b;->c:Lir;

    sget-object p1, Lcr;->s:Ljr$a;

    iput-object p1, p0, Lrq$b;->e:Ljr$a;

    sget-object p1, Lnq;->a:Lnq;

    iput-object p1, p0, Lrq$b;->b:Lnq;

    new-instance p1, Lxs;

    invoke-direct {p1}, Lxs;-><init>()V

    iput-object p1, p0, Lrq$b;->g:Lct;

    new-instance p1, Lzo;

    invoke-direct {p1}, Lzo;-><init>()V

    iput-object p1, p0, Lrq$b;->f:Lwo;

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)Lrq;
    .locals 14

    const/4 v0, 0x1

    iput-boolean v0, p0, Lrq$b;->j:Z

    iget-object v0, p0, Lrq$b;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    new-instance v1, Ldr;

    iget-object v2, p0, Lrq$b;->c:Lir;

    invoke-direct {v1, v2, v0}, Ldr;-><init>(Lir;Ljava/util/List;)V

    iput-object v1, p0, Lrq$b;->c:Lir;

    :cond_0
    new-instance v0, Lrq;

    iget-object v5, p0, Lrq$b;->a:Lmq;

    iget-object v6, p0, Lrq$b;->b:Lnq;

    iget-object v7, p0, Lrq$b;->f:Lwo;

    iget-object v8, p0, Lrq$b;->g:Lct;

    iget-object v1, p0, Lrq$b;->e:Ljr$a;

    iget-object v2, p0, Lrq$b;->c:Lir;

    invoke-interface {v1, v5, v8, v2}, Ljr$a;->a(Lmq;Lct;Lir;)Ljr;

    move-result-object v9

    iget-boolean v10, p0, Lrq$b;->h:Z

    iget-boolean v11, p0, Lrq$b;->i:Z

    iget-object v12, p0, Lrq$b;->k:Ljava/lang/Object;

    const/4 v13, 0x0

    move-object v3, v0

    move-object v4, p1

    invoke-direct/range {v3 .. v13}, Lrq;-><init>(Landroid/net/Uri;Lmq;Lnq;Lwo;Lct;Ljr;ZZLjava/lang/Object;Lrq$a;)V

    return-object v0
.end method

.method public b(Ljava/lang/Object;)Lrq$b;
    .locals 1

    iget-boolean v0, p0, Lrq$b;->j:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lit;->f(Z)V

    iput-object p1, p0, Lrq$b;->k:Ljava/lang/Object;

    return-object p0
.end method
