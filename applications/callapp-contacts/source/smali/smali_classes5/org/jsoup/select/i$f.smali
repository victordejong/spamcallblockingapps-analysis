.class final Lorg/jsoup/select/i$f;
.super Lorg/jsoup/select/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# direct methods
.method public constructor <init>(Lorg/jsoup/select/d;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lorg/jsoup/select/i;-><init>()V

    .line 98
    iput-object p1, p0, Lorg/jsoup/select/i$f;->a:Lorg/jsoup/select/d;

    return-void
.end method


# virtual methods
.method public final a(Lorg/jsoup/nodes/h;Lorg/jsoup/nodes/h;)Z
    .locals 2

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    return v0

    .line 105
    :cond_0
    invoke-virtual {p2}, Lorg/jsoup/nodes/h;->p()Lorg/jsoup/nodes/h;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_2

    .line 108
    iget-object v1, p0, Lorg/jsoup/select/i$f;->a:Lorg/jsoup/select/d;

    invoke-virtual {v1, p1, p2}, Lorg/jsoup/select/d;->a(Lorg/jsoup/nodes/h;Lorg/jsoup/nodes/h;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 111
    :cond_1
    invoke-virtual {p2}, Lorg/jsoup/nodes/h;->p()Lorg/jsoup/nodes/h;

    move-result-object p2

    goto :goto_0

    :cond_2
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 118
    iget-object v1, p0, Lorg/jsoup/select/i$f;->a:Lorg/jsoup/select/d;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, ":prev*%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
