.class public Lcom/bumptech/glide/load/engine/j;
.super Ljava/lang/Object;
.source "Engine.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/b/h$a;
.implements Lcom/bumptech/glide/load/engine/l;
.implements Lcom/bumptech/glide/load/engine/o$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/j$b;,
        Lcom/bumptech/glide/load/engine/j$a;,
        Lcom/bumptech/glide/load/engine/j$c;,
        Lcom/bumptech/glide/load/engine/j$d;
    }
.end annotation


# static fields
.field private static final a:Z


# instance fields
.field private final b:Lcom/bumptech/glide/load/engine/q;

.field private final c:Lcom/bumptech/glide/load/engine/n;

.field private final d:Lcom/bumptech/glide/load/engine/b/h;

.field private final e:Lcom/bumptech/glide/load/engine/j$b;

.field private final f:Lcom/bumptech/glide/load/engine/w;

.field private final g:Lcom/bumptech/glide/load/engine/j$c;

.field private final h:Lcom/bumptech/glide/load/engine/j$a;

.field private final i:Lcom/bumptech/glide/load/engine/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    const-string/jumbo v0, "Engine"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/bumptech/glide/load/engine/j;->a:Z

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/engine/b/h;Lcom/bumptech/glide/load/engine/b/a$a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/q;Lcom/bumptech/glide/load/engine/n;Lcom/bumptech/glide/load/engine/a;Lcom/bumptech/glide/load/engine/j$b;Lcom/bumptech/glide/load/engine/j$a;Lcom/bumptech/glide/load/engine/w;Z)V
    .locals 8

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/j;->d:Lcom/bumptech/glide/load/engine/b/h;

    .line 85
    new-instance v2, Lcom/bumptech/glide/load/engine/j$c;

    invoke-direct {v2, p2}, Lcom/bumptech/glide/load/engine/j$c;-><init>(Lcom/bumptech/glide/load/engine/b/a$a;)V

    iput-object v2, p0, Lcom/bumptech/glide/load/engine/j;->g:Lcom/bumptech/glide/load/engine/j$c;

    .line 87
    if-nez p9, :cond_0

    .line 88
    new-instance p9, Lcom/bumptech/glide/load/engine/a;

    move-object/from16 v0, p9

    move/from16 v1, p13

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/engine/a;-><init>(Z)V

    .line 90
    :cond_0
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/j;->i:Lcom/bumptech/glide/load/engine/a;

    .line 91
    move-object/from16 v0, p9

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/engine/a;->a(Lcom/bumptech/glide/load/engine/o$a;)V

    .line 93
    if-nez p8, :cond_1

    .line 94
    new-instance p8, Lcom/bumptech/glide/load/engine/n;

    invoke-direct/range {p8 .. p8}, Lcom/bumptech/glide/load/engine/n;-><init>()V

    .line 96
    :cond_1
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/j;->c:Lcom/bumptech/glide/load/engine/n;

    .line 98
    if-nez p7, :cond_2

    .line 99
    new-instance p7, Lcom/bumptech/glide/load/engine/q;

    invoke-direct {p7}, Lcom/bumptech/glide/load/engine/q;-><init>()V

    .line 101
    :cond_2
    iput-object p7, p0, Lcom/bumptech/glide/load/engine/j;->b:Lcom/bumptech/glide/load/engine/q;

    .line 103
    if-nez p10, :cond_5

    .line 104
    new-instance v2, Lcom/bumptech/glide/load/engine/j$b;

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, Lcom/bumptech/glide/load/engine/j$b;-><init>(Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/l;)V

    .line 108
    :goto_0
    iput-object v2, p0, Lcom/bumptech/glide/load/engine/j;->e:Lcom/bumptech/glide/load/engine/j$b;

    .line 110
    if-nez p11, :cond_3

    .line 111
    new-instance p11, Lcom/bumptech/glide/load/engine/j$a;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/j;->g:Lcom/bumptech/glide/load/engine/j$c;

    move-object/from16 v0, p11

    invoke-direct {v0, v2}, Lcom/bumptech/glide/load/engine/j$a;-><init>(Lcom/bumptech/glide/load/engine/g$d;)V

    .line 113
    :cond_3
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/j;->h:Lcom/bumptech/glide/load/engine/j$a;

    .line 115
    if-nez p12, :cond_4

    .line 116
    new-instance p12, Lcom/bumptech/glide/load/engine/w;

    invoke-direct/range {p12 .. p12}, Lcom/bumptech/glide/load/engine/w;-><init>()V

    .line 118
    :cond_4
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/j;->f:Lcom/bumptech/glide/load/engine/w;

    .line 120
    invoke-interface {p1, p0}, Lcom/bumptech/glide/load/engine/b/h;->a(Lcom/bumptech/glide/load/engine/b/h$a;)V

    .line 121
    return-void

    :cond_5
    move-object/from16 v2, p10

    goto :goto_0
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/engine/b/h;Lcom/bumptech/glide/load/engine/b/a$a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/c/a;Z)V
    .locals 14

    .prologue
    .line 54
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v13, p7

    invoke-direct/range {v0 .. v13}, Lcom/bumptech/glide/load/engine/j;-><init>(Lcom/bumptech/glide/load/engine/b/h;Lcom/bumptech/glide/load/engine/b/a$a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/q;Lcom/bumptech/glide/load/engine/n;Lcom/bumptech/glide/load/engine/a;Lcom/bumptech/glide/load/engine/j$b;Lcom/bumptech/glide/load/engine/j$a;Lcom/bumptech/glide/load/engine/w;Z)V

    .line 68
    return-void
.end method

.method private a(Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/load/engine/o;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/f;",
            ")",
            "Lcom/bumptech/glide/load/engine/o",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 270
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/j;->d:Lcom/bumptech/glide/load/engine/b/h;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/b/h;->a(Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/load/engine/t;

    move-result-object v0

    .line 273
    if-nez v0, :cond_0

    .line 274
    const/4 v0, 0x0

    .line 281
    :goto_0
    return-object v0

    .line 275
    :cond_0
    instance-of v1, v0, Lcom/bumptech/glide/load/engine/o;

    if-eqz v1, :cond_1

    .line 277
    check-cast v0, Lcom/bumptech/glide/load/engine/o;

    goto :goto_0

    .line 279
    :cond_1
    new-instance v1, Lcom/bumptech/glide/load/engine/o;

    invoke-direct {v1, v0, v2, v2}, Lcom/bumptech/glide/load/engine/o;-><init>(Lcom/bumptech/glide/load/engine/t;ZZ)V

    move-object v0, v1

    goto :goto_0
.end method

.method private a(Lcom/bumptech/glide/load/f;Z)Lcom/bumptech/glide/load/engine/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/f;",
            "Z)",
            "Lcom/bumptech/glide/load/engine/o",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 245
    if-nez p2, :cond_1

    .line 246
    const/4 v0, 0x0

    .line 253
    :cond_0
    :goto_0
    return-object v0

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/j;->i:Lcom/bumptech/glide/load/engine/a;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/a;->b(Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/load/engine/o;

    move-result-object v0

    .line 249
    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/o;->g()V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;JLcom/bumptech/glide/load/f;)V
    .locals 5

    .prologue
    .line 240
    const-string/jumbo v0, "Engine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/bumptech/glide/h/e;->a(J)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms, key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return-void
.end method

.method private b(Lcom/bumptech/glide/load/f;Z)Lcom/bumptech/glide/load/engine/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/f;",
            "Z)",
            "Lcom/bumptech/glide/load/engine/o",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 257
    if-nez p2, :cond_1

    .line 258
    const/4 v0, 0x0

    .line 266
    :cond_0
    :goto_0
    return-object v0

    .line 261
    :cond_1
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/j;->a(Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/load/engine/o;

    move-result-object v0

    .line 262
    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/o;->g()V

    .line 264
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/j;->i:Lcom/bumptech/glide/load/engine/a;

    invoke-virtual {v1, p1, v0}, Lcom/bumptech/glide/load/engine/a;->a(Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/engine/o;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/e;Ljava/lang/Object;Lcom/bumptech/glide/load/f;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/g;Lcom/bumptech/glide/load/engine/i;Ljava/util/Map;ZZLcom/bumptech/glide/load/h;ZZZZLcom/bumptech/glide/f/f;)Lcom/bumptech/glide/load/engine/j$d;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/e;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/load/f;",
            "II",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<TR;>;",
            "Lcom/bumptech/glide/g;",
            "Lcom/bumptech/glide/load/engine/i;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/bumptech/glide/load/k",
            "<*>;>;ZZ",
            "Lcom/bumptech/glide/load/h;",
            "ZZZZ",
            "Lcom/bumptech/glide/f/f;",
            ")",
            "Lcom/bumptech/glide/load/engine/j$d;"
        }
    .end annotation

    .prologue
    .line 168
    invoke-static {}, Lcom/bumptech/glide/h/j;->a()V

    .line 169
    sget-boolean v2, Lcom/bumptech/glide/load/engine/j;->a:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/bumptech/glide/h/e;->a()J

    move-result-wide v2

    move-wide/from16 v22, v2

    .line 171
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/load/engine/j;->c:Lcom/bumptech/glide/load/engine/n;

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p10

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p13

    invoke-virtual/range {v2 .. v10}, Lcom/bumptech/glide/load/engine/n;->a(Ljava/lang/Object;Lcom/bumptech/glide/load/f;IILjava/util/Map;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/load/engine/m;

    move-result-object v3

    .line 174
    move-object/from16 v0, p0

    move/from16 v1, p14

    invoke-direct {v0, v3, v1}, Lcom/bumptech/glide/load/engine/j;->a(Lcom/bumptech/glide/load/f;Z)Lcom/bumptech/glide/load/engine/o;

    move-result-object v2

    .line 175
    if-eqz v2, :cond_2

    .line 176
    sget-object v4, Lcom/bumptech/glide/load/a;->e:Lcom/bumptech/glide/load/a;

    move-object/from16 v0, p18

    invoke-interface {v0, v2, v4}, Lcom/bumptech/glide/f/f;->a(Lcom/bumptech/glide/load/engine/t;Lcom/bumptech/glide/load/a;)V

    .line 177
    sget-boolean v2, Lcom/bumptech/glide/load/engine/j;->a:Z

    if-eqz v2, :cond_0

    .line 178
    const-string/jumbo v2, "Loaded resource from active resources"

    move-wide/from16 v0, v22

    invoke-static {v2, v0, v1, v3}, Lcom/bumptech/glide/load/engine/j;->a(Ljava/lang/String;JLcom/bumptech/glide/load/f;)V

    .line 180
    :cond_0
    const/4 v2, 0x0

    .line 236
    :goto_1
    return-object v2

    .line 169
    :cond_1
    const-wide/16 v2, 0x0

    move-wide/from16 v22, v2

    goto :goto_0

    .line 183
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, p14

    invoke-direct {v0, v3, v1}, Lcom/bumptech/glide/load/engine/j;->b(Lcom/bumptech/glide/load/f;Z)Lcom/bumptech/glide/load/engine/o;

    move-result-object v2

    .line 184
    if-eqz v2, :cond_4

    .line 185
    sget-object v4, Lcom/bumptech/glide/load/a;->e:Lcom/bumptech/glide/load/a;

    move-object/from16 v0, p18

    invoke-interface {v0, v2, v4}, Lcom/bumptech/glide/f/f;->a(Lcom/bumptech/glide/load/engine/t;Lcom/bumptech/glide/load/a;)V

    .line 186
    sget-boolean v2, Lcom/bumptech/glide/load/engine/j;->a:Z

    if-eqz v2, :cond_3

    .line 187
    const-string/jumbo v2, "Loaded resource from cache"

    move-wide/from16 v0, v22

    invoke-static {v2, v0, v1, v3}, Lcom/bumptech/glide/load/engine/j;->a(Ljava/lang/String;JLcom/bumptech/glide/load/f;)V

    .line 189
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 192
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/load/engine/j;->b:Lcom/bumptech/glide/load/engine/q;

    move/from16 v0, p17

    invoke-virtual {v2, v3, v0}, Lcom/bumptech/glide/load/engine/q;->a(Lcom/bumptech/glide/load/f;Z)Lcom/bumptech/glide/load/engine/k;

    move-result-object v4

    .line 193
    if-eqz v4, :cond_6

    .line 194
    move-object/from16 v0, p18

    invoke-virtual {v4, v0}, Lcom/bumptech/glide/load/engine/k;->a(Lcom/bumptech/glide/f/f;)V

    .line 195
    sget-boolean v2, Lcom/bumptech/glide/load/engine/j;->a:Z

    if-eqz v2, :cond_5

    .line 196
    const-string/jumbo v2, "Added to existing load"

    move-wide/from16 v0, v22

    invoke-static {v2, v0, v1, v3}, Lcom/bumptech/glide/load/engine/j;->a(Ljava/lang/String;JLcom/bumptech/glide/load/f;)V

    .line 198
    :cond_5
    new-instance v2, Lcom/bumptech/glide/load/engine/j$d;

    move-object/from16 v0, p18

    invoke-direct {v2, v0, v4}, Lcom/bumptech/glide/load/engine/j$d;-><init>(Lcom/bumptech/glide/f/f;Lcom/bumptech/glide/load/engine/k;)V

    goto :goto_1

    .line 201
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/load/engine/j;->e:Lcom/bumptech/glide/load/engine/j$b;

    move/from16 v4, p14

    move/from16 v5, p15

    move/from16 v6, p16

    move/from16 v7, p17

    .line 202
    invoke-virtual/range {v2 .. v7}, Lcom/bumptech/glide/load/engine/j$b;->a(Lcom/bumptech/glide/load/f;ZZZZ)Lcom/bumptech/glide/load/engine/k;

    move-result-object v20

    .line 209
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bumptech/glide/load/engine/j;->h:Lcom/bumptech/glide/load/engine/j$a;

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object v7, v3

    move-object/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    move-object/from16 v15, p10

    move/from16 v16, p11

    move/from16 v17, p12

    move/from16 v18, p17

    move-object/from16 v19, p13

    .line 210
    invoke-virtual/range {v4 .. v20}, Lcom/bumptech/glide/load/engine/j$a;->a(Lcom/bumptech/glide/e;Ljava/lang/Object;Lcom/bumptech/glide/load/engine/m;Lcom/bumptech/glide/load/f;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/g;Lcom/bumptech/glide/load/engine/i;Ljava/util/Map;ZZZLcom/bumptech/glide/load/h;Lcom/bumptech/glide/load/engine/g$a;)Lcom/bumptech/glide/load/engine/g;

    move-result-object v2

    .line 228
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bumptech/glide/load/engine/j;->b:Lcom/bumptech/glide/load/engine/q;

    move-object/from16 v0, v20

    invoke-virtual {v4, v3, v0}, Lcom/bumptech/glide/load/engine/q;->a(Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/engine/k;)V

    .line 230
    move-object/from16 v0, v20

    move-object/from16 v1, p18

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/engine/k;->a(Lcom/bumptech/glide/f/f;)V

    .line 231
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/load/engine/k;->b(Lcom/bumptech/glide/load/engine/g;)V

    .line 233
    sget-boolean v2, Lcom/bumptech/glide/load/engine/j;->a:Z

    if-eqz v2, :cond_7

    .line 234
    const-string/jumbo v2, "Started new load"

    move-wide/from16 v0, v22

    invoke-static {v2, v0, v1, v3}, Lcom/bumptech/glide/load/engine/j;->a(Ljava/lang/String;JLcom/bumptech/glide/load/f;)V

    .line 236
    :cond_7
    new-instance v2, Lcom/bumptech/glide/load/engine/j$d;

    move-object/from16 v0, p18

    move-object/from16 v1, v20

    invoke-direct {v2, v0, v1}, Lcom/bumptech/glide/load/engine/j$d;-><init>(Lcom/bumptech/glide/f/f;Lcom/bumptech/glide/load/engine/k;)V

    goto/16 :goto_1
.end method

.method public a(Lcom/bumptech/glide/load/engine/k;Lcom/bumptech/glide/load/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/k",
            "<*>;",
            "Lcom/bumptech/glide/load/f;",
            ")V"
        }
    .end annotation

    .prologue
    .line 311
    invoke-static {}, Lcom/bumptech/glide/h/j;->a()V

    .line 313
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/j;->b:Lcom/bumptech/glide/load/engine/q;

    invoke-virtual {v0, p2, p1}, Lcom/bumptech/glide/load/engine/q;->b(Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/engine/k;)V

    .line 314
    return-void
.end method

.method public a(Lcom/bumptech/glide/load/engine/k;Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/engine/o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/k",
            "<*>;",
            "Lcom/bumptech/glide/load/f;",
            "Lcom/bumptech/glide/load/engine/o",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 296
    invoke-static {}, Lcom/bumptech/glide/h/j;->a()V

    .line 298
    if-eqz p3, :cond_0

    .line 299
    invoke-virtual {p3, p2, p0}, Lcom/bumptech/glide/load/engine/o;->a(Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/engine/o$a;)V

    .line 301
    invoke-virtual {p3}, Lcom/bumptech/glide/load/engine/o;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/j;->i:Lcom/bumptech/glide/load/engine/a;

    invoke-virtual {v0, p2, p3}, Lcom/bumptech/glide/load/engine/a;->a(Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/engine/o;)V

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/j;->b:Lcom/bumptech/glide/load/engine/q;

    invoke-virtual {v0, p2, p1}, Lcom/bumptech/glide/load/engine/q;->b(Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/engine/k;)V

    .line 307
    return-void
.end method

.method public a(Lcom/bumptech/glide/load/engine/t;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/t",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 285
    invoke-static {}, Lcom/bumptech/glide/h/j;->a()V

    .line 286
    instance-of v0, p1, Lcom/bumptech/glide/load/engine/o;

    if-eqz v0, :cond_0

    .line 287
    check-cast p1, Lcom/bumptech/glide/load/engine/o;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/o;->h()V

    .line 291
    return-void

    .line 289
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot release anything but an EngineResource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/engine/o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/f;",
            "Lcom/bumptech/glide/load/engine/o",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 324
    invoke-static {}, Lcom/bumptech/glide/h/j;->a()V

    .line 325
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/j;->i:Lcom/bumptech/glide/load/engine/a;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/a;->a(Lcom/bumptech/glide/load/f;)V

    .line 326
    invoke-virtual {p2}, Lcom/bumptech/glide/load/engine/o;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/j;->d:Lcom/bumptech/glide/load/engine/b/h;

    invoke-interface {v0, p1, p2}, Lcom/bumptech/glide/load/engine/b/h;->b(Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/engine/t;)Lcom/bumptech/glide/load/engine/t;

    .line 331
    :goto_0
    return-void

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/j;->f:Lcom/bumptech/glide/load/engine/w;

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/load/engine/w;->a(Lcom/bumptech/glide/load/engine/t;)V

    goto :goto_0
.end method

.method public b(Lcom/bumptech/glide/load/engine/t;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/t",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 318
    invoke-static {}, Lcom/bumptech/glide/h/j;->a()V

    .line 319
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/j;->f:Lcom/bumptech/glide/load/engine/w;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/w;->a(Lcom/bumptech/glide/load/engine/t;)V

    .line 320
    return-void
.end method
