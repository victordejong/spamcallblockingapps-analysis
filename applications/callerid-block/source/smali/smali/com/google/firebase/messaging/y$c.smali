.class final Lcom/google/firebase/messaging/y$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/firebase/encoders/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/messaging/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/encoders/c<",
        "Lcom/google/firebase/messaging/y$b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/firebase/messaging/y$b;

    check-cast p2, Lcom/google/firebase/encoders/d;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/messaging/y$c;->b(Lcom/google/firebase/messaging/y$b;Lcom/google/firebase/encoders/d;)V

    return-void
.end method

.method public b(Lcom/google/firebase/messaging/y$b;Lcom/google/firebase/encoders/d;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/firebase/messaging/y$b;->a()Lcom/google/firebase/messaging/y;

    move-result-object p1

    const-string v0, "messaging_client_event"

    invoke-interface {p2, v0, p1}, Lcom/google/firebase/encoders/d;->g(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/d;

    return-void
.end method
