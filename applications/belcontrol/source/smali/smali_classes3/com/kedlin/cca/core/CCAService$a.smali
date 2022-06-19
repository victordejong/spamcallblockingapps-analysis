.class public Lcom/kedlin/cca/core/CCAService$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kedlin/cca/core/CCAService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/kedlin/cca/core/CCAService;Landroid/content/Intent;)V
    .locals 0

    iput-object p2, p0, Lcom/kedlin/cca/core/CCAService$a;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lp71;->c()Ln71;

    move-result-object v0

    iget-object v1, p0, Lcom/kedlin/cca/core/CCAService$a;->a:Landroid/content/Intent;

    invoke-interface {v0, v1}, Ln71;->a(Landroid/content/Intent;)V

    return-void
.end method
