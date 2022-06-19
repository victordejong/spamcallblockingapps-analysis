.class public final Lcom/flurry/sdk/iy$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/flurry/sdk/kp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/iy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/kp<",
        "Lcom/flurry/sdk/jy;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/flurry/sdk/iy;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/iy;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/iy$1;->a:Lcom/flurry/sdk/iy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/ko;)V
    .locals 3

    check-cast p1, Lcom/flurry/sdk/jy;

    sget-object v0, Lcom/flurry/sdk/iy;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onNetworkStateChanged : isNetworkEnable = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p1, Lcom/flurry/sdk/jy;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p1, Lcom/flurry/sdk/jy;->a:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object p1

    new-instance v0, Lcom/flurry/sdk/iy$1$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/iy$1$1;-><init>(Lcom/flurry/sdk/iy$1;)V

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/kg;->b(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
