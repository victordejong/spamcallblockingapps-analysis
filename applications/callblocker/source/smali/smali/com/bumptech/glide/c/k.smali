.class public Lcom/bumptech/glide/c/k;
.super Landroid/app/Fragment;
.source "RequestManagerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/c/k$a;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/c/a;

.field private final b:Lcom/bumptech/glide/c/m;

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/bumptech/glide/c/k;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/bumptech/glide/i;

.field private e:Lcom/bumptech/glide/c/k;

.field private f:Landroid/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/bumptech/glide/c/a;

    invoke-direct {v0}, Lcom/bumptech/glide/c/a;-><init>()V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/c/k;-><init>(Lcom/bumptech/glide/c/a;)V

    .line 46
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/c/a;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 33
    new-instance v0, Lcom/bumptech/glide/c/k$a;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/c/k$a;-><init>(Lcom/bumptech/glide/c/k;)V

    iput-object v0, p0, Lcom/bumptech/glide/c/k;->b:Lcom/bumptech/glide/c/m;

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/c/k;->c:Ljava/util/Set;

    .line 51
    iput-object p1, p0, Lcom/bumptech/glide/c/k;->a:Lcom/bumptech/glide/c/a;

    .line 52
    return-void
.end method

.method private a(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/bumptech/glide/c/k;->e()V

    .line 165
    invoke-static {p1}, Lcom/bumptech/glide/c;->a(Landroid/content/Context;)Lcom/bumptech/glide/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/c;->g()Lcom/bumptech/glide/c/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/c/l;->b(Landroid/app/Activity;)Lcom/bumptech/glide/c/k;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/c/k;->e:Lcom/bumptech/glide/c/k;

    .line 166
    iget-object v0, p0, Lcom/bumptech/glide/c/k;->e:Lcom/bumptech/glide/c/k;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/c/k;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/bumptech/glide/c/k;->e:Lcom/bumptech/glide/c/k;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/c/k;->a(Lcom/bumptech/glide/c/k;)V

    .line 169
    :cond_0
    return-void
.end method

.method private a(Lcom/bumptech/glide/c/k;)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/bumptech/glide/c/k;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 87
    return-void
.end method

.method private b(Lcom/bumptech/glide/c/k;)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/bumptech/glide/c/k;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 92
    return-void
.end method

.method private d()Landroid/app/Fragment;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 137
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/bumptech/glide/c/k;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 142
    :goto_0
    if-eqz v0, :cond_1

    :goto_1
    return-object v0

    .line 140
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/c/k;->f:Landroid/app/Fragment;

    goto :goto_1
.end method

.method private e()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/bumptech/glide/c/k;->e:Lcom/bumptech/glide/c/k;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/bumptech/glide/c/k;->e:Lcom/bumptech/glide/c/k;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/c/k;->b(Lcom/bumptech/glide/c/k;)V

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/c/k;->e:Lcom/bumptech/glide/c/k;

    .line 176
    :cond_0
    return-void
.end method


# virtual methods
.method a()Lcom/bumptech/glide/c/a;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/bumptech/glide/c/k;->a:Lcom/bumptech/glide/c/a;

    return-object v0
.end method

.method a(Landroid/app/Fragment;)V
    .locals 1

    .prologue
    .line 127
    iput-object p1, p0, Lcom/bumptech/glide/c/k;->f:Landroid/app/Fragment;

    .line 128
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/c/k;->a(Landroid/app/Activity;)V

    .line 131
    :cond_0
    return-void
.end method

.method public a(Lcom/bumptech/glide/i;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/bumptech/glide/c/k;->d:Lcom/bumptech/glide/i;

    .line 61
    return-void
.end method

.method public b()Lcom/bumptech/glide/i;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/bumptech/glide/c/k;->d:Lcom/bumptech/glide/i;

    return-object v0
.end method

.method public c()Lcom/bumptech/glide/c/m;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/bumptech/glide/c/k;->b:Lcom/bumptech/glide/c/m;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 181
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 183
    :try_start_0
    invoke-direct {p0, p1}, Lcom/bumptech/glide/c/k;->a(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 184
    :catch_0
    move-exception v0

    .line 186
    const-string/jumbo v1, "RMFragment"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    const-string/jumbo v1, "RMFragment"

    const-string/jumbo v2, "Unable to register fragment with root"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 212
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 213
    iget-object v0, p0, Lcom/bumptech/glide/c/k;->a:Lcom/bumptech/glide/c/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/c/a;->c()V

    .line 214
    invoke-direct {p0}, Lcom/bumptech/glide/c/k;->e()V

    .line 215
    return-void
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 194
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 195
    invoke-direct {p0}, Lcom/bumptech/glide/c/k;->e()V

    .line 196
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 200
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 201
    iget-object v0, p0, Lcom/bumptech/glide/c/k;->a:Lcom/bumptech/glide/c/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/c/a;->a()V

    .line 202
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 206
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 207
    iget-object v0, p0, Lcom/bumptech/glide/c/k;->a:Lcom/bumptech/glide/c/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/c/a;->b()V

    .line 208
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "{parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/bumptech/glide/c/k;->d()Landroid/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
