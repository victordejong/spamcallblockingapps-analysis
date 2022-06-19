.class final Lcom/bytedance/sdk/adnet/a$1;
.super Lcom/bytedance/sdk/openadsdk/l/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/adnet/a;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 191
    iput-object p2, p0, Lcom/bytedance/sdk/adnet/a$1;->a:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/l/g;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/a$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/adnet/a/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/adnet/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/a/a;->c()V

    .line 195
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/a$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/adnet/a/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/adnet/a/a;

    iget-object v0, p0, Lcom/bytedance/sdk/adnet/a$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/adnet/a/a;->b(Landroid/content/Context;)V

    return-void
.end method
