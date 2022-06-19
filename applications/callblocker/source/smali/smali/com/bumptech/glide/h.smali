.class public Lcom/bumptech/glide/h;
.super Ljava/lang/Object;
.source "RequestBuilder.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field protected static final a:Lcom/bumptech/glide/f/e;


# instance fields
.field protected b:Lcom/bumptech/glide/f/e;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/bumptech/glide/i;

.field private final e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TTranscodeType;>;"
        }
    .end annotation
.end field

.field private final f:Lcom/bumptech/glide/f/e;

.field private final g:Lcom/bumptech/glide/c;

.field private final h:Lcom/bumptech/glide/e;

.field private i:Lcom/bumptech/glide/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/j",
            "<*-TTranscodeType;>;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/Object;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/f/d",
            "<TTranscodeType;>;>;"
        }
    .end annotation
.end field

.field private l:Lcom/bumptech/glide/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/h",
            "<TTranscodeType;>;"
        }
    .end annotation
.end field

.field private m:Lcom/bumptech/glide/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/h",
            "<TTranscodeType;>;"
        }
    .end annotation
.end field

.field private n:Ljava/lang/Float;

.field private o:Z

.field private p:Z

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lcom/bumptech/glide/f/e;

    invoke-direct {v0}, Lcom/bumptech/glide/f/e;-><init>()V

    sget-object v1, Lcom/bumptech/glide/load/engine/i;->c:Lcom/bumptech/glide/load/engine/i;

    .line 52
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/f/e;->b(Lcom/bumptech/glide/load/engine/i;)Lcom/bumptech/glide/f/e;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/g;->d:Lcom/bumptech/glide/g;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/f/e;->a(Lcom/bumptech/glide/g;)Lcom/bumptech/glide/f/e;

    move-result-object v0

    const/4 v1, 0x1

    .line 53
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/f/e;->b(Z)Lcom/bumptech/glide/f/e;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/h;->a:Lcom/bumptech/glide/f/e;

    .line 51
    return-void
.end method

.method protected constructor <init>(Lcom/bumptech/glide/c;Lcom/bumptech/glide/i;Ljava/lang/Class;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/c;",
            "Lcom/bumptech/glide/i;",
            "Ljava/lang/Class",
            "<TTranscodeType;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/h;->o:Z

    .line 81
    iput-object p1, p0, Lcom/bumptech/glide/h;->g:Lcom/bumptech/glide/c;

    .line 82
    iput-object p2, p0, Lcom/bumptech/glide/h;->d:Lcom/bumptech/glide/i;

    .line 83
    iput-object p3, p0, Lcom/bumptech/glide/h;->e:Ljava/lang/Class;

    .line 84
    invoke-virtual {p2}, Lcom/bumptech/glide/i;->h()Lcom/bumptech/glide/f/e;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/h;->f:Lcom/bumptech/glide/f/e;

    .line 85
    iput-object p4, p0, Lcom/bumptech/glide/h;->c:Landroid/content/Context;

    .line 86
    invoke-virtual {p2, p3}, Lcom/bumptech/glide/i;->b(Ljava/lang/Class;)Lcom/bumptech/glide/j;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/h;->i:Lcom/bumptech/glide/j;

    .line 87
    iget-object v0, p0, Lcom/bumptech/glide/h;->f:Lcom/bumptech/glide/f/e;

    iput-object v0, p0, Lcom/bumptech/glide/h;->b:Lcom/bumptech/glide/f/e;

    .line 88
    invoke-virtual {p1}, Lcom/bumptech/glide/c;->e()Lcom/bumptech/glide/e;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/h;->h:Lcom/bumptech/glide/e;

    .line 89
    return-void
.end method

.method private a(Lcom/bumptech/glide/f/a/h;Lcom/bumptech/glide/f/d;Lcom/bumptech/glide/f/e;)Lcom/bumptech/glide/f/a/h;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/bumptech/glide/f/a/h",
            "<TTranscodeType;>;>(TY;",
            "Lcom/bumptech/glide/f/d",
            "<TTranscodeType;>;",
            "Lcom/bumptech/glide/f/e;",
            ")TY;"
        }
    .end annotation

    .prologue
    .line 618
    invoke-static {}, Lcom/bumptech/glide/h/j;->a()V

    .line 619
    invoke-static {p1}, Lcom/bumptech/glide/h/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    iget-boolean v0, p0, Lcom/bumptech/glide/h;->p:Z

    if-nez v0, :cond_0

    .line 621
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "You must call #load() before calling #into()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 624
    :cond_0
    invoke-virtual {p3}, Lcom/bumptech/glide/f/e;->j()Lcom/bumptech/glide/f/e;

    move-result-object v0

    .line 625
    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/h;->b(Lcom/bumptech/glide/f/a/h;Lcom/bumptech/glide/f/d;Lcom/bumptech/glide/f/e;)Lcom/bumptech/glide/f/b;

    move-result-object v1

    .line 627
    invoke-interface {p1}, Lcom/bumptech/glide/f/a/h;->b()Lcom/bumptech/glide/f/b;

    move-result-object v2

    .line 628
    invoke-interface {v1, v2}, Lcom/bumptech/glide/f/b;->a(Lcom/bumptech/glide/f/b;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 629
    invoke-direct {p0, v0, v2}, Lcom/bumptech/glide/h;->a(Lcom/bumptech/glide/f/e;Lcom/bumptech/glide/f/b;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 630
    invoke-interface {v1}, Lcom/bumptech/glide/f/b;->h()V

    .line 635
    invoke-static {v2}, Lcom/bumptech/glide/h/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/f/b;

    invoke-interface {v0}, Lcom/bumptech/glide/f/b;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 639
    invoke-interface {v2}, Lcom/bumptech/glide/f/b;->a()V

    .line 648
    :cond_1
    :goto_0
    return-object p1

    .line 644
    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/h;->d:Lcom/bumptech/glide/i;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/i;->a(Lcom/bumptech/glide/f/a/h;)V

    .line 645
    invoke-interface {p1, v1}, Lcom/bumptech/glide/f/a/h;->a(Lcom/bumptech/glide/f/b;)V

    .line 646
    iget-object v0, p0, Lcom/bumptech/glide/h;->d:Lcom/bumptech/glide/i;

    invoke-virtual {v0, p1, v1}, Lcom/bumptech/glide/i;->a(Lcom/bumptech/glide/f/a/h;Lcom/bumptech/glide/f/b;)V

    goto :goto_0
.end method

.method private a(Lcom/bumptech/glide/f/a/h;Lcom/bumptech/glide/f/d;Lcom/bumptech/glide/f/c;Lcom/bumptech/glide/j;Lcom/bumptech/glide/g;IILcom/bumptech/glide/f/e;)Lcom/bumptech/glide/f/b;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/f/a/h",
            "<TTranscodeType;>;",
            "Lcom/bumptech/glide/f/d",
            "<TTranscodeType;>;",
            "Lcom/bumptech/glide/f/c;",
            "Lcom/bumptech/glide/j",
            "<*-TTranscodeType;>;",
            "Lcom/bumptech/glide/g;",
            "II",
            "Lcom/bumptech/glide/f/e;",
            ")",
            "Lcom/bumptech/glide/f/b;"
        }
    .end annotation

    .prologue
    .line 901
    const/4 v0, 0x0

    .line 902
    iget-object v1, p0, Lcom/bumptech/glide/h;->m:Lcom/bumptech/glide/h;

    if-eqz v1, :cond_2

    .line 903
    new-instance v0, Lcom/bumptech/glide/f/a;

    invoke-direct {v0, p3}, Lcom/bumptech/glide/f/a;-><init>(Lcom/bumptech/glide/f/c;)V

    move-object v9, v0

    move-object v3, v0

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 908
    invoke-direct/range {v0 .. v8}, Lcom/bumptech/glide/h;->b(Lcom/bumptech/glide/f/a/h;Lcom/bumptech/glide/f/d;Lcom/bumptech/glide/f/c;Lcom/bumptech/glide/j;Lcom/bumptech/glide/g;IILcom/bumptech/glide/f/e;)Lcom/bumptech/glide/f/b;

    move-result-object v10

    .line 918
    if-nez v9, :cond_0

    move-object v9, v10

    .line 940
    :goto_1
    return-object v9

    .line 922
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/h;->m:Lcom/bumptech/glide/h;

    iget-object v0, v0, Lcom/bumptech/glide/h;->b:Lcom/bumptech/glide/f/e;

    invoke-virtual {v0}, Lcom/bumptech/glide/f/e;->A()I

    move-result v6

    .line 923
    iget-object v0, p0, Lcom/bumptech/glide/h;->m:Lcom/bumptech/glide/h;

    iget-object v0, v0, Lcom/bumptech/glide/h;->b:Lcom/bumptech/glide/f/e;

    invoke-virtual {v0}, Lcom/bumptech/glide/f/e;->C()I

    move-result v7

    .line 924
    invoke-static/range {p6 .. p7}, Lcom/bumptech/glide/h/j;->a(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/h;->m:Lcom/bumptech/glide/h;

    iget-object v0, v0, Lcom/bumptech/glide/h;->b:Lcom/bumptech/glide/f/e;

    .line 925
    invoke-virtual {v0}, Lcom/bumptech/glide/f/e;->B()Z

    move-result v0

    if-nez v0, :cond_1

    .line 926
    invoke-virtual/range {p8 .. p8}, Lcom/bumptech/glide/f/e;->A()I

    move-result v6

    .line 927
    invoke-virtual/range {p8 .. p8}, Lcom/bumptech/glide/f/e;->C()I

    move-result v7

    .line 930
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/h;->m:Lcom/bumptech/glide/h;

    iget-object v1, p0, Lcom/bumptech/glide/h;->m:Lcom/bumptech/glide/h;

    iget-object v4, v1, Lcom/bumptech/glide/h;->i:Lcom/bumptech/glide/j;

    iget-object v1, p0, Lcom/bumptech/glide/h;->m:Lcom/bumptech/glide/h;

    iget-object v1, v1, Lcom/bumptech/glide/h;->b:Lcom/bumptech/glide/f/e;

    .line 935
    invoke-virtual {v1}, Lcom/bumptech/glide/f/e;->z()Lcom/bumptech/glide/g;

    move-result-object v5

    iget-object v1, p0, Lcom/bumptech/glide/h;->m:Lcom/bumptech/glide/h;

    iget-object v8, v1, Lcom/bumptech/glide/h;->b:Lcom/bumptech/glide/f/e;

    move-object v1, p1

    move-object v2, p2

    move-object v3, v9

    .line 930
    invoke-direct/range {v0 .. v8}, Lcom/bumptech/glide/h;->a(Lcom/bumptech/glide/f/a/h;Lcom/bumptech/glide/f/d;Lcom/bumptech/glide/f/c;Lcom/bumptech/glide/j;Lcom/bumptech/glide/g;IILcom/bumptech/glide/f/e;)Lcom/bumptech/glide/f/b;

    move-result-object v0

    .line 939
    invoke-virtual {v9, v10, v0}, Lcom/bumptech/glide/f/a;->a(Lcom/bumptech/glide/f/b;Lcom/bumptech/glide/f/b;)V

    goto :goto_1

    :cond_2
    move-object v9, v0

    move-object v3, p3

    goto :goto_0
.end method

.method private a(Lcom/bumptech/glide/f/a/h;Lcom/bumptech/glide/f/d;Lcom/bumptech/glide/f/e;Lcom/bumptech/glide/f/c;Lcom/bumptech/glide/j;Lcom/bumptech/glide/g;II)Lcom/bumptech/glide/f/b;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/f/a/h",
            "<TTranscodeType;>;",
            "Lcom/bumptech/glide/f/d",
            "<TTranscodeType;>;",
            "Lcom/bumptech/glide/f/e;",
            "Lcom/bumptech/glide/f/c;",
            "Lcom/bumptech/glide/j",
            "<*-TTranscodeType;>;",
            "Lcom/bumptech/glide/g;",
            "II)",
            "Lcom/bumptech/glide/f/b;"
        }
    .end annotation

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/bumptech/glide/h;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/bumptech/glide/h;->h:Lcom/bumptech/glide/e;

    iget-object v2, p0, Lcom/bumptech/glide/h;->j:Ljava/lang/Object;

    iget-object v3, p0, Lcom/bumptech/glide/h;->e:Ljava/lang/Class;

    iget-object v10, p0, Lcom/bumptech/glide/h;->k:Ljava/util/List;

    iget-object v4, p0, Lcom/bumptech/glide/h;->h:Lcom/bumptech/glide/e;

    .line 1070
    invoke-virtual {v4}, Lcom/bumptech/glide/e;->b()Lcom/bumptech/glide/load/engine/j;

    move-result-object v12

    .line 1071
    invoke-virtual/range {p5 .. p5}, Lcom/bumptech/glide/j;->b()Lcom/bumptech/glide/f/b/c;

    move-result-object v13

    move-object/from16 v4, p3

    move/from16 v5, p7

    move/from16 v6, p8

    move-object/from16 v7, p6

    move-object v8, p1

    move-object/from16 v9, p2

    move-object/from16 v11, p4

    .line 1057
    invoke-static/range {v0 .. v13}, Lcom/bumptech/glide/f/g;->a(Landroid/content/Context;Lcom/bumptech/glide/e;Ljava/lang/Object;Ljava/lang/Class;Lcom/bumptech/glide/f/e;IILcom/bumptech/glide/g;Lcom/bumptech/glide/f/a/h;Lcom/bumptech/glide/f/d;Ljava/util/List;Lcom/bumptech/glide/f/c;Lcom/bumptech/glide/load/engine/j;Lcom/bumptech/glide/f/b/c;)Lcom/bumptech/glide/f/g;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/bumptech/glide/g;)Lcom/bumptech/glide/g;
    .locals 3

    .prologue
    .line 862
    sget-object v0, Lcom/bumptech/glide/h$1;->b:[I

    invoke-virtual {p1}, Lcom/bumptech/glide/g;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 871
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown priority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/h;->b:Lcom/bumptech/glide/f/e;

    invoke-virtual {v2}, Lcom/bumptech/glide/f/e;->z()Lcom/bumptech/glide/g;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 864
    :pswitch_0
    sget-object v0, Lcom/bumptech/glide/g;->c:Lcom/bumptech/glide/g;

    .line 869
    :goto_0
    return-object v0

    .line 866
    :pswitch_1
    sget-object v0, Lcom/bumptech/glide/g;->b:Lcom/bumptech/glide/g;

    goto :goto_0

    .line 869
    :pswitch_2
    sget-object v0, Lcom/bumptech/glide/g;->a:Lcom/bumptech/glide/g;

    goto :goto_0

    .line 862
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private a(Lcom/bumptech/glide/f/e;Lcom/bumptech/glide/f/b;)Z
    .locals 1

    .prologue
    .line 658
    invoke-virtual {p1}, Lcom/bumptech/glide/f/e;->w()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Lcom/bumptech/glide/f/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/bumptech/glide/f/a/h;Lcom/bumptech/glide/f/d;Lcom/bumptech/glide/f/c;Lcom/bumptech/glide/j;Lcom/bumptech/glide/g;IILcom/bumptech/glide/f/e;)Lcom/bumptech/glide/f/b;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/f/a/h",
            "<TTranscodeType;>;",
            "Lcom/bumptech/glide/f/d",
            "<TTranscodeType;>;",
            "Lcom/bumptech/glide/f/c;",
            "Lcom/bumptech/glide/j",
            "<*-TTranscodeType;>;",
            "Lcom/bumptech/glide/g;",
            "II",
            "Lcom/bumptech/glide/f/e;",
            ")",
            "Lcom/bumptech/glide/f/b;"
        }
    .end annotation

    .prologue
    .line 952
    iget-object v1, p0, Lcom/bumptech/glide/h;->l:Lcom/bumptech/glide/h;

    if-eqz v1, :cond_2

    .line 954
    iget-boolean v1, p0, Lcom/bumptech/glide/h;->q:Z

    if-eqz v1, :cond_0

    .line 955
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 959
    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/h;->l:Lcom/bumptech/glide/h;

    iget-object v1, v1, Lcom/bumptech/glide/h;->i:Lcom/bumptech/glide/j;

    .line 964
    iget-object v2, p0, Lcom/bumptech/glide/h;->l:Lcom/bumptech/glide/h;

    iget-boolean v2, v2, Lcom/bumptech/glide/h;->o:Z

    if-eqz v2, :cond_5

    move-object/from16 v11, p4

    .line 968
    :goto_0
    iget-object v1, p0, Lcom/bumptech/glide/h;->l:Lcom/bumptech/glide/h;

    iget-object v1, v1, Lcom/bumptech/glide/h;->b:Lcom/bumptech/glide/f/e;

    invoke-virtual {v1}, Lcom/bumptech/glide/f/e;->y()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 969
    iget-object v1, p0, Lcom/bumptech/glide/h;->l:Lcom/bumptech/glide/h;

    iget-object v1, v1, Lcom/bumptech/glide/h;->b:Lcom/bumptech/glide/f/e;

    invoke-virtual {v1}, Lcom/bumptech/glide/f/e;->z()Lcom/bumptech/glide/g;

    move-result-object v1

    move-object v12, v1

    .line 971
    :goto_1
    iget-object v1, p0, Lcom/bumptech/glide/h;->l:Lcom/bumptech/glide/h;

    iget-object v1, v1, Lcom/bumptech/glide/h;->b:Lcom/bumptech/glide/f/e;

    invoke-virtual {v1}, Lcom/bumptech/glide/f/e;->A()I

    move-result v2

    .line 972
    iget-object v1, p0, Lcom/bumptech/glide/h;->l:Lcom/bumptech/glide/h;

    iget-object v1, v1, Lcom/bumptech/glide/h;->b:Lcom/bumptech/glide/f/e;

    invoke-virtual {v1}, Lcom/bumptech/glide/f/e;->C()I

    move-result v1

    .line 973
    invoke-static/range {p6 .. p7}, Lcom/bumptech/glide/h/j;->a(II)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/bumptech/glide/h;->l:Lcom/bumptech/glide/h;

    iget-object v3, v3, Lcom/bumptech/glide/h;->b:Lcom/bumptech/glide/f/e;

    .line 974
    invoke-virtual {v3}, Lcom/bumptech/glide/f/e;->B()Z

    move-result v3

    if-nez v3, :cond_4

    .line 975
    invoke-virtual/range {p8 .. p8}, Lcom/bumptech/glide/f/e;->A()I

    move-result v2

    .line 976
    invoke-virtual/range {p8 .. p8}, Lcom/bumptech/glide/f/e;->C()I

    move-result v1

    move v13, v1

    move v14, v2

    .line 979
    :goto_2
    new-instance v5, Lcom/bumptech/glide/f/h;

    move-object/from16 v0, p3

    invoke-direct {v5, v0}, Lcom/bumptech/glide/f/h;-><init>(Lcom/bumptech/glide/f/c;)V

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p8

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    .line 981
    invoke-direct/range {v1 .. v9}, Lcom/bumptech/glide/h;->a(Lcom/bumptech/glide/f/a/h;Lcom/bumptech/glide/f/d;Lcom/bumptech/glide/f/e;Lcom/bumptech/glide/f/c;Lcom/bumptech/glide/j;Lcom/bumptech/glide/g;II)Lcom/bumptech/glide/f/b;

    move-result-object v1

    .line 990
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/bumptech/glide/h;->q:Z

    .line 992
    iget-object v2, p0, Lcom/bumptech/glide/h;->l:Lcom/bumptech/glide/h;

    iget-object v3, p0, Lcom/bumptech/glide/h;->l:Lcom/bumptech/glide/h;

    iget-object v10, v3, Lcom/bumptech/glide/h;->b:Lcom/bumptech/glide/f/e;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object v6, v11

    move-object v7, v12

    move v8, v14

    move v9, v13

    .line 993
    invoke-direct/range {v2 .. v10}, Lcom/bumptech/glide/h;->a(Lcom/bumptech/glide/f/a/h;Lcom/bumptech/glide/f/d;Lcom/bumptech/glide/f/c;Lcom/bumptech/glide/j;Lcom/bumptech/glide/g;IILcom/bumptech/glide/f/e;)Lcom/bumptech/glide/f/b;

    move-result-object v2

    .line 1002
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/bumptech/glide/h;->q:Z

    .line 1003
    invoke-virtual {v5, v1, v2}, Lcom/bumptech/glide/f/h;->a(Lcom/bumptech/glide/f/b;Lcom/bumptech/glide/f/b;)V

    .line 1036
    :goto_3
    return-object v5

    .line 969
    :cond_1
    move-object/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/bumptech/glide/h;->a(Lcom/bumptech/glide/g;)Lcom/bumptech/glide/g;

    move-result-object v1

    move-object v12, v1

    goto :goto_1

    .line 1005
    :cond_2
    iget-object v1, p0, Lcom/bumptech/glide/h;->n:Ljava/lang/Float;

    if-eqz v1, :cond_3

    .line 1007
    new-instance v5, Lcom/bumptech/glide/f/h;

    move-object/from16 v0, p3

    invoke-direct {v5, v0}, Lcom/bumptech/glide/f/h;-><init>(Lcom/bumptech/glide/f/c;)V

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p8

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    .line 1009
    invoke-direct/range {v1 .. v9}, Lcom/bumptech/glide/h;->a(Lcom/bumptech/glide/f/a/h;Lcom/bumptech/glide/f/d;Lcom/bumptech/glide/f/e;Lcom/bumptech/glide/f/c;Lcom/bumptech/glide/j;Lcom/bumptech/glide/g;II)Lcom/bumptech/glide/f/b;

    move-result-object v10

    .line 1018
    invoke-virtual/range {p8 .. p8}, Lcom/bumptech/glide/f/e;->b()Lcom/bumptech/glide/f/e;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/h;->n:Ljava/lang/Float;

    .line 1019
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/f/e;->a(F)Lcom/bumptech/glide/f/e;

    move-result-object v4

    .line 1028
    move-object/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/bumptech/glide/h;->a(Lcom/bumptech/glide/g;)Lcom/bumptech/glide/g;

    move-result-object v7

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    .line 1022
    invoke-direct/range {v1 .. v9}, Lcom/bumptech/glide/h;->a(Lcom/bumptech/glide/f/a/h;Lcom/bumptech/glide/f/d;Lcom/bumptech/glide/f/e;Lcom/bumptech/glide/f/c;Lcom/bumptech/glide/j;Lcom/bumptech/glide/g;II)Lcom/bumptech/glide/f/b;

    move-result-object v1

    .line 1032
    invoke-virtual {v5, v10, v1}, Lcom/bumptech/glide/f/h;->a(Lcom/bumptech/glide/f/b;Lcom/bumptech/glide/f/b;)V

    goto :goto_3

    :cond_3
    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p8

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    .line 1036
    invoke-direct/range {v1 .. v9}, Lcom/bumptech/glide/h;->a(Lcom/bumptech/glide/f/a/h;Lcom/bumptech/glide/f/d;Lcom/bumptech/glide/f/e;Lcom/bumptech/glide/f/c;Lcom/bumptech/glide/j;Lcom/bumptech/glide/g;II)Lcom/bumptech/glide/f/b;

    move-result-object v5

    goto :goto_3

    :cond_4
    move v13, v1

    move v14, v2

    goto/16 :goto_2

    :cond_5
    move-object v11, v1

    goto/16 :goto_0
.end method

.method private b(Lcom/bumptech/glide/f/a/h;Lcom/bumptech/glide/f/d;Lcom/bumptech/glide/f/e;)Lcom/bumptech/glide/f/b;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/f/a/h",
            "<TTranscodeType;>;",
            "Lcom/bumptech/glide/f/d",
            "<TTranscodeType;>;",
            "Lcom/bumptech/glide/f/e;",
            ")",
            "Lcom/bumptech/glide/f/b;"
        }
    .end annotation

    .prologue
    .line 879
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/bumptech/glide/h;->i:Lcom/bumptech/glide/j;

    .line 884
    invoke-virtual {p3}, Lcom/bumptech/glide/f/e;->z()Lcom/bumptech/glide/g;

    move-result-object v5

    .line 885
    invoke-virtual {p3}, Lcom/bumptech/glide/f/e;->A()I

    move-result v6

    .line 886
    invoke-virtual {p3}, Lcom/bumptech/glide/f/e;->C()I

    move-result v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v8, p3

    .line 879
    invoke-direct/range {v0 .. v8}, Lcom/bumptech/glide/h;->a(Lcom/bumptech/glide/f/a/h;Lcom/bumptech/glide/f/d;Lcom/bumptech/glide/f/c;Lcom/bumptech/glide/j;Lcom/bumptech/glide/g;IILcom/bumptech/glide/f/e;)Lcom/bumptech/glide/f/b;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/Object;)Lcom/bumptech/glide/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/bumptech/glide/h",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 359
    iput-object p1, p0, Lcom/bumptech/glide/h;->j:Ljava/lang/Object;

    .line 360
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/h;->p:Z

    .line 361
    return-object p0
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/f/a/h;)Lcom/bumptech/glide/f/a/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/bumptech/glide/f/a/h",
            "<TTranscodeType;>;>(TY;)TY;"
        }
    .end annotation

    .prologue
    .line 604
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/bumptech/glide/h;->a(Lcom/bumptech/glide/f/a/h;Lcom/bumptech/glide/f/d;)Lcom/bumptech/glide/f/a/h;

    move-result-object v0

    return-object v0
.end method

.method a(Lcom/bumptech/glide/f/a/h;Lcom/bumptech/glide/f/d;)Lcom/bumptech/glide/f/a/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/bumptech/glide/f/a/h",
            "<TTranscodeType;>;>(TY;",
            "Lcom/bumptech/glide/f/d",
            "<TTranscodeType;>;)TY;"
        }
    .end annotation

    .prologue
    .line 611
    invoke-virtual {p0}, Lcom/bumptech/glide/h;->a()Lcom/bumptech/glide/f/e;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/h;->a(Lcom/bumptech/glide/f/a/h;Lcom/bumptech/glide/f/d;Lcom/bumptech/glide/f/e;)Lcom/bumptech/glide/f/a/h;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/widget/ImageView;)Lcom/bumptech/glide/f/a/i;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")",
            "Lcom/bumptech/glide/f/a/i",
            "<",
            "Landroid/widget/ImageView;",
            "TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 674
    invoke-static {}, Lcom/bumptech/glide/h/j;->a()V

    .line 675
    invoke-static {p1}, Lcom/bumptech/glide/h/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    iget-object v0, p0, Lcom/bumptech/glide/h;->b:Lcom/bumptech/glide/f/e;

    .line 678
    invoke-virtual {v0}, Lcom/bumptech/glide/f/e;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 679
    invoke-virtual {v0}, Lcom/bumptech/glide/f/e;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 680
    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 684
    sget-object v1, Lcom/bumptech/glide/h$1;->a:[I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 706
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/bumptech/glide/h;->h:Lcom/bumptech/glide/e;

    iget-object v2, p0, Lcom/bumptech/glide/h;->e:Ljava/lang/Class;

    .line 707
    invoke-virtual {v1, p1, v2}, Lcom/bumptech/glide/e;->a(Landroid/widget/ImageView;Ljava/lang/Class;)Lcom/bumptech/glide/f/a/i;

    move-result-object v1

    const/4 v2, 0x0

    .line 706
    invoke-direct {p0, v1, v2, v0}, Lcom/bumptech/glide/h;->a(Lcom/bumptech/glide/f/a/h;Lcom/bumptech/glide/f/d;Lcom/bumptech/glide/f/e;)Lcom/bumptech/glide/f/a/h;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/f/a/i;

    return-object v0

    .line 686
    :pswitch_0
    invoke-virtual {v0}, Lcom/bumptech/glide/f/e;->b()Lcom/bumptech/glide/f/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/f/e;->e()Lcom/bumptech/glide/f/e;

    move-result-object v0

    goto :goto_0

    .line 689
    :pswitch_1
    invoke-virtual {v0}, Lcom/bumptech/glide/f/e;->b()Lcom/bumptech/glide/f/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/f/e;->g()Lcom/bumptech/glide/f/e;

    move-result-object v0

    goto :goto_0

    .line 694
    :pswitch_2
    invoke-virtual {v0}, Lcom/bumptech/glide/f/e;->b()Lcom/bumptech/glide/f/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/f/e;->f()Lcom/bumptech/glide/f/e;

    move-result-object v0

    goto :goto_0

    .line 697
    :pswitch_3
    invoke-virtual {v0}, Lcom/bumptech/glide/f/e;->b()Lcom/bumptech/glide/f/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/f/e;->g()Lcom/bumptech/glide/f/e;

    move-result-object v0

    goto :goto_0

    .line 684
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected a()Lcom/bumptech/glide/f/e;
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/bumptech/glide/h;->f:Lcom/bumptech/glide/f/e;

    iget-object v1, p0, Lcom/bumptech/glide/h;->b:Lcom/bumptech/glide/f/e;

    if-ne v0, v1, :cond_0

    .line 123
    iget-object v0, p0, Lcom/bumptech/glide/h;->b:Lcom/bumptech/glide/f/e;

    invoke-virtual {v0}, Lcom/bumptech/glide/f/e;->b()Lcom/bumptech/glide/f/e;

    move-result-object v0

    .line 122
    :goto_0
    return-object v0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/h;->b:Lcom/bumptech/glide/f/e;

    goto :goto_0
.end method

.method public a(Lcom/bumptech/glide/f/e;)Lcom/bumptech/glide/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/f/e;",
            ")",
            "Lcom/bumptech/glide/h",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 112
    invoke-static {p1}, Lcom/bumptech/glide/h/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-virtual {p0}, Lcom/bumptech/glide/h;->a()Lcom/bumptech/glide/f/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/f/e;->a(Lcom/bumptech/glide/f/e;)Lcom/bumptech/glide/f/e;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/h;->b:Lcom/bumptech/glide/f/e;

    .line 114
    return-object p0
.end method

.method public a(Ljava/lang/Integer;)Lcom/bumptech/glide/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/bumptech/glide/h",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 528
    invoke-direct {p0, p1}, Lcom/bumptech/glide/h;->b(Ljava/lang/Object;)Lcom/bumptech/glide/h;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/h;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/g/a;->a(Landroid/content/Context;)Lcom/bumptech/glide/load/f;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/f/e;->a(Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/f/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/h;->a(Lcom/bumptech/glide/f/e;)Lcom/bumptech/glide/h;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Lcom/bumptech/glide/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/bumptech/glide/h",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 354
    invoke-direct {p0, p1}, Lcom/bumptech/glide/h;->b(Ljava/lang/Object;)Lcom/bumptech/glide/h;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/bumptech/glide/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/bumptech/glide/h",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 440
    invoke-direct {p0, p1}, Lcom/bumptech/glide/h;->b(Ljava/lang/Object;)Lcom/bumptech/glide/h;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/bumptech/glide/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/h",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 586
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/h;

    .line 587
    iget-object v1, v0, Lcom/bumptech/glide/h;->b:Lcom/bumptech/glide/f/e;

    invoke-virtual {v1}, Lcom/bumptech/glide/f/e;->b()Lcom/bumptech/glide/f/e;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/h;->b:Lcom/bumptech/glide/f/e;

    .line 588
    iget-object v1, v0, Lcom/bumptech/glide/h;->i:Lcom/bumptech/glide/j;

    invoke-virtual {v1}, Lcom/bumptech/glide/j;->a()Lcom/bumptech/glide/j;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/h;->i:Lcom/bumptech/glide/j;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 589
    return-object v0

    .line 590
    :catch_0
    move-exception v0

    .line 591
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/bumptech/glide/h;->b()Lcom/bumptech/glide/h;

    move-result-object v0

    return-object v0
.end method
