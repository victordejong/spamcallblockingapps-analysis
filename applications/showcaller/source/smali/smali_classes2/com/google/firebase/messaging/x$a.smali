.class Lcom/google/firebase/messaging/x$a;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@21.1.0"

# interfaces
.implements Lcom/google/firebase/encoders/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/messaging/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/encoders/c<",
        "Lcom/google/firebase/messaging/x;",
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

    .line 1
    check-cast p1, Lcom/google/firebase/messaging/x;

    check-cast p2, Lcom/google/firebase/encoders/d;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/messaging/x$a;->b(Lcom/google/firebase/messaging/x;Lcom/google/firebase/encoders/d;)V

    return-void
.end method

.method public b(Lcom/google/firebase/messaging/x;Lcom/google/firebase/encoders/d;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/google/firebase/messaging/x;->b()Landroid/content/Intent;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/google/firebase/messaging/e0;->q(Landroid/content/Intent;)I

    move-result v1

    const-string v2, "ttl"

    invoke-interface {p2, v2, v1}, Lcom/google/firebase/encoders/d;->d(Ljava/lang/String;I)Lcom/google/firebase/encoders/d;

    .line 3
    invoke-virtual {p1}, Lcom/google/firebase/messaging/x;->a()Ljava/lang/String;

    move-result-object p1

    const-string v1, "event"

    invoke-interface {p2, v1, p1}, Lcom/google/firebase/encoders/d;->g(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/d;

    .line 4
    invoke-static {v0}, Lcom/google/firebase/messaging/e0;->e(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "instanceId"

    .line 5
    invoke-interface {p2, v1, p1}, Lcom/google/firebase/encoders/d;->g(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/d;

    .line 6
    invoke-static {v0}, Lcom/google/firebase/messaging/e0;->n(Landroid/content/Intent;)I

    move-result p1

    const-string v1, "priority"

    invoke-interface {p2, v1, p1}, Lcom/google/firebase/encoders/d;->d(Ljava/lang/String;I)Lcom/google/firebase/encoders/d;

    .line 7
    invoke-static {}, Lcom/google/firebase/messaging/e0;->m()Ljava/lang/String;

    move-result-object p1

    const-string v1, "packageName"

    invoke-interface {p2, v1, p1}, Lcom/google/firebase/encoders/d;->g(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/d;

    const-string p1, "sdkPlatform"

    const-string v1, "ANDROID"

    .line 8
    invoke-interface {p2, p1, v1}, Lcom/google/firebase/encoders/d;->g(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/d;

    .line 9
    invoke-static {v0}, Lcom/google/firebase/messaging/e0;->k(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "messageType"

    .line 10
    invoke-interface {p2, v1, p1}, Lcom/google/firebase/encoders/d;->g(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/d;

    .line 11
    invoke-static {v0}, Lcom/google/firebase/messaging/e0;->g(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "messageId"

    .line 12
    invoke-interface {p2, v1, p1}, Lcom/google/firebase/encoders/d;->g(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/d;

    .line 13
    :cond_0
    invoke-static {v0}, Lcom/google/firebase/messaging/e0;->p(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v1, "topic"

    .line 14
    invoke-interface {p2, v1, p1}, Lcom/google/firebase/encoders/d;->g(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/d;

    .line 15
    :cond_1
    invoke-static {v0}, Lcom/google/firebase/messaging/e0;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v1, "collapseKey"

    .line 16
    invoke-interface {p2, v1, p1}, Lcom/google/firebase/encoders/d;->g(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/d;

    .line 17
    :cond_2
    invoke-static {v0}, Lcom/google/firebase/messaging/e0;->h(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 18
    invoke-static {v0}, Lcom/google/firebase/messaging/e0;->h(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "analyticsLabel"

    .line 19
    invoke-interface {p2, v1, p1}, Lcom/google/firebase/encoders/d;->g(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/d;

    .line 20
    :cond_3
    invoke-static {v0}, Lcom/google/firebase/messaging/e0;->d(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 21
    invoke-static {v0}, Lcom/google/firebase/messaging/e0;->d(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "composerLabel"

    .line 22
    invoke-interface {p2, v1, p1}, Lcom/google/firebase/encoders/d;->g(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/d;

    .line 23
    :cond_4
    invoke-static {v0}, Lcom/google/firebase/messaging/e0;->o(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string v0, "projectNumber"

    .line 24
    invoke-interface {p2, v0, p1}, Lcom/google/firebase/encoders/d;->g(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/d;

    :cond_5
    return-void
.end method
