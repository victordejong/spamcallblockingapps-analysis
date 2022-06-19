.class final Lcom/google/firebase/messaging/y$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/encoders/d;


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
        "Lcom/google/firebase/encoders/d<",
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
.method public final synthetic encode(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    check-cast p1, Lcom/google/firebase/messaging/y$b;

    check-cast p2, Lcom/google/firebase/encoders/e;

    .line 2000
    iget-object p1, p1, Lcom/google/firebase/messaging/y$b;->a:Lcom/google/firebase/messaging/y;

    const-string v0, "messaging_client_event"

    .line 1002
    invoke-interface {p2, v0, p1}, Lcom/google/firebase/encoders/e;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/e;

    return-void
.end method
