.class public final Lcom/flurry/sdk/iy$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/iy$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/flurry/sdk/iy$1;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/iy$1;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/iy$1$1;->a:Lcom/flurry/sdk/iy$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    invoke-static {}, Lcom/flurry/sdk/ja;->a()Lcom/flurry/sdk/ja;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ja;->b()V

    return-void
.end method
