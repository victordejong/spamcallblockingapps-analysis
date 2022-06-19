.class public final Lcom/flurry/sdk/jt$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/flurry/sdk/kp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/jt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/kp<",
        "Lcom/flurry/sdk/lt;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/flurry/sdk/jt;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/jt;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/jt$1;->a:Lcom/flurry/sdk/jt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/ko;)V
    .locals 2

    check-cast p1, Lcom/flurry/sdk/lt;

    sget-object v0, Lcom/flurry/sdk/jt$4;->a:[I

    iget p1, p1, Lcom/flurry/sdk/lt;->c:I

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    aget p1, v0, p1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/flurry/sdk/jt$1;->a:Lcom/flurry/sdk/jt;

    invoke-virtual {p1}, Lcom/flurry/sdk/jt;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object p1

    new-instance v0, Lcom/flurry/sdk/jt$1$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/jt$1$1;-><init>(Lcom/flurry/sdk/jt$1;)V

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/kg;->b(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
