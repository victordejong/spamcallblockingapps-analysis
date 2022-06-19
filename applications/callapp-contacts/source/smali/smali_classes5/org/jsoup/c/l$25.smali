.class final enum Lorg/jsoup/c/l$25;
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

    .line 514
    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/c/l;-><init>(Ljava/lang/String;ILorg/jsoup/c/l$1;)V

    return-void
.end method


# virtual methods
.method final read(Lorg/jsoup/c/k;Lorg/jsoup/c/a;)V
    .locals 1

    .line 516
    invoke-virtual {p2}, Lorg/jsoup/c/a;->e()C

    move-result p2

    if-eqz p2, :cond_4

    const/16 v0, 0x2d

    if-eq p2, v0, :cond_3

    const/16 v0, 0x3c

    if-eq p2, v0, :cond_2

    const/16 v0, 0x3e

    if-eq p2, v0, :cond_1

    const v0, 0xffff

    if-eq p2, v0, :cond_0

    .line 539
    invoke-virtual {p1, p2}, Lorg/jsoup/c/k;->a(C)V

    .line 540
    sget-object p2, Lorg/jsoup/c/l$25;->ScriptDataDoubleEscaped:Lorg/jsoup/c/l;

    .line 5124
    iput-object p2, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    return-void

    .line 535
    :cond_0
    invoke-virtual {p1, p0}, Lorg/jsoup/c/k;->c(Lorg/jsoup/c/l;)V

    .line 536
    sget-object p2, Lorg/jsoup/c/l$25;->Data:Lorg/jsoup/c/l;

    .line 4124
    iput-object p2, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    return-void

    .line 526
    :cond_1
    invoke-virtual {p1, p2}, Lorg/jsoup/c/k;->a(C)V

    .line 527
    sget-object p2, Lorg/jsoup/c/l$25;->ScriptData:Lorg/jsoup/c/l;

    .line 2124
    iput-object p2, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    return-void

    .line 522
    :cond_2
    invoke-virtual {p1, p2}, Lorg/jsoup/c/k;->a(C)V

    .line 523
    sget-object p2, Lorg/jsoup/c/l$25;->ScriptDataDoubleEscapedLessthanSign:Lorg/jsoup/c/l;

    .line 1124
    iput-object p2, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    return-void

    .line 519
    :cond_3
    invoke-virtual {p1, p2}, Lorg/jsoup/c/k;->a(C)V

    return-void

    .line 530
    :cond_4
    invoke-virtual {p1, p0}, Lorg/jsoup/c/k;->b(Lorg/jsoup/c/l;)V

    const p2, 0xfffd

    .line 531
    invoke-virtual {p1, p2}, Lorg/jsoup/c/k;->a(C)V

    .line 532
    sget-object p2, Lorg/jsoup/c/l$25;->ScriptDataDoubleEscaped:Lorg/jsoup/c/l;

    .line 3124
    iput-object p2, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    return-void
.end method
