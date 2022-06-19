.class final enum Lorg/jsoup/c/l$38;
.super Lorg/jsoup/c/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/c/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 910
    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/c/l;-><init>(Ljava/lang/String;ILorg/jsoup/c/l$1;)V

    return-void
.end method


# virtual methods
.method final read(Lorg/jsoup/c/k;Lorg/jsoup/c/a;)V
    .locals 3

    .line 914
    invoke-virtual {p2}, Lorg/jsoup/c/a;->f()V

    .line 915
    iget-object v0, p1, Lorg/jsoup/c/k;->n:Lorg/jsoup/c/i$c;

    const/16 v1, 0x3e

    invoke-virtual {p2, v1}, Lorg/jsoup/c/a;->a(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jsoup/c/i$c;->a(Ljava/lang/String;)Lorg/jsoup/c/i$c;

    .line 917
    invoke-virtual {p2}, Lorg/jsoup/c/a;->e()C

    move-result p2

    if-eq p2, v1, :cond_0

    const v0, 0xffff

    if-ne p2, v0, :cond_1

    .line 919
    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/c/k;->b()V

    .line 920
    sget-object p2, Lorg/jsoup/c/l$38;->Data:Lorg/jsoup/c/l;

    .line 1124
    iput-object p2, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    :cond_1
    return-void
.end method
