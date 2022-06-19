.class final Lcom/google/firebase/messaging/y$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/encoders/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/messaging/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/encoders/d<",
        "Lcom/google/firebase/messaging/y;",
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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    check-cast p1, Lcom/google/firebase/messaging/y;

    check-cast p2, Lcom/google/firebase/encoders/e;

    .line 2000
    iget-object v0, p1, Lcom/google/firebase/messaging/y;->b:Landroid/content/Intent;

    .line 1002
    invoke-static {v0}, Lcom/google/firebase/messaging/ae;->f(Landroid/content/Intent;)I

    move-result v1

    const-string v2, "ttl"

    invoke-interface {p2, v2, v1}, Lcom/google/firebase/encoders/e;->add(Ljava/lang/String;I)Lcom/google/firebase/encoders/e;

    .line 3000
    iget-object p1, p1, Lcom/google/firebase/messaging/y;->a:Ljava/lang/String;

    const-string v1, "event"

    .line 1003
    invoke-interface {p2, v1, p1}, Lcom/google/firebase/encoders/e;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/e;

    .line 1004
    invoke-static {v0}, Lcom/google/firebase/messaging/ae;->k(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "instanceId"

    .line 1005
    invoke-interface {p2, v1, p1}, Lcom/google/firebase/encoders/e;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/e;

    .line 1006
    invoke-static {v0}, Lcom/google/firebase/messaging/ae;->n(Landroid/content/Intent;)I

    move-result p1

    const-string v1, "priority"

    invoke-interface {p2, v1, p1}, Lcom/google/firebase/encoders/e;->add(Ljava/lang/String;I)Lcom/google/firebase/encoders/e;

    .line 1007
    invoke-static {}, Lcom/google/firebase/messaging/ae;->a()Ljava/lang/String;

    move-result-object p1

    const-string v1, "packageName"

    invoke-interface {p2, v1, p1}, Lcom/google/firebase/encoders/e;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/e;

    const-string p1, "sdkPlatform"

    const-string v1, "ANDROID"

    .line 1008
    invoke-interface {p2, p1, v1}, Lcom/google/firebase/encoders/e;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/e;

    .line 1009
    invoke-static {v0}, Lcom/google/firebase/messaging/ae;->l(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "messageType"

    .line 1010
    invoke-interface {p2, v1, p1}, Lcom/google/firebase/encoders/e;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/e;

    .line 1011
    invoke-static {v0}, Lcom/google/firebase/messaging/ae;->j(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "messageId"

    .line 1012
    invoke-interface {p2, v1, p1}, Lcom/google/firebase/encoders/e;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/e;

    .line 1013
    :cond_0
    invoke-static {v0}, Lcom/google/firebase/messaging/ae;->m(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v1, "topic"

    .line 1014
    invoke-interface {p2, v1, p1}, Lcom/google/firebase/encoders/e;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/e;

    .line 1015
    :cond_1
    invoke-static {v0}, Lcom/google/firebase/messaging/ae;->g(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v1, "collapseKey"

    .line 1016
    invoke-interface {p2, v1, p1}, Lcom/google/firebase/encoders/e;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/e;

    .line 1017
    :cond_2
    invoke-static {v0}, Lcom/google/firebase/messaging/ae;->i(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1018
    invoke-static {v0}, Lcom/google/firebase/messaging/ae;->i(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "analyticsLabel"

    .line 1019
    invoke-interface {p2, v1, p1}, Lcom/google/firebase/encoders/e;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/e;

    .line 1020
    :cond_3
    invoke-static {v0}, Lcom/google/firebase/messaging/ae;->h(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1021
    invoke-static {v0}, Lcom/google/firebase/messaging/ae;->h(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "composerLabel"

    .line 1022
    invoke-interface {p2, v1, p1}, Lcom/google/firebase/encoders/e;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/e;

    .line 1023
    :cond_4
    invoke-static {v0}, Lcom/google/firebase/messaging/ae;->o(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string v0, "projectNumber"

    .line 1024
    invoke-interface {p2, v0, p1}, Lcom/google/firebase/encoders/e;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/e;

    :cond_5
    return-void
.end method
