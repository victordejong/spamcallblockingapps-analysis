.class public final Lcom/flurry/sdk/lg$2;
.super Lcom/flurry/sdk/mf;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/lg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/flurry/sdk/lg;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/lg;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/lg$2;->b:Lcom/flurry/sdk/lg;

    iput-object p2, p0, Lcom/flurry/sdk/lg$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/flurry/sdk/mf;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/flurry/sdk/lg$2;->b:Lcom/flurry/sdk/lg;

    new-instance v1, Lcom/flurry/sdk/li;

    iget-object v2, p0, Lcom/flurry/sdk/lg$2;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/flurry/sdk/li;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/flurry/sdk/lg;->e:Lcom/flurry/sdk/li;

    return-void
.end method
