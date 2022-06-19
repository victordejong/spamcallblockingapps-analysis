.class public abstract Landroidx/fragment/app/h;
.super Landroidx/fragment/app/e;
.source "FragmentHostCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/fragment/app/e;"
    }
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field final b:Landroidx/fragment/app/j;

.field private final c:Landroid/content/Context;

.field private final d:Landroid/os/Handler;

.field private final e:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Landroidx/fragment/app/e;-><init>()V

    .line 49
    new-instance v0, Landroidx/fragment/app/j;

    invoke-direct {v0}, Landroidx/fragment/app/j;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/h;->b:Landroidx/fragment/app/j;

    .line 63
    iput-object p1, p0, Landroidx/fragment/app/h;->a:Landroid/app/Activity;

    .line 64
    const-string/jumbo v0, "context == null"

    invoke-static {p2, v0}, Landroidx/core/g/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroidx/fragment/app/h;->c:Landroid/content/Context;

    .line 65
    const-string/jumbo v0, "handler == null"

    invoke-static {p3, v0}, Landroidx/core/g/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iput-object v0, p0, Landroidx/fragment/app/h;->d:Landroid/os/Handler;

    .line 66
    iput p4, p0, Landroidx/fragment/app/h;->e:I

    .line 67
    return-void
.end method

.method constructor <init>(Landroidx/fragment/app/d;)V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, p1, v0, v1}, Landroidx/fragment/app/h;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    .line 59
    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 2
    .param p2    # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    .prologue
    .line 129
    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    .line 130
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Starting activity with a requestCode requires a FragmentActivity host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/h;->c:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 134
    return-void
.end method

.method public a(Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 158
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x1

    return v0
.end method

.method public a(Landroidx/fragment/app/Fragment;)Z
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method b(Landroidx/fragment/app/Fragment;)V
    .locals 0

    .prologue
    .line 209
    return-void
.end method

.method public e()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Landroidx/fragment/app/h;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public g()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x1

    return v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Landroidx/fragment/app/h;->e:I

    return v0
.end method

.method public abstract j()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method

.method k()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Landroidx/fragment/app/h;->a:Landroid/app/Activity;

    return-object v0
.end method

.method l()Landroid/content/Context;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Landroidx/fragment/app/h;->c:Landroid/content/Context;

    return-object v0
.end method

.method m()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Landroidx/fragment/app/h;->d:Landroid/os/Handler;

    return-object v0
.end method
