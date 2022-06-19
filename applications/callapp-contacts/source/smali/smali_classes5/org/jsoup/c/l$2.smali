.class final enum Lorg/jsoup/c/l$2;
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

    .line 143
    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/c/l;-><init>(Ljava/lang/String;ILorg/jsoup/c/l$1;)V

    return-void
.end method


# virtual methods
.method final read(Lorg/jsoup/c/k;Lorg/jsoup/c/a;)V
    .locals 2

    .line 148
    invoke-virtual {p2}, Lorg/jsoup/c/a;->j()Ljava/lang/String;

    move-result-object v0

    .line 149
    iget-object v1, p1, Lorg/jsoup/c/k;->i:Lorg/jsoup/c/i$h;

    invoke-virtual {v1, v0}, Lorg/jsoup/c/i$h;->b(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Lorg/jsoup/c/a;->e()C

    move-result v0

    if-eqz v0, :cond_5

    const/16 v1, 0x20

    if-eq v0, v1, :cond_4

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_3

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_1

    const/16 p2, 0x3e

    if-eq v0, p2, :cond_2

    const p2, 0xffff

    if-eq v0, p2, :cond_0

    const/16 p2, 0x9

    if-eq v0, p2, :cond_4

    const/16 p2, 0xa

    if-eq v0, p2, :cond_4

    const/16 p2, 0xc

    if-eq v0, p2, :cond_4

    const/16 p2, 0xd

    if-eq v0, p2, :cond_4

    .line 179
    iget-object p1, p1, Lorg/jsoup/c/k;->i:Lorg/jsoup/c/i$h;

    invoke-virtual {p1, v0}, Lorg/jsoup/c/i$h;->a(C)V

    return-void

    .line 175
    :cond_0
    invoke-virtual {p1, p0}, Lorg/jsoup/c/k;->c(Lorg/jsoup/c/l;)V

    .line 176
    sget-object p2, Lorg/jsoup/c/l$2;->Data:Lorg/jsoup/c/l;

    .line 4124
    iput-object p2, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    return-void

    .line 164
    :cond_1
    invoke-virtual {p2}, Lorg/jsoup/c/a;->f()V

    .line 165
    invoke-virtual {p1, p0}, Lorg/jsoup/c/k;->b(Lorg/jsoup/c/l;)V

    .line 168
    :cond_2
    invoke-virtual {p1}, Lorg/jsoup/c/k;->a()V

    .line 169
    sget-object p2, Lorg/jsoup/c/l$2;->Data:Lorg/jsoup/c/l;

    .line 3124
    iput-object p2, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    return-void

    .line 161
    :cond_3
    sget-object p2, Lorg/jsoup/c/l$2;->SelfClosingStartTag:Lorg/jsoup/c/l;

    .line 2124
    iput-object p2, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    return-void

    .line 158
    :cond_4
    sget-object p2, Lorg/jsoup/c/l$2;->BeforeAttributeName:Lorg/jsoup/c/l;

    .line 1124
    iput-object p2, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    return-void

    .line 172
    :cond_5
    iget-object p1, p1, Lorg/jsoup/c/k;->i:Lorg/jsoup/c/i$h;

    invoke-static {}, Lorg/jsoup/c/l;->access$300()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/jsoup/c/i$h;->b(Ljava/lang/String;)V

    return-void
.end method
