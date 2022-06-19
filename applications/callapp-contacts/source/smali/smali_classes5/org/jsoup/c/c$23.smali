.class final enum Lorg/jsoup/c/c$23;
.super Lorg/jsoup/c/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 872
    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/c/c;-><init>(Ljava/lang/String;ILorg/jsoup/c/c$1;)V

    return-void
.end method


# virtual methods
.method final process(Lorg/jsoup/c/i;Lorg/jsoup/c/b;)Z
    .locals 1

    .line 875
    invoke-virtual {p1}, Lorg/jsoup/c/i;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1405
    check-cast p1, Lorg/jsoup/c/i$b;

    .line 876
    invoke-virtual {p2, p1}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i$b;)V

    goto :goto_0

    .line 877
    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/c/i;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 878
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    .line 880
    invoke-virtual {p2}, Lorg/jsoup/c/b;->e()Lorg/jsoup/nodes/h;

    .line 2157
    iget-object v0, p2, Lorg/jsoup/c/b;->i:Lorg/jsoup/c/c;

    .line 3145
    iput-object v0, p2, Lorg/jsoup/c/b;->h:Lorg/jsoup/c/c;

    .line 882
    invoke-virtual {p2, p1}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i;)Z

    move-result p1

    return p1

    .line 883
    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/c/i;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 885
    invoke-virtual {p2}, Lorg/jsoup/c/b;->e()Lorg/jsoup/nodes/h;

    .line 3157
    iget-object p1, p2, Lorg/jsoup/c/b;->i:Lorg/jsoup/c/c;

    .line 4145
    iput-object p1, p2, Lorg/jsoup/c/b;->h:Lorg/jsoup/c/c;

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
