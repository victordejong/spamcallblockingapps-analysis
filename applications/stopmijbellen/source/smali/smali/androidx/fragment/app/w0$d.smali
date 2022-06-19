.class public Landroidx/fragment/app/w0$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/w0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/w0$d$b;,
        Landroidx/fragment/app/w0$d$c;
    }
.end annotation


# instance fields
.field public a:Landroidx/fragment/app/w0$d$c;

.field public b:Landroidx/fragment/app/w0$d$b;

.field public final c:Landroidx/fragment/app/Fragment;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Li0/b;",
            ">;"
        }
    .end annotation
.end field

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>(Landroidx/fragment/app/w0$d$c;Landroidx/fragment/app/w0$d$b;Landroidx/fragment/app/Fragment;Li0/b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/w0$d;->d:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/w0$d;->e:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroidx/fragment/app/w0$d;->f:Z

    .line 5
    iput-boolean v0, p0, Landroidx/fragment/app/w0$d;->g:Z

    .line 6
    iput-object p1, p0, Landroidx/fragment/app/w0$d;->a:Landroidx/fragment/app/w0$d$c;

    .line 7
    iput-object p2, p0, Landroidx/fragment/app/w0$d;->b:Landroidx/fragment/app/w0$d$b;

    .line 8
    iput-object p3, p0, Landroidx/fragment/app/w0$d;->c:Landroidx/fragment/app/Fragment;

    .line 9
    new-instance p1, Landroidx/fragment/app/w0$d$a;

    invoke-direct {p1, p0}, Landroidx/fragment/app/w0$d$a;-><init>(Landroidx/fragment/app/w0$d;)V

    invoke-virtual {p4, p1}, Li0/b;->b(Li0/b$a;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/w0$d;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/w0$d;->f:Z

    .line 3
    iget-object v0, p0, Landroidx/fragment/app/w0$d;->e:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/w0$d;->b()V

    goto :goto_1

    .line 5
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/w0$d;->e:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li0/b;

    .line 7
    invoke-virtual {v1}, Li0/b;->a()V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/w0$d;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/a0;->N(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/w0$d;->toString()Ljava/lang/String;

    :cond_1
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroidx/fragment/app/w0$d;->g:Z

    .line 5
    iget-object v0, p0, Landroidx/fragment/app/w0$d;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 6
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final c(Landroidx/fragment/app/w0$d$c;Landroidx/fragment/app/w0$d$b;)V
    .locals 2

    .line 1
    sget-object v0, Landroidx/fragment/app/w0$d$c;->a:Landroidx/fragment/app/w0$d$c;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    const/4 v1, 0x2

    if-eqz p2, :cond_4

    const/4 p1, 0x1

    if-eq p2, p1, :cond_2

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {v1}, Landroidx/fragment/app/a0;->N(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Landroidx/fragment/app/w0$d;->c:Landroidx/fragment/app/Fragment;

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    iget-object p1, p0, Landroidx/fragment/app/w0$d;->a:Landroidx/fragment/app/w0$d$c;

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    iget-object p1, p0, Landroidx/fragment/app/w0$d;->b:Landroidx/fragment/app/w0$d$b;

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    :cond_1
    iput-object v0, p0, Landroidx/fragment/app/w0$d;->a:Landroidx/fragment/app/w0$d$c;

    .line 5
    sget-object p1, Landroidx/fragment/app/w0$d$b;->c:Landroidx/fragment/app/w0$d$b;

    iput-object p1, p0, Landroidx/fragment/app/w0$d;->b:Landroidx/fragment/app/w0$d$b;

    goto :goto_0

    .line 6
    :cond_2
    iget-object p1, p0, Landroidx/fragment/app/w0$d;->a:Landroidx/fragment/app/w0$d$c;

    if-ne p1, v0, :cond_6

    .line 7
    invoke-static {v1}, Landroidx/fragment/app/a0;->N(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 8
    iget-object p1, p0, Landroidx/fragment/app/w0$d;->c:Landroidx/fragment/app/Fragment;

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    iget-object p1, p0, Landroidx/fragment/app/w0$d;->b:Landroidx/fragment/app/w0$d$b;

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    :cond_3
    sget-object p1, Landroidx/fragment/app/w0$d$c;->b:Landroidx/fragment/app/w0$d$c;

    iput-object p1, p0, Landroidx/fragment/app/w0$d;->a:Landroidx/fragment/app/w0$d$c;

    .line 10
    sget-object p1, Landroidx/fragment/app/w0$d$b;->b:Landroidx/fragment/app/w0$d$b;

    iput-object p1, p0, Landroidx/fragment/app/w0$d;->b:Landroidx/fragment/app/w0$d$b;

    goto :goto_0

    .line 11
    :cond_4
    iget-object p2, p0, Landroidx/fragment/app/w0$d;->a:Landroidx/fragment/app/w0$d$c;

    if-eq p2, v0, :cond_6

    .line 12
    invoke-static {v1}, Landroidx/fragment/app/a0;->N(I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 13
    iget-object p2, p0, Landroidx/fragment/app/w0$d;->c:Landroidx/fragment/app/Fragment;

    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    iget-object p2, p0, Landroidx/fragment/app/w0$d;->a:Landroidx/fragment/app/w0$d$c;

    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    :cond_5
    iput-object p1, p0, Landroidx/fragment/app/w0$d;->a:Landroidx/fragment/app/w0$d$c;

    :cond_6
    :goto_0
    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "Operation "

    const-string v1, "{"

    .line 1
    invoke-static {v0, v1}, Landroidx/recyclerview/widget/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "} "

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mFinalState = "

    .line 5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v3, p0, Landroidx/fragment/app/w0$d;->a:Landroidx/fragment/app/w0$d$c;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mLifecycleImpact = "

    .line 9
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-object v3, p0, Landroidx/fragment/app/w0$d;->b:Landroidx/fragment/app/w0$d$b;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mFragment = "

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    iget-object v1, p0, Landroidx/fragment/app/w0$d;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
