.class final Lcom/google/firebase/iid/p;
.super Lcom/google/firebase/iid/n;
.source "com.google.firebase:firebase-iid@@20.1.5"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/iid/n",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(IILandroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p3}, Lcom/google/firebase/iid/n;-><init>(IILandroid/os/Bundle;)V

    .line 2
    return-void
.end method


# virtual methods
.method final a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 4
    const-string/jumbo v0, "data"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 7
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/firebase/iid/n;->a(Ljava/lang/Object;)V

    .line 8
    return-void
.end method

.method final a()Z
    .locals 1

    .prologue
    .line 3
    const/4 v0, 0x0

    return v0
.end method
