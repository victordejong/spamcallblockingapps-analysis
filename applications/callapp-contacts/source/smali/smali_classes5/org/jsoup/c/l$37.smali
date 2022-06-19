.class final enum Lorg/jsoup/c/l$37;
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

    .line 890
    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/c/l;-><init>(Ljava/lang/String;ILorg/jsoup/c/l$1;)V

    return-void
.end method


# virtual methods
.method final read(Lorg/jsoup/c/k;Lorg/jsoup/c/a;)V
    .locals 2

    .line 892
    invoke-virtual {p2}, Lorg/jsoup/c/a;->e()C

    move-result v0

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_1

    const v1, 0xffff

    if-eq v0, v1, :cond_0

    .line 904
    invoke-virtual {p2}, Lorg/jsoup/c/a;->f()V

    .line 905
    invoke-virtual {p1, p0}, Lorg/jsoup/c/k;->b(Lorg/jsoup/c/l;)V

    .line 906
    sget-object p2, Lorg/jsoup/c/l$37;->BeforeAttributeName:Lorg/jsoup/c/l;

    .line 3124
    iput-object p2, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    return-void

    .line 900
    :cond_0
    invoke-virtual {p1, p0}, Lorg/jsoup/c/k;->c(Lorg/jsoup/c/l;)V

    .line 901
    sget-object p2, Lorg/jsoup/c/l$37;->Data:Lorg/jsoup/c/l;

    .line 2124
    iput-object p2, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    return-void

    .line 895
    :cond_1
    iget-object p2, p1, Lorg/jsoup/c/k;->i:Lorg/jsoup/c/i$h;

    const/4 v0, 0x1

    iput-boolean v0, p2, Lorg/jsoup/c/i$h;->f:Z

    .line 896
    invoke-virtual {p1}, Lorg/jsoup/c/k;->a()V

    .line 897
    sget-object p2, Lorg/jsoup/c/l$37;->Data:Lorg/jsoup/c/l;

    .line 1124
    iput-object p2, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    return-void
.end method
