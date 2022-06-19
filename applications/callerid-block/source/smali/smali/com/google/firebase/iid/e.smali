.class final synthetic Lcom/google/firebase/iid/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/tasks/c;


# instance fields
.field private final a:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/e;->a:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/tasks/g;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/iid/e;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, p1}, Lcom/google/firebase/iid/FirebaseInstanceId;->v(Ljava/util/concurrent/CountDownLatch;Lcom/google/android/gms/tasks/g;)V

    return-void
.end method
