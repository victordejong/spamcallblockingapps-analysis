.class final Lcom/verizon/ads/JobScheduler$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/Job$JobStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/JobScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onJobFinished(Lcom/verizon/ads/Job;)V
    .locals 3

    const/4 v0, 0x3

    .line 123
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-static {}, Lcom/verizon/ads/JobScheduler;->b()Lcom/verizon/ads/Logger;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/verizon/ads/Job;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Job %d finished."

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
