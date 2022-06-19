.class final synthetic Lcom/google/firebase/messaging/r0;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@21.1.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/concurrent/ScheduledExecutorService;

.field private final c:Lcom/google/firebase/messaging/FirebaseMessaging;

.field private final d:Lcom/google/firebase/installations/g;

.field private final e:Lcom/google/firebase/messaging/f0;

.field private final f:Lcom/google/firebase/messaging/a0;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/google/firebase/installations/g;Lcom/google/firebase/messaging/f0;Lcom/google/firebase/messaging/a0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/r0;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/firebase/messaging/r0;->b:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p3, p0, Lcom/google/firebase/messaging/r0;->c:Lcom/google/firebase/messaging/FirebaseMessaging;

    iput-object p4, p0, Lcom/google/firebase/messaging/r0;->d:Lcom/google/firebase/installations/g;

    iput-object p5, p0, Lcom/google/firebase/messaging/r0;->e:Lcom/google/firebase/messaging/f0;

    iput-object p6, p0, Lcom/google/firebase/messaging/r0;->f:Lcom/google/firebase/messaging/a0;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/google/firebase/messaging/r0;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/firebase/messaging/r0;->b:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v2, p0, Lcom/google/firebase/messaging/r0;->c:Lcom/google/firebase/messaging/FirebaseMessaging;

    iget-object v3, p0, Lcom/google/firebase/messaging/r0;->d:Lcom/google/firebase/installations/g;

    iget-object v4, p0, Lcom/google/firebase/messaging/r0;->e:Lcom/google/firebase/messaging/f0;

    iget-object v5, p0, Lcom/google/firebase/messaging/r0;->f:Lcom/google/firebase/messaging/a0;

    invoke-static/range {v0 .. v5}, Lcom/google/firebase/messaging/s0;->h(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/google/firebase/installations/g;Lcom/google/firebase/messaging/f0;Lcom/google/firebase/messaging/a0;)Lcom/google/firebase/messaging/s0;

    move-result-object v0

    return-object v0
.end method
