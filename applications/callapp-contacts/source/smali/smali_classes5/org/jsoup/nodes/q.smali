.class public final Lorg/jsoup/nodes/q;
.super Lorg/jsoup/nodes/l;
.source "SourceFile"


# instance fields
.field private final b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lorg/jsoup/nodes/l;-><init>()V

    .line 22
    invoke-static {p1}, Lorg/jsoup/a/c;->a(Ljava/lang/Object;)V

    .line 23
    iput-object p1, p0, Lorg/jsoup/nodes/q;->a:Ljava/lang/Object;

    .line 24
    iput-boolean p2, p0, Lorg/jsoup/nodes/q;->b:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "#declaration"

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 12
    invoke-super {p0, p1}, Lorg/jsoup/nodes/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/m;
    .locals 0

    .line 12
    invoke-super {p0, p1, p2}, Lorg/jsoup/nodes/l;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/m;

    move-result-object p1

    return-object p1
.end method

.method final a(Ljava/lang/Appendable;ILorg/jsoup/nodes/f$a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p2, "<"

    .line 64
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p2

    .line 65
    iget-boolean v0, p0, Lorg/jsoup/nodes/q;->b:Z

    const-string v1, "!"

    const-string v2, "?"

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p2

    .line 66
    invoke-virtual {p0}, Lorg/jsoup/nodes/q;->k()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 1054
    invoke-virtual {p0}, Lorg/jsoup/nodes/q;->j()Lorg/jsoup/nodes/b;

    move-result-object p2

    invoke-virtual {p2}, Lorg/jsoup/nodes/b;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/a;

    .line 2056
    iget-object v3, v0, Lorg/jsoup/nodes/a;->a:Ljava/lang/String;

    const-string v4, "#declaration"

    .line 1055
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/16 v3, 0x20

    .line 1056
    invoke-interface {p1, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1057
    invoke-virtual {v0, p1, p3}, Lorg/jsoup/nodes/a;->a(Ljava/lang/Appendable;Lorg/jsoup/nodes/f$a;)V

    goto :goto_1

    .line 69
    :cond_2
    iget-boolean p2, p0, Lorg/jsoup/nodes/q;->b:Z

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    move-object v1, v2

    :goto_2
    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    const-string p2, ">"

    .line 70
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method final b(Ljava/lang/Appendable;ILorg/jsoup/nodes/f$a;)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/String;)Z
    .locals 0

    .line 12
    invoke-super {p0, p1}, Lorg/jsoup/nodes/l;->b(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 12
    invoke-super {p0, p1}, Lorg/jsoup/nodes/l;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic c()Lorg/jsoup/nodes/m;
    .locals 1

    .line 3083
    invoke-super {p0}, Lorg/jsoup/nodes/l;->c()Lorg/jsoup/nodes/m;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/q;

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 4083
    invoke-super {p0}, Lorg/jsoup/nodes/l;->c()Lorg/jsoup/nodes/m;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/q;

    return-object v0
.end method

.method public final bridge synthetic e()Lorg/jsoup/nodes/m;
    .locals 1

    .line 12
    invoke-super {p0}, Lorg/jsoup/nodes/l;->e()Lorg/jsoup/nodes/m;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic f()I
    .locals 1

    .line 12
    invoke-super {p0}, Lorg/jsoup/nodes/l;->f()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic g()Ljava/lang/String;
    .locals 1

    .line 12
    invoke-super {p0}, Lorg/jsoup/nodes/l;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 78
    invoke-virtual {p0}, Lorg/jsoup/nodes/q;->aB_()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
