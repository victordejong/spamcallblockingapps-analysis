.class final Lcom/google/firebase/messaging/y;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/messaging/y$c;,
        Lcom/google/firebase/messaging/y$b;,
        Lcom/google/firebase/messaging/y$a;
    }
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Landroid/content/Intent;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "MESSAGE_DELIVERED"

    const-string v0, "evenType must be non-null"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/messaging/y;->a:Ljava/lang/String;

    const-string p1, "intent must be non-null"

    .line 2
    invoke-static {p2, p1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    iput-object p1, p0, Lcom/google/firebase/messaging/y;->b:Landroid/content/Intent;

    return-void
.end method
