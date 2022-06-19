.class public final Lcp$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final a:Lls$a;

.field public b:Ldk;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/Object;

.field public e:Lct;

.field public f:I

.field public g:Z


# direct methods
.method public constructor <init>(Lls$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcp$b;->a:Lls$a;

    new-instance p1, Lxs;

    invoke-direct {p1}, Lxs;-><init>()V

    iput-object p1, p0, Lcp$b;->e:Lct;

    const/high16 p1, 0x100000

    iput p1, p0, Lcp$b;->f:I

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)Lcp;
    .locals 10

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcp$b;->g:Z

    iget-object v0, p0, Lcp$b;->b:Ldk;

    if-nez v0, :cond_0

    new-instance v0, Lyj;

    invoke-direct {v0}, Lyj;-><init>()V

    iput-object v0, p0, Lcp$b;->b:Ldk;

    :cond_0
    new-instance v0, Lcp;

    iget-object v3, p0, Lcp$b;->a:Lls$a;

    iget-object v4, p0, Lcp$b;->b:Ldk;

    iget-object v5, p0, Lcp$b;->e:Lct;

    iget-object v6, p0, Lcp$b;->c:Ljava/lang/String;

    iget v7, p0, Lcp$b;->f:I

    iget-object v8, p0, Lcp$b;->d:Ljava/lang/Object;

    const/4 v9, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v9}, Lcp;-><init>(Landroid/net/Uri;Lls$a;Ldk;Lct;Ljava/lang/String;ILjava/lang/Object;Lcp$a;)V

    return-object v0
.end method

.method public b(Ldk;)Lcp$b;
    .locals 1

    iget-boolean v0, p0, Lcp$b;->g:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lit;->f(Z)V

    iput-object p1, p0, Lcp$b;->b:Ldk;

    return-object p0
.end method

.method public c(Ljava/lang/Object;)Lcp$b;
    .locals 1

    iget-boolean v0, p0, Lcp$b;->g:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lit;->f(Z)V

    iput-object p1, p0, Lcp$b;->d:Ljava/lang/Object;

    return-object p0
.end method
