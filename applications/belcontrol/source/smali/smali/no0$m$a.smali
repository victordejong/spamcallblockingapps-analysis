.class public Lno0$m$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/GraphRequest$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lno0$m;->f(Lcom/facebook/GraphRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lno0$m;


# direct methods
.method public constructor <init>(Lno0$m;)V
    .locals 0

    iput-object p1, p0, Lno0$m$a;->a:Lno0$m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Laj0;)V
    .locals 2

    iget-object v0, p0, Lno0$m$a;->a:Lno0$m;

    invoke-virtual {p1}, Laj0;->g()Lcom/facebook/FacebookRequestError;

    move-result-object v1

    iput-object v1, v0, Lno0$m;->d:Lcom/facebook/FacebookRequestError;

    iget-object v0, p0, Lno0$m$a;->a:Lno0$m;

    iget-object v1, v0, Lno0$m;->d:Lcom/facebook/FacebookRequestError;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lno0$m;->d(Lcom/facebook/FacebookRequestError;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lno0$m;->e(Laj0;)V

    :goto_0
    return-void
.end method
