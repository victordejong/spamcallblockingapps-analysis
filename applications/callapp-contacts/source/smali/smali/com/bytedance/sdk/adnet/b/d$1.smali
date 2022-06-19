.class Lcom/bytedance/sdk/adnet/b/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/adnet/b/d;->a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/d$e;Lcom/bytedance/sdk/adnet/b/d$d;IILandroid/widget/ImageView$ScaleType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/bytedance/sdk/adnet/b/d$e;

.field final synthetic c:Lcom/bytedance/sdk/adnet/b/d$d;

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:Landroid/widget/ImageView$ScaleType;

.field final synthetic g:Lcom/bytedance/sdk/adnet/b/d;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/adnet/b/d;Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/d$e;Lcom/bytedance/sdk/adnet/b/d$d;IILandroid/widget/ImageView$ScaleType;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/b/d$1;->g:Lcom/bytedance/sdk/adnet/b/d;

    iput-object p2, p0, Lcom/bytedance/sdk/adnet/b/d$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/sdk/adnet/b/d$1;->b:Lcom/bytedance/sdk/adnet/b/d$e;

    iput-object p4, p0, Lcom/bytedance/sdk/adnet/b/d$1;->c:Lcom/bytedance/sdk/adnet/b/d$d;

    iput p5, p0, Lcom/bytedance/sdk/adnet/b/d$1;->d:I

    iput p6, p0, Lcom/bytedance/sdk/adnet/b/d$1;->e:I

    iput-object p7, p0, Lcom/bytedance/sdk/adnet/b/d$1;->f:Landroid/widget/ImageView$ScaleType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 271
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/d$1;->g:Lcom/bytedance/sdk/adnet/b/d;

    iget-object v1, p0, Lcom/bytedance/sdk/adnet/b/d$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/adnet/b/d$1;->b:Lcom/bytedance/sdk/adnet/b/d$e;

    iget-object v3, p0, Lcom/bytedance/sdk/adnet/b/d$1;->c:Lcom/bytedance/sdk/adnet/b/d$d;

    iget v4, p0, Lcom/bytedance/sdk/adnet/b/d$1;->d:I

    iget v5, p0, Lcom/bytedance/sdk/adnet/b/d$1;->e:I

    iget-object v6, p0, Lcom/bytedance/sdk/adnet/b/d$1;->f:Landroid/widget/ImageView$ScaleType;

    invoke-static/range {v0 .. v6}, Lcom/bytedance/sdk/adnet/b/d;->a(Lcom/bytedance/sdk/adnet/b/d;Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/d$e;Lcom/bytedance/sdk/adnet/b/d$d;IILandroid/widget/ImageView$ScaleType;)V

    return-void
.end method
