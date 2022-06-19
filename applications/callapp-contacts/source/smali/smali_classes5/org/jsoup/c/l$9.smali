.class final enum Lorg/jsoup/c/l$9;
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

    .line 282
    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/c/l;-><init>(Ljava/lang/String;ILorg/jsoup/c/l$1;)V

    return-void
.end method


# virtual methods
.method final read(Lorg/jsoup/c/k;Lorg/jsoup/c/a;)V
    .locals 3

    .line 284
    invoke-virtual {p2}, Lorg/jsoup/c/a;->e()C

    move-result v0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_2

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_1

    const v1, 0xffff

    const-string v2, "<"

    if-eq v0, v1, :cond_0

    .line 299
    invoke-virtual {p1, v2}, Lorg/jsoup/c/k;->a(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p2}, Lorg/jsoup/c/a;->f()V

    .line 301
    sget-object p2, Lorg/jsoup/c/l$9;->ScriptData:Lorg/jsoup/c/l;

    .line 5124
    iput-object p2, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    return-void

    .line 294
    :cond_0
    invoke-virtual {p1, v2}, Lorg/jsoup/c/k;->a(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p1, p0}, Lorg/jsoup/c/k;->c(Lorg/jsoup/c/l;)V

    .line 296
    sget-object p2, Lorg/jsoup/c/l$9;->Data:Lorg/jsoup/c/l;

    .line 4124
    iput-object p2, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    return-void

    .line 1245
    :cond_1
    iget-object p2, p1, Lorg/jsoup/c/k;->h:Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/jsoup/c/i;->a(Ljava/lang/StringBuilder;)V

    .line 287
    sget-object p2, Lorg/jsoup/c/l$9;->ScriptDataEndTagOpen:Lorg/jsoup/c/l;

    .line 2124
    iput-object p2, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    return-void

    :cond_2
    const-string p2, "<!"

    .line 290
    invoke-virtual {p1, p2}, Lorg/jsoup/c/k;->a(Ljava/lang/String;)V

    .line 291
    sget-object p2, Lorg/jsoup/c/l$9;->ScriptDataEscapeStart:Lorg/jsoup/c/l;

    .line 3124
    iput-object p2, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    return-void
.end method
