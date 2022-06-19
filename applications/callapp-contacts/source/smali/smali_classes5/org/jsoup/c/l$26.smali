.class final enum Lorg/jsoup/c/l$26;
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

    .line 544
    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/c/l;-><init>(Ljava/lang/String;ILorg/jsoup/c/l$1;)V

    return-void
.end method


# virtual methods
.method final read(Lorg/jsoup/c/k;Lorg/jsoup/c/a;)V
    .locals 1

    const/16 v0, 0x2f

    .line 546
    invoke-virtual {p2, v0}, Lorg/jsoup/c/a;->b(C)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 547
    invoke-virtual {p1, v0}, Lorg/jsoup/c/k;->a(C)V

    .line 1245
    iget-object p2, p1, Lorg/jsoup/c/k;->h:Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/jsoup/c/i;->a(Ljava/lang/StringBuilder;)V

    .line 549
    sget-object p2, Lorg/jsoup/c/l$26;->ScriptDataDoubleEscapeEnd:Lorg/jsoup/c/l;

    invoke-virtual {p1, p2}, Lorg/jsoup/c/k;->a(Lorg/jsoup/c/l;)V

    return-void

    .line 551
    :cond_0
    sget-object p2, Lorg/jsoup/c/l$26;->ScriptDataDoubleEscaped:Lorg/jsoup/c/l;

    .line 2124
    iput-object p2, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    return-void
.end method
