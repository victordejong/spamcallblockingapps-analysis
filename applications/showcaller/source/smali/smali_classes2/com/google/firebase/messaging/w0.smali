.class final synthetic Lcom/google/firebase/messaging/w0;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@21.1.0"

# interfaces
.implements Lcom/google/android/gms/tasks/c;


# instance fields
.field private final a:Lcom/google/firebase/messaging/a1$a;


# direct methods
.method constructor <init>(Lcom/google/firebase/messaging/a1$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/w0;->a:Lcom/google/firebase/messaging/a1$a;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/tasks/g;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/messaging/w0;->a:Lcom/google/firebase/messaging/a1$a;

    invoke-static {v0, p1}, Lcom/google/firebase/messaging/x0;->a(Lcom/google/firebase/messaging/a1$a;Lcom/google/android/gms/tasks/g;)V

    return-void
.end method
