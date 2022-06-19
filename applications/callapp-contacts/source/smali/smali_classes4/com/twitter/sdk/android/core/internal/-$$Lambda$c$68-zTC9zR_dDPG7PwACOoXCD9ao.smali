.class public final synthetic Lcom/twitter/sdk/android/core/internal/-$$Lambda$c$68-zTC9zR_dDPG7PwACOoXCD9ao;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/ExecutorService;

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/util/concurrent/TimeUnit;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/ExecutorService;JLjava/util/concurrent/TimeUnit;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/-$$Lambda$c$68-zTC9zR_dDPG7PwACOoXCD9ao;->f$0:Ljava/util/concurrent/ExecutorService;

    iput-wide p2, p0, Lcom/twitter/sdk/android/core/internal/-$$Lambda$c$68-zTC9zR_dDPG7PwACOoXCD9ao;->f$1:J

    iput-object p4, p0, Lcom/twitter/sdk/android/core/internal/-$$Lambda$c$68-zTC9zR_dDPG7PwACOoXCD9ao;->f$2:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, Lcom/twitter/sdk/android/core/internal/-$$Lambda$c$68-zTC9zR_dDPG7PwACOoXCD9ao;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/-$$Lambda$c$68-zTC9zR_dDPG7PwACOoXCD9ao;->f$0:Ljava/util/concurrent/ExecutorService;

    iget-wide v1, p0, Lcom/twitter/sdk/android/core/internal/-$$Lambda$c$68-zTC9zR_dDPG7PwACOoXCD9ao;->f$1:J

    iget-object v3, p0, Lcom/twitter/sdk/android/core/internal/-$$Lambda$c$68-zTC9zR_dDPG7PwACOoXCD9ao;->f$2:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lcom/twitter/sdk/android/core/internal/-$$Lambda$c$68-zTC9zR_dDPG7PwACOoXCD9ao;->f$3:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/twitter/sdk/android/core/internal/c;->lambda$68-zTC9zR_dDPG7PwACOoXCD9ao(Ljava/util/concurrent/ExecutorService;JLjava/util/concurrent/TimeUnit;Ljava/lang/String;)V

    return-void
.end method
