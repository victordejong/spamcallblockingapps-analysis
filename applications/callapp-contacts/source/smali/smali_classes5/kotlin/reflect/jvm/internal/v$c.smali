.class final Lkotlin/reflect/jvm/internal/v$c;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/v;->a(Lkotlin/reflect/jvm/internal/u$a;Z)Lkotlin/reflect/jvm/internal/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/reflect/Field;",
        "Lkotlin/reflect/jvm/internal/a/e<",
        "+",
        "Ljava/lang/reflect/Field;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "computeFieldCaller",
        "Lkotlin/reflect/jvm/internal/calls/CallerImpl;",
        "Ljava/lang/reflect/Field;",
        "field",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/u$a;

.field final synthetic b:Z

.field final synthetic c:Lkotlin/reflect/jvm/internal/v$b;

.field final synthetic d:Lkotlin/reflect/jvm/internal/v$a;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/u$a;ZLkotlin/reflect/jvm/internal/v$b;Lkotlin/reflect/jvm/internal/v$a;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/v$c;->a:Lkotlin/reflect/jvm/internal/u$a;

    iput-boolean p2, p0, Lkotlin/reflect/jvm/internal/v$c;->b:Z

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/v$c;->c:Lkotlin/reflect/jvm/internal/v$b;

    iput-object p4, p0, Lkotlin/reflect/jvm/internal/v$c;->d:Lkotlin/reflect/jvm/internal/v$a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/reflect/Field;)Lkotlin/reflect/jvm/internal/a/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Lkotlin/reflect/jvm/internal/a/e<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    const-string v0, "field"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/v$c;->a:Lkotlin/reflect/jvm/internal/u$a;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/u$a;->a()Lkotlin/reflect/jvm/internal/u;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/u;->l()Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/v;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/an;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 200
    :cond_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/v$c;->d:Lkotlin/reflect/jvm/internal/v$a;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/v$a;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 201
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/v$c;->b:Z

    if-eqz v0, :cond_2

    .line 202
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/v$c;->a:Lkotlin/reflect/jvm/internal/u$a;

    .line 3138
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/u$a;->a()Lkotlin/reflect/jvm/internal/u;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/u;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    new-instance v0, Lkotlin/reflect/jvm/internal/a/e$f$b;

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/a/e$f$b;-><init>(Ljava/lang/reflect/Field;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/a/e$f;

    goto :goto_0

    .line 203
    :cond_1
    new-instance v0, Lkotlin/reflect/jvm/internal/a/e$f$d;

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/a/e$f$d;-><init>(Ljava/lang/reflect/Field;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/a/e$f;

    .line 202
    :goto_0
    check-cast v0, Lkotlin/reflect/jvm/internal/a/e;

    return-object v0

    .line 205
    :cond_2
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/v$c;->a:Lkotlin/reflect/jvm/internal/u$a;

    .line 4138
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/u$a;->a()Lkotlin/reflect/jvm/internal/u;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/u;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 205
    new-instance v0, Lkotlin/reflect/jvm/internal/a/e$g$b;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/v$c;->c:Lkotlin/reflect/jvm/internal/v$b;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/v$b;->a()Z

    move-result v1

    invoke-direct {v0, p1, v1}, Lkotlin/reflect/jvm/internal/a/e$g$b;-><init>(Ljava/lang/reflect/Field;Z)V

    check-cast v0, Lkotlin/reflect/jvm/internal/a/e$g;

    goto :goto_1

    .line 206
    :cond_3
    new-instance v0, Lkotlin/reflect/jvm/internal/a/e$g$d;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/v$c;->c:Lkotlin/reflect/jvm/internal/v$b;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/v$b;->a()Z

    move-result v1

    invoke-direct {v0, p1, v1}, Lkotlin/reflect/jvm/internal/a/e$g$d;-><init>(Ljava/lang/reflect/Field;Z)V

    check-cast v0, Lkotlin/reflect/jvm/internal/a/e$g;

    .line 205
    :goto_1
    check-cast v0, Lkotlin/reflect/jvm/internal/a/e;

    return-object v0

    .line 208
    :cond_4
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/v$c;->b:Z

    if-eqz v0, :cond_5

    new-instance v0, Lkotlin/reflect/jvm/internal/a/e$f$e;

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/a/e$f$e;-><init>(Ljava/lang/reflect/Field;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/a/e;

    return-object v0

    .line 209
    :cond_5
    new-instance v0, Lkotlin/reflect/jvm/internal/a/e$g$e;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/v$c;->c:Lkotlin/reflect/jvm/internal/v$b;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/v$b;->a()Z

    move-result v1

    invoke-direct {v0, p1, v1}, Lkotlin/reflect/jvm/internal/a/e$g$e;-><init>(Ljava/lang/reflect/Field;Z)V

    check-cast v0, Lkotlin/reflect/jvm/internal/a/e;

    return-object v0

    .line 194
    :cond_6
    :goto_2
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/v$c;->b:Z

    if-eqz v0, :cond_8

    .line 195
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/v$c;->a:Lkotlin/reflect/jvm/internal/u$a;

    .line 1138
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/u$a;->a()Lkotlin/reflect/jvm/internal/u;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/u;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 195
    new-instance v0, Lkotlin/reflect/jvm/internal/a/e$f$a;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/v$c;->a:Lkotlin/reflect/jvm/internal/u$a;

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/v;->a(Lkotlin/reflect/jvm/internal/u$a;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lkotlin/reflect/jvm/internal/a/e$f$a;-><init>(Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/a/e$f;

    goto :goto_3

    .line 196
    :cond_7
    new-instance v0, Lkotlin/reflect/jvm/internal/a/e$f$c;

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/a/e$f$c;-><init>(Ljava/lang/reflect/Field;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/a/e$f;

    .line 195
    :goto_3
    check-cast v0, Lkotlin/reflect/jvm/internal/a/e;

    return-object v0

    .line 198
    :cond_8
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/v$c;->a:Lkotlin/reflect/jvm/internal/u$a;

    .line 2138
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/u$a;->a()Lkotlin/reflect/jvm/internal/u;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/u;->f()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 198
    new-instance v0, Lkotlin/reflect/jvm/internal/a/e$g$a;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/v$c;->c:Lkotlin/reflect/jvm/internal/v$b;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/v$b;->a()Z

    move-result v1

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/v$c;->a:Lkotlin/reflect/jvm/internal/u$a;

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/v;->a(Lkotlin/reflect/jvm/internal/u$a;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lkotlin/reflect/jvm/internal/a/e$g$a;-><init>(Ljava/lang/reflect/Field;ZLjava/lang/Object;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/a/e$g;

    goto :goto_4

    .line 199
    :cond_9
    new-instance v0, Lkotlin/reflect/jvm/internal/a/e$g$c;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/v$c;->c:Lkotlin/reflect/jvm/internal/v$b;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/v$b;->a()Z

    move-result v1

    invoke-direct {v0, p1, v1}, Lkotlin/reflect/jvm/internal/a/e$g$c;-><init>(Ljava/lang/reflect/Field;Z)V

    check-cast v0, Lkotlin/reflect/jvm/internal/a/e$g;

    .line 198
    :goto_4
    check-cast v0, Lkotlin/reflect/jvm/internal/a/e;

    return-object v0
.end method

.method public final synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/reflect/Field;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/v$c;->a(Ljava/lang/reflect/Field;)Lkotlin/reflect/jvm/internal/a/e;

    move-result-object p1

    return-object p1
.end method
