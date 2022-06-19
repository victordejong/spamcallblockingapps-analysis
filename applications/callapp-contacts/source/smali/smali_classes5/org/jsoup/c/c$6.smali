.class final enum Lorg/jsoup/c/c$6;
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

    .line 1175
    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/c/c;-><init>(Ljava/lang/String;ILorg/jsoup/c/c$1;)V

    return-void
.end method

.method private anythingElse(Lorg/jsoup/c/i;Lorg/jsoup/c/b;)Z
    .locals 1

    .line 1227
    sget-object v0, Lorg/jsoup/c/c$6;->InTable:Lorg/jsoup/c/c;

    invoke-virtual {p2, p1, v0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i;Lorg/jsoup/c/c;)Z

    move-result p1

    return p1
.end method

.method private handleMissingTr(Lorg/jsoup/c/i;Lorg/jsoup/c/m;)Z
    .locals 1

    const-string v0, "tr"

    .line 1231
    invoke-virtual {p2, v0}, Lorg/jsoup/c/m;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1233
    invoke-virtual {p2, p1}, Lorg/jsoup/c/m;->a(Lorg/jsoup/c/i;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method final process(Lorg/jsoup/c/i;Lorg/jsoup/c/b;)Z
    .locals 4

    .line 1177
    invoke-virtual {p1}, Lorg/jsoup/c/i;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1377
    move-object v0, p1

    check-cast v0, Lorg/jsoup/c/i$g;

    .line 1179
    invoke-virtual {v0}, Lorg/jsoup/c/i$g;->k()Ljava/lang/String;

    move-result-object v1

    const-string v2, "template"

    .line 1181
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1182
    invoke-virtual {p2, v0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i$g;)Lorg/jsoup/nodes/h;

    goto :goto_0

    .line 1183
    :cond_0
    sget-object v2, Lorg/jsoup/c/c$a;->x:[Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/jsoup/b/c;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1184
    invoke-virtual {p2}, Lorg/jsoup/c/b;->i()V

    .line 1185
    invoke-virtual {p2, v0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i$g;)Lorg/jsoup/nodes/h;

    .line 1186
    sget-object p1, Lorg/jsoup/c/c$6;->InCell:Lorg/jsoup/c/c;

    .line 2145
    iput-object p1, p2, Lorg/jsoup/c/b;->h:Lorg/jsoup/c/c;

    .line 1187
    invoke-virtual {p2}, Lorg/jsoup/c/b;->o()V

    goto :goto_0

    .line 1188
    :cond_1
    sget-object v0, Lorg/jsoup/c/c$a;->F:[Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/jsoup/b/c;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1189
    invoke-direct {p0, p1, p2}, Lorg/jsoup/c/c$6;->handleMissingTr(Lorg/jsoup/c/i;Lorg/jsoup/c/m;)Z

    move-result p1

    return p1

    .line 1191
    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/jsoup/c/c$6;->anythingElse(Lorg/jsoup/c/i;Lorg/jsoup/c/b;)Z

    move-result p1

    return p1

    .line 1193
    :cond_3
    invoke-virtual {p1}, Lorg/jsoup/c/i;->d()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2385
    move-object v0, p1

    check-cast v0, Lorg/jsoup/c/i$f;

    .line 1195
    invoke-virtual {v0}, Lorg/jsoup/c/i$f;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tr"

    .line 1197
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 1198
    invoke-virtual {p2, v0}, Lorg/jsoup/c/b;->h(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 1199
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    return v3

    .line 1202
    :cond_4
    invoke-virtual {p2}, Lorg/jsoup/c/b;->i()V

    .line 1203
    invoke-virtual {p2}, Lorg/jsoup/c/b;->e()Lorg/jsoup/nodes/h;

    .line 1204
    sget-object p1, Lorg/jsoup/c/c$6;->InTableBody:Lorg/jsoup/c/c;

    .line 3145
    iput-object p1, p2, Lorg/jsoup/c/b;->h:Lorg/jsoup/c/c;

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_5
    const-string v2, "table"

    .line 1205
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1206
    invoke-direct {p0, p1, p2}, Lorg/jsoup/c/c$6;->handleMissingTr(Lorg/jsoup/c/i;Lorg/jsoup/c/m;)Z

    move-result p1

    return p1

    .line 1207
    :cond_6
    sget-object v2, Lorg/jsoup/c/c$a;->u:[Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/jsoup/b/c;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1208
    invoke-virtual {p2, v0}, Lorg/jsoup/c/b;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1209
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    return v3

    .line 1212
    :cond_7
    invoke-virtual {p2, v1}, Lorg/jsoup/c/b;->m(Ljava/lang/String;)Z

    .line 1213
    invoke-virtual {p2, p1}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i;)Z

    move-result p1

    return p1

    .line 1214
    :cond_8
    sget-object v1, Lorg/jsoup/c/c$a;->G:[Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/jsoup/b/c;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1215
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    return v3

    .line 1218
    :cond_9
    invoke-direct {p0, p1, p2}, Lorg/jsoup/c/c$6;->anythingElse(Lorg/jsoup/c/i;Lorg/jsoup/c/b;)Z

    move-result p1

    return p1

    .line 1221
    :cond_a
    invoke-direct {p0, p1, p2}, Lorg/jsoup/c/c$6;->anythingElse(Lorg/jsoup/c/i;Lorg/jsoup/c/b;)Z

    move-result p1

    return p1
.end method
