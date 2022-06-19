.class final enum Lorg/jsoup/c/l$3;
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

    .line 183
    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/c/l;-><init>(Ljava/lang/String;ILorg/jsoup/c/l$1;)V

    return-void
.end method


# virtual methods
.method final read(Lorg/jsoup/c/k;Lorg/jsoup/c/a;)V
    .locals 3

    const/16 v0, 0x2f

    .line 186
    invoke-virtual {p2, v0}, Lorg/jsoup/c/a;->b(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1245
    iget-object p2, p1, Lorg/jsoup/c/k;->h:Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/jsoup/c/i;->a(Ljava/lang/StringBuilder;)V

    .line 188
    sget-object p2, Lorg/jsoup/c/l$3;->RCDATAEndTagOpen:Lorg/jsoup/c/l;

    invoke-virtual {p1, p2}, Lorg/jsoup/c/k;->a(Lorg/jsoup/c/l;)V

    return-void

    .line 189
    :cond_0
    invoke-virtual {p2}, Lorg/jsoup/c/a;->p()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1253
    iget-object v0, p1, Lorg/jsoup/c/k;->o:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "</"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2253
    iget-object v1, p1, Lorg/jsoup/c/k;->o:Ljava/lang/String;

    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2517
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 2518
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 2519
    invoke-virtual {p2, v1}, Lorg/jsoup/c/a;->a(Ljava/lang/CharSequence;)I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_2

    invoke-virtual {p2, v0}, Lorg/jsoup/c/a;->a(Ljava/lang/CharSequence;)I

    move-result v0

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    .line 192
    invoke-virtual {p1, v2}, Lorg/jsoup/c/k;->a(Z)Lorg/jsoup/c/i$h;

    move-result-object v0

    .line 3253
    iget-object v1, p1, Lorg/jsoup/c/k;->o:Ljava/lang/String;

    .line 192
    invoke-virtual {v0, v1}, Lorg/jsoup/c/i$h;->a(Ljava/lang/String;)Lorg/jsoup/c/i$h;

    move-result-object v0

    iput-object v0, p1, Lorg/jsoup/c/k;->i:Lorg/jsoup/c/i$h;

    .line 193
    invoke-virtual {p1}, Lorg/jsoup/c/k;->a()V

    .line 194
    invoke-virtual {p2}, Lorg/jsoup/c/a;->f()V

    .line 195
    sget-object p2, Lorg/jsoup/c/l$3;->Data:Lorg/jsoup/c/l;

    .line 4124
    iput-object p2, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    return-void

    :cond_3
    const-string p2, "<"

    .line 197
    invoke-virtual {p1, p2}, Lorg/jsoup/c/k;->a(Ljava/lang/String;)V

    .line 198
    sget-object p2, Lorg/jsoup/c/l$3;->Rcdata:Lorg/jsoup/c/l;

    .line 5124
    iput-object p2, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    return-void
.end method
