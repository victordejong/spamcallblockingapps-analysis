.class final enum Lorg/jsoup/c/l$67;
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

    .line 124
    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/c/l;-><init>(Ljava/lang/String;ILorg/jsoup/c/l$1;)V

    return-void
.end method


# virtual methods
.method final read(Lorg/jsoup/c/k;Lorg/jsoup/c/a;)V
    .locals 1

    .line 126
    invoke-virtual {p2}, Lorg/jsoup/c/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p1, p0}, Lorg/jsoup/c/k;->c(Lorg/jsoup/c/l;)V

    const-string p2, "</"

    .line 128
    invoke-virtual {p1, p2}, Lorg/jsoup/c/k;->a(Ljava/lang/String;)V

    .line 129
    sget-object p2, Lorg/jsoup/c/l$67;->Data:Lorg/jsoup/c/l;

    .line 1124
    iput-object p2, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    return-void

    .line 130
    :cond_0
    invoke-virtual {p2}, Lorg/jsoup/c/a;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p2, 0x0

    .line 131
    invoke-virtual {p1, p2}, Lorg/jsoup/c/k;->a(Z)Lorg/jsoup/c/i$h;

    .line 132
    sget-object p2, Lorg/jsoup/c/l$67;->TagName:Lorg/jsoup/c/l;

    .line 2124
    iput-object p2, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    return-void

    :cond_1
    const/16 v0, 0x3e

    .line 133
    invoke-virtual {p2, v0}, Lorg/jsoup/c/a;->b(C)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 134
    invoke-virtual {p1, p0}, Lorg/jsoup/c/k;->b(Lorg/jsoup/c/l;)V

    .line 135
    sget-object p2, Lorg/jsoup/c/l$67;->Data:Lorg/jsoup/c/l;

    invoke-virtual {p1, p2}, Lorg/jsoup/c/k;->a(Lorg/jsoup/c/l;)V

    return-void

    .line 137
    :cond_2
    invoke-virtual {p1, p0}, Lorg/jsoup/c/k;->b(Lorg/jsoup/c/l;)V

    .line 138
    invoke-virtual {p1}, Lorg/jsoup/c/k;->c()V

    .line 139
    sget-object p2, Lorg/jsoup/c/l$67;->BogusComment:Lorg/jsoup/c/l;

    invoke-virtual {p1, p2}, Lorg/jsoup/c/k;->a(Lorg/jsoup/c/l;)V

    return-void
.end method
