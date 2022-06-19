.class final Lorg/jsoup/select/i$a;
.super Lorg/jsoup/select/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lorg/jsoup/select/d;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lorg/jsoup/select/i;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/jsoup/select/i$a;->a:Lorg/jsoup/select/d;

    return-void
.end method


# virtual methods
.method public final a(Lorg/jsoup/nodes/h;Lorg/jsoup/nodes/h;)Z
    .locals 2

    .line 2125
    new-instance p1, Lorg/jsoup/select/d$a;

    invoke-direct {p1}, Lorg/jsoup/select/d$a;-><init>()V

    invoke-static {p1, p2}, Lorg/jsoup/select/a;->a(Lorg/jsoup/select/d;Lorg/jsoup/nodes/h;)Lorg/jsoup/select/c;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lorg/jsoup/select/c;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/h;

    if-eq v0, p2, :cond_0

    .line 24
    iget-object v1, p0, Lorg/jsoup/select/i$a;->a:Lorg/jsoup/select/d;

    invoke-virtual {v1, p2, v0}, Lorg/jsoup/select/d;->a(Lorg/jsoup/nodes/h;Lorg/jsoup/nodes/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 32
    iget-object v1, p0, Lorg/jsoup/select/i$a;->a:Lorg/jsoup/select/d;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, ":has(%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
