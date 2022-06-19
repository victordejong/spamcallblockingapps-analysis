.class abstract Lcom/facebook/share/internal/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/share/internal/a$n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "a"
.end annotation


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Lcom/facebook/share/widget/LikeView$e;

.field protected c:Lcom/facebook/FacebookRequestError;

.field final synthetic d:Lcom/facebook/share/internal/a;

.field private e:Lcom/facebook/GraphRequest;


# direct methods
.method protected constructor <init>(Lcom/facebook/share/internal/a;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$e;)V
    .locals 0

    .line 1544
    iput-object p1, p0, Lcom/facebook/share/internal/a$a;->d:Lcom/facebook/share/internal/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1545
    iput-object p2, p0, Lcom/facebook/share/internal/a$a;->a:Ljava/lang/String;

    .line 1546
    iput-object p3, p0, Lcom/facebook/share/internal/a$a;->b:Lcom/facebook/share/widget/LikeView$e;

    return-void
.end method


# virtual methods
.method public final a()Lcom/facebook/FacebookRequestError;
    .locals 1

    .line 1554
    iget-object v0, p0, Lcom/facebook/share/internal/a$a;->c:Lcom/facebook/FacebookRequestError;

    return-object v0
.end method

.method protected a(Lcom/facebook/FacebookRequestError;)V
    .locals 5

    .line 1577
    sget-object v0, Lcom/facebook/m;->REQUESTS:Lcom/facebook/m;

    .line 1579
    invoke-static {}, Lcom/facebook/share/internal/a;->e()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/facebook/share/internal/a$a;->a:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/facebook/share/internal/a$a;->b:Lcom/facebook/share/widget/LikeView$e;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    aput-object p1, v2, v3

    const-string p1, "Error running request for object \'%s\' with type \'%s\' : %s"

    .line 1577
    invoke-static {v0, v1, p1, v2}, Lcom/facebook/internal/x;->a(Lcom/facebook/m;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected final a(Lcom/facebook/GraphRequest;)V
    .locals 1

    .line 1558
    iput-object p1, p0, Lcom/facebook/share/internal/a$a;->e:Lcom/facebook/GraphRequest;

    .line 1561
    invoke-static {}, Lcom/facebook/g;->j()Ljava/lang/String;

    move-result-object v0

    .line 1726
    iput-object v0, p1, Lcom/facebook/GraphRequest;->g:Ljava/lang/String;

    .line 1562
    new-instance v0, Lcom/facebook/share/internal/a$a$1;

    invoke-direct {v0, p0}, Lcom/facebook/share/internal/a$a$1;-><init>(Lcom/facebook/share/internal/a$a;)V

    invoke-virtual {p1, v0}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/GraphRequest$b;)V

    return-void
.end method

.method public final a(Lcom/facebook/i;)V
    .locals 1

    .line 1550
    iget-object v0, p0, Lcom/facebook/share/internal/a$a;->e:Lcom/facebook/GraphRequest;

    invoke-virtual {p1, v0}, Lcom/facebook/i;->a(Lcom/facebook/GraphRequest;)Z

    return-void
.end method

.method protected abstract a(Lcom/facebook/j;)V
.end method
