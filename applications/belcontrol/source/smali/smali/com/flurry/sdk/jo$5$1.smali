.class public final Lcom/flurry/sdk/jo$5$1;
.super Lcom/flurry/sdk/mf;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/jo$5;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/flurry/sdk/jo$5;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/jo$5;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/jo$5$1;->a:Lcom/flurry/sdk/jo$5;

    invoke-direct {p0}, Lcom/flurry/sdk/mf;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/flurry/sdk/hx;->a()Lcom/flurry/sdk/hx;

    move-result-object v0

    iget-object v0, v0, Lcom/flurry/sdk/hx;->c:Lcom/flurry/sdk/iu;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/flurry/sdk/lf;->c:Z

    return-void
.end method
