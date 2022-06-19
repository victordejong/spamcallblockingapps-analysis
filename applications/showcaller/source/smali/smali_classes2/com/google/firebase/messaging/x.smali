.class final Lcom/google/firebase/messaging/x;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@21.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/messaging/x$c;,
        Lcom/google/firebase/messaging/x$b;,
        Lcom/google/firebase/messaging/x$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/content/Intent;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "MESSAGE_DELIVERED"

    const-string v0, "evenType must be non-null"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/o;->g(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/messaging/x;->a:Ljava/lang/String;

    const-string p1, "intent must be non-null"

    .line 2
    invoke-static {p2, p1}, Lcom/google/android/gms/common/internal/o;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    iput-object p1, p0, Lcom/google/firebase/messaging/x;->b:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/messaging/x;->a:Ljava/lang/String;

    return-object v0
.end method

.method b()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/messaging/x;->b:Landroid/content/Intent;

    return-object v0
.end method
