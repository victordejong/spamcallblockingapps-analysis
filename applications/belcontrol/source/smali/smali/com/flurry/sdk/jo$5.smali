.class public final Lcom/flurry/sdk/jo$5;
.super Lcom/flurry/sdk/mf;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/jo;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/flurry/sdk/jo;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/jo;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/jo$5;->a:Lcom/flurry/sdk/jo;

    invoke-direct {p0}, Lcom/flurry/sdk/mf;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/jo$5;->a:Lcom/flurry/sdk/jo;

    invoke-static {v0}, Lcom/flurry/sdk/jo;->g(Lcom/flurry/sdk/jo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/flurry/sdk/hx;->a()Lcom/flurry/sdk/hx;

    move-result-object v0

    iget-object v0, v0, Lcom/flurry/sdk/hx;->a:Lcom/flurry/sdk/is;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/flurry/sdk/hx;->a()Lcom/flurry/sdk/hx;

    move-result-object v0

    iget-object v0, v0, Lcom/flurry/sdk/hx;->a:Lcom/flurry/sdk/is;

    invoke-virtual {v0}, Lcom/flurry/sdk/is;->c()V

    :cond_0
    invoke-static {}, Lcom/flurry/sdk/hx;->a()Lcom/flurry/sdk/hx;

    move-result-object v0

    iget-object v0, v0, Lcom/flurry/sdk/hx;->c:Lcom/flurry/sdk/iu;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/jo$5$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/jo$5$1;-><init>(Lcom/flurry/sdk/jo$5;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kg;->b(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
