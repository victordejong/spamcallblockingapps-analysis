.class final Lcom/verizon/ads/JobScheduler$3;
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

    .line 130
    iput-object p1, p0, Lcom/verizon/ads/JobScheduler$3;->a:Lcom/verizon/ads/Job;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v0, 0x3

    .line 134
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-static {}, Lcom/verizon/ads/JobScheduler;->b()Lcom/verizon/ads/Logger;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/verizon/ads/JobScheduler$3;->a:Lcom/verizon/ads/Job;

    invoke-virtual {v3}, Lcom/verizon/ads/Job;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Starting job %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 139
    :cond_0
    invoke-static {}, Lcom/verizon/ads/JobScheduler;->c()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/verizon/ads/JobScheduler$3;->a:Lcom/verizon/ads/Job;

    invoke-virtual {v1}, Lcom/verizon/ads/Job;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lcom/verizon/ads/JobScheduler$3;->a:Lcom/verizon/ads/Job;

    invoke-virtual {v0}, Lcom/verizon/ads/Job;->run()V

    return-void
.end method
