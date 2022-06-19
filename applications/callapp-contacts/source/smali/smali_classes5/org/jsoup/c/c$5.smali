.class final enum Lorg/jsoup/c/c$5;
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

    .line 1113
    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/c/c;-><init>(Ljava/lang/String;ILorg/jsoup/c/c$1;)V

    return-void
.end method

.method private anythingElse(Lorg/jsoup/c/i;Lorg/jsoup/c/b;)Z
    .locals 1

    .line 1172
    sget-object v0, Lorg/jsoup/c/c$5;->InTable:Lorg/jsoup/c/c;

    invoke-virtual {p2, p1, v0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i;Lorg/jsoup/c/c;)Z

    move-result p1

    return p1
.end method

.method private exitTableBody(Lorg/jsoup/c/i;Lorg/jsoup/c/b;)Z
    .locals 1

    const-string v0, "tbody"

    .line 1161
    invoke-virtual {p2, v0}, Lorg/jsoup/c/b;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "thead"

    invoke-virtual {p2, v0}, Lorg/jsoup/c/b;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tfoot"

    invoke-virtual {p2, v0}, Lorg/jsoup/c/b;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1163
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    const/4 p1, 0x0

    return p1

    .line 1166
    :cond_0
    invoke-virtual {p2}, Lorg/jsoup/c/b;->h()V

    .line 1167
    invoke-virtual {p2}, Lorg/jsoup/c/b;->p()Lorg/jsoup/nodes/h;

    move-result-object v0

    .line 3152
    iget-object v0, v0, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 4046
    iget-object v0, v0, Lorg/jsoup/c/h;->b:Ljava/lang/String;

    .line 1167
    invoke-virtual {p2, v0}, Lorg/jsoup/c/b;->m(Ljava/lang/String;)Z

    .line 1168
    invoke-virtual {p2, p1}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method final process(Lorg/jsoup/c/i;Lorg/jsoup/c/b;)Z
    .locals 4

    .line 1115
    sget-object v0, Lorg/jsoup/c/c$17;->a:[I

    iget-object v1, p1, Lorg/jsoup/c/i;->a:Lorg/jsoup/c/i$i;

    invoke-virtual {v1}, Lorg/jsoup/c/i$i;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1155
    invoke-direct {p0, p1, p2}, Lorg/jsoup/c/c$5;->anythingElse(Lorg/jsoup/c/i;Lorg/jsoup/c/b;)Z

    move-result p1

    return p1

    .line 2385
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/jsoup/c/i$f;

    .line 1136
    invoke-virtual {v0}, Lorg/jsoup/c/i$f;->k()Ljava/lang/String;

    move-result-object v0

    .line 1137
    sget-object v1, Lorg/jsoup/c/c$a;->J:[Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/jsoup/b/c;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1138
    invoke-virtual {p2, v0}, Lorg/jsoup/c/b;->h(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1139
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    return v2

    .line 1142
    :cond_1
    invoke-virtual {p2}, Lorg/jsoup/c/b;->h()V

    .line 1143
    invoke-virtual {p2}, Lorg/jsoup/c/b;->e()Lorg/jsoup/nodes/h;

    .line 1144
    sget-object p1, Lorg/jsoup/c/c$5;->InTable:Lorg/jsoup/c/c;

    .line 3145
    iput-object p1, p2, Lorg/jsoup/c/b;->h:Lorg/jsoup/c/c;

    goto :goto_0

    :cond_2
    const-string v1, "table"

    .line 1146
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1147
    invoke-direct {p0, p1, p2}, Lorg/jsoup/c/c$5;->exitTableBody(Lorg/jsoup/c/i;Lorg/jsoup/c/b;)Z

    move-result p1

    return p1

    .line 1148
    :cond_3
    sget-object v1, Lorg/jsoup/c/c$a;->E:[Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/jsoup/b/c;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1149
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    return v2

    .line 1152
    :cond_4
    invoke-direct {p0, p1, p2}, Lorg/jsoup/c/c$5;->anythingElse(Lorg/jsoup/c/i;Lorg/jsoup/c/b;)Z

    move-result p1

    return p1

    .line 1377
    :cond_5
    move-object v0, p1

    check-cast v0, Lorg/jsoup/c/i$g;

    .line 1118
    invoke-virtual {v0}, Lorg/jsoup/c/i$g;->k()Ljava/lang/String;

    move-result-object v1

    const-string v2, "template"

    .line 1119
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1120
    invoke-virtual {p2, v0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i$g;)Lorg/jsoup/nodes/h;

    goto :goto_0

    :cond_6
    const-string v2, "tr"

    .line 1121
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1122
    invoke-virtual {p2}, Lorg/jsoup/c/b;->h()V

    .line 1123
    invoke-virtual {p2, v0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i$g;)Lorg/jsoup/nodes/h;

    .line 1124
    sget-object p1, Lorg/jsoup/c/c$5;->InRow:Lorg/jsoup/c/c;

    .line 2145
    iput-object p1, p2, Lorg/jsoup/c/b;->h:Lorg/jsoup/c/c;

    :goto_0
    const/4 p1, 0x1

    return p1

    .line 1125
    :cond_7
    sget-object v3, Lorg/jsoup/c/c$a;->x:[Ljava/lang/String;

    invoke-static {v1, v3}, Lorg/jsoup/b/c;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1126
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    .line 1127
    invoke-virtual {p2, v2}, Lorg/jsoup/c/b;->l(Ljava/lang/String;)Z

    .line 1128
    invoke-virtual {p2, v0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i;)Z

    move-result p1

    return p1

    .line 1129
    :cond_8
    sget-object v0, Lorg/jsoup/c/c$a;->D:[Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/jsoup/b/c;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1130
    invoke-direct {p0, p1, p2}, Lorg/jsoup/c/c$5;->exitTableBody(Lorg/jsoup/c/i;Lorg/jsoup/c/b;)Z

    move-result p1

    return p1

    .line 1132
    :cond_9
    invoke-direct {p0, p1, p2}, Lorg/jsoup/c/c$5;->anythingElse(Lorg/jsoup/c/i;Lorg/jsoup/c/b;)Z

    move-result p1

    return p1
.end method
