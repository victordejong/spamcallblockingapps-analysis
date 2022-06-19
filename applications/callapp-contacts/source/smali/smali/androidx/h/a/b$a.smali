.class public final Landroidx/h/a/b$a;
.super Landroidx/lifecycle/t;
.source "SourceFile"

# interfaces
.implements Landroidx/h/b/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/h/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/lifecycle/t<",
        "TD;>;",
        "Landroidx/h/b/c$b<",
        "TD;>;"
    }
.end annotation


# instance fields
.field final g:I

.field final h:Landroid/os/Bundle;

.field final i:Landroidx/h/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/h/b/c<",
            "TD;>;"
        }
    .end annotation
.end field

.field j:Landroidx/h/a/b$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/h/a/b$b<",
            "TD;>;"
        }
    .end annotation
.end field

.field private k:Landroidx/lifecycle/p;

.field private l:Landroidx/h/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/h/b/c<",
            "TD;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILandroid/os/Bundle;Landroidx/h/b/c;Landroidx/h/b/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Landroidx/h/b/c<",
            "TD;>;",
            "Landroidx/h/b/c<",
            "TD;>;)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Landroidx/lifecycle/t;-><init>()V

    .line 61
    iput p1, p0, Landroidx/h/a/b$a;->g:I

    .line 62
    iput-object p2, p0, Landroidx/h/a/b$a;->h:Landroid/os/Bundle;

    .line 63
    iput-object p3, p0, Landroidx/h/a/b$a;->i:Landroidx/h/b/c;

    .line 64
    iput-object p4, p0, Landroidx/h/a/b$a;->l:Landroidx/h/b/c;

    .line 1172
    iget-object p2, p3, Landroidx/h/b/c;->h:Landroidx/h/b/c$b;

    if-nez p2, :cond_0

    .line 1175
    iput-object p0, p3, Landroidx/h/b/c;->h:Landroidx/h/b/c$b;

    .line 1176
    iput p1, p3, Landroidx/h/b/c;->g:I

    return-void

    .line 1173
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "There is already a listener registered"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method final a(Landroidx/lifecycle/p;Landroidx/h/a/a$a;)Landroidx/h/b/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/p;",
            "Landroidx/h/a/a$a<",
            "TD;>;)",
            "Landroidx/h/b/c<",
            "TD;>;"
        }
    .end annotation

    .line 97
    new-instance v0, Landroidx/h/a/b$b;

    iget-object v1, p0, Landroidx/h/a/b$a;->i:Landroidx/h/b/c;

    invoke-direct {v0, v1, p2}, Landroidx/h/a/b$b;-><init>(Landroidx/h/b/c;Landroidx/h/a/a$a;)V

    .line 99
    invoke-virtual {p0, p1, v0}, Landroidx/h/a/b$a;->a(Landroidx/lifecycle/p;Landroidx/lifecycle/u;)V

    .line 101
    iget-object p2, p0, Landroidx/h/a/b$a;->j:Landroidx/h/a/b$b;

    if-eqz p2, :cond_0

    .line 102
    invoke-virtual {p0, p2}, Landroidx/h/a/b$a;->a(Landroidx/lifecycle/u;)V

    .line 104
    :cond_0
    iput-object p1, p0, Landroidx/h/a/b$a;->k:Landroidx/lifecycle/p;

    .line 105
    iput-object v0, p0, Landroidx/h/a/b$a;->j:Landroidx/h/a/b$b;

    .line 106
    iget-object p1, p0, Landroidx/h/a/b$a;->i:Landroidx/h/b/c;

    return-object p1
.end method

.method final a(Z)Landroidx/h/b/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroidx/h/b/c<",
            "TD;>;"
        }
    .end annotation

    .line 148
    sget-boolean v0, Landroidx/h/a/b;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  Destroying: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 150
    :cond_0
    iget-object v0, p0, Landroidx/h/a/b$a;->i:Landroidx/h/b/c;

    invoke-virtual {v0}, Landroidx/h/b/c;->n()Z

    .line 151
    iget-object v0, p0, Landroidx/h/a/b$a;->i:Landroidx/h/b/c;

    const/4 v1, 0x1

    .line 1408
    iput-boolean v1, v0, Landroidx/h/b/c;->i:Z

    .line 153
    iget-object v0, p0, Landroidx/h/a/b$a;->j:Landroidx/h/a/b$b;

    if-eqz v0, :cond_1

    .line 155
    invoke-virtual {p0, v0}, Landroidx/h/a/b$a;->a(Landroidx/lifecycle/u;)V

    if-eqz p1, :cond_1

    .line 157
    invoke-virtual {v0}, Landroidx/h/a/b$b;->a()V

    .line 161
    :cond_1
    iget-object v1, p0, Landroidx/h/a/b$a;->i:Landroidx/h/b/c;

    invoke-virtual {v1, p0}, Landroidx/h/b/c;->a(Landroidx/h/b/c$b;)V

    if-eqz v0, :cond_2

    .line 2258
    iget-boolean v0, v0, Landroidx/h/a/b$b;->a:Z

    if-eqz v0, :cond_3

    :cond_2
    if-eqz p1, :cond_4

    .line 163
    :cond_3
    iget-object p1, p0, Landroidx/h/a/b$a;->i:Landroidx/h/b/c;

    invoke-virtual {p1}, Landroidx/h/b/c;->q()V

    .line 164
    iget-object p1, p0, Landroidx/h/a/b$a;->l:Landroidx/h/b/c;

    return-object p1

    .line 166
    :cond_4
    iget-object p1, p0, Landroidx/h/a/b$a;->i:Landroidx/h/b/c;

    return-object p1
.end method

.method public final a()V
    .locals 2

    .line 75
    sget-boolean v0, Landroidx/h/a/b;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  Starting: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    :cond_0
    iget-object v0, p0, Landroidx/h/a/b$a;->i:Landroidx/h/b/c;

    invoke-virtual {v0}, Landroidx/h/b/c;->m()V

    return-void
.end method

.method public final a(Landroidx/lifecycle/u;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/u<",
            "-TD;>;)V"
        }
    .end annotation

    .line 133
    invoke-super {p0, p1}, Landroidx/lifecycle/t;->a(Landroidx/lifecycle/u;)V

    const/4 p1, 0x0

    .line 135
    iput-object p1, p0, Landroidx/h/a/b$a;->k:Landroidx/lifecycle/p;

    .line 136
    iput-object p1, p0, Landroidx/h/a/b$a;->j:Landroidx/h/a/b$b;

    return-void
.end method

.method public final b()V
    .locals 2

    .line 81
    sget-boolean v0, Landroidx/h/a/b;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  Stopping: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    :cond_0
    iget-object v0, p0, Landroidx/h/a/b$a;->i:Landroidx/h/b/c;

    invoke-virtual {v0}, Landroidx/h/b/c;->p()V

    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 188
    invoke-super {p0, p1}, Landroidx/lifecycle/t;->b(Ljava/lang/Object;)V

    .line 190
    iget-object p1, p0, Landroidx/h/a/b$a;->l:Landroidx/h/b/c;

    if-eqz p1, :cond_0

    .line 191
    invoke-virtual {p1}, Landroidx/h/b/c;->q()V

    const/4 p1, 0x0

    .line 192
    iput-object p1, p0, Landroidx/h/a/b$a;->l:Landroidx/h/b/c;

    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 171
    sget-boolean v0, Landroidx/h/a/b;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onLoadComplete: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 172
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 173
    invoke-virtual {p0, p1}, Landroidx/h/a/b$a;->b(Ljava/lang/Object;)V

    return-void

    .line 178
    :cond_1
    sget-boolean v0, Landroidx/h/a/b;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "LoaderManager"

    const-string v1, "onLoadComplete was incorrectly called on a background thread"

    .line 179
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_2
    invoke-virtual {p0, p1}, Landroidx/h/a/b$a;->a(Ljava/lang/Object;)V

    return-void
.end method

.method final d()V
    .locals 2

    .line 110
    iget-object v0, p0, Landroidx/h/a/b$a;->k:Landroidx/lifecycle/p;

    .line 111
    iget-object v1, p0, Landroidx/h/a/b$a;->j:Landroidx/h/a/b$b;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 117
    invoke-super {p0, v1}, Landroidx/lifecycle/t;->a(Landroidx/lifecycle/u;)V

    .line 118
    invoke-virtual {p0, v0, v1}, Landroidx/h/a/b$a;->a(Landroidx/lifecycle/p;Landroidx/lifecycle/u;)V

    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "LoaderInfo{"

    .line 200
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " #"

    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    iget v1, p0, Landroidx/h/a/b$a;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    iget-object v1, p0, Landroidx/h/a/b$a;->i:Landroidx/h/b/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 206
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "{"

    .line 207
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}}"

    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
