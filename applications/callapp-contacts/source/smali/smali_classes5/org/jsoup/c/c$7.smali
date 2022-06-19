.class final enum Lorg/jsoup/c/c$7;
.super Lorg/jsoup/c/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1238
    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/c/c;-><init>(Ljava/lang/String;ILorg/jsoup/c/c$1;)V

    return-void
.end method

.method private anythingElse(Lorg/jsoup/c/i;Lorg/jsoup/c/b;)Z
    .locals 1

    .line 1284
    sget-object v0, Lorg/jsoup/c/c$7;->InBody:Lorg/jsoup/c/c;

    invoke-virtual {p2, p1, v0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i;Lorg/jsoup/c/c;)Z

    move-result p1

    return p1
.end method

.method private closeCell(Lorg/jsoup/c/b;)V
    .locals 2

    const-string v0, "td"

    .line 1288
    invoke-virtual {p1, v0}, Lorg/jsoup/c/b;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1289
    invoke-virtual {p1, v0}, Lorg/jsoup/c/b;->m(Ljava/lang/String;)Z

    return-void

    :cond_0
    const-string v0, "th"

    .line 1291
    invoke-virtual {p1, v0}, Lorg/jsoup/c/b;->m(Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method final process(Lorg/jsoup/c/i;Lorg/jsoup/c/b;)Z
    .locals 3

    .line 1240
    invoke-virtual {p1}, Lorg/jsoup/c/i;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 1385
    move-object v0, p1

    check-cast v0, Lorg/jsoup/c/i$f;

    .line 1242
    invoke-virtual {v0}, Lorg/jsoup/c/i$f;->k()Ljava/lang/String;

    move-result-object v0

    .line 1244
    sget-object v2, Lorg/jsoup/c/c$a;->x:[Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/jsoup/b/c;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1245
    invoke-virtual {p2, v0}, Lorg/jsoup/c/b;->h(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1246
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    .line 1247
    sget-object p1, Lorg/jsoup/c/c$7;->InRow:Lorg/jsoup/c/c;

    .line 2145
    iput-object p1, p2, Lorg/jsoup/c/b;->h:Lorg/jsoup/c/c;

    return v1

    .line 1250
    :cond_0
    invoke-virtual {p2}, Lorg/jsoup/c/b;->l()V

    .line 1251
    invoke-virtual {p2}, Lorg/jsoup/c/b;->p()Lorg/jsoup/nodes/h;

    move-result-object p1

    .line 2152
    iget-object p1, p1, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 3046
    iget-object p1, p1, Lorg/jsoup/c/h;->b:Ljava/lang/String;

    .line 1251
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1252
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    .line 1253
    :cond_1
    invoke-virtual {p2, v0}, Lorg/jsoup/c/b;->c(Ljava/lang/String;)Lorg/jsoup/nodes/h;

    .line 1254
    invoke-virtual {p2}, Lorg/jsoup/c/b;->n()V

    .line 1255
    sget-object p1, Lorg/jsoup/c/c$7;->InRow:Lorg/jsoup/c/c;

    .line 3145
    iput-object p1, p2, Lorg/jsoup/c/b;->h:Lorg/jsoup/c/c;

    const/4 p1, 0x1

    return p1

    .line 1256
    :cond_2
    sget-object v2, Lorg/jsoup/c/c$a;->y:[Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/jsoup/b/c;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1257
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    return v1

    .line 1259
    :cond_3
    sget-object v2, Lorg/jsoup/c/c$a;->z:[Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/jsoup/b/c;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1260
    invoke-virtual {p2, v0}, Lorg/jsoup/c/b;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1261
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    return v1

    .line 1264
    :cond_4
    invoke-direct {p0, p2}, Lorg/jsoup/c/c$7;->closeCell(Lorg/jsoup/c/b;)V

    .line 1265
    invoke-virtual {p2, p1}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i;)Z

    move-result p1

    return p1

    .line 1267
    :cond_5
    invoke-direct {p0, p1, p2}, Lorg/jsoup/c/c$7;->anythingElse(Lorg/jsoup/c/i;Lorg/jsoup/c/b;)Z

    move-result p1

    return p1

    .line 1269
    :cond_6
    invoke-virtual {p1}, Lorg/jsoup/c/i;->c()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3377
    move-object v0, p1

    check-cast v0, Lorg/jsoup/c/i$g;

    .line 1270
    invoke-virtual {v0}, Lorg/jsoup/c/i$g;->k()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lorg/jsoup/c/c$a;->A:[Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/jsoup/b/c;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "td"

    .line 1271
    invoke-virtual {p2, v0}, Lorg/jsoup/c/b;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "th"

    invoke-virtual {p2, v0}, Lorg/jsoup/c/b;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1272
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    return v1

    .line 1275
    :cond_7
    invoke-direct {p0, p2}, Lorg/jsoup/c/c$7;->closeCell(Lorg/jsoup/c/b;)V

    .line 1276
    invoke-virtual {p2, p1}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i;)Z

    move-result p1

    return p1

    .line 1278
    :cond_8
    invoke-direct {p0, p1, p2}, Lorg/jsoup/c/c$7;->anythingElse(Lorg/jsoup/c/i;Lorg/jsoup/c/b;)Z

    move-result p1

    return p1
.end method
