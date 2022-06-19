.class public Lcom/criteo/publisher/m0/i;
.super Landroid/os/ResultReceiver;
.source "SourceFile"


# instance fields
.field private final a:Lcom/criteo/publisher/l/d;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/criteo/publisher/l/d;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 48
    iput-object p2, p0, Lcom/criteo/publisher/m0/i;->a:Lcom/criteo/publisher/l/d;

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1

    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    const-string p1, "Action"

    .line 54
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/16 p2, 0xc9

    if-eq p1, p2, :cond_0

    const/16 p2, 0xca

    if-ne p1, p2, :cond_1

    .line 61
    iget-object p1, p0, Lcom/criteo/publisher/m0/i;->a:Lcom/criteo/publisher/l/d;

    sget-object p2, Lcom/criteo/publisher/o;->d:Lcom/criteo/publisher/o;

    invoke-virtual {p1, p2}, Lcom/criteo/publisher/l/d;->a(Lcom/criteo/publisher/o;)V

    return-void

    .line 58
    :cond_0
    iget-object p1, p0, Lcom/criteo/publisher/m0/i;->a:Lcom/criteo/publisher/l/d;

    sget-object p2, Lcom/criteo/publisher/o;->e:Lcom/criteo/publisher/o;

    invoke-virtual {p1, p2}, Lcom/criteo/publisher/l/d;->a(Lcom/criteo/publisher/o;)V

    :cond_1
    return-void
.end method
