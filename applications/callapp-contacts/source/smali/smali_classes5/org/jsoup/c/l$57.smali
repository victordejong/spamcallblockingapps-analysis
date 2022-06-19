.class final enum Lorg/jsoup/c/l$57;
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

    .line 1402
    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/c/l;-><init>(Ljava/lang/String;ILorg/jsoup/c/l$1;)V

    return-void
.end method


# virtual methods
.method final read(Lorg/jsoup/c/k;Lorg/jsoup/c/a;)V
    .locals 2

    .line 1404
    invoke-virtual {p2}, Lorg/jsoup/c/a;->e()C

    move-result p2

    const/16 v0, 0x9

    if-eq p2, v0, :cond_4

    const/16 v0, 0xa

    if-eq p2, v0, :cond_4

    const/16 v0, 0xc

    if-eq p2, v0, :cond_4

    const/16 v0, 0xd

    if-eq p2, v0, :cond_4

    const/16 v0, 0x20

    if-eq p2, v0, :cond_4

    const/16 v0, 0x22

    if-eq p2, v0, :cond_3

    const/16 v0, 0x27

    if-eq p2, v0, :cond_2

    const/16 v0, 0x3e

    if-eq p2, v0, :cond_1

    const v0, 0xffff

    const/4 v1, 0x1

    if-eq p2, v0, :cond_0

    .line 1433
    invoke-virtual {p1, p0}, Lorg/jsoup/c/k;->b(Lorg/jsoup/c/l;)V

    .line 1434
    iget-object p2, p1, Lorg/jsoup/c/k;->m:Lorg/jsoup/c/i$d;

    iput-boolean v1, p2, Lorg/jsoup/c/i$d;->f:Z

    .line 1435
    sget-object p2, Lorg/jsoup/c/l$57;->BogusDoctype:Lorg/jsoup/c/l;

    .line 6124
    iput-object p2, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    return-void

    .line 1427
    :cond_0
    invoke-virtual {p1, p0}, Lorg/jsoup/c/k;->c(Lorg/jsoup/c/l;)V

    .line 1428
    iget-object p2, p1, Lorg/jsoup/c/k;->m:Lorg/jsoup/c/i$d;

    iput-boolean v1, p2, Lorg/jsoup/c/i$d;->f:Z

    .line 1429
    invoke-virtual {p1}, Lorg/jsoup/c/k;->e()V

    .line 1430
    sget-object p2, Lorg/jsoup/c/l$57;->Data:Lorg/jsoup/c/l;

    .line 5124
    iput-object p2, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    return-void

    .line 1413
    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/c/k;->e()V

    .line 1414
    sget-object p2, Lorg/jsoup/c/l$57;->Data:Lorg/jsoup/c/l;

    .line 2124
    iput-object p2, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    return-void

    .line 1422
    :cond_2
    invoke-virtual {p1, p0}, Lorg/jsoup/c/k;->b(Lorg/jsoup/c/l;)V

    .line 1424
    sget-object p2, Lorg/jsoup/c/l$57;->DoctypeSystemIdentifier_singleQuoted:Lorg/jsoup/c/l;

    .line 4124
    iput-object p2, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    return-void

    .line 1417
    :cond_3
    invoke-virtual {p1, p0}, Lorg/jsoup/c/k;->b(Lorg/jsoup/c/l;)V

    .line 1419
    sget-object p2, Lorg/jsoup/c/l$57;->DoctypeSystemIdentifier_doubleQuoted:Lorg/jsoup/c/l;

    .line 3124
    iput-object p2, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    :cond_4
    return-void
.end method
