.class final synthetic Lcom/google/firebase/messaging/z;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@21.1.0"

# interfaces
.implements Lcom/google/android/gms/tasks/a;


# instance fields
.field private final a:Lcom/google/firebase/messaging/a0;


# direct methods
.method constructor <init>(Lcom/google/firebase/messaging/a0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/z;->a:Lcom/google/firebase/messaging/a0;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/tasks/g;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/messaging/z;->a:Lcom/google/firebase/messaging/a0;

    invoke-virtual {v0, p1}, Lcom/google/firebase/messaging/a0;->g(Lcom/google/android/gms/tasks/g;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
