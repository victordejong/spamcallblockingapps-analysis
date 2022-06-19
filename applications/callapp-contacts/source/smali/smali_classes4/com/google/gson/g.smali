.class public final Lcom/google/gson/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/gson/internal/d;

.field private b:Lcom/google/gson/i;

.field private c:Lcom/google/gson/e;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/gson/h<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/gson/k;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/gson/k;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:I

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    sget-object v0, Lcom/google/gson/internal/d;->a:Lcom/google/gson/internal/d;

    iput-object v0, p0, Lcom/google/gson/g;->a:Lcom/google/gson/internal/d;

    .line 80
    sget-object v0, Lcom/google/gson/i;->DEFAULT:Lcom/google/gson/i;

    iput-object v0, p0, Lcom/google/gson/g;->b:Lcom/google/gson/i;

    .line 81
    sget-object v0, Lcom/google/gson/d;->IDENTITY:Lcom/google/gson/d;

    iput-object v0, p0, Lcom/google/gson/g;->c:Lcom/google/gson/e;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/gson/g;->d:Ljava/util/Map;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/gson/g;->e:Ljava/util/List;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/gson/g;->f:Ljava/util/List;

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/google/gson/g;->g:Z

    const/4 v1, 0x2

    .line 89
    iput v1, p0, Lcom/google/gson/g;->i:I

    .line 90
    iput v1, p0, Lcom/google/gson/g;->j:I

    .line 91
    iput-boolean v0, p0, Lcom/google/gson/g;->k:Z

    .line 92
    iput-boolean v0, p0, Lcom/google/gson/g;->l:Z

    const/4 v1, 0x1

    .line 93
    iput-boolean v1, p0, Lcom/google/gson/g;->m:Z

    .line 94
    iput-boolean v0, p0, Lcom/google/gson/g;->n:Z

    .line 95
    iput-boolean v0, p0, Lcom/google/gson/g;->o:Z

    .line 96
    iput-boolean v0, p0, Lcom/google/gson/g;->p:Z

    return-void
.end method

.method constructor <init>(Lcom/google/gson/f;)V
    .locals 5

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    sget-object v0, Lcom/google/gson/internal/d;->a:Lcom/google/gson/internal/d;

    iput-object v0, p0, Lcom/google/gson/g;->a:Lcom/google/gson/internal/d;

    .line 80
    sget-object v0, Lcom/google/gson/i;->DEFAULT:Lcom/google/gson/i;

    iput-object v0, p0, Lcom/google/gson/g;->b:Lcom/google/gson/i;

    .line 81
    sget-object v0, Lcom/google/gson/d;->IDENTITY:Lcom/google/gson/d;

    iput-object v0, p0, Lcom/google/gson/g;->c:Lcom/google/gson/e;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/gson/g;->d:Ljava/util/Map;

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/gson/g;->e:Ljava/util/List;

    .line 86
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/gson/g;->f:Ljava/util/List;

    const/4 v3, 0x0

    .line 87
    iput-boolean v3, p0, Lcom/google/gson/g;->g:Z

    const/4 v4, 0x2

    .line 89
    iput v4, p0, Lcom/google/gson/g;->i:I

    .line 90
    iput v4, p0, Lcom/google/gson/g;->j:I

    .line 91
    iput-boolean v3, p0, Lcom/google/gson/g;->k:Z

    .line 92
    iput-boolean v3, p0, Lcom/google/gson/g;->l:Z

    const/4 v4, 0x1

    .line 93
    iput-boolean v4, p0, Lcom/google/gson/g;->m:Z

    .line 94
    iput-boolean v3, p0, Lcom/google/gson/g;->n:Z

    .line 95
    iput-boolean v3, p0, Lcom/google/gson/g;->o:Z

    .line 96
    iput-boolean v3, p0, Lcom/google/gson/g;->p:Z

    .line 114
    iget-object v3, p1, Lcom/google/gson/f;->g:Lcom/google/gson/internal/d;

    iput-object v3, p0, Lcom/google/gson/g;->a:Lcom/google/gson/internal/d;

    .line 115
    iget-object v3, p1, Lcom/google/gson/f;->h:Lcom/google/gson/e;

    iput-object v3, p0, Lcom/google/gson/g;->c:Lcom/google/gson/e;

    .line 116
    iget-object v3, p1, Lcom/google/gson/f;->i:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 117
    iget-boolean v0, p1, Lcom/google/gson/f;->j:Z

    iput-boolean v0, p0, Lcom/google/gson/g;->g:Z

    .line 118
    iget-boolean v0, p1, Lcom/google/gson/f;->k:Z

    iput-boolean v0, p0, Lcom/google/gson/g;->k:Z

    .line 119
    iget-boolean v0, p1, Lcom/google/gson/f;->l:Z

    iput-boolean v0, p0, Lcom/google/gson/g;->o:Z

    .line 120
    iget-boolean v0, p1, Lcom/google/gson/f;->m:Z

    iput-boolean v0, p0, Lcom/google/gson/g;->m:Z

    .line 121
    iget-boolean v0, p1, Lcom/google/gson/f;->n:Z

    iput-boolean v0, p0, Lcom/google/gson/g;->n:Z

    .line 122
    iget-boolean v0, p1, Lcom/google/gson/f;->o:Z

    iput-boolean v0, p0, Lcom/google/gson/g;->p:Z

    .line 123
    iget-boolean v0, p1, Lcom/google/gson/f;->p:Z

    iput-boolean v0, p0, Lcom/google/gson/g;->l:Z

    .line 124
    iget-object v0, p1, Lcom/google/gson/f;->t:Lcom/google/gson/i;

    iput-object v0, p0, Lcom/google/gson/g;->b:Lcom/google/gson/i;

    .line 125
    iget-object v0, p1, Lcom/google/gson/f;->q:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/gson/g;->h:Ljava/lang/String;

    .line 126
    iget v0, p1, Lcom/google/gson/f;->r:I

    iput v0, p0, Lcom/google/gson/g;->i:I

    .line 127
    iget v0, p1, Lcom/google/gson/f;->s:I

    iput v0, p0, Lcom/google/gson/g;->j:I

    .line 128
    iget-object v0, p1, Lcom/google/gson/f;->u:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 129
    iget-object p1, p1, Lcom/google/gson/f;->v:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private static a(Ljava/lang/String;IILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Lcom/google/gson/k;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 611
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 612
    new-instance p1, Lcom/google/gson/a;

    const-class p2, Ljava/util/Date;

    invoke-direct {p1, p2, p0}, Lcom/google/gson/a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 613
    new-instance p2, Lcom/google/gson/a;

    const-class v0, Ljava/sql/Timestamp;

    invoke-direct {p2, v0, p0}, Lcom/google/gson/a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 614
    new-instance v0, Lcom/google/gson/a;

    const-class v1, Ljava/sql/Date;

    invoke-direct {v0, v1, p0}, Lcom/google/gson/a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    if-eq p2, p0, :cond_1

    .line 616
    new-instance p0, Lcom/google/gson/a;

    const-class v0, Ljava/util/Date;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/gson/a;-><init>(Ljava/lang/Class;II)V

    .line 617
    new-instance v0, Lcom/google/gson/a;

    const-class v1, Ljava/sql/Timestamp;

    invoke-direct {v0, v1, p1, p2}, Lcom/google/gson/a;-><init>(Ljava/lang/Class;II)V

    .line 618
    new-instance v1, Lcom/google/gson/a;

    const-class v2, Ljava/sql/Date;

    invoke-direct {v1, v2, p1, p2}, Lcom/google/gson/a;-><init>(Ljava/lang/Class;II)V

    move-object p1, p0

    move-object p2, v0

    move-object v0, v1

    .line 623
    :goto_0
    const-class p0, Ljava/util/Date;

    invoke-static {p0, p1}, Lcom/google/gson/internal/bind/j;->a(Ljava/lang/Class;Lcom/google/gson/j;)Lcom/google/gson/k;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 624
    const-class p0, Ljava/sql/Timestamp;

    invoke-static {p0, p2}, Lcom/google/gson/internal/bind/j;->a(Ljava/lang/Class;Lcom/google/gson/j;)Lcom/google/gson/k;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 625
    const-class p0, Ljava/sql/Date;

    invoke-static {p0, v0}, Lcom/google/gson/internal/bind/j;->a(Ljava/lang/Class;Lcom/google/gson/j;)Lcom/google/gson/k;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/gson/f;
    .locals 21

    move-object/from16 v0, p0

    .line 587
    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v18, v1

    iget-object v2, v0, Lcom/google/gson/g;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, v0, Lcom/google/gson/g;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 588
    iget-object v2, v0, Lcom/google/gson/g;->e:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 589
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 591
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/google/gson/g;->f:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 592
    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 593
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 595
    iget-object v2, v0, Lcom/google/gson/g;->h:Ljava/lang/String;

    iget v3, v0, Lcom/google/gson/g;->i:I

    iget v4, v0, Lcom/google/gson/g;->j:I

    invoke-static {v2, v3, v4, v1}, Lcom/google/gson/g;->a(Ljava/lang/String;IILjava/util/List;)V

    .line 597
    new-instance v19, Lcom/google/gson/f;

    move-object/from16 v1, v19

    iget-object v2, v0, Lcom/google/gson/g;->a:Lcom/google/gson/internal/d;

    iget-object v3, v0, Lcom/google/gson/g;->c:Lcom/google/gson/e;

    iget-object v4, v0, Lcom/google/gson/g;->d:Ljava/util/Map;

    iget-boolean v5, v0, Lcom/google/gson/g;->g:Z

    iget-boolean v6, v0, Lcom/google/gson/g;->k:Z

    iget-boolean v7, v0, Lcom/google/gson/g;->o:Z

    iget-boolean v8, v0, Lcom/google/gson/g;->m:Z

    iget-boolean v9, v0, Lcom/google/gson/g;->n:Z

    iget-boolean v10, v0, Lcom/google/gson/g;->p:Z

    iget-boolean v11, v0, Lcom/google/gson/g;->l:Z

    iget-object v12, v0, Lcom/google/gson/g;->b:Lcom/google/gson/i;

    iget-object v13, v0, Lcom/google/gson/g;->h:Ljava/lang/String;

    iget v14, v0, Lcom/google/gson/g;->i:I

    iget v15, v0, Lcom/google/gson/g;->j:I

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/google/gson/g;->e:Ljava/util/List;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/google/gson/g;->f:Ljava/util/List;

    move-object/from16 v17, v1

    move-object/from16 v1, v20

    invoke-direct/range {v1 .. v18}, Lcom/google/gson/f;-><init>(Lcom/google/gson/internal/d;Lcom/google/gson/e;Ljava/util/Map;ZZZZZZZLcom/google/gson/i;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v19
.end method

.method public final a(Lcom/google/gson/k;)Lcom/google/gson/g;
    .locals 1

    .line 523
    iget-object v0, p0, Lcom/google/gson/g;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/g;
    .locals 5

    const/4 v0, 0x1

    .line 497
    invoke-static {v0}, Lcom/google/gson/internal/a;->a(Z)V

    .line 501
    instance-of v1, p2, Lcom/google/gson/h;

    if-eqz v1, :cond_0

    .line 502
    iget-object v1, p0, Lcom/google/gson/g;->d:Ljava/util/Map;

    move-object v2, p2

    check-cast v2, Lcom/google/gson/h;

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    :cond_0
    invoke-static {p1}, Lcom/google/gson/a/a;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/a/a;

    move-result-object v1

    .line 506
    iget-object v2, p0, Lcom/google/gson/g;->e:Ljava/util/List;

    .line 1106
    invoke-virtual {v1}, Lcom/google/gson/a/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/gson/a/a;->getRawType()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1107
    :goto_0
    new-instance v3, Lcom/google/gson/internal/bind/TreeTypeAdapter$a;

    const/4 v4, 0x0

    invoke-direct {v3, p2, v1, v0, v4}, Lcom/google/gson/internal/bind/TreeTypeAdapter$a;-><init>(Ljava/lang/Object;Lcom/google/gson/a/a;ZLjava/lang/Class;)V

    .line 506
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    instance-of v0, p2, Lcom/google/gson/j;

    if-eqz v0, :cond_2

    .line 509
    iget-object v0, p0, Lcom/google/gson/g;->e:Ljava/util/List;

    invoke-static {p1}, Lcom/google/gson/a/a;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/a/a;

    move-result-object p1

    check-cast p2, Lcom/google/gson/j;

    invoke-static {p1, p2}, Lcom/google/gson/internal/bind/j;->a(Lcom/google/gson/a/a;Lcom/google/gson/j;)Lcom/google/gson/k;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object p0
.end method
