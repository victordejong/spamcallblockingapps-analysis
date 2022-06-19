.class Lcom/verizon/ads/ActivityStateManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/ads/ActivityStateManager;->setState(Landroid/app/Activity;Lcom/verizon/ads/ActivityStateManager$ActivityState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/verizon/ads/ActivityStateManager$ActivityState;

.field final synthetic c:Lcom/verizon/ads/ActivityStateManager;


# direct methods
.method constructor <init>(Lcom/verizon/ads/ActivityStateManager;Landroid/app/Activity;Lcom/verizon/ads/ActivityStateManager$ActivityState;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/verizon/ads/ActivityStateManager$1;->c:Lcom/verizon/ads/ActivityStateManager;

    iput-object p2, p0, Lcom/verizon/ads/ActivityStateManager$1;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/verizon/ads/ActivityStateManager$1;->b:Lcom/verizon/ads/ActivityStateManager$ActivityState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 265
    iget-object v0, p0, Lcom/verizon/ads/ActivityStateManager$1;->c:Lcom/verizon/ads/ActivityStateManager;

    monitor-enter v0

    .line 266
    :try_start_0
    iget-object v1, p0, Lcom/verizon/ads/ActivityStateManager$1;->c:Lcom/verizon/ads/ActivityStateManager;

    invoke-static {v1}, Lcom/verizon/ads/ActivityStateManager;->a(Lcom/verizon/ads/ActivityStateManager;)Landroid/util/SparseArray;

    move-result-object v1

    iget-object v2, p0, Lcom/verizon/ads/ActivityStateManager$1;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    iget-object v3, p0, Lcom/verizon/ads/ActivityStateManager$1;->b:Lcom/verizon/ads/ActivityStateManager$ActivityState;

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 267
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
