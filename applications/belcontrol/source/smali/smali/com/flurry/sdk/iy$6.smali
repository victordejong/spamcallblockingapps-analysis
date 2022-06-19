.class public final Lcom/flurry/sdk/iy$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/iy;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/flurry/sdk/iy;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/iy;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/iy$6;->a:Lcom/flurry/sdk/iy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/flurry/sdk/iy;->c()Lcom/flurry/sdk/iy;

    invoke-static {}, Lcom/flurry/sdk/iy;->b()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/iy;->e:Lcom/flurry/sdk/kn;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/flurry/sdk/iy;->e()V

    :cond_0
    sget-object v1, Lcom/flurry/sdk/iy;->e:Lcom/flurry/sdk/kn;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/kn;->a(Ljava/lang/Object;)V

    return-void
.end method
