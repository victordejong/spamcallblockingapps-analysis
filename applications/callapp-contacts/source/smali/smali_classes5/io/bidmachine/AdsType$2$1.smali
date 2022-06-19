.class final Lio/bidmachine/AdsType$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/displays/PlacementBuilder$PlacementCreateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/AdsType$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/bidmachine/AdsType$2;


# direct methods
.method constructor <init>(Lio/bidmachine/AdsType$2;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lio/bidmachine/AdsType$2$1;->this$1:Lio/bidmachine/AdsType$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreated(Lcom/explorestack/protobuf/Message$Builder;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 148
    iget-object v0, p0, Lio/bidmachine/AdsType$2$1;->this$1:Lio/bidmachine/AdsType$2;

    iget-object v0, v0, Lio/bidmachine/AdsType$2;->val$outList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 149
    :try_start_0
    iget-object v1, p0, Lio/bidmachine/AdsType$2$1;->this$1:Lio/bidmachine/AdsType$2;

    iget-object v1, v1, Lio/bidmachine/AdsType$2;->val$outList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 152
    :cond_0
    :goto_0
    iget-object p1, p0, Lio/bidmachine/AdsType$2$1;->this$1:Lio/bidmachine/AdsType$2;

    iget-object p1, p1, Lio/bidmachine/AdsType$2;->val$syncLock:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
