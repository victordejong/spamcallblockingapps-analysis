.class public final Lcom/flurry/sdk/jt$1$1;
.super Lcom/flurry/sdk/mf;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/jt$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/flurry/sdk/jt$1;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/jt$1;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/jt$1$1;->a:Lcom/flurry/sdk/jt$1;

    invoke-direct {p0}, Lcom/flurry/sdk/mf;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/jt$1$1;->a:Lcom/flurry/sdk/jt$1;

    iget-object v0, v0, Lcom/flurry/sdk/jt$1;->a:Lcom/flurry/sdk/jt;

    invoke-static {v0}, Lcom/flurry/sdk/jt;->a(Lcom/flurry/sdk/jt;)V

    return-void
.end method
