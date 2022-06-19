.class final synthetic Lcom/google/firebase/iid/ag;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@20.1.5"

# interfaces
.implements Lcom/google/android/gms/tasks/c;


# instance fields
.field private final a:Lcom/google/firebase/iid/ah;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/ah;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/ag;->a:Lcom/google/firebase/iid/ah;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/tasks/g;)V
    .locals 1

    .prologue
    .line 1
    iget-object v0, p0, Lcom/google/firebase/iid/ag;->a:Lcom/google/firebase/iid/ah;

    .line 2
    invoke-virtual {v0}, Lcom/google/firebase/iid/ah;->b()V

    .line 3
    return-void
.end method
