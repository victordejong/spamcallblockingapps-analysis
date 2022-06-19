.class final enum Lorg/jsoup/c/l$19;
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

    .line 437
    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/c/l;-><init>(Ljava/lang/String;ILorg/jsoup/c/l$1;)V

    return-void
.end method


# virtual methods
.method final read(Lorg/jsoup/c/k;Lorg/jsoup/c/a;)V
    .locals 2

    .line 439
    invoke-virtual {p2}, Lorg/jsoup/c/a;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 440
    invoke-virtual {p1, v0}, Lorg/jsoup/c/k;->a(Z)Lorg/jsoup/c/i$h;

    .line 441
    iget-object v0, p1, Lorg/jsoup/c/k;->i:Lorg/jsoup/c/i$h;

    invoke-virtual {p2}, Lorg/jsoup/c/a;->d()C

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jsoup/c/i$h;->a(C)V

    .line 442
    iget-object v0, p1, Lorg/jsoup/c/k;->h:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/jsoup/c/a;->d()C

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 443
    sget-object p2, Lorg/jsoup/c/l$19;->ScriptDataEscapedEndTagName:Lorg/jsoup/c/l;

    invoke-virtual {p1, p2}, Lorg/jsoup/c/k;->a(Lorg/jsoup/c/l;)V

    return-void

    :cond_0
    const-string p2, "</"

    .line 445
    invoke-virtual {p1, p2}, Lorg/jsoup/c/k;->a(Ljava/lang/String;)V

    .line 446
    sget-object p2, Lorg/jsoup/c/l$19;->ScriptDataEscaped:Lorg/jsoup/c/l;

    .line 1124
    iput-object p2, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    return-void
.end method
