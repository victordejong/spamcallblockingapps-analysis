.class final synthetic Lcom/google/firebase/messaging/d;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@21.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lcom/google/firebase/messaging/EnhancedIntentService;

.field private final e:Landroid/content/Intent;

.field private final f:Lcom/google/android/gms/tasks/h;


# direct methods
.method constructor <init>(Lcom/google/firebase/messaging/EnhancedIntentService;Landroid/content/Intent;Lcom/google/android/gms/tasks/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/d;->d:Lcom/google/firebase/messaging/EnhancedIntentService;

    iput-object p2, p0, Lcom/google/firebase/messaging/d;->e:Landroid/content/Intent;

    iput-object p3, p0, Lcom/google/firebase/messaging/d;->f:Lcom/google/android/gms/tasks/h;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/messaging/d;->d:Lcom/google/firebase/messaging/EnhancedIntentService;

    iget-object v1, p0, Lcom/google/firebase/messaging/d;->e:Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/firebase/messaging/d;->f:Lcom/google/android/gms/tasks/h;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/messaging/EnhancedIntentService;->g(Landroid/content/Intent;Lcom/google/android/gms/tasks/h;)V

    return-void
.end method
