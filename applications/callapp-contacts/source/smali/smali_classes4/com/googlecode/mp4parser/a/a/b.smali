.class public Lcom/googlecode/mp4parser/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/mp4parser/a/a/b$a;
    }
.end annotation


# static fields
.field static final synthetic e:Z = true

.field private static f:Lcom/googlecode/mp4parser/c/f;


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/googlecode/mp4parser/a/g;",
            "Lcom/b/a/a/ab;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/mp4parser/iso14496/a/a;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/googlecode/mp4parser/a/g;",
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/a/f;",
            ">;>;"
        }
    .end annotation
.end field

.field d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/googlecode/mp4parser/a/g;",
            "[J>;"
        }
    .end annotation
.end field

.field private g:Lcom/googlecode/mp4parser/a/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-class v0, Lcom/googlecode/mp4parser/a/a/b;

    invoke-static {v0}, Lcom/googlecode/mp4parser/c/f;->a(Ljava/lang/Class;)Lcom/googlecode/mp4parser/c/f;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/a/a/b;->f:Lcom/googlecode/mp4parser/c/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/a/a/b;->a:Ljava/util/Map;

    .line 55
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/a/a/b;->b:Ljava/util/Set;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/a/a/b;->c:Ljava/util/HashMap;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/a/a/b;->d:Ljava/util/HashMap;

    return-void
.end method

.method private static a([J)J
    .locals 6

    .line 70
    array-length v0, p0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v0, :cond_0

    return-wide v1

    :cond_0
    aget-wide v4, p0, v3

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private a(Lcom/googlecode/mp4parser/a/g;Lcom/googlecode/mp4parser/a/d;Ljava/util/Map;)Lcom/b/a/a/ag;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/googlecode/mp4parser/a/g;",
            "Lcom/googlecode/mp4parser/a/d;",
            "Ljava/util/Map<",
            "Lcom/googlecode/mp4parser/a/g;",
            "[I>;)",
            "Lcom/b/a/a/ag;"
        }
    .end annotation

    .line 250
    new-instance v0, Lcom/b/a/a/ag;

    invoke-direct {v0}, Lcom/b/a/a/ag;-><init>()V

    .line 251
    new-instance v1, Lcom/b/a/a/ah;

    invoke-direct {v1}, Lcom/b/a/a/ah;-><init>()V

    .line 253
    sget-object v2, Lcom/b/a/a/ah;->t:Lorg/mp4parser/aspectj/lang/a$a;

    const/4 v3, 0x1

    .line 9044
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 253
    invoke-static {v2, v1, v1, v4}, Lorg/mp4parser/aspectj/a/b/b;->a(Lorg/mp4parser/aspectj/lang/a$a;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/a;

    move-result-object v2

    .line 9267
    invoke-static {}, Lcom/googlecode/mp4parser/h;->a()Lcom/googlecode/mp4parser/h;

    invoke-static {v2}, Lcom/googlecode/mp4parser/h;->a(Lorg/mp4parser/aspectj/lang/a;)V

    .line 9268
    invoke-virtual {v1}, Lcom/b/a/a/ah;->i()I

    move-result v2

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/b/a/a/ah;->c(I)V

    .line 254
    sget-object v2, Lcom/b/a/a/ah;->u:Lorg/mp4parser/aspectj/lang/a$a;

    invoke-static {v2, v1, v1, v4}, Lorg/mp4parser/aspectj/a/b/b;->a(Lorg/mp4parser/aspectj/lang/a$a;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/a;

    move-result-object v2

    .line 10275
    invoke-static {}, Lcom/googlecode/mp4parser/h;->a()Lcom/googlecode/mp4parser/h;

    invoke-static {v2}, Lcom/googlecode/mp4parser/h;->a(Lorg/mp4parser/aspectj/lang/a;)V

    .line 10276
    invoke-virtual {v1}, Lcom/b/a/a/ah;->i()I

    move-result v2

    or-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Lcom/b/a/a/ah;->c(I)V

    .line 257
    invoke-interface {p1}, Lcom/googlecode/mp4parser/a/g;->m()Lcom/googlecode/mp4parser/a/h;

    move-result-object v2

    .line 11126
    iget-object v2, v2, Lcom/googlecode/mp4parser/a/h;->e:Lcom/googlecode/mp4parser/c/h;

    .line 257
    sget-object v4, Lcom/b/a/a/ah;->q:Lorg/mp4parser/aspectj/lang/a$a;

    invoke-static {v4, v1, v1, v2}, Lorg/mp4parser/aspectj/a/b/b;->a(Lorg/mp4parser/aspectj/lang/a$a;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/a;

    move-result-object v4

    .line 11238
    invoke-static {}, Lcom/googlecode/mp4parser/h;->a()Lcom/googlecode/mp4parser/h;

    invoke-static {v4}, Lcom/googlecode/mp4parser/h;->a(Lorg/mp4parser/aspectj/lang/a;)V

    iput-object v2, v1, Lcom/b/a/a/ah;->g:Lcom/googlecode/mp4parser/c/h;

    .line 259
    invoke-interface {p1}, Lcom/googlecode/mp4parser/a/g;->m()Lcom/googlecode/mp4parser/a/h;

    move-result-object v2

    .line 12118
    iget v2, v2, Lcom/googlecode/mp4parser/a/h;->j:I

    .line 259
    sget-object v4, Lcom/b/a/a/ah;->o:Lorg/mp4parser/aspectj/lang/a$a;

    .line 13023
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 259
    invoke-static {v4, v1, v1, v5}, Lorg/mp4parser/aspectj/a/b/b;->a(Lorg/mp4parser/aspectj/lang/a$a;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/a;

    move-result-object v4

    .line 13230
    invoke-static {}, Lcom/googlecode/mp4parser/h;->a()Lcom/googlecode/mp4parser/h;

    invoke-static {v4}, Lcom/googlecode/mp4parser/h;->a(Lorg/mp4parser/aspectj/lang/a;)V

    iput v2, v1, Lcom/b/a/a/ah;->e:I

    .line 260
    invoke-interface {p1}, Lcom/googlecode/mp4parser/a/g;->m()Lcom/googlecode/mp4parser/a/h;

    move-result-object v2

    .line 14070
    iget-object v2, v2, Lcom/googlecode/mp4parser/a/h;->d:Ljava/util/Date;

    .line 260
    sget-object v4, Lcom/b/a/a/ah;->k:Lorg/mp4parser/aspectj/lang/a$a;

    invoke-static {v4, v1, v1, v2}, Lorg/mp4parser/aspectj/a/b/b;->a(Lorg/mp4parser/aspectj/lang/a$a;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/a;

    move-result-object v4

    .line 14200
    invoke-static {}, Lcom/googlecode/mp4parser/h;->a()Lcom/googlecode/mp4parser/h;

    invoke-static {v4}, Lcom/googlecode/mp4parser/h;->a(Lorg/mp4parser/aspectj/lang/a;)V

    iput-object v2, v1, Lcom/b/a/a/ah;->a:Ljava/util/Date;

    .line 14201
    invoke-static {v2}, Lcom/googlecode/mp4parser/c/c;->a(Ljava/util/Date;)J

    move-result-wide v4

    const-wide v6, 0x100000000L

    cmp-long v2, v4, v6

    if-ltz v2, :cond_0

    .line 14202
    invoke-virtual {v1, v3}, Lcom/b/a/a/ah;->b(I)V

    .line 262
    :cond_0
    invoke-interface {p1}, Lcom/googlecode/mp4parser/a/g;->g()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Lcom/googlecode/mp4parser/a/g;->g()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v4, 0x0

    .line 266
    invoke-interface {p1}, Lcom/googlecode/mp4parser/a/g;->g()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_2

    .line 269
    invoke-interface {p1}, Lcom/googlecode/mp4parser/a/g;->m()Lcom/googlecode/mp4parser/a/h;

    move-result-object v2

    .line 16054
    iget-wide v8, v2, Lcom/googlecode/mp4parser/a/h;->b:J

    mul-long v4, v4, v8

    .line 269
    invoke-virtual {v1, v4, v5}, Lcom/b/a/a/ah;->a(J)V

    goto :goto_2

    .line 266
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/googlecode/mp4parser/a/c;

    .line 16030
    iget-wide v8, v8, Lcom/googlecode/mp4parser/a/c;->b:D

    double-to-long v8, v8

    add-long/2addr v4, v8

    goto :goto_0

    .line 263
    :cond_3
    :goto_1
    invoke-interface {p1}, Lcom/googlecode/mp4parser/a/g;->e()J

    move-result-wide v4

    invoke-static {p2}, Lcom/googlecode/mp4parser/a/a/b;->b(Lcom/googlecode/mp4parser/a/d;)J

    move-result-wide v8

    mul-long v4, v4, v8

    invoke-interface {p1}, Lcom/googlecode/mp4parser/a/g;->m()Lcom/googlecode/mp4parser/a/h;

    move-result-object v2

    .line 15054
    iget-wide v8, v2, Lcom/googlecode/mp4parser/a/h;->b:J

    .line 263
    div-long/2addr v4, v8

    invoke-virtual {v1, v4, v5}, Lcom/b/a/a/ah;->a(J)V

    .line 273
    :goto_2
    invoke-interface {p1}, Lcom/googlecode/mp4parser/a/g;->m()Lcom/googlecode/mp4parser/a/h;

    move-result-object v2

    .line 16086
    iget-wide v4, v2, Lcom/googlecode/mp4parser/a/h;->g:D

    .line 273
    sget-object v2, Lcom/b/a/a/ah;->s:Lorg/mp4parser/aspectj/lang/a$a;

    .line 17041
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    .line 273
    invoke-static {v2, v1, v1, v8}, Lorg/mp4parser/aspectj/a/b/b;->a(Lorg/mp4parser/aspectj/lang/a$a;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/a;

    move-result-object v2

    .line 17246
    invoke-static {}, Lcom/googlecode/mp4parser/h;->a()Lcom/googlecode/mp4parser/h;

    invoke-static {v2}, Lcom/googlecode/mp4parser/h;->a(Lorg/mp4parser/aspectj/lang/a;)V

    iput-wide v4, v1, Lcom/b/a/a/ah;->i:D

    .line 274
    invoke-interface {p1}, Lcom/googlecode/mp4parser/a/g;->m()Lcom/googlecode/mp4parser/a/h;

    move-result-object v2

    .line 18078
    iget-wide v4, v2, Lcom/googlecode/mp4parser/a/h;->f:D

    .line 274
    sget-object v2, Lcom/b/a/a/ah;->r:Lorg/mp4parser/aspectj/lang/a$a;

    .line 19041
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    .line 274
    invoke-static {v2, v1, v1, v8}, Lorg/mp4parser/aspectj/a/b/b;->a(Lorg/mp4parser/aspectj/lang/a$a;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/a;

    move-result-object v2

    .line 19242
    invoke-static {}, Lcom/googlecode/mp4parser/h;->a()Lcom/googlecode/mp4parser/h;

    invoke-static {v2}, Lcom/googlecode/mp4parser/h;->a(Lorg/mp4parser/aspectj/lang/a;)V

    iput-wide v4, v1, Lcom/b/a/a/ah;->h:D

    .line 275
    invoke-interface {p1}, Lcom/googlecode/mp4parser/a/g;->m()Lcom/googlecode/mp4parser/a/h;

    move-result-object v2

    .line 20102
    iget v2, v2, Lcom/googlecode/mp4parser/a/h;->k:I

    .line 275
    sget-object v4, Lcom/b/a/a/ah;->n:Lorg/mp4parser/aspectj/lang/a$a;

    .line 21023
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 275
    invoke-static {v4, v1, v1, v5}, Lorg/mp4parser/aspectj/a/b/b;->a(Lorg/mp4parser/aspectj/lang/a$a;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/a;

    move-result-object v4

    .line 21226
    invoke-static {}, Lcom/googlecode/mp4parser/h;->a()Lcom/googlecode/mp4parser/h;

    invoke-static {v4}, Lcom/googlecode/mp4parser/h;->a(Lorg/mp4parser/aspectj/lang/a;)V

    iput v2, v1, Lcom/b/a/a/ah;->d:I

    .line 276
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    sget-object v4, Lcom/b/a/a/ah;->l:Lorg/mp4parser/aspectj/lang/a$a;

    invoke-static {v4, v1, v1, v2}, Lorg/mp4parser/aspectj/a/b/b;->a(Lorg/mp4parser/aspectj/lang/a$a;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/a;

    move-result-object v4

    .line 22207
    invoke-static {}, Lcom/googlecode/mp4parser/h;->a()Lcom/googlecode/mp4parser/h;

    invoke-static {v4}, Lcom/googlecode/mp4parser/h;->a(Lorg/mp4parser/aspectj/lang/a;)V

    iput-object v2, v1, Lcom/b/a/a/ah;->b:Ljava/util/Date;

    .line 22208
    invoke-static {v2}, Lcom/googlecode/mp4parser/c/c;->a(Ljava/util/Date;)J

    move-result-wide v4

    cmp-long v2, v4, v6

    if-ltz v2, :cond_4

    .line 22209
    invoke-virtual {v1, v3}, Lcom/b/a/a/ah;->b(I)V

    .line 277
    :cond_4
    invoke-interface {p1}, Lcom/googlecode/mp4parser/a/g;->m()Lcom/googlecode/mp4parser/a/h;

    move-result-object v2

    .line 23094
    iget-wide v4, v2, Lcom/googlecode/mp4parser/a/h;->i:J

    .line 277
    sget-object v2, Lcom/b/a/a/ah;->m:Lorg/mp4parser/aspectj/lang/a$a;

    invoke-static {v4, v5}, Lorg/mp4parser/aspectj/a/a/a;->a(J)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v2, v1, v1, v6}, Lorg/mp4parser/aspectj/a/b/b;->a(Lorg/mp4parser/aspectj/lang/a$a;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/a;

    move-result-object v2

    .line 23215
    invoke-static {}, Lcom/googlecode/mp4parser/h;->a()Lcom/googlecode/mp4parser/h;

    invoke-static {v2}, Lcom/googlecode/mp4parser/h;->a(Lorg/mp4parser/aspectj/lang/a;)V

    iput-wide v4, v1, Lcom/b/a/a/ah;->c:J

    .line 278
    invoke-interface {p1}, Lcom/googlecode/mp4parser/a/g;->m()Lcom/googlecode/mp4parser/a/h;

    move-result-object v2

    .line 24110
    iget v2, v2, Lcom/googlecode/mp4parser/a/h;->h:F

    .line 278
    sget-object v4, Lcom/b/a/a/ah;->p:Lorg/mp4parser/aspectj/lang/a$a;

    .line 25038
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 278
    invoke-static {v4, v1, v1, v5}, Lorg/mp4parser/aspectj/a/b/b;->a(Lorg/mp4parser/aspectj/lang/a$a;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/a;

    move-result-object v4

    .line 25234
    invoke-static {}, Lcom/googlecode/mp4parser/h;->a()Lcom/googlecode/mp4parser/h;

    invoke-static {v4}, Lcom/googlecode/mp4parser/h;->a(Lorg/mp4parser/aspectj/lang/a;)V

    iput v2, v1, Lcom/b/a/a/ah;->f:F

    .line 280
    invoke-virtual {v0, v1}, Lcom/b/a/a/ag;->a(Lcom/b/a/a/b;)V

    .line 282
    invoke-static {p1, p2}, Lcom/googlecode/mp4parser/a/a/b;->a(Lcom/googlecode/mp4parser/a/g;Lcom/googlecode/mp4parser/a/d;)Lcom/b/a/a/b;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/b/a/a/ag;->a(Lcom/b/a/a/b;)V

    .line 284
    new-instance p2, Lcom/b/a/a/o;

    invoke-direct {p2}, Lcom/b/a/a/o;-><init>()V

    .line 285
    invoke-virtual {v0, p2}, Lcom/b/a/a/ag;->a(Lcom/b/a/a/b;)V

    .line 286
    new-instance v1, Lcom/b/a/a/p;

    invoke-direct {v1}, Lcom/b/a/a/p;-><init>()V

    .line 287
    invoke-interface {p1}, Lcom/googlecode/mp4parser/a/g;->m()Lcom/googlecode/mp4parser/a/h;

    move-result-object v2

    .line 26070
    iget-object v2, v2, Lcom/googlecode/mp4parser/a/h;->d:Ljava/util/Date;

    .line 287
    sget-object v4, Lcom/b/a/a/p;->e:Lorg/mp4parser/aspectj/lang/a$a;

    invoke-static {v4, v1, v1, v2}, Lorg/mp4parser/aspectj/a/b/b;->a(Lorg/mp4parser/aspectj/lang/a$a;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/a;

    move-result-object v4

    .line 26082
    invoke-static {}, Lcom/googlecode/mp4parser/h;->a()Lcom/googlecode/mp4parser/h;

    invoke-static {v4}, Lcom/googlecode/mp4parser/h;->a(Lorg/mp4parser/aspectj/lang/a;)V

    iput-object v2, v1, Lcom/b/a/a/p;->a:Ljava/util/Date;

    .line 288
    invoke-interface {p1}, Lcom/googlecode/mp4parser/a/g;->e()J

    move-result-wide v4

    sget-object v2, Lcom/b/a/a/p;->g:Lorg/mp4parser/aspectj/lang/a$a;

    invoke-static {v4, v5}, Lorg/mp4parser/aspectj/a/a/a;->a(J)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v2, v1, v1, v6}, Lorg/mp4parser/aspectj/a/b/b;->a(Lorg/mp4parser/aspectj/lang/a$a;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/a;

    move-result-object v2

    .line 26094
    invoke-static {}, Lcom/googlecode/mp4parser/h;->a()Lcom/googlecode/mp4parser/h;

    invoke-static {v2}, Lcom/googlecode/mp4parser/h;->a(Lorg/mp4parser/aspectj/lang/a;)V

    iput-wide v4, v1, Lcom/b/a/a/p;->c:J

    .line 289
    invoke-interface {p1}, Lcom/googlecode/mp4parser/a/g;->m()Lcom/googlecode/mp4parser/a/h;

    move-result-object v2

    .line 27054
    iget-wide v4, v2, Lcom/googlecode/mp4parser/a/h;->b:J

    .line 289
    sget-object v2, Lcom/b/a/a/p;->f:Lorg/mp4parser/aspectj/lang/a$a;

    invoke-static {v4, v5}, Lorg/mp4parser/aspectj/a/a/a;->a(J)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v2, v1, v1, v6}, Lorg/mp4parser/aspectj/a/b/b;->a(Lorg/mp4parser/aspectj/lang/a$a;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/a;

    move-result-object v2

    .line 27090
    invoke-static {}, Lcom/googlecode/mp4parser/h;->a()Lcom/googlecode/mp4parser/h;

    invoke-static {v2}, Lcom/googlecode/mp4parser/h;->a(Lorg/mp4parser/aspectj/lang/a;)V

    iput-wide v4, v1, Lcom/b/a/a/p;->b:J

    .line 290
    invoke-interface {p1}, Lcom/googlecode/mp4parser/a/g;->m()Lcom/googlecode/mp4parser/a/h;

    move-result-object v2

    .line 28046
    iget-object v2, v2, Lcom/googlecode/mp4parser/a/h;->a:Ljava/lang/String;

    .line 290
    sget-object v4, Lcom/b/a/a/p;->h:Lorg/mp4parser/aspectj/lang/a$a;

    invoke-static {v4, v1, v1, v2}, Lorg/mp4parser/aspectj/a/b/b;->a(Lorg/mp4parser/aspectj/lang/a$a;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/a;

    move-result-object v4

    .line 28098
    invoke-static {}, Lcom/googlecode/mp4parser/h;->a()Lcom/googlecode/mp4parser/h;

    invoke-static {v4}, Lcom/googlecode/mp4parser/h;->a(Lorg/mp4parser/aspectj/lang/a;)V

    iput-object v2, v1, Lcom/b/a/a/p;->d:Ljava/lang/String;

    .line 291
    invoke-virtual {p2, v1}, Lcom/b/a/a/o;->a(Lcom/b/a/a/b;)V

    .line 292
    new-instance v1, Lcom/b/a/a/m;

    invoke-direct {v1}, Lcom/b/a/a/m;-><init>()V

    .line 293
    invoke-virtual {p2, v1}, Lcom/b/a/a/o;->a(Lcom/b/a/a/b;)V

    .line 295
    invoke-interface {p1}, Lcom/googlecode/mp4parser/a/g;->n()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/b/a/a/m;->c:Lorg/mp4parser/aspectj/lang/a$a;

    invoke-static {v4, v1, v1, v2}, Lorg/mp4parser/aspectj/a/b/b;->a(Lorg/mp4parser/aspectj/lang/a$a;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/a;

    move-result-object v4

    .line 29092
    invoke-static {}, Lcom/googlecode/mp4parser/h;->a()Lcom/googlecode/mp4parser/h;

    invoke-static {v4}, Lcom/googlecode/mp4parser/h;->a(Lorg/mp4parser/aspectj/lang/a;)V

    iput-object v2, v1, Lcom/b/a/a/m;->b:Ljava/lang/String;

    .line 297
    new-instance v1, Lcom/b/a/a/q;

    invoke-direct {v1}, Lcom/b/a/a/q;-><init>()V

    .line 298
    invoke-interface {p1}, Lcom/googlecode/mp4parser/a/g;->n()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "vide"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 299
    new-instance v2, Lcom/b/a/a/ai;

    invoke-direct {v2}, Lcom/b/a/a/ai;-><init>()V

    invoke-virtual {v1, v2}, Lcom/b/a/a/q;->a(Lcom/b/a/a/b;)V

    goto :goto_3

    .line 300
    :cond_5
    invoke-interface {p1}, Lcom/googlecode/mp4parser/a/g;->n()Ljava/lang/String;

    move-result-object v2

    const-string v4, "soun"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 301
    new-instance v2, Lcom/b/a/a/aa;

    invoke-direct {v2}, Lcom/b/a/a/aa;-><init>()V

    invoke-virtual {v1, v2}, Lcom/b/a/a/q;->a(Lcom/b/a/a/b;)V

    goto :goto_3

    .line 302
    :cond_6
    invoke-interface {p1}, Lcom/googlecode/mp4parser/a/g;->n()Ljava/lang/String;

    move-result-object v2

    const-string v4, "text"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 303
    new-instance v2, Lcom/b/a/a/t;

    invoke-direct {v2}, Lcom/b/a/a/t;-><init>()V

    invoke-virtual {v1, v2}, Lcom/b/a/a/q;->a(Lcom/b/a/a/b;)V

    goto :goto_3

    .line 304
    :cond_7
    invoke-interface {p1}, Lcom/googlecode/mp4parser/a/g;->n()Ljava/lang/String;

    move-result-object v2

    const-string v4, "subt"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 305
    new-instance v2, Lcom/b/a/a/ad;

    invoke-direct {v2}, Lcom/b/a/a/ad;-><init>()V

    invoke-virtual {v1, v2}, Lcom/b/a/a/q;->a(Lcom/b/a/a/b;)V

    goto :goto_3

    .line 306
    :cond_8
    invoke-interface {p1}, Lcom/googlecode/mp4parser/a/g;->n()Ljava/lang/String;

    move-result-object v2

    const-string v4, "hint"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 307
    new-instance v2, Lcom/b/a/a/n;

    invoke-direct {v2}, Lcom/b/a/a/n;-><init>()V

    invoke-virtual {v1, v2}, Lcom/b/a/a/q;->a(Lcom/b/a/a/b;)V

    goto :goto_3

    .line 308
    :cond_9
    invoke-interface {p1}, Lcom/googlecode/mp4parser/a/g;->n()Ljava/lang/String;

    move-result-object v2

    const-string v4, "sbtl"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 309
    new-instance v2, Lcom/b/a/a/t;

    invoke-direct {v2}, Lcom/b/a/a/t;-><init>()V

    invoke-virtual {v1, v2}, Lcom/b/a/a/q;->a(Lcom/b/a/a/b;)V

    .line 314
    :cond_a
    :goto_3
    new-instance v2, Lcom/b/a/a/g;

    invoke-direct {v2}, Lcom/b/a/a/g;-><init>()V

    .line 315
    new-instance v4, Lcom/b/a/a/h;

    invoke-direct {v4}, Lcom/b/a/a/h;-><init>()V

    .line 316
    invoke-virtual {v2, v4}, Lcom/b/a/a/g;->a(Lcom/b/a/a/b;)V

    .line 317
    new-instance v5, Lcom/b/a/a/f;

    invoke-direct {v5}, Lcom/b/a/a/f;-><init>()V

    .line 318
    invoke-virtual {v5, v3}, Lcom/b/a/a/f;->c(I)V

    .line 319
    invoke-virtual {v4, v5}, Lcom/b/a/a/h;->a(Lcom/b/a/a/b;)V

    .line 320
    invoke-virtual {v1, v2}, Lcom/b/a/a/q;->a(Lcom/b/a/a/b;)V

    .line 323
    invoke-direct {p0, p1, p3}, Lcom/googlecode/mp4parser/a/a/b;->a(Lcom/googlecode/mp4parser/a/g;Ljava/util/Map;)Lcom/b/a/a/b;

    move-result-object p3

    .line 324
    invoke-virtual {v1, p3}, Lcom/b/a/a/q;->a(Lcom/b/a/a/b;)V

    .line 325
    invoke-virtual {p2, v1}, Lcom/b/a/a/o;->a(Lcom/b/a/a/b;)V

    .line 326
    sget-object p2, Lcom/googlecode/mp4parser/a/a/b;->f:Lcom/googlecode/mp4parser/c/f;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "done with trak for track_"

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/googlecode/mp4parser/a/g;->m()Lcom/googlecode/mp4parser/a/h;

    move-result-object p1

    .line 29094
    iget-wide v1, p1, Lcom/googlecode/mp4parser/a/h;->i:J

    .line 326
    invoke-virtual {p3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/googlecode/mp4parser/c/f;->a(Ljava/lang/String;)V

    return-object v0
.end method

.method private static a(Lcom/googlecode/mp4parser/a/g;Lcom/googlecode/mp4parser/a/d;)Lcom/b/a/a/b;
    .locals 12

    .line 331
    invoke-interface {p0}, Lcom/googlecode/mp4parser/a/g;->g()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lcom/googlecode/mp4parser/a/g;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 332
    new-instance v0, Lcom/b/a/a/j;

    invoke-direct {v0}, Lcom/b/a/a/j;-><init>()V

    const/4 v1, 0x0

    .line 333
    invoke-virtual {v0, v1}, Lcom/b/a/a/j;->b(I)V

    .line 334
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 336
    invoke-interface {p0}, Lcom/googlecode/mp4parser/a/g;->g()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 343
    sget-object p0, Lcom/b/a/a/j;->c:Lorg/mp4parser/aspectj/lang/a$a;

    invoke-static {p0, v0, v0, v9}, Lorg/mp4parser/aspectj/a/b/b;->a(Lorg/mp4parser/aspectj/lang/a$a;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/a;

    move-result-object p0

    .line 31073
    invoke-static {}, Lcom/googlecode/mp4parser/h;->a()Lcom/googlecode/mp4parser/h;

    invoke-static {p0}, Lcom/googlecode/mp4parser/h;->a(Lorg/mp4parser/aspectj/lang/a;)V

    iput-object v9, v0, Lcom/b/a/a/j;->a:Ljava/util/List;

    .line 344
    new-instance p0, Lcom/b/a/a/i;

    invoke-direct {p0}, Lcom/b/a/a/i;-><init>()V

    .line 345
    invoke-virtual {p0, v0}, Lcom/b/a/a/i;->a(Lcom/b/a/a/b;)V

    return-object p0

    .line 336
    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/googlecode/mp4parser/a/c;

    .line 337
    new-instance v11, Lcom/b/a/a/j$a;

    .line 30030
    iget-wide v2, v1, Lcom/googlecode/mp4parser/a/c;->b:D

    .line 338
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/a/d;->a()J

    move-result-wide v4

    long-to-double v4, v4

    mul-double v2, v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    .line 30034
    iget-wide v5, v1, Lcom/googlecode/mp4parser/a/c;->c:J

    .line 339
    invoke-interface {p0}, Lcom/googlecode/mp4parser/a/g;->m()Lcom/googlecode/mp4parser/a/h;

    move-result-object v2

    .line 30054
    iget-wide v7, v2, Lcom/googlecode/mp4parser/a/h;->b:J

    mul-long v5, v5, v7

    .line 31026
    iget-wide v7, v1, Lcom/googlecode/mp4parser/a/c;->a:J

    .line 339
    div-long/2addr v5, v7

    .line 31038
    iget-wide v7, v1, Lcom/googlecode/mp4parser/a/c;->d:D

    move-object v1, v11

    move-object v2, v0

    .line 340
    invoke-direct/range {v1 .. v8}, Lcom/b/a/a/j$a;-><init>(Lcom/b/a/a/j;JJD)V

    .line 337
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Lcom/googlecode/mp4parser/a/g;Ljava/util/Map;)Lcom/b/a/a/b;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/googlecode/mp4parser/a/g;",
            "Ljava/util/Map<",
            "Lcom/googlecode/mp4parser/a/g;",
            "[I>;)",
            "Lcom/b/a/a/b;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 353
    new-instance v3, Lcom/b/a/a/x;

    invoke-direct {v3}, Lcom/b/a/a/x;-><init>()V

    .line 31462
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/a/g;->l()Lcom/b/a/a/v;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/b/a/a/x;->a(Lcom/b/a/a/b;)V

    .line 31585
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 31587
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/a/g;->k()[J

    move-result-object v5

    array-length v6, v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    const-wide/16 v11, 0x1

    if-lt v9, v6, :cond_d

    .line 31596
    new-instance v5, Lcom/b/a/a/af;

    invoke-direct {v5}, Lcom/b/a/a/af;-><init>()V

    .line 31597
    sget-object v6, Lcom/b/a/a/af;->e:Lorg/mp4parser/aspectj/lang/a$a;

    invoke-static {v6, v5, v5, v4}, Lorg/mp4parser/aspectj/a/b/b;->a(Lorg/mp4parser/aspectj/lang/a$a;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/a;

    move-result-object v6

    .line 34084
    invoke-static {}, Lcom/googlecode/mp4parser/h;->a()Lcom/googlecode/mp4parser/h;

    invoke-static {v6}, Lcom/googlecode/mp4parser/h;->a(Lorg/mp4parser/aspectj/lang/a;)V

    iput-object v4, v5, Lcom/b/a/a/af;->a:Ljava/util/List;

    .line 31598
    invoke-virtual {v3, v5}, Lcom/b/a/a/x;->a(Lcom/b/a/a/b;)V

    .line 34575
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/a/g;->a()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 34576
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 34577
    new-instance v5, Lcom/b/a/a/d;

    invoke-direct {v5}, Lcom/b/a/a/d;-><init>()V

    .line 34578
    sget-object v6, Lcom/b/a/a/d;->d:Lorg/mp4parser/aspectj/lang/a$a;

    invoke-static {v6, v5, v5, v4}, Lorg/mp4parser/aspectj/a/b/b;->a(Lorg/mp4parser/aspectj/lang/a$a;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/a;

    move-result-object v6

    .line 35062
    invoke-static {}, Lcom/googlecode/mp4parser/h;->a()Lcom/googlecode/mp4parser/h;

    invoke-static {v6}, Lcom/googlecode/mp4parser/h;->a(Lorg/mp4parser/aspectj/lang/a;)V

    iput-object v4, v5, Lcom/b/a/a/d;->a:Ljava/util/List;

    .line 34579
    invoke-virtual {v3, v5}, Lcom/b/a/a/x;->a(Lcom/b/a/a/b;)V

    .line 35566
    :cond_0
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/a/g;->b()[J

    move-result-object v4

    if-eqz v4, :cond_1

    .line 35567
    array-length v5, v4

    if-lez v5, :cond_1

    .line 35568
    new-instance v5, Lcom/b/a/a/ae;

    invoke-direct {v5}, Lcom/b/a/a/ae;-><init>()V

    .line 35569
    sget-object v6, Lcom/b/a/a/ae;->c:Lorg/mp4parser/aspectj/lang/a$a;

    invoke-static {v6, v5, v5, v4}, Lorg/mp4parser/aspectj/a/b/b;->a(Lorg/mp4parser/aspectj/lang/a$a;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/a;

    move-result-object v6

    .line 36082
    invoke-static {}, Lcom/googlecode/mp4parser/h;->a()Lcom/googlecode/mp4parser/h;

    invoke-static {v6}, Lcom/googlecode/mp4parser/h;->a(Lorg/mp4parser/aspectj/lang/a;)V

    iput-object v4, v5, Lcom/b/a/a/ae;->a:[J

    .line 35570
    invoke-virtual {v3, v5}, Lcom/b/a/a/x;->a(Lcom/b/a/a/b;)V

    .line 36558
    :cond_1
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/a/g;->c()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/a/g;->c()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 36559
    new-instance v4, Lcom/b/a/a/u;

    invoke-direct {v4}, Lcom/b/a/a/u;-><init>()V

    .line 36560
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/a/g;->c()Ljava/util/List;

    move-result-object v5

    sget-object v6, Lcom/b/a/a/u;->c:Lorg/mp4parser/aspectj/lang/a$a;

    invoke-static {v6, v4, v4, v5}, Lorg/mp4parser/aspectj/a/b/b;->a(Lorg/mp4parser/aspectj/lang/a$a;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/a;

    move-result-object v6

    .line 37144
    invoke-static {}, Lcom/googlecode/mp4parser/h;->a()Lcom/googlecode/mp4parser/h;

    invoke-static {v6}, Lcom/googlecode/mp4parser/h;->a(Lorg/mp4parser/aspectj/lang/a;)V

    iput-object v5, v4, Lcom/b/a/a/u;->a:Ljava/util/List;

    .line 36561
    invoke-virtual {v3, v4}, Lcom/b/a/a/x;->a(Lcom/b/a/a/b;)V

    .line 360
    :cond_2
    invoke-static {v1, v2, v3}, Lcom/googlecode/mp4parser/a/a/b;->b(Lcom/googlecode/mp4parser/a/g;Ljava/util/Map;Lcom/b/a/a/x;)V

    .line 37532
    new-instance v4, Lcom/b/a/a/w;

    invoke-direct {v4}, Lcom/b/a/a/w;-><init>()V

    .line 37533
    iget-object v5, v0, Lcom/googlecode/mp4parser/a/a/b;->d:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [J

    sget-object v6, Lcom/b/a/a/w;->d:Lorg/mp4parser/aspectj/lang/a$a;

    invoke-static {v6, v4, v4, v5}, Lorg/mp4parser/aspectj/a/b/b;->a(Lorg/mp4parser/aspectj/lang/a$a;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/a;

    move-result-object v6

    .line 38081
    invoke-static {}, Lcom/googlecode/mp4parser/h;->a()Lcom/googlecode/mp4parser/h;

    invoke-static {v6}, Lcom/googlecode/mp4parser/h;->a(Lorg/mp4parser/aspectj/lang/a;)V

    iput-object v5, v4, Lcom/b/a/a/w;->a:[J

    .line 37535
    invoke-virtual {v3, v4}, Lcom/b/a/a/x;->a(Lcom/b/a/a/b;)V

    .line 362
    invoke-direct {v0, v1, v2, v3}, Lcom/googlecode/mp4parser/a/a/b;->a(Lcom/googlecode/mp4parser/a/g;Ljava/util/Map;Lcom/b/a/a/x;)V

    .line 365
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 366
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/a/g;->h()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_b

    .line 375
    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_5

    .line 403
    instance-of v4, v1, Lcom/googlecode/mp4parser/a/d/b;

    if-eqz v4, :cond_3

    .line 404
    move-object v4, v1

    check-cast v4, Lcom/googlecode/mp4parser/a/d/b;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    invoke-direct {v0, v4, v3, v2}, Lcom/googlecode/mp4parser/a/a/b;->a(Lcom/googlecode/mp4parser/a/d/b;Lcom/b/a/a/x;[I)V

    .line 42412
    :cond_3
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/a/g;->d()Lcom/b/a/a/ac;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 42413
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/a/g;->d()Lcom/b/a/a/ac;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/b/a/a/x;->a(Lcom/b/a/a/b;)V

    .line 407
    :cond_4
    sget-object v2, Lcom/googlecode/mp4parser/a/a/b;->f:Lcom/googlecode/mp4parser/c/f;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "done with stbl for track_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/a/g;->m()Lcom/googlecode/mp4parser/a/h;

    move-result-object v1

    .line 43094
    iget-wide v5, v1, Lcom/googlecode/mp4parser/a/h;->i:J

    .line 407
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/googlecode/mp4parser/c/f;->a(Ljava/lang/String;)V

    return-object v3

    .line 375
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 376
    new-instance v6, Lcom/googlecode/mp4parser/b/b/b/e;

    invoke-direct {v6}, Lcom/googlecode/mp4parser/b/b/b/e;-><init>()V

    .line 377
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 378
    sget-object v10, Lcom/googlecode/mp4parser/b/b/b/e;->c:Lorg/mp4parser/aspectj/lang/a$a;

    invoke-static {v10, v6, v6, v9}, Lorg/mp4parser/aspectj/a/b/b;->a(Lorg/mp4parser/aspectj/lang/a$a;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/a;

    move-result-object v10

    .line 39062
    invoke-static {}, Lcom/googlecode/mp4parser/h;->a()Lcom/googlecode/mp4parser/h;

    invoke-static {v10}, Lcom/googlecode/mp4parser/h;->a(Lorg/mp4parser/aspectj/lang/a;)V

    iput-object v9, v6, Lcom/googlecode/mp4parser/b/b/b/e;->a:Ljava/lang/String;

    .line 379
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    sget-object v13, Lcom/googlecode/mp4parser/b/b/b/e;->d:Lorg/mp4parser/aspectj/lang/a$a;

    invoke-static {v13, v6, v6, v10}, Lorg/mp4parser/aspectj/a/b/b;->a(Lorg/mp4parser/aspectj/lang/a$a;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/a;

    move-result-object v13

    .line 39166
    invoke-static {}, Lcom/googlecode/mp4parser/h;->a()Lcom/googlecode/mp4parser/h;

    invoke-static {v13}, Lcom/googlecode/mp4parser/h;->a(Lorg/mp4parser/aspectj/lang/a;)V

    iput-object v10, v6, Lcom/googlecode/mp4parser/b/b/b/e;->b:Ljava/util/List;

    .line 380
    new-instance v10, Lcom/googlecode/mp4parser/b/b/b/f;

    invoke-direct {v10}, Lcom/googlecode/mp4parser/b/b/b/f;-><init>()V

    .line 381
    sget-object v13, Lcom/googlecode/mp4parser/b/b/b/f;->c:Lorg/mp4parser/aspectj/lang/a$a;

    invoke-static {v13, v10, v10, v9}, Lorg/mp4parser/aspectj/a/b/b;->a(Lorg/mp4parser/aspectj/lang/a$a;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/a;

    move-result-object v13

    .line 40155
    invoke-static {}, Lcom/googlecode/mp4parser/h;->a()Lcom/googlecode/mp4parser/h;

    invoke-static {v13}, Lcom/googlecode/mp4parser/h;->a(Lorg/mp4parser/aspectj/lang/a;)V

    iput-object v9, v10, Lcom/googlecode/mp4parser/b/b/b/f;->a:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v15, 0x0

    .line 383
    :goto_3
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/a/g;->j()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-lt v9, v13, :cond_6

    .line 399
    invoke-virtual {v3, v6}, Lcom/b/a/a/x;->a(Lcom/b/a/a/b;)V

    .line 400
    invoke-virtual {v3, v10}, Lcom/b/a/a/x;->a(Lcom/b/a/a/b;)V

    goto/16 :goto_2

    :cond_6
    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 385
    :goto_4
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/List;

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v7

    if-lt v13, v7, :cond_9

    if-eqz v15, :cond_8

    .line 41106
    iget v7, v15, Lcom/googlecode/mp4parser/b/b/b/f$a;->b:I

    if-eq v7, v14, :cond_7

    goto :goto_5

    .line 42098
    :cond_7
    iget-wide v13, v15, Lcom/googlecode/mp4parser/b/b/b/f$a;->a:J

    add-long/2addr v13, v11

    .line 42102
    iput-wide v13, v15, Lcom/googlecode/mp4parser/b/b/b/f$a;->a:J

    goto :goto_6

    .line 393
    :cond_8
    :goto_5
    new-instance v15, Lcom/googlecode/mp4parser/b/b/b/f$a;

    invoke-direct {v15, v11, v12, v14}, Lcom/googlecode/mp4parser/b/b/b/f$a;-><init>(JI)V

    .line 394
    invoke-virtual {v10}, Lcom/googlecode/mp4parser/b/b/b/f;->b()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 386
    :cond_9
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/googlecode/mp4parser/b/b/b/b;

    .line 387
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/a/g;->h()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [J

    int-to-long v11, v9

    .line 388
    invoke-static {v7, v11, v12}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v7

    if-ltz v7, :cond_a

    add-int/lit8 v14, v13, 0x1

    :cond_a
    add-int/lit8 v13, v13, 0x1

    const-wide/16 v11, 0x1

    goto :goto_4

    .line 366
    :cond_b
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 367
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/googlecode/mp4parser/b/b/b/b;

    invoke-virtual {v5}, Lcom/googlecode/mp4parser/b/b/b/b;->a()Ljava/lang/String;

    move-result-object v5

    .line 368
    invoke-interface {v13, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-nez v6, :cond_c

    .line 370
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 371
    invoke-interface {v13, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    :cond_c
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/googlecode/mp4parser/b/b/b/b;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v11, 0x1

    goto/16 :goto_1

    .line 31587
    :cond_d
    aget-wide v7, v5, v9

    if-eqz v10, :cond_e

    .line 32105
    iget-wide v11, v10, Lcom/b/a/a/af$a;->b:J

    cmp-long v13, v11, v7

    if-nez v13, :cond_e

    .line 33101
    iget-wide v7, v10, Lcom/b/a/a/af$a;->a:J

    const-wide/16 v11, 0x1

    add-long/2addr v7, v11

    .line 33109
    iput-wide v7, v10, Lcom/b/a/a/af$a;->a:J

    goto :goto_7

    :cond_e
    const-wide/16 v11, 0x1

    .line 31591
    new-instance v10, Lcom/b/a/a/af$a;

    invoke-direct {v10, v11, v12, v7, v8}, Lcom/b/a/a/af$a;-><init>(JJ)V

    .line 31592
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0
.end method

.method private a(Lcom/googlecode/mp4parser/a/d;Ljava/util/Map;)Lcom/b/a/a/r;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/googlecode/mp4parser/a/d;",
            "Ljava/util/Map<",
            "Lcom/googlecode/mp4parser/a/g;",
            "[I>;)",
            "Lcom/b/a/a/r;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 186
    new-instance v1, Lcom/b/a/a/r;

    invoke-direct {v1}, Lcom/b/a/a/r;-><init>()V

    .line 187
    new-instance v2, Lcom/b/a/a/s;

    invoke-direct {v2}, Lcom/b/a/a/s;-><init>()V

    .line 189
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    sget-object v4, Lcom/b/a/a/s;->h:Lorg/mp4parser/aspectj/lang/a$a;

    invoke-static {v4, v2, v2, v3}, Lorg/mp4parser/aspectj/a/b/b;->a(Lorg/mp4parser/aspectj/lang/a$a;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/a;

    move-result-object v4

    .line 2205
    invoke-static {}, Lcom/googlecode/mp4parser/h;->a()Lcom/googlecode/mp4parser/h;

    invoke-static {v4}, Lcom/googlecode/mp4parser/h;->a(Lorg/mp4parser/aspectj/lang/a;)V

    iput-object v3, v2, Lcom/b/a/a/s;->a:Ljava/util/Date;

    .line 2206
    invoke-static {v3}, Lcom/googlecode/mp4parser/c/c;->a(Ljava/util/Date;)J

    move-result-wide v3

    const/4 v5, 0x1

    const-wide v6, 0x100000000L

    cmp-long v8, v3, v6

    if-ltz v8, :cond_0

    .line 2207
    invoke-virtual {v2, v5}, Lcom/b/a/a/s;->b(I)V

    .line 190
    :cond_0
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    sget-object v4, Lcom/b/a/a/s;->i:Lorg/mp4parser/aspectj/lang/a$a;

    invoke-static {v4, v2, v2, v3}, Lorg/mp4parser/aspectj/a/b/b;->a(Lorg/mp4parser/aspectj/lang/a$a;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/a;

    move-result-object v4

    .line 2213
    invoke-static {}, Lcom/googlecode/mp4parser/h;->a()Lcom/googlecode/mp4parser/h;

    invoke-static {v4}, Lcom/googlecode/mp4parser/h;->a(Lorg/mp4parser/aspectj/lang/a;)V

    iput-object v3, v2, Lcom/b/a/a/s;->b:Ljava/util/Date;

    .line 2214
    invoke-static {v3}, Lcom/googlecode/mp4parser/c/c;->a(Ljava/util/Date;)J

    move-result-wide v3

    cmp-long v8, v3, v6

    if-ltz v8, :cond_1

    .line 2215
    invoke-virtual {v2, v5}, Lcom/b/a/a/s;->b(I)V

    .line 3096
    :cond_1
    iget-object v3, v0, Lcom/googlecode/mp4parser/a/d;->a:Lcom/googlecode/mp4parser/c/h;

    .line 191
    sget-object v4, Lcom/b/a/a/s;->l:Lorg/mp4parser/aspectj/lang/a$a;

    invoke-static {v4, v2, v2, v3}, Lorg/mp4parser/aspectj/a/b/b;->a(Lorg/mp4parser/aspectj/lang/a$a;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/a;

    move-result-object v4

    .line 3240
    invoke-static {}, Lcom/googlecode/mp4parser/h;->a()Lcom/googlecode/mp4parser/h;

    invoke-static {v4}, Lcom/googlecode/mp4parser/h;->a(Lorg/mp4parser/aspectj/lang/a;)V

    iput-object v3, v2, Lcom/b/a/a/s;->e:Lcom/googlecode/mp4parser/c/h;

    .line 192
    invoke-static/range {p1 .. p1}, Lcom/googlecode/mp4parser/a/a/b;->b(Lcom/googlecode/mp4parser/a/d;)J

    move-result-wide v3

    .line 4039
    iget-object v8, v0, Lcom/googlecode/mp4parser/a/d;->b:Ljava/util/List;

    .line 195
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const-wide/16 v9, 0x0

    move-wide v11, v9

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_6

    .line 216
    sget-object v8, Lcom/b/a/a/s;->k:Lorg/mp4parser/aspectj/lang/a$a;

    invoke-static {v11, v12}, Lorg/mp4parser/aspectj/a/a/a;->a(J)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v8, v2, v2, v13}, Lorg/mp4parser/aspectj/a/b/b;->a(Lorg/mp4parser/aspectj/lang/a$a;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/a;

    move-result-object v8

    .line 5225
    invoke-static {}, Lcom/googlecode/mp4parser/h;->a()Lcom/googlecode/mp4parser/h;

    invoke-static {v8}, Lcom/googlecode/mp4parser/h;->a(Lorg/mp4parser/aspectj/lang/a;)V

    iput-wide v11, v2, Lcom/b/a/a/s;->d:J

    cmp-long v8, v11, v6

    if-ltz v8, :cond_2

    .line 5227
    invoke-virtual {v2, v5}, Lcom/b/a/a/s;->b(I)V

    .line 217
    :cond_2
    sget-object v5, Lcom/b/a/a/s;->j:Lorg/mp4parser/aspectj/lang/a$a;

    invoke-static {v3, v4}, Lorg/mp4parser/aspectj/a/a/a;->a(J)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v2, v2, v6}, Lorg/mp4parser/aspectj/a/b/b;->a(Lorg/mp4parser/aspectj/lang/a$a;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/a;

    move-result-object v5

    .line 6221
    invoke-static {}, Lcom/googlecode/mp4parser/h;->a()Lcom/googlecode/mp4parser/h;

    invoke-static {v5}, Lcom/googlecode/mp4parser/h;->a(Lorg/mp4parser/aspectj/lang/a;)V

    iput-wide v3, v2, Lcom/b/a/a/s;->c:J

    .line 7039
    iget-object v3, v0, Lcom/googlecode/mp4parser/a/d;->b:Ljava/util/List;

    .line 220
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_3
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_5

    const-wide/16 v3, 0x1

    add-long/2addr v9, v3

    .line 223
    sget-object v3, Lcom/b/a/a/s;->m:Lorg/mp4parser/aspectj/lang/a$a;

    invoke-static {v9, v10}, Lorg/mp4parser/aspectj/a/a/a;->a(J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v2, v2, v4}, Lorg/mp4parser/aspectj/a/b/b;->a(Lorg/mp4parser/aspectj/lang/a$a;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/a;

    move-result-object v3

    .line 8244
    invoke-static {}, Lcom/googlecode/mp4parser/h;->a()Lcom/googlecode/mp4parser/h;

    invoke-static {v3}, Lcom/googlecode/mp4parser/h;->a(Lorg/mp4parser/aspectj/lang/a;)V

    iput-wide v9, v2, Lcom/b/a/a/s;->f:J

    .line 225
    invoke-virtual {v1, v2}, Lcom/b/a/a/r;->a(Lcom/b/a/a/b;)V

    .line 9039
    iget-object v2, v0, Lcom/googlecode/mp4parser/a/d;->b:Ljava/util/List;

    .line 226
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    return-object v1

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/googlecode/mp4parser/a/g;

    move-object/from16 v14, p0

    move-object/from16 v15, p2

    .line 227
    invoke-direct {v14, v2, v0, v15}, Lcom/googlecode/mp4parser/a/a/b;->a(Lcom/googlecode/mp4parser/a/g;Lcom/googlecode/mp4parser/a/d;Ljava/util/Map;)Lcom/b/a/a/ag;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/b/a/a/r;->a(Lcom/b/a/a/b;)V

    goto :goto_2

    :cond_5
    move-object/from16 v14, p0

    move-object/from16 v15, p2

    .line 220
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/googlecode/mp4parser/a/g;

    .line 221
    invoke-interface {v3}, Lcom/googlecode/mp4parser/a/g;->m()Lcom/googlecode/mp4parser/a/h;

    move-result-object v4

    .line 7094
    iget-wide v4, v4, Lcom/googlecode/mp4parser/a/h;->i:J

    cmp-long v6, v9, v4

    if-gez v6, :cond_3

    .line 221
    invoke-interface {v3}, Lcom/googlecode/mp4parser/a/g;->m()Lcom/googlecode/mp4parser/a/h;

    move-result-object v3

    .line 8094
    iget-wide v3, v3, Lcom/googlecode/mp4parser/a/h;->i:J

    move-wide v9, v3

    goto :goto_1

    :cond_6
    move-object/from16 v14, p0

    move-object/from16 v15, p2

    .line 195
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/googlecode/mp4parser/a/g;

    .line 198
    invoke-interface {v13}, Lcom/googlecode/mp4parser/a/g;->g()Ljava/util/List;

    move-result-object v16

    if-eqz v16, :cond_9

    invoke-interface {v13}, Lcom/googlecode/mp4parser/a/g;->g()Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_7

    goto :goto_4

    :cond_7
    const-wide/16 v16, 0x0

    .line 202
    invoke-interface {v13}, Lcom/googlecode/mp4parser/a/g;->g()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_8

    long-to-double v5, v3

    mul-double v5, v5, v16

    double-to-long v5, v5

    move-object/from16 v16, v8

    goto :goto_5

    :cond_8
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/googlecode/mp4parser/a/c;

    .line 5030
    iget-wide v5, v5, Lcom/googlecode/mp4parser/a/c;->b:D

    double-to-long v5, v5

    long-to-double v5, v5

    add-double v16, v16, v5

    const/4 v5, 0x1

    const-wide v6, 0x100000000L

    goto :goto_3

    .line 199
    :cond_9
    :goto_4
    invoke-interface {v13}, Lcom/googlecode/mp4parser/a/g;->e()J

    move-result-wide v5

    mul-long v5, v5, v3

    invoke-interface {v13}, Lcom/googlecode/mp4parser/a/g;->m()Lcom/googlecode/mp4parser/a/h;

    move-result-object v13

    move-object/from16 v16, v8

    .line 4054
    iget-wide v7, v13, Lcom/googlecode/mp4parser/a/h;->b:J

    .line 199
    div-long/2addr v5, v7

    :goto_5
    cmp-long v7, v5, v11

    if-lez v7, :cond_a

    move-wide v11, v5

    :cond_a
    move-object/from16 v8, v16

    const/4 v5, 0x1

    const-wide v6, 0x100000000L

    goto/16 :goto_0
.end method

.method static synthetic a()Lcom/googlecode/mp4parser/c/f;
    .locals 1

    .line 53
    sget-object v0, Lcom/googlecode/mp4parser/a/a/b;->f:Lcom/googlecode/mp4parser/c/f;

    return-object v0
.end method

.method private a(Lcom/googlecode/mp4parser/a/d/b;Lcom/b/a/a/x;[I)V
    .locals 16

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    .line 419
    new-instance v2, Lcom/mp4parser/iso14496/a/b;

    invoke-direct {v2}, Lcom/mp4parser/iso14496/a/b;-><init>()V

    .line 421
    sget-object v3, Lcom/mp4parser/iso14496/a/b;->f:Lorg/mp4parser/aspectj/lang/a$a;

    const-string v4, "cenc"

    invoke-static {v3, v2, v2, v4}, Lorg/mp4parser/aspectj/a/b/b;->a(Lorg/mp4parser/aspectj/lang/a$a;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/a;

    move-result-object v3

    .line 43111
    invoke-static {}, Lcom/googlecode/mp4parser/h;->a()Lcom/googlecode/mp4parser/h;

    invoke-static {v3}, Lcom/googlecode/mp4parser/h;->a(Lorg/mp4parser/aspectj/lang/a;)V

    iput-object v4, v2, Lcom/mp4parser/iso14496/a/b;->d:Ljava/lang/String;

    const/4 v3, 0x1

    .line 422
    invoke-virtual {v2, v3}, Lcom/mp4parser/iso14496/a/b;->c(I)V

    .line 423
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/a/d/b;->i()Ljava/util/List;

    move-result-object v3

    .line 431
    sget-object v4, Lcom/mp4parser/iso14496/a/b;->g:Lorg/mp4parser/aspectj/lang/a$a;

    const/16 v5, 0x8

    .line 44023
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 431
    invoke-static {v4, v2, v2, v6}, Lorg/mp4parser/aspectj/a/b/b;->a(Lorg/mp4parser/aspectj/lang/a$a;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/a;

    move-result-object v4

    .line 44127
    invoke-static {}, Lcom/googlecode/mp4parser/h;->a()Lcom/googlecode/mp4parser/h;

    invoke-static {v4}, Lcom/googlecode/mp4parser/h;->a(Lorg/mp4parser/aspectj/lang/a;)V

    .line 44128
    iput-short v5, v2, Lcom/mp4parser/iso14496/a/b;->a:S

    .line 432
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/a/d/b;->j()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sget-object v5, Lcom/mp4parser/iso14496/a/b;->i:Lorg/mp4parser/aspectj/lang/a$a;

    .line 45023
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 432
    invoke-static {v5, v2, v2, v6}, Lorg/mp4parser/aspectj/a/b/b;->a(Lorg/mp4parser/aspectj/lang/a$a;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/a;

    move-result-object v5

    .line 45147
    invoke-static {}, Lcom/googlecode/mp4parser/h;->a()Lcom/googlecode/mp4parser/h;

    invoke-static {v5}, Lcom/googlecode/mp4parser/h;->a(Lorg/mp4parser/aspectj/lang/a;)V

    iput v4, v2, Lcom/mp4parser/iso14496/a/b;->c:I

    .line 435
    new-instance v4, Lcom/mp4parser/iso14496/a/a;

    invoke-direct {v4}, Lcom/mp4parser/iso14496/a/a;-><init>()V

    .line 436
    new-instance v5, Lcom/googlecode/mp4parser/b/a/a;

    invoke-direct {v5}, Lcom/googlecode/mp4parser/b/a/a;-><init>()V

    .line 46107
    invoke-virtual {v5}, Lcom/googlecode/mp4parser/b/a;->i()I

    move-result v6

    const v7, 0xfffffd

    and-int/2addr v6, v7

    invoke-virtual {v5, v6}, Lcom/googlecode/mp4parser/b/a;->c(I)V

    .line 438
    sget-object v6, Lcom/googlecode/mp4parser/b/a;->e:Lorg/mp4parser/aspectj/lang/a$a;

    invoke-static {v6, v5, v5, v3}, Lorg/mp4parser/aspectj/a/b/b;->a(Lorg/mp4parser/aspectj/lang/a$a;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/a;

    move-result-object v6

    .line 47094
    invoke-static {}, Lcom/googlecode/mp4parser/h;->a()Lcom/googlecode/mp4parser/h;

    invoke-static {v6}, Lcom/googlecode/mp4parser/h;->a(Lorg/mp4parser/aspectj/lang/a;)V

    iput-object v3, v5, Lcom/googlecode/mp4parser/b/a;->d:Ljava/util/List;

    .line 440
    invoke-virtual {v5}, Lcom/googlecode/mp4parser/b/a/a;->a()I

    move-result v6

    int-to-long v6, v6

    .line 442
    array-length v8, v1

    new-array v8, v8, [J

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 445
    :goto_0
    array-length v12, v1

    if-lt v10, v12, :cond_0

    .line 451
    invoke-virtual {v4, v8}, Lcom/mp4parser/iso14496/a/a;->a([J)V

    .line 453
    invoke-virtual {v0, v2}, Lcom/b/a/a/x;->a(Lcom/b/a/a/b;)V

    .line 454
    invoke-virtual {v0, v4}, Lcom/b/a/a/x;->a(Lcom/b/a/a/b;)V

    .line 455
    invoke-virtual {v0, v5}, Lcom/b/a/a/x;->a(Lcom/b/a/a/b;)V

    move-object/from16 v12, p0

    .line 456
    iget-object v0, v12, Lcom/googlecode/mp4parser/a/a/b;->b:Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    move-object/from16 v12, p0

    .line 446
    aput-wide v6, v8, v10

    const/4 v13, 0x0

    .line 447
    :goto_1
    aget v14, v1, v10

    if-lt v13, v14, :cond_1

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v14, v11, 0x1

    .line 448
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/mp4parser/a/a/a;

    invoke-virtual {v11}, Lcom/mp4parser/a/a/a;->a()I

    move-result v11

    move v15, v10

    int-to-long v9, v11

    add-long/2addr v6, v9

    add-int/lit8 v13, v13, 0x1

    move v11, v14

    move v10, v15

    goto :goto_1
.end method

.method private a(Lcom/googlecode/mp4parser/a/g;Ljava/util/Map;Lcom/b/a/a/x;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/googlecode/mp4parser/a/g;",
            "Ljava/util/Map<",
            "Lcom/googlecode/mp4parser/a/g;",
            "[I>;",
            "Lcom/b/a/a/x;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 466
    iget-object v3, v0, Lcom/googlecode/mp4parser/a/a/b;->a:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_5

    const-wide/16 v3, 0x0

    .line 474
    sget-object v5, Lcom/googlecode/mp4parser/a/a/b;->f:Lcom/googlecode/mp4parser/c/f;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Calculating chunk offsets for track_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/a/g;->m()Lcom/googlecode/mp4parser/a/h;

    move-result-object v7

    .line 48094
    iget-wide v7, v7, Lcom/googlecode/mp4parser/a/h;->i:J

    .line 474
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/googlecode/mp4parser/c/f;->a(Ljava/lang/String;)V

    .line 476
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 477
    new-instance v6, Lcom/googlecode/mp4parser/a/a/b$1;

    invoke-direct {v6, v0}, Lcom/googlecode/mp4parser/a/a/b$1;-><init>(Lcom/googlecode/mp4parser/a/a/b;)V

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 482
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 483
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 484
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 485
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/4 v11, 0x0

    if-nez v10, :cond_4

    move-wide v12, v3

    :goto_1
    const/4 v3, 0x0

    .line 494
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v3, :cond_5

    .line 507
    iget-object v4, v0, Lcom/googlecode/mp4parser/a/a/b;->a:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/b/a/a/c;

    .line 508
    invoke-virtual {v4}, Lcom/b/a/a/c;->a()[J

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [J

    aput-wide v12, v10, v11

    invoke-static {v9, v10}, Lcom/googlecode/mp4parser/c/i;->a([J[J)[J

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/b/a/a/c;->a([J)V

    .line 510
    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 512
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [I

    aget v9, v9, v4

    .line 513
    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 514
    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Double;

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    .line 516
    invoke-interface {v3}, Lcom/googlecode/mp4parser/a/g;->k()[J

    move-result-object v16

    move-object/from16 v17, v5

    move v11, v10

    :goto_3
    add-int v5, v10, v9

    if-lt v11, v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    .line 521
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v7, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v8, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v5, v17

    const/4 v11, 0x0

    goto :goto_1

    .line 518
    :cond_0
    iget-object v5, v0, Lcom/googlecode/mp4parser/a/a/b;->d:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [J

    aget-wide v18, v5, v11

    add-long v12, v12, v18

    move/from16 v18, v4

    .line 519
    aget-wide v4, v16, v11

    long-to-double v4, v4

    move/from16 v19, v9

    invoke-interface {v3}, Lcom/googlecode/mp4parser/a/g;->m()Lcom/googlecode/mp4parser/a/h;

    move-result-object v9

    move/from16 v20, v10

    .line 49054
    iget-wide v9, v9, Lcom/googlecode/mp4parser/a/h;->b:J

    long-to-double v9, v9

    div-double/2addr v4, v9

    add-double/2addr v14, v4

    add-int/lit8 v11, v11, 0x1

    move/from16 v4, v18

    move/from16 v9, v19

    move/from16 v10, v20

    goto :goto_3

    :cond_1
    move-object/from16 v17, v5

    .line 494
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/googlecode/mp4parser/a/g;

    if-eqz v3, :cond_2

    .line 496
    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    cmpg-double v5, v14, v18

    if-gez v5, :cond_3

    .line 499
    :cond_2
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [I

    array-length v9, v9

    if-ge v5, v9, :cond_3

    move-object v3, v4

    :cond_3
    move-object/from16 v5, v17

    const/4 v11, 0x0

    goto/16 :goto_2

    :cond_4
    move-object/from16 v17, v5

    .line 485
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/googlecode/mp4parser/a/g;

    const/4 v10, 0x0

    .line 486
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v6, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v10, 0x0

    .line 488
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-interface {v8, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    iget-object v10, v0, Lcom/googlecode/mp4parser/a/a/b;->a:Ljava/util/Map;

    new-instance v11, Lcom/b/a/a/ab;

    invoke-direct {v11}, Lcom/b/a/a/ab;-><init>()V

    invoke-interface {v10, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v5, v17

    goto/16 :goto_0

    .line 528
    :cond_5
    iget-object v2, v0, Lcom/googlecode/mp4parser/a/a/b;->a:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/b/a/a/b;

    move-object/from16 v2, p3

    invoke-virtual {v2, v1}, Lcom/b/a/a/x;->a(Lcom/b/a/a/b;)V

    return-void
.end method

.method private a(Lcom/googlecode/mp4parser/a/g;)[I
    .locals 13

    .line 609
    iget-object v0, p0, Lcom/googlecode/mp4parser/a/a/b;->g:Lcom/googlecode/mp4parser/a/a/c;

    invoke-interface {v0, p1}, Lcom/googlecode/mp4parser/a/a/c;->a(Lcom/googlecode/mp4parser/a/g;)[J

    move-result-object v0

    .line 610
    array-length v1, v0

    new-array v2, v1, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 613
    :goto_0
    array-length v5, v0

    if-lt v4, v5, :cond_3

    .line 624
    sget-boolean v0, Lcom/googlecode/mp4parser/a/a/b;->e:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/googlecode/mp4parser/a/a/b;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    int-to-long v4, p1

    const-wide/16 v6, 0x0

    :goto_1
    if-lt v3, v1, :cond_1

    cmp-long p1, v4, v6

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "The number of samples and the sum of all chunk lengths must be equal"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 50055
    :cond_1
    aget p1, v2, v3

    int-to-long v8, p1

    add-long/2addr v6, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-object v2

    .line 614
    :cond_3
    aget-wide v5, v0, v4

    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    .line 616
    array-length v9, v0

    add-int/lit8 v10, v4, 0x1

    if-ne v9, v10, :cond_4

    .line 617
    invoke-interface {p1}, Lcom/googlecode/mp4parser/a/g;->j()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    int-to-long v7, v7

    goto :goto_3

    .line 619
    :cond_4
    aget-wide v11, v0, v10

    sub-long v7, v11, v7

    :goto_3
    sub-long/2addr v7, v5

    .line 622
    invoke-static {v7, v8}, Lcom/googlecode/mp4parser/c/b;->a(J)I

    move-result v5

    aput v5, v2, v4

    move v4, v10

    goto :goto_0
.end method

.method private static b(Lcom/googlecode/mp4parser/a/d;)J
    .locals 4

    .line 50059
    iget-object v0, p0, Lcom/googlecode/mp4parser/a/d;->b:Ljava/util/List;

    .line 632
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlecode/mp4parser/a/g;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/a/g;->m()Lcom/googlecode/mp4parser/a/h;

    move-result-object v0

    .line 50060
    iget-wide v0, v0, Lcom/googlecode/mp4parser/a/h;->b:J

    .line 50061
    iget-object p0, p0, Lcom/googlecode/mp4parser/a/d;->b:Ljava/util/List;

    .line 633
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/googlecode/mp4parser/a/g;

    .line 634
    invoke-interface {v2}, Lcom/googlecode/mp4parser/a/g;->m()Lcom/googlecode/mp4parser/a/h;

    move-result-object v2

    .line 50062
    iget-wide v2, v2, Lcom/googlecode/mp4parser/a/h;->b:J

    .line 634
    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/mp4parser/c/g;->a(JJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method private static b(Lcom/googlecode/mp4parser/a/g;Ljava/util/Map;Lcom/b/a/a/x;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/googlecode/mp4parser/a/g;",
            "Ljava/util/Map<",
            "Lcom/googlecode/mp4parser/a/g;",
            "[I>;",
            "Lcom/b/a/a/x;",
            ")V"
        }
    .end annotation

    .line 539
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    .line 541
    new-instance p1, Lcom/b/a/a/y;

    invoke-direct {p1}, Lcom/b/a/a/y;-><init>()V

    .line 542
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sget-object v1, Lcom/b/a/a/y;->b:Lorg/mp4parser/aspectj/lang/a$a;

    invoke-static {v1, p1, p1, v0}, Lorg/mp4parser/aspectj/a/b/b;->a(Lorg/mp4parser/aspectj/lang/a$a;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/a;

    move-result-object v1

    .line 50052
    invoke-static {}, Lcom/googlecode/mp4parser/h;->a()Lcom/googlecode/mp4parser/h;

    invoke-static {v1}, Lcom/googlecode/mp4parser/h;->a(Lorg/mp4parser/aspectj/lang/a;)V

    iput-object v0, p1, Lcom/b/a/a/y;->a:Ljava/util/List;

    const-wide/32 v0, -0x80000000

    const/4 v2, 0x0

    .line 544
    :goto_0
    array-length v3, p0

    if-lt v2, v3, :cond_0

    .line 554
    invoke-virtual {p2, p1}, Lcom/b/a/a/x;->a(Lcom/b/a/a/b;)V

    return-void

    .line 549
    :cond_0
    aget v3, p0, v2

    int-to-long v3, v3

    cmp-long v5, v0, v3

    if-eqz v5, :cond_1

    .line 550
    invoke-virtual {p1}, Lcom/b/a/a/y;->a()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/b/a/a/y$a;

    add-int/lit8 v3, v2, 0x1

    int-to-long v4, v3

    aget v3, p0, v2

    int-to-long v6, v3

    const-wide/16 v8, 0x1

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/b/a/a/y$a;-><init>(JJJ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 551
    aget v0, p0, v2

    int-to-long v0, v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/googlecode/mp4parser/a/d;)Lcom/b/a/a/e;
    .locals 14

    .line 91
    iget-object v0, p0, Lcom/googlecode/mp4parser/a/a/b;->g:Lcom/googlecode/mp4parser/a/a/c;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lcom/googlecode/mp4parser/a/a/a;

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    invoke-direct {v0, v1, v2}, Lcom/googlecode/mp4parser/a/a/a;-><init>(D)V

    iput-object v0, p0, Lcom/googlecode/mp4parser/a/a/b;->g:Lcom/googlecode/mp4parser/a/a/c;

    .line 94
    :cond_0
    sget-object v0, Lcom/googlecode/mp4parser/a/a/b;->f:Lcom/googlecode/mp4parser/c/f;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Creating movie "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/c/f;->a(Ljava/lang/String;)V

    .line 1039
    iget-object v0, p1, Lcom/googlecode/mp4parser/a/d;->b:Ljava/util/List;

    .line 95
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 108
    new-instance v1, Lcom/googlecode/mp4parser/d;

    invoke-direct {v1}, Lcom/googlecode/mp4parser/d;-><init>()V

    .line 1176
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const-string v3, "mp42"

    .line 1178
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "iso6"

    .line 1179
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "avc1"

    .line 1180
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "isom"

    .line 1181
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1182
    new-instance v4, Lcom/b/a/a/k;

    const-wide/16 v5, 0x1

    invoke-direct {v4, v3, v5, v6, v0}, Lcom/b/a/a/k;-><init>(Ljava/lang/String;JLjava/util/List;)V

    .line 110
    invoke-virtual {v1, v4}, Lcom/googlecode/mp4parser/d;->a(Lcom/b/a/a/b;)V

    .line 112
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 2039
    iget-object v0, p1, Lcom/googlecode/mp4parser/a/d;->b:Ljava/util/List;

    .line 113
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9

    .line 116
    invoke-direct {p0, p1, v10}, Lcom/googlecode/mp4parser/a/a/b;->a(Lcom/googlecode/mp4parser/a/d;Ljava/util/Map;)Lcom/b/a/a/r;

    move-result-object v0

    .line 117
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/d;->a(Lcom/b/a/a/b;)V

    const-string v3, "trak/mdia/minf/stbl/stsz"

    .line 118
    invoke-static {v0, v3}, Lcom/googlecode/mp4parser/c/j;->a(Lcom/b/a/a/b;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const-wide/16 v3, 0x0

    .line 121
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-wide v11, v3

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_8

    .line 125
    sget-object v0, Lcom/googlecode/mp4parser/a/a/b;->f:Lcom/googlecode/mp4parser/c/f;

    const-string v3, "About to create mdat"

    invoke-virtual {v0, v3}, Lcom/googlecode/mp4parser/c/f;->a(Ljava/lang/String;)V

    .line 126
    new-instance v0, Lcom/googlecode/mp4parser/a/a/b$a;

    const/4 v13, 0x0

    move-object v7, v0

    move-object v8, p0

    move-object v9, p1

    invoke-direct/range {v7 .. v13}, Lcom/googlecode/mp4parser/a/a/b$a;-><init>(Lcom/googlecode/mp4parser/a/a/b;Lcom/googlecode/mp4parser/a/d;Ljava/util/Map;JLcom/googlecode/mp4parser/a/a/b$a;)V

    .line 127
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/d;->a(Lcom/b/a/a/b;)V

    .line 128
    sget-object p1, Lcom/googlecode/mp4parser/a/a/b;->f:Lcom/googlecode/mp4parser/c/f;

    const-string v3, "mdat crated"

    invoke-virtual {p1, v3}, Lcom/googlecode/mp4parser/c/f;->a(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0}, Lcom/googlecode/mp4parser/a/a/b$a;->a()J

    move-result-wide v3

    .line 135
    iget-object p1, p0, Lcom/googlecode/mp4parser/a/a/b;->a:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_6

    .line 141
    iget-object p1, p0, Lcom/googlecode/mp4parser/a/a/b;->b:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mp4parser/iso14496/a/a;

    .line 142
    invoke-virtual {v0}, Lcom/mp4parser/iso14496/a/a;->getSize()J

    move-result-wide v3

    const-wide/16 v5, 0x2c

    add-long/2addr v3, v5

    move-object v5, v0

    .line 148
    :goto_5
    move-object v6, v5

    check-cast v6, Lcom/b/a/a/b;

    invoke-interface {v6}, Lcom/b/a/a/b;->getParent()Lcom/b/a/a/e;

    move-result-object v6

    .line 150
    move-object v7, v6

    check-cast v7, Lcom/b/a/a/e;

    invoke-interface {v7}, Lcom/b/a/a/e;->b()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/b/a/a/b;

    if-eq v8, v5, :cond_3

    .line 154
    invoke-interface {v8}, Lcom/b/a/a/b;->getSize()J

    move-result-wide v8

    add-long/2addr v3, v8

    goto :goto_6

    .line 157
    :cond_3
    :goto_7
    instance-of v5, v6, Lcom/b/a/a/b;

    if-nez v5, :cond_5

    .line 159
    invoke-virtual {v0}, Lcom/mp4parser/iso14496/a/a;->b()[J

    move-result-object v5

    const/4 v6, 0x0

    .line 160
    :goto_8
    array-length v7, v5

    if-lt v6, v7, :cond_4

    .line 164
    invoke-virtual {v0, v5}, Lcom/mp4parser/iso14496/a/a;->a([J)V

    goto :goto_4

    .line 161
    :cond_4
    aget-wide v7, v5, v6

    add-long/2addr v7, v3

    aput-wide v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_5
    move-object v5, v6

    goto :goto_5

    .line 135
    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/b/a/a/ab;

    .line 136
    invoke-virtual {p1}, Lcom/b/a/a/ab;->a()[J

    move-result-object v6

    const/4 p1, 0x0

    .line 137
    :goto_9
    array-length v0, v6

    if-lt p1, v0, :cond_7

    goto :goto_3

    .line 138
    :cond_7
    aget-wide v7, v6, p1

    add-long/2addr v7, v3

    aput-wide v7, v6, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_9

    .line 121
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/b/a/a/w;

    .line 122
    sget-object v4, Lcom/b/a/a/w;->c:Lorg/mp4parser/aspectj/lang/a$a;

    invoke-static {v4, v3, v3}, Lorg/mp4parser/aspectj/a/b/b;->a(Lorg/mp4parser/aspectj/lang/a$a;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/a;

    move-result-object v4

    .line 2077
    invoke-static {}, Lcom/googlecode/mp4parser/h;->a()Lcom/googlecode/mp4parser/h;

    invoke-static {v4}, Lcom/googlecode/mp4parser/h;->a(Lorg/mp4parser/aspectj/lang/a;)V

    iget-object v3, v3, Lcom/b/a/a/w;->a:[J

    .line 122
    invoke-static {v3}, Lcom/googlecode/mp4parser/a/a/b;->a([J)J

    move-result-wide v3

    add-long/2addr v11, v3

    goto/16 :goto_2

    .line 113
    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlecode/mp4parser/a/g;

    .line 114
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/a/a/b;->a(Lcom/googlecode/mp4parser/a/g;)[I

    move-result-object v4

    invoke-interface {v10, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 95
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/googlecode/mp4parser/a/g;

    .line 97
    invoke-interface {v1}, Lcom/googlecode/mp4parser/a/g;->j()Ljava/util/List;

    move-result-object v3

    .line 1172
    iget-object v4, p0, Lcom/googlecode/mp4parser/a/a/b;->c:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v5, v4, [J

    :goto_a
    if-lt v2, v4, :cond_b

    .line 104
    iget-object v2, p0, Lcom/googlecode/mp4parser/a/a/b;->d:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 101
    :cond_b
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/googlecode/mp4parser/a/f;

    .line 102
    invoke-interface {v6}, Lcom/googlecode/mp4parser/a/f;->a()J

    move-result-wide v6

    aput-wide v6, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a
.end method
