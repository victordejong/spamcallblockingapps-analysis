.class final Lcom/bumptech/glide/h/a/a$b;
.super Ljava/lang/Object;
.source "FactoryPools.java"

# interfaces
.implements Landroidx/core/g/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/h/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/core/g/e$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/h/a/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/h/a/a$a",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/bumptech/glide/h/a/a$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/h/a/a$d",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final c:Landroidx/core/g/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/g/e$a",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/core/g/e$a;Lcom/bumptech/glide/h/a/a$a;Lcom/bumptech/glide/h/a/a$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/g/e$a",
            "<TT;>;",
            "Lcom/bumptech/glide/h/a/a$a",
            "<TT;>;",
            "Lcom/bumptech/glide/h/a/a$d",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p1, p0, Lcom/bumptech/glide/h/a/a$b;->c:Landroidx/core/g/e$a;

    .line 151
    iput-object p2, p0, Lcom/bumptech/glide/h/a/a$b;->a:Lcom/bumptech/glide/h/a/a$a;

    .line 152
    iput-object p3, p0, Lcom/bumptech/glide/h/a/a$b;->b:Lcom/bumptech/glide/h/a/a$d;

    .line 153
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lcom/bumptech/glide/h/a/a$b;->c:Landroidx/core/g/e$a;

    invoke-interface {v0}, Landroidx/core/g/e$a;->a()Ljava/lang/Object;

    move-result-object v1

    .line 158
    if-nez v1, :cond_0

    .line 159
    iget-object v0, p0, Lcom/bumptech/glide/h/a/a$b;->a:Lcom/bumptech/glide/h/a/a$a;

    invoke-interface {v0}, Lcom/bumptech/glide/h/a/a$a;->b()Ljava/lang/Object;

    move-result-object v1

    .line 160
    const-string/jumbo v0, "FactoryPools"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    const-string/jumbo v0, "FactoryPools"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Created new "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_0
    instance-of v0, v1, Lcom/bumptech/glide/h/a/a$c;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 165
    check-cast v0, Lcom/bumptech/glide/h/a/a$c;

    invoke-interface {v0}, Lcom/bumptech/glide/h/a/a$c;->c_()Lcom/bumptech/glide/h/a/c;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/h/a/c;->a(Z)V

    .line 167
    :cond_1
    return-object v1
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 172
    instance-of v0, p1, Lcom/bumptech/glide/h/a/a$c;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 173
    check-cast v0, Lcom/bumptech/glide/h/a/a$c;

    invoke-interface {v0}, Lcom/bumptech/glide/h/a/a$c;->c_()Lcom/bumptech/glide/h/a/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/h/a/c;->a(Z)V

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/h/a/a$b;->b:Lcom/bumptech/glide/h/a/a$d;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/h/a/a$d;->a(Ljava/lang/Object;)V

    .line 176
    iget-object v0, p0, Lcom/bumptech/glide/h/a/a$b;->c:Landroidx/core/g/e$a;

    invoke-interface {v0, p1}, Landroidx/core/g/e$a;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
