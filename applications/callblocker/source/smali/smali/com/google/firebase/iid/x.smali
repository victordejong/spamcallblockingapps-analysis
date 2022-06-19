.class final Lcom/google/firebase/iid/x;
.super Lcom/google/android/gms/internal/g/e;
.source "com.google.firebase:firebase-iid@@20.1.5"


# instance fields
.field private final synthetic a:Lcom/google/firebase/iid/u;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/u;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/firebase/iid/x;->a:Lcom/google/firebase/iid/u;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/g/e;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/firebase/iid/x;->a:Lcom/google/firebase/iid/u;

    invoke-static {v0, p1}, Lcom/google/firebase/iid/u;->a(Lcom/google/firebase/iid/u;Landroid/os/Message;)V

    .line 3
    return-void
.end method
