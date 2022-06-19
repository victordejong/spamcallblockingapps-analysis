.class final enum Lorg/jsoup/c/l$23;
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

    .line 39
    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/c/l;-><init>(Ljava/lang/String;ILorg/jsoup/c/l$1;)V

    return-void
.end method


# virtual methods
.method final read(Lorg/jsoup/c/k;Lorg/jsoup/c/a;)V
    .locals 2

    .line 42
    invoke-virtual {p2}, Lorg/jsoup/c/a;->d()C

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0x26

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_1

    const v1, 0xffff

    if-eq v0, v1, :cond_0

    .line 58
    invoke-virtual {p2}, Lorg/jsoup/c/a;->i()Ljava/lang/String;

    move-result-object p2

    .line 59
    invoke-virtual {p1, p2}, Lorg/jsoup/c/k;->a(Ljava/lang/String;)V

    return-void

    .line 55
    :cond_0
    new-instance p2, Lorg/jsoup/c/i$e;

    invoke-direct {p2}, Lorg/jsoup/c/i$e;-><init>()V

    invoke-virtual {p1, p2}, Lorg/jsoup/c/k;->a(Lorg/jsoup/c/i;)V

    return-void

    .line 47
    :cond_1
    sget-object p2, Lorg/jsoup/c/l$23;->RcdataLessthanSign:Lorg/jsoup/c/l;

    invoke-virtual {p1, p2}, Lorg/jsoup/c/k;->a(Lorg/jsoup/c/l;)V

    return-void

    .line 44
    :cond_2
    sget-object p2, Lorg/jsoup/c/l$23;->CharacterReferenceInRcdata:Lorg/jsoup/c/l;

    invoke-virtual {p1, p2}, Lorg/jsoup/c/k;->a(Lorg/jsoup/c/l;)V

    return-void

    .line 50
    :cond_3
    invoke-virtual {p1, p0}, Lorg/jsoup/c/k;->b(Lorg/jsoup/c/l;)V

    .line 51
    invoke-virtual {p2}, Lorg/jsoup/c/a;->g()V

    const p2, 0xfffd

    .line 52
    invoke-virtual {p1, p2}, Lorg/jsoup/c/k;->a(C)V

    return-void
.end method
