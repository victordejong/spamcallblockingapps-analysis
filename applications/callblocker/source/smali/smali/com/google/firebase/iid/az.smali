.class final synthetic Lcom/google/firebase/iid/az;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@20.1.5"

# interfaces
.implements Lcom/google/firebase/a/b;


# instance fields
.field private final a:Lcom/google/firebase/iid/FirebaseInstanceId$a;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/FirebaseInstanceId$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/az;->a:Lcom/google/firebase/iid/FirebaseInstanceId$a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/firebase/a/a;)V
    .locals 2

    .prologue
    .line 1
    iget-object v1, p0, Lcom/google/firebase/iid/az;->a:Lcom/google/firebase/iid/FirebaseInstanceId$a;

    .line 2
    monitor-enter v1

    .line 3
    :try_start_0
    invoke-virtual {v1}, Lcom/google/firebase/iid/FirebaseInstanceId$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, v1, Lcom/google/firebase/iid/FirebaseInstanceId$a;->a:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-static {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->b(Lcom/google/firebase/iid/FirebaseInstanceId;)V

    .line 5
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
