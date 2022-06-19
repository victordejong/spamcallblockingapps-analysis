.class public final Lorg/jsoup/nodes/c;
.super Lorg/jsoup/nodes/p;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lorg/jsoup/nodes/p;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "#cdata"

    return-object v0
.end method

.method final a(Ljava/lang/Appendable;ILorg/jsoup/nodes/f$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p2, "<![CDATA["

    .line 32
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    .line 1051
    invoke-virtual {p0}, Lorg/jsoup/nodes/p;->k()Ljava/lang/String;

    move-result-object p2

    .line 33
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method public final bridge synthetic b()Lorg/jsoup/nodes/p;
    .locals 1

    .line 2047
    invoke-super {p0}, Lorg/jsoup/nodes/p;->b()Lorg/jsoup/nodes/p;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/c;

    return-object v0
.end method

.method final b(Ljava/lang/Appendable;ILorg/jsoup/nodes/f$a;)V
    .locals 0

    :try_start_0
    const-string p2, "]]>"

    .line 39
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 41
    new-instance p2, Lorg/jsoup/UncheckedIOException;

    invoke-direct {p2, p1}, Lorg/jsoup/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public final synthetic c()Lorg/jsoup/nodes/m;
    .locals 1

    .line 3047
    invoke-super {p0}, Lorg/jsoup/nodes/p;->b()Lorg/jsoup/nodes/p;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/c;

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 4047
    invoke-super {p0}, Lorg/jsoup/nodes/p;->b()Lorg/jsoup/nodes/p;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/c;

    return-object v0
.end method
