.class public final Landroidx/savedstate/a;
.super Ljava/lang/Object;
.source "SavedStateRegistry.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/savedstate/a$b;,
        Landroidx/savedstate/a$a;
    }
.end annotation


# instance fields
.field a:Z

.field private b:Landroidx/a/a/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/a/a/b/b",
            "<",
            "Ljava/lang/String;",
            "Landroidx/savedstate/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/os/Bundle;

.field private d:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroidx/a/a/b/b;

    invoke-direct {v0}, Landroidx/a/a/b/b;-><init>()V

    iput-object v0, p0, Landroidx/savedstate/a;->b:Landroidx/a/a/b/b;

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/savedstate/a;->a:Z

    .line 53
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 76
    iget-boolean v0, p0, Landroidx/savedstate/a;->d:Z

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "You can consumeRestoredStateForKey only after super.onCreate of corresponding component"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    iget-object v0, p0, Landroidx/savedstate/a;->c:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 81
    iget-object v0, p0, Landroidx/savedstate/a;->c:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 82
    iget-object v2, p0, Landroidx/savedstate/a;->c:Landroid/os/Bundle;

    invoke-virtual {v2, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 83
    iget-object v2, p0, Landroidx/savedstate/a;->c:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 84
    iput-object v1, p0, Landroidx/savedstate/a;->c:Landroid/os/Bundle;

    .line 88
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method a(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 220
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 221
    iget-object v0, p0, Landroidx/savedstate/a;->c:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Landroidx/savedstate/a;->c:Landroid/os/Bundle;

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 224
    :cond_0
    iget-object v0, p0, Landroidx/savedstate/a;->b:Landroidx/a/a/b/b;

    .line 225
    invoke-virtual {v0}, Landroidx/a/a/b/b;->c()Landroidx/a/a/b/b$d;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 227
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/savedstate/a$b;

    invoke-interface {v0}, Landroidx/savedstate/a$b;->a()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 229
    :cond_1
    const-string/jumbo v0, "androidx.lifecycle.BundlableSavedStateRegistry.key"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 230
    return-void
.end method

.method a(Landroidx/lifecycle/e;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 190
    iget-boolean v0, p0, Landroidx/savedstate/a;->d:Z

    if-eqz v0, :cond_0

    .line 191
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "SavedStateRegistry was already restored."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_0
    if-eqz p2, :cond_1

    .line 194
    const-string/jumbo v0, "androidx.lifecycle.BundlableSavedStateRegistry.key"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroidx/savedstate/a;->c:Landroid/os/Bundle;

    .line 197
    :cond_1
    new-instance v0, Landroidx/savedstate/SavedStateRegistry$1;

    invoke-direct {v0, p0}, Landroidx/savedstate/SavedStateRegistry$1;-><init>(Landroidx/savedstate/a;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/e;->a(Landroidx/lifecycle/g;)V

    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/savedstate/a;->d:Z

    .line 209
    return-void
.end method
