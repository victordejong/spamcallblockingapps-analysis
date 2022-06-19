.class public abstract Lno0$m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lno0$z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lno0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "m"
.end annotation


# instance fields
.field public a:Lcom/facebook/GraphRequest;

.field public b:Ljava/lang/String;

.field public c:Lcom/facebook/share/widget/LikeView$g;

.field public d:Lcom/facebook/FacebookRequestError;


# direct methods
.method public constructor <init>(Lno0;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lno0$m;->b:Ljava/lang/String;

    iput-object p3, p0, Lno0$m;->c:Lcom/facebook/share/widget/LikeView$g;

    return-void
.end method


# virtual methods
.method public a(Lzi0;)V
    .locals 1

    iget-object v0, p0, Lno0$m;->a:Lcom/facebook/GraphRequest;

    invoke-virtual {p1, v0}, Lzi0;->b(Lcom/facebook/GraphRequest;)Z

    return-void
.end method

.method public abstract d(Lcom/facebook/FacebookRequestError;)V
.end method

.method public abstract e(Laj0;)V
.end method

.method public f(Lcom/facebook/GraphRequest;)V
    .locals 1

    iput-object p1, p0, Lno0$m;->a:Lcom/facebook/GraphRequest;

    invoke-static {}, Lui0;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/GraphRequest;->c0(Ljava/lang/String;)V

    new-instance v0, Lno0$m$a;

    invoke-direct {v0, p0}, Lno0$m$a;-><init>(Lno0$m;)V

    invoke-virtual {p1, v0}, Lcom/facebook/GraphRequest;->V(Lcom/facebook/GraphRequest$e;)V

    return-void
.end method

.method public getError()Lcom/facebook/FacebookRequestError;
    .locals 1

    iget-object v0, p0, Lno0$m;->d:Lcom/facebook/FacebookRequestError;

    return-object v0
.end method
