.class public final Lcom/flurry/sdk/la$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/flurry/sdk/lc$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/la;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/flurry/sdk/la;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/la;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/la$1;->a:Lcom/flurry/sdk/la;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/flurry/sdk/lc;)V
    .locals 0

    iget-object p1, p0, Lcom/flurry/sdk/la$1;->a:Lcom/flurry/sdk/la;

    invoke-static {p1}, Lcom/flurry/sdk/la;->d(Lcom/flurry/sdk/la;)V

    return-void
.end method

.method public final a(Lcom/flurry/sdk/lc;Ljava/io/InputStream;)V
    .locals 1

    invoke-virtual {p1}, Lcom/flurry/sdk/lc;->d()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/flurry/sdk/la$1;->a:Lcom/flurry/sdk/la;

    invoke-static {p1}, Lcom/flurry/sdk/la;->c(Lcom/flurry/sdk/la;)Lcom/flurry/sdk/lo;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/flurry/sdk/la$1;->a:Lcom/flurry/sdk/la;

    invoke-static {p1}, Lcom/flurry/sdk/la;->c(Lcom/flurry/sdk/la;)Lcom/flurry/sdk/lo;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/flurry/sdk/lo;->a(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/flurry/sdk/la;->a(Lcom/flurry/sdk/la;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final a(Ljava/io/OutputStream;)V
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/la$1;->a:Lcom/flurry/sdk/la;

    invoke-static {v0}, Lcom/flurry/sdk/la;->a(Lcom/flurry/sdk/la;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/la$1;->a:Lcom/flurry/sdk/la;

    invoke-static {v0}, Lcom/flurry/sdk/la;->b(Lcom/flurry/sdk/la;)Lcom/flurry/sdk/lo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/la$1;->a:Lcom/flurry/sdk/la;

    invoke-static {v0}, Lcom/flurry/sdk/la;->b(Lcom/flurry/sdk/la;)Lcom/flurry/sdk/lo;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/la$1;->a:Lcom/flurry/sdk/la;

    invoke-static {v1}, Lcom/flurry/sdk/la;->a(Lcom/flurry/sdk/la;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/flurry/sdk/lo;->a(Ljava/io/OutputStream;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
