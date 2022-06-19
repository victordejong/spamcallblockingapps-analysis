.class public final Lorg/jsoup/nodes/e;
.super Lorg/jsoup/nodes/l;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lorg/jsoup/nodes/l;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/jsoup/nodes/e;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "#data"

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 9
    invoke-super {p0, p1}, Lorg/jsoup/nodes/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/m;
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lorg/jsoup/nodes/l;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/m;

    move-result-object p1

    return-object p1
.end method

.method final a(Ljava/lang/Appendable;ILorg/jsoup/nodes/f$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1028
    invoke-virtual {p0}, Lorg/jsoup/nodes/e;->k()Ljava/lang/String;

    move-result-object p2

    .line 42
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method final b(Ljava/lang/Appendable;ILorg/jsoup/nodes/f$a;)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/String;)Z
    .locals 0

    .line 9
    invoke-super {p0, p1}, Lorg/jsoup/nodes/l;->b(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 9
    invoke-super {p0, p1}, Lorg/jsoup/nodes/l;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic c()Lorg/jsoup/nodes/m;
    .locals 1

    .line 1054
    invoke-super {p0}, Lorg/jsoup/nodes/l;->c()Lorg/jsoup/nodes/m;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/e;

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2054
    invoke-super {p0}, Lorg/jsoup/nodes/l;->c()Lorg/jsoup/nodes/m;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/e;

    return-object v0
.end method

.method public final bridge synthetic e()Lorg/jsoup/nodes/m;
    .locals 1

    .line 9
    invoke-super {p0}, Lorg/jsoup/nodes/l;->e()Lorg/jsoup/nodes/m;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic f()I
    .locals 1

    .line 9
    invoke-super {p0}, Lorg/jsoup/nodes/l;->f()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic g()Ljava/lang/String;
    .locals 1

    .line 9
    invoke-super {p0}, Lorg/jsoup/nodes/l;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lorg/jsoup/nodes/e;->aB_()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
