.class final synthetic Lcom/google/firebase/iid/bb;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@20.1.5"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/firebase/iid/bc;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Landroid/os/Bundle;

.field private final f:Lcom/google/android/gms/tasks/h;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/bc;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/tasks/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/bb;->a:Lcom/google/firebase/iid/bc;

    iput-object p2, p0, Lcom/google/firebase/iid/bb;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/firebase/iid/bb;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/firebase/iid/bb;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/firebase/iid/bb;->e:Landroid/os/Bundle;

    iput-object p6, p0, Lcom/google/firebase/iid/bb;->f:Lcom/google/android/gms/tasks/h;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/firebase/iid/bb;->a:Lcom/google/firebase/iid/bc;

    iget-object v1, p0, Lcom/google/firebase/iid/bb;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/firebase/iid/bb;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/firebase/iid/bb;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/firebase/iid/bb;->e:Landroid/os/Bundle;

    iget-object v5, p0, Lcom/google/firebase/iid/bb;->f:Lcom/google/android/gms/tasks/h;

    invoke-virtual/range {v0 .. v5}, Lcom/google/firebase/iid/bc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/tasks/h;)V

    return-void
.end method
