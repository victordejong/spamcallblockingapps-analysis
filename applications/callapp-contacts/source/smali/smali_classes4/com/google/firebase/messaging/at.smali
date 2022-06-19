.class final synthetic Lcom/google/firebase/messaging/at;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/concurrent/ScheduledExecutorService;

.field private final c:Lcom/google/firebase/messaging/FirebaseMessaging;

.field private final d:Lcom/google/firebase/installations/h;

.field private final e:Lcom/google/firebase/messaging/ag;

.field private final f:Lcom/google/firebase/messaging/z;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/google/firebase/installations/h;Lcom/google/firebase/messaging/ag;Lcom/google/firebase/messaging/z;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/at;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/firebase/messaging/at;->b:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p3, p0, Lcom/google/firebase/messaging/at;->c:Lcom/google/firebase/messaging/FirebaseMessaging;

    iput-object p4, p0, Lcom/google/firebase/messaging/at;->d:Lcom/google/firebase/installations/h;

    iput-object p5, p0, Lcom/google/firebase/messaging/at;->e:Lcom/google/firebase/messaging/ag;

    iput-object p6, p0, Lcom/google/firebase/messaging/at;->f:Lcom/google/firebase/messaging/z;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/google/firebase/messaging/at;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/firebase/messaging/at;->b:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v2, p0, Lcom/google/firebase/messaging/at;->c:Lcom/google/firebase/messaging/FirebaseMessaging;

    iget-object v3, p0, Lcom/google/firebase/messaging/at;->d:Lcom/google/firebase/installations/h;

    iget-object v4, p0, Lcom/google/firebase/messaging/at;->e:Lcom/google/firebase/messaging/ag;

    iget-object v5, p0, Lcom/google/firebase/messaging/at;->f:Lcom/google/firebase/messaging/z;

    invoke-static/range {v0 .. v5}, Lcom/google/firebase/messaging/as;->a(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/google/firebase/installations/h;Lcom/google/firebase/messaging/ag;Lcom/google/firebase/messaging/z;)Lcom/google/firebase/messaging/as;

    move-result-object v0

    return-object v0
.end method
