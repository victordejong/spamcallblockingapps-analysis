.class public Lw8/k;
.super Lw8/c;
.source "SourceFile"

# interfaces
.implements Lv8/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw8/k$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lw8/c;",
        "Lv8/a;"
    }
.end annotation


# instance fields
.field public f:Ls8/g;

.field public g:Z


# direct methods
.method public constructor <init>(Lw8/j;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lw8/c;-><init>(Lw8/j;)V

    return-void
.end method

.method public constructor <init>(Lw8/j;Ls8/g;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lw8/c;-><init>(Lw8/j;)V

    .line 3
    iput-object p2, p0, Lw8/k;->f:Ls8/g;

    .line 4
    iput-boolean p3, p0, Lw8/k;->g:Z

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Lv8/b;

    invoke-direct {v0}, Lv8/b;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lw8/k;->c(Lv8/b;)V

    .line 3
    invoke-virtual {v0}, Lv8/b;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Lv8/b;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lw8/c;->a()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p1, Lv8/b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v0, p0, Lw8/c;->a:Ljava/lang/String;

    .line 4
    iget-object v1, p1, Lv8/b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5
    iget-boolean v0, p0, Lw8/c;->e:Z

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lw8/c;->b:Ljava/lang/Object;

    const/4 v1, 0x1

    .line 7
    invoke-virtual {p0, v0, v1}, Lw8/k;->h(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    .line 8
    iget-object p1, p1, Lv8/b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;)Lw8/n;
    .locals 0

    .line 1
    iput-object p1, p0, Lw8/c;->d:Ljava/lang/String;

    return-object p0
.end method

.method public h(Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lw8/k;->f:Ls8/g;

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lw8/k;->g:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Ls8/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    sget-object v0, Lcom/raizlabs/android/dbflow/config/f$b;->b:Lcom/raizlabs/android/dbflow/config/f$b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value passed to operation is not valid type for TypeConverter in the column. Preserving value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to be used as is."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 4
    invoke-static {v0, v1, v2}, Lcom/raizlabs/android/dbflow/config/f;->a(Lcom/raizlabs/android/dbflow/config/f$b;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 5
    invoke-static {p1, p2, v0}, Lw8/c;->i(Ljava/lang/Object;ZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    invoke-super {p0, p1, p2}, Lw8/c;->h(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final varargs j(Ljava/lang/Object;[Ljava/lang/Object;)Lw8/k$b;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;)",
            "Lw8/k$b<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1
    new-instance v6, Lw8/k$b;

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lw8/k$b;-><init>(Lw8/k;Ljava/lang/Object;Z[Ljava/lang/Object;Lw8/k$a;)V

    return-object v6
.end method
