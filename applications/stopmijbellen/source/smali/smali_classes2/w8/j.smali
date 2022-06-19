.class public Lw8/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv8/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw8/j$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:Z


# direct methods
.method public constructor <init>(Lw8/j$b;Lw8/j$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-boolean p2, p1, Lw8/j$b;->b:Z

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p1, Lw8/j$b;->a:Ljava/lang/String;

    .line 4
    invoke-static {p2}, Lv8/b;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lw8/j;->a:Ljava/lang/String;

    goto :goto_0

    .line 5
    :cond_0
    iget-object p2, p1, Lw8/j$b;->a:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lw8/j;->a:Ljava/lang/String;

    :goto_0
    const/4 p2, 0x0

    .line 7
    sget-object v0, Lv8/b;->b:Ljava/util/regex/Pattern;

    iput-object p2, p0, Lw8/j;->b:Ljava/lang/String;

    .line 8
    invoke-static {p2}, Li4/d;->A(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    iput-object p2, p0, Lw8/j;->c:Ljava/lang/String;

    goto :goto_1

    .line 10
    :cond_1
    iput-object p2, p0, Lw8/j;->c:Ljava/lang/String;

    .line 11
    :goto_1
    iget-boolean p1, p1, Lw8/j$b;->c:Z

    .line 12
    iput-boolean p1, p0, Lw8/j;->d:Z

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lw8/j;->e:Z

    return-void
.end method

.method public static e(Ljava/lang/String;)Lw8/j$b;
    .locals 1

    .line 1
    new-instance v0, Lw8/j$b;

    invoke-direct {v0, p0}, Lw8/j$b;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 2
    iput-boolean p0, v0, Lw8/j$b;->b:Z

    .line 3
    iput-boolean p0, v0, Lw8/j$b;->c:Z

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lw8/j;->b:Ljava/lang/String;

    invoke-static {v0}, Li4/d;->A(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lw8/j;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lw8/j;->b:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lv8/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lw8/j;->b:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lw8/j;->b:Ljava/lang/String;

    invoke-static {v0}, Li4/d;->A(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lw8/j;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lw8/j;->a:Ljava/lang/String;

    invoke-static {v0}, Li4/d;->A(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lw8/j;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lw8/j;->c:Ljava/lang/String;

    invoke-static {v1}, Li4/d;->A(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v2, p0, Lw8/j;->c:Ljava/lang/String;

    const-string v3, "."

    .line 3
    invoke-static {v1, v2, v3}, Landroid/support/v4/media/b;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Lw8/j;->a:Ljava/lang/String;

    invoke-static {v1}, Li4/d;->A(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lw8/j;->d:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lw8/j;->a:Ljava/lang/String;

    .line 5
    invoke-static {v1}, Lv8/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lw8/j;->a:Ljava/lang/String;

    .line 6
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lw8/j;->c()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lw8/j;->b:Ljava/lang/String;

    invoke-static {v1}, Li4/d;->A(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, " AS "

    .line 3
    invoke-static {v0, v1}, Landroidx/recyclerview/widget/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lw8/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/4 v1, 0x0

    .line 4
    invoke-static {v1}, Li4/d;->A(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, " "

    .line 5
    invoke-static {v1, v2, v0}, Landroid/support/v4/media/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lw8/j;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
