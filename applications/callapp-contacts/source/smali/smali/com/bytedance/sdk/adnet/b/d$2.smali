.class Lcom/bytedance/sdk/adnet/b/d$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/adnet/b/d;->b(Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/d$e;Lcom/bytedance/sdk/adnet/b/d$d;IILandroid/widget/ImageView$ScaleType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/adnet/b/d$e;

.field final synthetic b:Lcom/bytedance/sdk/adnet/b/d;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/adnet/b/d;Lcom/bytedance/sdk/adnet/b/d$e;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/b/d$2;->b:Lcom/bytedance/sdk/adnet/b/d;

    iput-object p2, p0, Lcom/bytedance/sdk/adnet/b/d$2;->a:Lcom/bytedance/sdk/adnet/b/d$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/d$2;->a:Lcom/bytedance/sdk/adnet/b/d$e;

    invoke-interface {v0}, Lcom/bytedance/sdk/adnet/b/d$e;->a()V

    return-void
.end method
