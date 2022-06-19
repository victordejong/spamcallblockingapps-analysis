.class final Lio/bidmachine/f$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/f$a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/f$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/f$4;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lio/bidmachine/f$4;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lio/bidmachine/f$4$1;->this$0:Lio/bidmachine/f$4;

    iput-object p2, p0, Lio/bidmachine/f$4$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNetworkLoadingFinished()V
    .locals 1

    .line 182
    iget-object v0, p0, Lio/bidmachine/f$4$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
