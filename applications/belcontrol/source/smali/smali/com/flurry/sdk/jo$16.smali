.class public final Lcom/flurry/sdk/jo$16;
.super Lcom/flurry/sdk/mf;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/jo;->b()V
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

    iput-object p1, p0, Lcom/flurry/sdk/jo$16;->a:Lcom/flurry/sdk/jo;

    invoke-direct {p0}, Lcom/flurry/sdk/mf;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    invoke-static {}, Lcom/flurry/sdk/hx;->a()Lcom/flurry/sdk/hx;

    move-result-object v0

    iget-object v0, v0, Lcom/flurry/sdk/hx;->a:Lcom/flurry/sdk/is;

    invoke-virtual {v0}, Lcom/flurry/sdk/is;->b()V

    return-void
.end method
