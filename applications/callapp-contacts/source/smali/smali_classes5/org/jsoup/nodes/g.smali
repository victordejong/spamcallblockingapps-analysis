.class public final Lorg/jsoup/nodes/g;
.super Lorg/jsoup/nodes/l;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Lorg/jsoup/nodes/l;-><init>()V

    .line 29
    invoke-static {p1}, Lorg/jsoup/a/c;->a(Ljava/lang/Object;)V

    .line 30
    invoke-static {p2}, Lorg/jsoup/a/c;->a(Ljava/lang/Object;)V

    .line 31
    invoke-static {p3}, Lorg/jsoup/a/c;->a(Ljava/lang/Object;)V

    const-string v0, "name"

    .line 1012
    invoke-super {p0, v0, p1}, Lorg/jsoup/nodes/l;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/m;

    const-string p1, "publicId"

    .line 2012
    invoke-super {p0, p1, p2}, Lorg/jsoup/nodes/l;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/m;

    const-string p2, "systemId"

    .line 3012
    invoke-super {p0, p2, p3}, Lorg/jsoup/nodes/l;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/m;

    .line 3044
    invoke-direct {p0, p1}, Lorg/jsoup/nodes/g;->e(Ljava/lang/String;)Z

    move-result p1

    const-string p3, "pubSysKey"

    if-eqz p1, :cond_0

    const-string p1, "PUBLIC"

    .line 4012
    invoke-super {p0, p3, p1}, Lorg/jsoup/nodes/l;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/m;

    return-void

    .line 3046
    :cond_0
    invoke-direct {p0, p2}, Lorg/jsoup/nodes/g;->e(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "SYSTEM"

    .line 5012
    invoke-super {p0, p3, p1}, Lorg/jsoup/nodes/l;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/m;

    :cond_1
    return-void
.end method

.method private e(Ljava/lang/String;)Z
    .locals 0

    .line 11012
    invoke-super {p0, p1}, Lorg/jsoup/nodes/l;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 103
    invoke-static {p1}, Lorg/jsoup/b/c;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "#doctype"

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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6477
    iget p2, p3, Lorg/jsoup/nodes/f$a;->h:I

    .line 81
    sget p3, Lorg/jsoup/nodes/f$a$a;->a:I

    const-string v0, "systemId"

    const-string v1, "publicId"

    if-ne p2, p3, :cond_0

    invoke-direct {p0, v1}, Lorg/jsoup/nodes/g;->e(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-direct {p0, v0}, Lorg/jsoup/nodes/g;->e(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "<!doctype"

    .line 83
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0

    :cond_0
    const-string p2, "<!DOCTYPE"

    .line 85
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :goto_0
    const-string p2, "name"

    .line 87
    invoke-direct {p0, p2}, Lorg/jsoup/nodes/g;->e(Ljava/lang/String;)Z

    move-result p3

    const-string v2, " "

    if-eqz p3, :cond_1

    .line 88
    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p3

    .line 7012
    invoke-super {p0, p2}, Lorg/jsoup/nodes/l;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 88
    invoke-interface {p3, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_1
    const-string p2, "pubSysKey"

    .line 89
    invoke-direct {p0, p2}, Lorg/jsoup/nodes/g;->e(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 90
    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p3

    .line 8012
    invoke-super {p0, p2}, Lorg/jsoup/nodes/l;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 90
    invoke-interface {p3, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 91
    :cond_2
    invoke-direct {p0, v1}, Lorg/jsoup/nodes/g;->e(Ljava/lang/String;)Z

    move-result p2

    const/16 p3, 0x22

    const-string v2, " \""

    if-eqz p2, :cond_3

    .line 92
    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p2

    .line 9012
    invoke-super {p0, v1}, Lorg/jsoup/nodes/l;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-interface {p2, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 93
    :cond_3
    invoke-direct {p0, v0}, Lorg/jsoup/nodes/g;->e(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 94
    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p2

    .line 10012
    invoke-super {p0, v0}, Lorg/jsoup/nodes/l;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_4
    const/16 p2, 0x3e

    .line 95
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

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

.method public final b_(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "pubSysKey"

    .line 6012
    invoke-super {p0, v0, p1}, Lorg/jsoup/nodes/l;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/m;

    :cond_0
    return-void
.end method

.method public final bridge synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 12
    invoke-super {p0, p1}, Lorg/jsoup/nodes/l;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
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
