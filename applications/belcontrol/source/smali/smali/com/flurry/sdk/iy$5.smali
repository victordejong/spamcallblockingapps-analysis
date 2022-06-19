.class public final Lcom/flurry/sdk/iy$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/iy;->a(Lcom/flurry/sdk/iw;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/flurry/sdk/iw;

.field public final synthetic b:Lcom/flurry/sdk/iy;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/iy;Lcom/flurry/sdk/iw;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/iy$5;->b:Lcom/flurry/sdk/iy;

    iput-object p2, p0, Lcom/flurry/sdk/iy$5;->a:Lcom/flurry/sdk/iw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v0

    iget-object v0, v0, Lcom/flurry/sdk/kg;->a:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PulseCallbackReportInfo HTTP Response Code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/flurry/sdk/iy$5;->a:Lcom/flurry/sdk/iw;

    iget v2, v2, Lcom/flurry/sdk/iw;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/flurry/sdk/iy$5;->a:Lcom/flurry/sdk/iw;

    iget-object v2, v2, Lcom/flurry/sdk/iw;->l:Lcom/flurry/sdk/iv;

    iget-object v2, v2, Lcom/flurry/sdk/le;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
