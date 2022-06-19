.class public abstract Lhs;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lls;


# instance fields
.field public final a:Z

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lht;",
            ">;"
        }
    .end annotation
.end field

.field public c:I

.field public d:Los;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lhs;->a:Z

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lhs;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final b(Lht;)V
    .locals 1

    iget-object v0, p0, Lhs;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lhs;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, p0, Lhs;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lhs;->c:I

    :cond_0
    return-void
.end method

.method public final c(I)V
    .locals 4

    iget-object v0, p0, Lhs;->d:Los;

    invoke-static {v0}, Lnu;->g(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Los;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lhs;->c:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lhs;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lht;

    iget-boolean v3, p0, Lhs;->a:Z

    invoke-interface {v2, p0, v0, v3, p1}, Lht;->b(Lls;Los;ZI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 4

    iget-object v0, p0, Lhs;->d:Los;

    invoke-static {v0}, Lnu;->g(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Los;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lhs;->c:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lhs;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lht;

    iget-boolean v3, p0, Lhs;->a:Z

    invoke-interface {v2, p0, v0, v3}, Lht;->g(Lls;Los;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lhs;->d:Los;

    return-void
.end method

.method public final e(Los;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lhs;->c:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lhs;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lht;

    iget-boolean v2, p0, Lhs;->a:Z

    invoke-interface {v1, p0, p1, v2}, Lht;->f(Lls;Los;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final f(Los;)V
    .locals 3

    iput-object p1, p0, Lhs;->d:Los;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lhs;->c:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lhs;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lht;

    iget-boolean v2, p0, Lhs;->a:Z

    invoke-interface {v1, p0, p1, v2}, Lht;->e(Lls;Los;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 1

    invoke-static {p0}, Lks;->a(Lls;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
