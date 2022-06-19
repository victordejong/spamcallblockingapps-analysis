.class final Lcom/verizon/ads/JobScheduler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/JobScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/Job;


# direct methods
.method constructor <init>(Lcom/verizon/ads/Job;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/verizon/ads/JobScheduler$1;->a:Lcom/verizon/ads/Job;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 114
    invoke-static {}, Lcom/verizon/ads/JobScheduler;->a()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/verizon/ads/JobScheduler$1;->a:Lcom/verizon/ads/Job;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
