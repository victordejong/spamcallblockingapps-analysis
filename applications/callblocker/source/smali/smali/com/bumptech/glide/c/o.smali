.class public Lcom/bumptech/glide/c/o;
.super Landroidx/fragment/app/Fragment;
.source "SupportRequestManagerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/c/o$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/c/a;

.field private final b:Lcom/bumptech/glide/c/m;

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/bumptech/glide/c/o;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/bumptech/glide/c/o;

.field private e:Lcom/bumptech/glide/i;

.field private f:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/bumptech/glide/c/a;

    invoke-direct {v0}, Lcom/bumptech/glide/c/a;-><init>()V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/c/o;-><init>(Lcom/bumptech/glide/c/a;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/c/a;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 30
    new-instance v0, Lcom/bumptech/glide/c/o$a;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/c/o$a;-><init>(Lcom/bumptech/glide/c/o;)V

    iput-object v0, p0, Lcom/bumptech/glide/c/o;->b:Lcom/bumptech/glide/c/m;

    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/c/o;->c:Ljava/util/Set;

    .line 45
    iput-object p1, p0, Lcom/bumptech/glide/c/o;->a:Lcom/bumptech/glide/c/a;

    .line 46
    return-void
.end method

.method private a(Landroidx/fragment/app/d;)V
    .locals 1

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/bumptech/glide/c/o;->as()V

    .line 146
    invoke-static {p1}, Lcom/bumptech/glide/c;->a(Landroid/content/Context;)Lcom/bumptech/glide/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/c;->g()Lcom/bumptech/glide/c/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/c/l;->b(Landroidx/fragment/app/d;)Lcom/bumptech/glide/c/o;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/c/o;->d:Lcom/bumptech/glide/c/o;

    .line 147
    iget-object v0, p0, Lcom/bumptech/glide/c/o;->d:Lcom/bumptech/glide/c/o;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/c/o;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/bumptech/glide/c/o;->d:Lcom/bumptech/glide/c/o;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/c/o;->a(Lcom/bumptech/glide/c/o;)V

    .line 150
    :cond_0
    return-void
.end method

.method private a(Lcom/bumptech/glide/c/o;)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/bumptech/glide/c/o;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    return-void
.end method

.method private as()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/bumptech/glide/c/o;->d:Lcom/bumptech/glide/c/o;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/bumptech/glide/c/o;->d:Lcom/bumptech/glide/c/o;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/c/o;->b(Lcom/bumptech/glide/c/o;)V

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/c/o;->d:Lcom/bumptech/glide/c/o;

    .line 157
    :cond_0
    return-void
.end method

.method private b(Lcom/bumptech/glide/c/o;)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/bumptech/glide/c/o;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 86
    return-void
.end method

.method private g()Landroidx/fragment/app/Fragment;
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/bumptech/glide/c/o;->y()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/c/o;->f:Landroidx/fragment/app/Fragment;

    goto :goto_0
.end method


# virtual methods
.method public K()V
    .locals 1

    .prologue
    .line 193
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->K()V

    .line 194
    iget-object v0, p0, Lcom/bumptech/glide/c/o;->a:Lcom/bumptech/glide/c/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/c/a;->c()V

    .line 195
    invoke-direct {p0}, Lcom/bumptech/glide/c/o;->as()V

    .line 196
    return-void
.end method

.method a()Lcom/bumptech/glide/c/a;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/bumptech/glide/c/o;->a:Lcom/bumptech/glide/c/a;

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 161
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->a(Landroid/content/Context;)V

    .line 163
    :try_start_0
    invoke-virtual {p0}, Lcom/bumptech/glide/c/o;->r()Landroidx/fragment/app/d;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/c/o;->a(Landroidx/fragment/app/d;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 164
    :catch_0
    move-exception v0

    .line 166
    const-string/jumbo v1, "SupportRMFragment"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    const-string/jumbo v1, "SupportRMFragment"

    const-string/jumbo v2, "Unable to register fragment with root"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public a(Lcom/bumptech/glide/i;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/bumptech/glide/c/o;->e:Lcom/bumptech/glide/i;

    .line 55
    return-void
.end method

.method b(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .prologue
    .line 116
    iput-object p1, p0, Lcom/bumptech/glide/c/o;->f:Landroidx/fragment/app/Fragment;

    .line 117
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->r()Landroidx/fragment/app/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->r()Landroidx/fragment/app/d;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/c/o;->a(Landroidx/fragment/app/d;)V

    .line 120
    :cond_0
    return-void
.end method

.method public d()Lcom/bumptech/glide/i;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/bumptech/glide/c/o;->e:Lcom/bumptech/glide/i;

    return-object v0
.end method

.method public f()Lcom/bumptech/glide/c/m;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/bumptech/glide/c/o;->b:Lcom/bumptech/glide/c/m;

    return-object v0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 174
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->h()V

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/c/o;->f:Landroidx/fragment/app/Fragment;

    .line 176
    invoke-direct {p0}, Lcom/bumptech/glide/c/o;->as()V

    .line 177
    return-void
.end method

.method public i()V
    .locals 1

    .prologue
    .line 181
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->i()V

    .line 182
    iget-object v0, p0, Lcom/bumptech/glide/c/o;->a:Lcom/bumptech/glide/c/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/c/a;->a()V

    .line 183
    return-void
.end method

.method public j()V
    .locals 1

    .prologue
    .line 187
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->j()V

    .line 188
    iget-object v0, p0, Lcom/bumptech/glide/c/o;->a:Lcom/bumptech/glide/c/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/c/a;->b()V

    .line 189
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "{parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/bumptech/glide/c/o;->g()Landroidx/fragment/app/Fragment;

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
