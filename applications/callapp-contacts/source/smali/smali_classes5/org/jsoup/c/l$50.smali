.class final enum Lorg/jsoup/c/l$50;
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

    .line 1203
    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/c/l;-><init>(Ljava/lang/String;ILorg/jsoup/c/l$1;)V

    return-void
.end method


# virtual methods
.method final read(Lorg/jsoup/c/k;Lorg/jsoup/c/a;)V
    .locals 3

    .line 1205
    invoke-virtual {p2}, Lorg/jsoup/c/a;->c()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1206
    invoke-virtual {p1, p0}, Lorg/jsoup/c/k;->c(Lorg/jsoup/c/l;)V

    .line 1207
    iget-object p2, p1, Lorg/jsoup/c/k;->m:Lorg/jsoup/c/i$d;

    iput-boolean v1, p2, Lorg/jsoup/c/i$d;->f:Z

    .line 1208
    invoke-virtual {p1}, Lorg/jsoup/c/k;->e()V

    .line 1209
    sget-object p2, Lorg/jsoup/c/l$50;->Data:Lorg/jsoup/c/l;

    .line 2124
    iput-object p2, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    return-void

    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [C

    .line 1212
    fill-array-data v0, :array_0

    invoke-virtual {p2, v0}, Lorg/jsoup/c/a;->c([C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1213
    invoke-virtual {p2}, Lorg/jsoup/c/a;->g()V

    return-void

    :cond_1
    const/16 v0, 0x3e

    .line 1214
    invoke-virtual {p2, v0}, Lorg/jsoup/c/a;->b(C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1215
    invoke-virtual {p1}, Lorg/jsoup/c/k;->e()V

    .line 1216
    sget-object p2, Lorg/jsoup/c/l$50;->Data:Lorg/jsoup/c/l;

    invoke-virtual {p1, p2}, Lorg/jsoup/c/k;->a(Lorg/jsoup/c/l;)V

    return-void

    :cond_2
    const-string v0, "PUBLIC"

    .line 1217
    invoke-virtual {p2, v0}, Lorg/jsoup/c/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1218
    iget-object p2, p1, Lorg/jsoup/c/k;->m:Lorg/jsoup/c/i$d;

    iput-object v0, p2, Lorg/jsoup/c/i$d;->c:Ljava/lang/String;

    .line 1219
    sget-object p2, Lorg/jsoup/c/l$50;->AfterDoctypePublicKeyword:Lorg/jsoup/c/l;

    .line 3124
    iput-object p2, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    return-void

    :cond_3
    const-string v0, "SYSTEM"

    .line 1220
    invoke-virtual {p2, v0}, Lorg/jsoup/c/a;->b(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1221
    iget-object p2, p1, Lorg/jsoup/c/k;->m:Lorg/jsoup/c/i$d;

    iput-object v0, p2, Lorg/jsoup/c/i$d;->c:Ljava/lang/String;

    .line 1222
    sget-object p2, Lorg/jsoup/c/l$50;->AfterDoctypeSystemKeyword:Lorg/jsoup/c/l;

    .line 4124
    iput-object p2, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    return-void

    .line 1224
    :cond_4
    invoke-virtual {p1, p0}, Lorg/jsoup/c/k;->b(Lorg/jsoup/c/l;)V

    .line 1225
    iget-object p2, p1, Lorg/jsoup/c/k;->m:Lorg/jsoup/c/i$d;

    iput-boolean v1, p2, Lorg/jsoup/c/i$d;->f:Z

    .line 1226
    sget-object p2, Lorg/jsoup/c/l$50;->BogusDoctype:Lorg/jsoup/c/l;

    invoke-virtual {p1, p2}, Lorg/jsoup/c/k;->a(Lorg/jsoup/c/l;)V

    return-void

    :array_0
    .array-data 2
        0x9s
        0xas
        0xds
        0xcs
        0x20s
    .end array-data
.end method
