.class public final Lorg/jsoup/nodes/n;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lorg/jsoup/nodes/m;)Lorg/jsoup/nodes/f$a;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lorg/jsoup/nodes/m;->x()Lorg/jsoup/nodes/f;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1568
    iget-object p0, p0, Lorg/jsoup/nodes/f;->a:Lorg/jsoup/nodes/f$a;

    return-object p0

    .line 17
    :cond_0
    new-instance p0, Lorg/jsoup/nodes/f;

    const-string v0, ""

    invoke-direct {p0, v0}, Lorg/jsoup/nodes/f;-><init>(Ljava/lang/String;)V

    .line 2568
    iget-object p0, p0, Lorg/jsoup/nodes/f;->a:Lorg/jsoup/nodes/f$a;

    return-object p0
.end method

.method public static b(Lorg/jsoup/nodes/m;)Lorg/jsoup/c/g;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lorg/jsoup/nodes/m;->x()Lorg/jsoup/nodes/f;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2600
    iget-object v0, p0, Lorg/jsoup/nodes/f;->b:Lorg/jsoup/c/g;

    if-eqz v0, :cond_0

    .line 3600
    iget-object p0, p0, Lorg/jsoup/nodes/f;->b:Lorg/jsoup/c/g;

    return-object p0

    .line 25
    :cond_0
    new-instance p0, Lorg/jsoup/c/g;

    new-instance v0, Lorg/jsoup/c/b;

    invoke-direct {v0}, Lorg/jsoup/c/b;-><init>()V

    invoke-direct {p0, v0}, Lorg/jsoup/c/g;-><init>(Lorg/jsoup/c/m;)V

    return-object p0
.end method
