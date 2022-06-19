.class final enum Lorg/jsoup/c/l$18;
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

    .line 421
    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/c/l;-><init>(Ljava/lang/String;ILorg/jsoup/c/l$1;)V

    return-void
.end method


# virtual methods
.method final read(Lorg/jsoup/c/k;Lorg/jsoup/c/a;)V
    .locals 2

    .line 423
    invoke-virtual {p2}, Lorg/jsoup/c/a;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1245
    iget-object v0, p1, Lorg/jsoup/c/k;->h:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/jsoup/c/i;->a(Ljava/lang/StringBuilder;)V

    .line 425
    iget-object v0, p1, Lorg/jsoup/c/k;->h:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/jsoup/c/a;->d()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/jsoup/c/a;->d()C

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/jsoup/c/k;->a(Ljava/lang/String;)V

    .line 427
    sget-object p2, Lorg/jsoup/c/l$18;->ScriptDataDoubleEscapeStart:Lorg/jsoup/c/l;

    invoke-virtual {p1, p2}, Lorg/jsoup/c/k;->a(Lorg/jsoup/c/l;)V

    return-void

    :cond_0
    const/16 v0, 0x2f

    .line 428
    invoke-virtual {p2, v0}, Lorg/jsoup/c/a;->b(C)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2245
    iget-object p2, p1, Lorg/jsoup/c/k;->h:Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/jsoup/c/i;->a(Ljava/lang/StringBuilder;)V

    .line 430
    sget-object p2, Lorg/jsoup/c/l$18;->ScriptDataEscapedEndTagOpen:Lorg/jsoup/c/l;

    invoke-virtual {p1, p2}, Lorg/jsoup/c/k;->a(Lorg/jsoup/c/l;)V

    return-void

    :cond_1
    const/16 p2, 0x3c

    .line 432
    invoke-virtual {p1, p2}, Lorg/jsoup/c/k;->a(C)V

    .line 433
    sget-object p2, Lorg/jsoup/c/l$18;->ScriptDataEscaped:Lorg/jsoup/c/l;

    .line 3124
    iput-object p2, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    return-void
.end method
