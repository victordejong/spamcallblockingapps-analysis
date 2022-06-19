.class public final Lcom/flurry/sdk/jk$2;
.super Lcom/flurry/sdk/mf;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/jk;->a(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/flurry/sdk/jk;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/jk;I)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/jk$2;->b:Lcom/flurry/sdk/jk;

    iput p2, p0, Lcom/flurry/sdk/jk$2;->a:I

    invoke-direct {p0}, Lcom/flurry/sdk/mf;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget v0, p0, Lcom/flurry/sdk/jk$2;->a:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/flurry/sdk/hx;->a()Lcom/flurry/sdk/hx;

    invoke-static {}, Lcom/flurry/sdk/hx;->b()Lcom/flurry/sdk/jo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/flurry/sdk/jo;->j:Z

    :cond_0
    return-void
.end method
