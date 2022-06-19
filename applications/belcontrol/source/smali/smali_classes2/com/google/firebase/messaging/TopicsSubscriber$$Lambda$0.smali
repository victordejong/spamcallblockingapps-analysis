.class public final synthetic Lcom/google/firebase/messaging/TopicsSubscriber$$Lambda$0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final arg$1:Landroid/content/Context;

.field private final arg$2:Ljava/util/concurrent/ScheduledExecutorService;

.field private final arg$3:Lcom/google/firebase/iid/FirebaseInstanceId;

.field private final arg$4:Lcom/google/firebase/iid/Metadata;

.field private final arg$5:Lcom/google/firebase/iid/GmsRpc;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/firebase/iid/FirebaseInstanceId;Lcom/google/firebase/iid/Metadata;Lcom/google/firebase/iid/GmsRpc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/TopicsSubscriber$$Lambda$0;->arg$1:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/firebase/messaging/TopicsSubscriber$$Lambda$0;->arg$2:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p3, p0, Lcom/google/firebase/messaging/TopicsSubscriber$$Lambda$0;->arg$3:Lcom/google/firebase/iid/FirebaseInstanceId;

    iput-object p4, p0, Lcom/google/firebase/messaging/TopicsSubscriber$$Lambda$0;->arg$4:Lcom/google/firebase/iid/Metadata;

    iput-object p5, p0, Lcom/google/firebase/messaging/TopicsSubscriber$$Lambda$0;->arg$5:Lcom/google/firebase/iid/GmsRpc;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/google/firebase/messaging/TopicsSubscriber$$Lambda$0;->arg$1:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/firebase/messaging/TopicsSubscriber$$Lambda$0;->arg$2:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v2, p0, Lcom/google/firebase/messaging/TopicsSubscriber$$Lambda$0;->arg$3:Lcom/google/firebase/iid/FirebaseInstanceId;

    iget-object v3, p0, Lcom/google/firebase/messaging/TopicsSubscriber$$Lambda$0;->arg$4:Lcom/google/firebase/iid/Metadata;

    iget-object v4, p0, Lcom/google/firebase/messaging/TopicsSubscriber$$Lambda$0;->arg$5:Lcom/google/firebase/iid/GmsRpc;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/firebase/messaging/TopicsSubscriber;->lambda$createInstance$0$TopicsSubscriber(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/firebase/iid/FirebaseInstanceId;Lcom/google/firebase/iid/Metadata;Lcom/google/firebase/iid/GmsRpc;)Lcom/google/firebase/messaging/TopicsSubscriber;

    move-result-object v0

    return-object v0
.end method
