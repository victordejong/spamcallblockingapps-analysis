.class public final Lcom/flurry/sdk/lf$3;
.super Lcom/flurry/sdk/mf;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/lf;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/flurry/sdk/lf;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/lf;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/lf$3;->a:Lcom/flurry/sdk/lf;

    invoke-direct {p0}, Lcom/flurry/sdk/mf;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/lf$3;->a:Lcom/flurry/sdk/lf;

    invoke-static {v0}, Lcom/flurry/sdk/lf;->b(Lcom/flurry/sdk/lf;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/lf;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/flurry/sdk/lf$3;->a:Lcom/flurry/sdk/lf;

    invoke-static {v0}, Lcom/flurry/sdk/lf;->a(Lcom/flurry/sdk/lf;)V

    return-void
.end method
