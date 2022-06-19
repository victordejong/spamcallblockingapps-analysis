.class public final Lkotlin/reflect/jvm/internal/impl/b/a$b;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/b/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/b/a$b$a;,
        Lkotlin/reflect/jvm/internal/impl/b/a$b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/protobuf/h$c<",
        "Lkotlin/reflect/jvm/internal/impl/b/a$b;",
        ">;",
        "Lkotlin/reflect/jvm/internal/impl/b/e;"
    }
.end annotation


# static fields
.field public static a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/protobuf/r<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private static final s:Lkotlin/reflect/jvm/internal/impl/b/a$b;


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$r;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$p;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$c;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$h;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$m;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$q;",
            ">;"
        }
    .end annotation
.end field

.field public m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$f;",
            ">;"
        }
    .end annotation
.end field

.field public n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public o:Lkotlin/reflect/jvm/internal/impl/b/a$s;

.field public p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public q:Lkotlin/reflect/jvm/internal/impl/b/a$v;

.field private final t:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:B

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 8779
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$b$1;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$b$1;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    .line 11491
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$b;-><init>(Z)V

    .line 11492
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->s:Lkotlin/reflect/jvm/internal/impl/b/a$b;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$b;->m()V

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 8524
    invoke-direct/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;-><init>()V

    const/4 v3, -0x1

    .line 9066
    iput v3, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->v:I

    .line 9089
    iput v3, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->w:I

    .line 9287
    iput v3, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->x:I

    .line 9371
    iput-byte v3, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->y:B

    .line 9507
    iput v3, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->z:I

    .line 8525
    invoke-direct/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/b/a$b;->m()V

    .line 8527
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->h()Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;

    move-result-object v3

    const/4 v4, 0x1

    .line 8529
    invoke-static {v3, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(Ljava/io/OutputStream;I)Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    const/16 v8, 0x800

    const/16 v9, 0x400

    const/16 v10, 0x200

    const/16 v13, 0x4000

    const/16 v14, 0x1000

    const/16 v4, 0x10

    const/16 v15, 0x8

    if-nez v6, :cond_23

    .line 8535
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a()I

    move-result v12

    const/16 v16, 0x0

    sparse-switch v12, :sswitch_data_0

    const/4 v11, 0x1

    .line 8541
    invoke-virtual {v1, v0, v5, v2, v12}, Lkotlin/reflect/jvm/internal/impl/b/a$b;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/f;I)Z

    move-result v4

    goto/16 :goto_7

    .line 8717
    :sswitch_0
    iget v12, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->u:I

    and-int/2addr v12, v4

    if-ne v12, v4, :cond_0

    .line 8718
    iget-object v12, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->q:Lkotlin/reflect/jvm/internal/impl/b/a$v;

    .line 34196
    invoke-static {v12}, Lkotlin/reflect/jvm/internal/impl/b/a$v;->a(Lkotlin/reflect/jvm/internal/impl/b/a$v;)Lkotlin/reflect/jvm/internal/impl/b/a$v$a;

    move-result-object v16

    :cond_0
    move-object/from16 v12, v16

    .line 8720
    sget-object v11, Lkotlin/reflect/jvm/internal/impl/b/a$v;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-virtual {v0, v11, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/r;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    move-result-object v11

    check-cast v11, Lkotlin/reflect/jvm/internal/impl/b/a$v;

    iput-object v11, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->q:Lkotlin/reflect/jvm/internal/impl/b/a$v;

    if-eqz v12, :cond_1

    .line 8722
    invoke-virtual {v12, v11}, Lkotlin/reflect/jvm/internal/impl/b/a$v$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$v;)Lkotlin/reflect/jvm/internal/impl/b/a$v$a;

    .line 8723
    invoke-virtual {v12}, Lkotlin/reflect/jvm/internal/impl/b/a$v$a;->f()Lkotlin/reflect/jvm/internal/impl/b/a$v;

    move-result-object v11

    iput-object v11, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->q:Lkotlin/reflect/jvm/internal/impl/b/a$v;

    .line 8725
    :cond_1
    iget v11, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->u:I

    or-int/2addr v11, v4

    iput v11, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->u:I

    goto/16 :goto_4

    .line 8703
    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v11

    .line 8704
    invoke-virtual {v0, v11}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->b(I)I

    move-result v11

    and-int/lit16 v12, v7, 0x4000

    if-eq v12, v13, :cond_2

    .line 8705
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->h()I

    move-result v12

    if-lez v12, :cond_2

    .line 8706
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->p:Ljava/util/List;

    or-int/lit16 v7, v7, 0x4000

    .line 8709
    :cond_2
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->h()I

    move-result v12

    if-lez v12, :cond_3

    .line 8710
    iget-object v12, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->p:Ljava/util/List;

    .line 33348
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v16

    .line 8710
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v4, 0x10

    goto :goto_1

    .line 8712
    :cond_3
    invoke-virtual {v0, v11}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->c(I)V

    goto/16 :goto_8

    :sswitch_2
    and-int/lit16 v4, v7, 0x4000

    if-eq v4, v13, :cond_4

    .line 8696
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->p:Ljava/util/List;

    or-int/lit16 v4, v7, 0x4000

    move v7, v4

    .line 8699
    :cond_4
    iget-object v4, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->p:Ljava/util/List;

    .line 32348
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v11

    .line 8699
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 8683
    :sswitch_3
    iget v4, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->u:I

    and-int/2addr v4, v15

    if-ne v4, v15, :cond_5

    .line 8684
    iget-object v4, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->o:Lkotlin/reflect/jvm/internal/impl/b/a$s;

    .line 32006
    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/b/a$s;->a(Lkotlin/reflect/jvm/internal/impl/b/a$s;)Lkotlin/reflect/jvm/internal/impl/b/a$s$a;

    move-result-object v16

    :cond_5
    move-object/from16 v4, v16

    .line 8686
    sget-object v11, Lkotlin/reflect/jvm/internal/impl/b/a$s;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-virtual {v0, v11, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/r;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    move-result-object v11

    check-cast v11, Lkotlin/reflect/jvm/internal/impl/b/a$s;

    iput-object v11, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->o:Lkotlin/reflect/jvm/internal/impl/b/a$s;

    if-eqz v4, :cond_6

    .line 8688
    invoke-virtual {v4, v11}, Lkotlin/reflect/jvm/internal/impl/b/a$s$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$s;)Lkotlin/reflect/jvm/internal/impl/b/a$s$a;

    .line 8689
    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/b/a$s$a;->f()Lkotlin/reflect/jvm/internal/impl/b/a$s;

    move-result-object v4

    iput-object v4, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->o:Lkotlin/reflect/jvm/internal/impl/b/a$s;

    .line 8691
    :cond_6
    iget v4, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->u:I

    or-int/2addr v4, v15

    iput v4, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->u:I

    goto/16 :goto_4

    .line 8669
    :sswitch_4
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v4

    .line 8670
    invoke-virtual {v0, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->b(I)I

    move-result v4

    and-int/lit16 v11, v7, 0x1000

    if-eq v11, v14, :cond_7

    .line 8671
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->h()I

    move-result v11

    if-lez v11, :cond_7

    .line 8672
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->n:Ljava/util/List;

    or-int/lit16 v7, v7, 0x1000

    .line 8675
    :cond_7
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->h()I

    move-result v11

    if-lez v11, :cond_8

    .line 8676
    iget-object v11, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->n:Ljava/util/List;

    .line 31348
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v12

    .line 8676
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 8678
    :cond_8
    invoke-virtual {v0, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->c(I)V

    goto/16 :goto_8

    :sswitch_5
    and-int/lit16 v4, v7, 0x1000

    if-eq v4, v14, :cond_9

    .line 8662
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->n:Ljava/util/List;

    or-int/lit16 v4, v7, 0x1000

    move v7, v4

    .line 8665
    :cond_9
    iget-object v4, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->n:Ljava/util/List;

    .line 30348
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v11

    .line 8665
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :sswitch_6
    and-int/lit16 v4, v7, 0x800

    if-eq v4, v8, :cond_a

    .line 8654
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->m:Ljava/util/List;

    or-int/lit16 v4, v7, 0x800

    move v7, v4

    .line 8657
    :cond_a
    iget-object v4, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->m:Ljava/util/List;

    sget-object v11, Lkotlin/reflect/jvm/internal/impl/b/a$f;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-virtual {v0, v11, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/r;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :sswitch_7
    and-int/lit16 v4, v7, 0x400

    if-eq v4, v9, :cond_b

    .line 8646
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->l:Ljava/util/List;

    or-int/lit16 v4, v7, 0x400

    move v7, v4

    .line 8649
    :cond_b
    iget-object v4, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->l:Ljava/util/List;

    sget-object v11, Lkotlin/reflect/jvm/internal/impl/b/a$q;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-virtual {v0, v11, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/r;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :sswitch_8
    and-int/lit16 v4, v7, 0x200

    if-eq v4, v10, :cond_c

    .line 8638
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->k:Ljava/util/List;

    or-int/lit16 v4, v7, 0x200

    move v7, v4

    .line 8641
    :cond_c
    iget-object v4, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->k:Ljava/util/List;

    sget-object v11, Lkotlin/reflect/jvm/internal/impl/b/a$m;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-virtual {v0, v11, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/r;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :sswitch_9
    and-int/lit16 v4, v7, 0x100

    const/16 v11, 0x100

    if-eq v4, v11, :cond_d

    .line 8630
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->j:Ljava/util/List;

    or-int/lit16 v4, v7, 0x100

    move v7, v4

    .line 8633
    :cond_d
    iget-object v4, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->j:Ljava/util/List;

    sget-object v11, Lkotlin/reflect/jvm/internal/impl/b/a$h;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-virtual {v0, v11, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/r;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :sswitch_a
    and-int/lit16 v4, v7, 0x80

    const/16 v11, 0x80

    if-eq v4, v11, :cond_e

    .line 8622
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->i:Ljava/util/List;

    or-int/lit16 v4, v7, 0x80

    move v7, v4

    .line 8625
    :cond_e
    iget-object v4, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->i:Ljava/util/List;

    sget-object v11, Lkotlin/reflect/jvm/internal/impl/b/a$c;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-virtual {v0, v11, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/r;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 8608
    :sswitch_b
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v4

    .line 8609
    invoke-virtual {v0, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->b(I)I

    move-result v4

    and-int/lit8 v11, v7, 0x40

    const/16 v12, 0x40

    if-eq v11, v12, :cond_f

    .line 8610
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->h()I

    move-result v11

    if-lez v11, :cond_f

    .line 8611
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->h:Ljava/util/List;

    or-int/lit8 v7, v7, 0x40

    .line 8614
    :cond_f
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->h()I

    move-result v11

    if-lez v11, :cond_10

    .line 8615
    iget-object v11, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->h:Ljava/util/List;

    .line 29348
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v12

    .line 8615
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 8617
    :cond_10
    invoke-virtual {v0, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->c(I)V

    goto/16 :goto_8

    :sswitch_c
    and-int/lit8 v4, v7, 0x40

    const/16 v11, 0x40

    if-eq v4, v11, :cond_11

    .line 8601
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->h:Ljava/util/List;

    or-int/lit8 v4, v7, 0x40

    move v7, v4

    .line 8604
    :cond_11
    iget-object v4, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->h:Ljava/util/List;

    .line 28348
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v11

    .line 8604
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :sswitch_d
    and-int/lit8 v4, v7, 0x10

    const/16 v11, 0x10

    if-eq v4, v11, :cond_12

    .line 8593
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->f:Ljava/util/List;

    or-int/lit8 v4, v7, 0x10

    move v7, v4

    .line 8596
    :cond_12
    iget-object v4, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->f:Ljava/util/List;

    sget-object v11, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-virtual {v0, v11, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/r;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :sswitch_e
    and-int/lit8 v4, v7, 0x8

    if-eq v4, v15, :cond_13

    .line 8585
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->e:Ljava/util/List;

    or-int/lit8 v4, v7, 0x8

    move v7, v4

    .line 8588
    :cond_13
    iget-object v4, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->e:Ljava/util/List;

    sget-object v11, Lkotlin/reflect/jvm/internal/impl/b/a$r;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-virtual {v0, v11, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/r;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 8579
    :sswitch_f
    iget v4, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->u:I

    or-int/lit8 v4, v4, 0x4

    iput v4, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->u:I

    .line 27348
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v4

    .line 8580
    iput v4, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->d:I

    goto :goto_4

    .line 8574
    :sswitch_10
    iget v4, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->u:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->u:I

    .line 26348
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v4

    .line 8575
    iput v4, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->c:I

    :goto_4
    const/4 v11, 0x1

    goto :goto_8

    .line 8561
    :sswitch_11
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v4

    .line 8562
    invoke-virtual {v0, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->b(I)I

    move-result v4

    and-int/lit8 v11, v7, 0x20

    const/16 v12, 0x20

    if-eq v11, v12, :cond_14

    .line 8563
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->h()I

    move-result v11

    if-lez v11, :cond_14

    .line 8564
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->g:Ljava/util/List;

    or-int/lit8 v7, v7, 0x20

    .line 8567
    :cond_14
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->h()I

    move-result v11

    if-lez v11, :cond_15

    .line 8568
    iget-object v11, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->g:Ljava/util/List;

    .line 25348
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v12

    .line 8568
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 8570
    :cond_15
    invoke-virtual {v0, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->c(I)V

    goto :goto_8

    :sswitch_12
    and-int/lit8 v4, v7, 0x20

    const/16 v11, 0x20

    if-eq v4, v11, :cond_16

    .line 8554
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->g:Ljava/util/List;

    or-int/lit8 v4, v7, 0x20

    move v7, v4

    .line 8557
    :cond_16
    iget-object v4, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->g:Ljava/util/List;

    .line 24348
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v11

    .line 8557
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 8548
    :sswitch_13
    iget v4, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->u:I

    const/4 v11, 0x1

    or-int/2addr v4, v11

    iput v4, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->u:I

    .line 23348
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v4

    .line 8549
    iput v4, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->b:I
    :try_end_0
    .catch Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_8

    :sswitch_14
    const/4 v11, 0x1

    :goto_6
    const/4 v4, 0x1

    const/4 v6, 0x1

    goto/16 :goto_0

    :goto_7
    if-nez v4, :cond_17

    goto :goto_6

    :cond_17
    :goto_8
    const/4 v4, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_9

    :catch_0
    move-exception v0

    .line 8733
    :try_start_1
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    .line 36057
    iput-object v1, v2, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 8733
    throw v2

    :catch_1
    move-exception v0

    .line 35057
    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 8731
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_9
    and-int/lit8 v2, v7, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_18

    .line 8737
    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->g:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->g:Ljava/util/List;

    :cond_18
    and-int/lit8 v2, v7, 0x8

    if-ne v2, v15, :cond_19

    .line 8740
    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->e:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->e:Ljava/util/List;

    :cond_19
    and-int/lit8 v2, v7, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_1a

    .line 8743
    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->f:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->f:Ljava/util/List;

    :cond_1a
    and-int/lit8 v2, v7, 0x40

    const/16 v4, 0x40

    if-ne v2, v4, :cond_1b

    .line 8746
    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->h:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->h:Ljava/util/List;

    :cond_1b
    and-int/lit16 v2, v7, 0x80

    const/16 v4, 0x80

    if-ne v2, v4, :cond_1c

    .line 8749
    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->i:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->i:Ljava/util/List;

    :cond_1c
    and-int/lit16 v2, v7, 0x100

    const/16 v4, 0x100

    if-ne v2, v4, :cond_1d

    .line 8752
    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->j:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->j:Ljava/util/List;

    :cond_1d
    and-int/lit16 v2, v7, 0x200

    if-ne v2, v10, :cond_1e

    .line 8755
    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->k:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->k:Ljava/util/List;

    :cond_1e
    and-int/lit16 v2, v7, 0x400

    if-ne v2, v9, :cond_1f

    .line 8758
    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->l:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->l:Ljava/util/List;

    :cond_1f
    and-int/lit16 v2, v7, 0x800

    if-ne v2, v8, :cond_20

    .line 8761
    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->m:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->m:Ljava/util/List;

    :cond_20
    and-int/lit16 v2, v7, 0x1000

    if-ne v2, v14, :cond_21

    .line 8764
    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->n:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->n:Ljava/util/List;

    :cond_21
    and-int/lit16 v2, v7, 0x4000

    if-ne v2, v13, :cond_22

    .line 8767
    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->p:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->p:Ljava/util/List;

    .line 8770
    :cond_22
    :try_start_2
    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 8774
    :catch_2
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object v2

    iput-object v2, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->t:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    goto :goto_a

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object v0

    iput-object v0, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->t:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    throw v2

    .line 8776
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/b/a$b;->w()V

    throw v0

    :cond_23
    and-int/lit8 v0, v7, 0x20

    const/16 v2, 0x20

    if-ne v0, v2, :cond_24

    .line 8737
    iget-object v0, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->g:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->g:Ljava/util/List;

    :cond_24
    and-int/lit8 v0, v7, 0x8

    if-ne v0, v15, :cond_25

    .line 8740
    iget-object v0, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->e:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->e:Ljava/util/List;

    :cond_25
    and-int/lit8 v0, v7, 0x10

    const/16 v2, 0x10

    if-ne v0, v2, :cond_26

    .line 8743
    iget-object v0, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->f:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->f:Ljava/util/List;

    :cond_26
    and-int/lit8 v0, v7, 0x40

    const/16 v2, 0x40

    if-ne v0, v2, :cond_27

    .line 8746
    iget-object v0, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->h:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->h:Ljava/util/List;

    :cond_27
    and-int/lit16 v0, v7, 0x80

    const/16 v2, 0x80

    if-ne v0, v2, :cond_28

    .line 8749
    iget-object v0, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->i:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->i:Ljava/util/List;

    :cond_28
    and-int/lit16 v0, v7, 0x100

    const/16 v2, 0x100

    if-ne v0, v2, :cond_29

    .line 8752
    iget-object v0, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->j:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->j:Ljava/util/List;

    :cond_29
    and-int/lit16 v0, v7, 0x200

    if-ne v0, v10, :cond_2a

    .line 8755
    iget-object v0, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->k:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->k:Ljava/util/List;

    :cond_2a
    and-int/lit16 v0, v7, 0x400

    if-ne v0, v9, :cond_2b

    .line 8758
    iget-object v0, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->l:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->l:Ljava/util/List;

    :cond_2b
    and-int/lit16 v0, v7, 0x800

    if-ne v0, v8, :cond_2c

    .line 8761
    iget-object v0, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->m:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->m:Ljava/util/List;

    :cond_2c
    and-int/lit16 v0, v7, 0x1000

    if-ne v0, v14, :cond_2d

    .line 8764
    iget-object v0, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->n:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->n:Ljava/util/List;

    :cond_2d
    and-int/lit16 v0, v7, 0x4000

    if-ne v0, v13, :cond_2e

    .line 8767
    iget-object v0, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->p:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->p:Ljava/util/List;

    .line 8770
    :cond_2e
    :try_start_3
    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 8774
    :catch_3
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object v0

    iput-object v0, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->t:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    goto :goto_b

    :catchall_2
    move-exception v0

    move-object v2, v0

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object v0

    iput-object v0, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->t:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    throw v2

    .line 8776
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/b/a$b;->w()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_14
        0x8 -> :sswitch_13
        0x10 -> :sswitch_12
        0x12 -> :sswitch_11
        0x18 -> :sswitch_10
        0x20 -> :sswitch_f
        0x2a -> :sswitch_e
        0x32 -> :sswitch_d
        0x38 -> :sswitch_c
        0x3a -> :sswitch_b
        0x42 -> :sswitch_a
        0x4a -> :sswitch_9
        0x52 -> :sswitch_8
        0x5a -> :sswitch_7
        0x6a -> :sswitch_6
        0x80 -> :sswitch_5
        0x82 -> :sswitch_4
        0xf2 -> :sswitch_3
        0xf8 -> :sswitch_2
        0xfa -> :sswitch_1
        0x102 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;Lkotlin/reflect/jvm/internal/impl/b/a$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8499
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/a$b;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)V

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/h$b<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$b;",
            "*>;)V"
        }
    .end annotation

    .line 8506
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;)V

    const/4 v0, -0x1

    .line 9066
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->v:I

    .line 9089
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->w:I

    .line 9287
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->x:I

    .line 9371
    iput-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->y:B

    .line 9507
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->z:I

    .line 23123
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    .line 8507
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->t:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-void
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;Lkotlin/reflect/jvm/internal/impl/b/a$1;)V
    .locals 0

    .line 8499
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$b;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 8509
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;-><init>()V

    const/4 p1, -0x1

    .line 9066
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->v:I

    .line 9089
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->w:I

    .line 9287
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->x:I

    .line 9371
    iput-byte p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->y:B

    .line 9507
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->z:I

    .line 8509
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->t:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-void
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$b;I)I
    .locals 0

    .line 8499
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->b:I

    return p1
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$b;)Ljava/util/List;
    .locals 0

    .line 8499
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->e:Ljava/util/List;

    return-object p0
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$b;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 8499
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->e:Ljava/util/List;

    return-object p1
.end method

.method public static a()Lkotlin/reflect/jvm/internal/impl/b/a$b;
    .locals 1

    .line 8513
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->s:Lkotlin/reflect/jvm/internal/impl/b/a$b;

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/a$b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9654
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-interface {v0, p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->b(Ljava/io/InputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;

    return-object p0
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$b;Lkotlin/reflect/jvm/internal/impl/b/a$s;)Lkotlin/reflect/jvm/internal/impl/b/a$s;
    .locals 0

    .line 8499
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->o:Lkotlin/reflect/jvm/internal/impl/b/a$s;

    return-object p1
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$b;Lkotlin/reflect/jvm/internal/impl/b/a$v;)Lkotlin/reflect/jvm/internal/impl/b/a$v;
    .locals 0

    .line 8499
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->q:Lkotlin/reflect/jvm/internal/impl/b/a$v;

    return-object p1
.end method

.method static synthetic b(Lkotlin/reflect/jvm/internal/impl/b/a$b;I)I
    .locals 0

    .line 8499
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->c:I

    return p1
.end method

.method static synthetic b(Lkotlin/reflect/jvm/internal/impl/b/a$b;)Ljava/util/List;
    .locals 0

    .line 8499
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->f:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lkotlin/reflect/jvm/internal/impl/b/a$b;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 8499
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->f:Ljava/util/List;

    return-object p1
.end method

.method static synthetic c(Lkotlin/reflect/jvm/internal/impl/b/a$b;I)I
    .locals 0

    .line 8499
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->d:I

    return p1
.end method

.method static synthetic c(Lkotlin/reflect/jvm/internal/impl/b/a$b;)Ljava/util/List;
    .locals 0

    .line 8499
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Lkotlin/reflect/jvm/internal/impl/b/a$b;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 8499
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->g:Ljava/util/List;

    return-object p1
.end method

.method static synthetic d(Lkotlin/reflect/jvm/internal/impl/b/a$b;I)I
    .locals 0

    .line 8499
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->u:I

    return p1
.end method

.method static synthetic d(Lkotlin/reflect/jvm/internal/impl/b/a$b;)Ljava/util/List;
    .locals 0

    .line 8499
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->h:Ljava/util/List;

    return-object p0
.end method

.method static synthetic d(Lkotlin/reflect/jvm/internal/impl/b/a$b;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 8499
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->h:Ljava/util/List;

    return-object p1
.end method

.method static synthetic e(Lkotlin/reflect/jvm/internal/impl/b/a$b;)Ljava/util/List;
    .locals 0

    .line 8499
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->i:Ljava/util/List;

    return-object p0
.end method

.method static synthetic e(Lkotlin/reflect/jvm/internal/impl/b/a$b;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 8499
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->i:Ljava/util/List;

    return-object p1
.end method

.method static synthetic f(Lkotlin/reflect/jvm/internal/impl/b/a$b;)Ljava/util/List;
    .locals 0

    .line 8499
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->j:Ljava/util/List;

    return-object p0
.end method

.method static synthetic f(Lkotlin/reflect/jvm/internal/impl/b/a$b;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 8499
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->j:Ljava/util/List;

    return-object p1
.end method

.method static synthetic g(Lkotlin/reflect/jvm/internal/impl/b/a$b;)Ljava/util/List;
    .locals 0

    .line 8499
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->k:Ljava/util/List;

    return-object p0
.end method

.method static synthetic g(Lkotlin/reflect/jvm/internal/impl/b/a$b;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 8499
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->k:Ljava/util/List;

    return-object p1
.end method

.method static synthetic h(Lkotlin/reflect/jvm/internal/impl/b/a$b;)Ljava/util/List;
    .locals 0

    .line 8499
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->l:Ljava/util/List;

    return-object p0
.end method

.method static synthetic h(Lkotlin/reflect/jvm/internal/impl/b/a$b;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 8499
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->l:Ljava/util/List;

    return-object p1
.end method

.method static synthetic i(Lkotlin/reflect/jvm/internal/impl/b/a$b;)Ljava/util/List;
    .locals 0

    .line 8499
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->m:Ljava/util/List;

    return-object p0
.end method

.method static synthetic i(Lkotlin/reflect/jvm/internal/impl/b/a$b;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 8499
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->m:Ljava/util/List;

    return-object p1
.end method

.method static synthetic j(Lkotlin/reflect/jvm/internal/impl/b/a$b;)Ljava/util/List;
    .locals 0

    .line 8499
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->n:Ljava/util/List;

    return-object p0
.end method

.method static synthetic j(Lkotlin/reflect/jvm/internal/impl/b/a$b;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 8499
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->n:Ljava/util/List;

    return-object p1
.end method

.method static synthetic k(Lkotlin/reflect/jvm/internal/impl/b/a$b;)Ljava/util/List;
    .locals 0

    .line 8499
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->p:Ljava/util/List;

    return-object p0
.end method

.method static synthetic k(Lkotlin/reflect/jvm/internal/impl/b/a$b;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 8499
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->p:Ljava/util/List;

    return-object p1
.end method

.method static synthetic l(Lkotlin/reflect/jvm/internal/impl/b/a$b;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;
    .locals 0

    .line 8499
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->t:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-object p0
.end method

.method private m()V
    .locals 1

    const/4 v0, 0x6

    .line 9354
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->b:I

    const/4 v0, 0x0

    .line 9355
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->c:I

    .line 9356
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->d:I

    .line 9357
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->e:Ljava/util/List;

    .line 9358
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->f:Ljava/util/List;

    .line 9359
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->g:Ljava/util/List;

    .line 9360
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->h:Ljava/util/List;

    .line 9361
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->i:Ljava/util/List;

    .line 9362
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->j:Ljava/util/List;

    .line 9363
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->k:Ljava/util/List;

    .line 9364
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->l:Ljava/util/List;

    .line 9365
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->m:Ljava/util/List;

    .line 9366
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->n:Ljava/util/List;

    .line 9367
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$s;->a()Lkotlin/reflect/jvm/internal/impl/b/a$s;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->o:Lkotlin/reflect/jvm/internal/impl/b/a$s;

    .line 9368
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->p:Ljava/util/List;

    .line 9369
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$v;->a()Lkotlin/reflect/jvm/internal/impl/b/a$v;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->q:Lkotlin/reflect/jvm/internal/impl/b/a$v;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9439
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$b;->f()I

    .line 9441
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$b;->y()Lkotlin/reflect/jvm/internal/impl/protobuf/h$c$a;

    move-result-object v0

    .line 9443
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->u:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 9444
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->b:I

    invoke-virtual {p1, v2, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(II)V

    .line 38052
    :cond_0
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->g:Ljava/util/List;

    .line 9446
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/16 v1, 0x12

    .line 9447
    invoke-virtual {p1, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->e(I)V

    .line 9448
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->v:I

    invoke-virtual {p1, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->e(I)V

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 9450
    :goto_0
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 9451
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->g:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9453
    :cond_2
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->u:I

    const/4 v3, 0x2

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_3

    const/4 v2, 0x3

    .line 9454
    iget v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->c:I

    invoke-virtual {p1, v2, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(II)V

    .line 9456
    :cond_3
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->u:I

    const/4 v3, 0x4

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_4

    .line 9457
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->d:I

    invoke-virtual {p1, v3, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(II)V

    :cond_4
    const/4 v2, 0x0

    .line 9459
    :goto_1
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    const/4 v3, 0x5

    .line 9460
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->e:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    invoke-virtual {p1, v3, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    .line 9462
    :goto_2
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    const/4 v3, 0x6

    .line 9463
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->f:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    invoke-virtual {p1, v3, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 38075
    :cond_6
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->h:Ljava/util/List;

    .line 9465
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7

    const/16 v2, 0x3a

    .line 9466
    invoke-virtual {p1, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->e(I)V

    .line 9467
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->w:I

    invoke-virtual {p1, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->e(I)V

    :cond_7
    const/4 v2, 0x0

    .line 9469
    :goto_3
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 9470
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->h:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    const/4 v2, 0x0

    .line 9472
    :goto_4
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x8

    if-ge v2, v3, :cond_9

    .line 9473
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->i:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    invoke-virtual {p1, v4, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_9
    const/4 v2, 0x0

    .line 9475
    :goto_5
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_a

    const/16 v3, 0x9

    .line 9476
    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->j:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    invoke-virtual {p1, v3, v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_a
    const/4 v2, 0x0

    .line 9478
    :goto_6
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_b

    const/16 v3, 0xa

    .line 9479
    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->k:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    invoke-virtual {p1, v3, v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_b
    const/4 v2, 0x0

    .line 9481
    :goto_7
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_c

    const/16 v3, 0xb

    .line 9482
    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->l:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    invoke-virtual {p1, v3, v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_c
    const/4 v2, 0x0

    .line 9484
    :goto_8
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->m:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_d

    const/16 v3, 0xd

    .line 9485
    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->m:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    invoke-virtual {p1, v3, v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 38273
    :cond_d
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->n:Ljava/util/List;

    .line 9487
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_e

    const/16 v2, 0x82

    .line 9488
    invoke-virtual {p1, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->e(I)V

    .line 9489
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->x:I

    invoke-virtual {p1, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->e(I)V

    :cond_e
    const/4 v2, 0x0

    .line 9491
    :goto_9
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->n:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_f

    .line 9492
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->n:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 9494
    :cond_f
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->u:I

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_10

    const/16 v2, 0x1e

    .line 9495
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->o:Lkotlin/reflect/jvm/internal/impl/b/a$s;

    invoke-virtual {p1, v2, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)V

    .line 9497
    :cond_10
    :goto_a
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->p:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_11

    const/16 v2, 0x1f

    .line 9498
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->p:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 9500
    :cond_11
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->u:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_12

    const/16 v1, 0x20

    .line 9501
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->q:Lkotlin/reflect/jvm/internal/impl/b/a$v;

    invoke-virtual {p1, v1, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)V

    :cond_12
    const/16 v1, 0x4a38

    .line 9503
    invoke-virtual {v0, v1, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c$a;->a(ILkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;)V

    .line 9504
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->t:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->d(Lkotlin/reflect/jvm/internal/impl/protobuf/d;)V

    return-void
.end method

.method public final b()Lkotlin/reflect/jvm/internal/impl/protobuf/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/r<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$b;",
            ">;"
        }
    .end annotation

    .line 8791
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    return-object v0
.end method

.method public final c()Z
    .locals 2

    .line 8923
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->u:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .locals 2

    .line 8951
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->u:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 4

    .line 9373
    iget-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->y:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 9377
    :cond_1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$b;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 9378
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->y:B

    return v2

    :cond_2
    const/4 v0, 0x0

    .line 36994
    :goto_0
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 37000
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->e:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/b/a$r;

    .line 9382
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/b/a$r;->e()Z

    move-result v3

    if-nez v3, :cond_3

    .line 9383
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->y:B

    return v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 37029
    :goto_1
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 37035
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->f:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 9388
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->e()Z

    move-result v3

    if-nez v3, :cond_5

    .line 9389
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->y:B

    return v2

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    .line 37110
    :goto_2
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_8

    .line 37116
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->i:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/b/a$c;

    .line 9394
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/b/a$c;->e()Z

    move-result v3

    if-nez v3, :cond_7

    .line 9395
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->y:B

    return v2

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    const/4 v0, 0x0

    .line 37145
    :goto_3
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_a

    .line 37151
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->j:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/b/a$h;

    .line 9400
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/b/a$h;->e()Z

    move-result v3

    if-nez v3, :cond_9

    .line 9401
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->y:B

    return v2

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_a
    const/4 v0, 0x0

    .line 37180
    :goto_4
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_c

    .line 37186
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->k:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/b/a$m;

    .line 9406
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/b/a$m;->e()Z

    move-result v3

    if-nez v3, :cond_b

    .line 9407
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->y:B

    return v2

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_c
    const/4 v0, 0x0

    .line 37215
    :goto_5
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_e

    .line 37221
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->l:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/b/a$q;

    .line 9412
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/b/a$q;->e()Z

    move-result v3

    if-nez v3, :cond_d

    .line 9413
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->y:B

    return v2

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_e
    const/4 v0, 0x0

    .line 37250
    :goto_6
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->m:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_10

    .line 37256
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->m:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/b/a$f;

    .line 9418
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/b/a$f;->e()Z

    move-result v3

    if-nez v3, :cond_f

    .line 9419
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->y:B

    return v2

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 9423
    :cond_10
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$b;->k()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 37301
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->o:Lkotlin/reflect/jvm/internal/impl/b/a$s;

    .line 9424
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$s;->e()Z

    move-result v0

    if-nez v0, :cond_11

    .line 9425
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->y:B

    return v2

    .line 9429
    :cond_11
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$b;->x()Z

    move-result v0

    if-nez v0, :cond_12

    .line 9430
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->y:B

    return v2

    .line 9433
    :cond_12
    iput-byte v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->y:B

    return v1
.end method

.method public final f()I
    .locals 7

    .line 9509
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->z:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 9513
    :cond_0
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->u:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 9514
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->b:I

    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 9519
    :goto_1
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->g:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 9520
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->g:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/2addr v0, v3

    .line 39052
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->g:Ljava/util/List;

    .line 9524
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 9526
    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 9529
    :cond_3
    iput v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->v:I

    .line 9531
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->u:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    const/4 v1, 0x3

    .line 9532
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->c:I

    invoke-static {v1, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9535
    :cond_4
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->u:I

    const/4 v4, 0x4

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_5

    .line 9536
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->d:I

    invoke-static {v4, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    const/4 v1, 0x0

    .line 9539
    :goto_2
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->e:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_6

    const/4 v4, 0x5

    .line 9540
    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->e:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    invoke-static {v4, v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    .line 9543
    :goto_3
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->f:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_7

    const/4 v4, 0x6

    .line 9544
    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->f:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    invoke-static {v4, v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 9549
    :goto_4
    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->h:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_8

    .line 9550
    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->h:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    add-int/2addr v0, v4

    .line 39075
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->h:Ljava/util/List;

    .line 9554
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    add-int/lit8 v0, v0, 0x1

    .line 9556
    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 9559
    :cond_9
    iput v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->w:I

    const/4 v1, 0x0

    .line 9561
    :goto_5
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->i:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0x8

    if-ge v1, v4, :cond_a

    .line 9562
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->i:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    invoke-static {v5, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_a
    const/4 v1, 0x0

    .line 9565
    :goto_6
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->j:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_b

    const/16 v4, 0x9

    .line 9566
    iget-object v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->j:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    invoke-static {v4, v6}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_b
    const/4 v1, 0x0

    .line 9569
    :goto_7
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->k:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_c

    const/16 v4, 0xa

    .line 9570
    iget-object v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->k:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    invoke-static {v4, v6}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_c
    const/4 v1, 0x0

    .line 9573
    :goto_8
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->l:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_d

    const/16 v4, 0xb

    .line 9574
    iget-object v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->l:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    invoke-static {v4, v6}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_d
    const/4 v1, 0x0

    .line 9577
    :goto_9
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->m:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_e

    const/16 v4, 0xd

    .line 9578
    iget-object v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->m:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    invoke-static {v4, v6}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_e
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 9583
    :goto_a
    iget-object v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->n:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_f

    .line 9584
    iget-object v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->n:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(I)I

    move-result v6

    add-int/2addr v4, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_f
    add-int/2addr v0, v4

    .line 39273
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->n:Ljava/util/List;

    .line 9588
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    add-int/lit8 v0, v0, 0x2

    .line 9590
    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 9593
    :cond_10
    iput v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->x:I

    .line 9595
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->u:I

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_11

    const/16 v1, 0x1e

    .line 9596
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->o:Lkotlin/reflect/jvm/internal/impl/b/a$s;

    invoke-static {v1, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_11
    const/4 v1, 0x0

    .line 9601
    :goto_b
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->p:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_12

    .line 9602
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->p:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(I)I

    move-result v4

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_12
    add-int/2addr v0, v1

    .line 39315
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->p:Ljava/util/List;

    .line 9606
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 9608
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->u:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_13

    const/16 v1, 0x20

    .line 9609
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->q:Lkotlin/reflect/jvm/internal/impl/b/a$v;

    invoke-static {v1, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9612
    :cond_13
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$b;->z()I

    move-result v1

    add-int/2addr v0, v1

    .line 9613
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->t:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 9614
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->z:I

    return v0
.end method

.method public final g()Z
    .locals 2

    .line 8966
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->u:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic h()Lkotlin/reflect/jvm/internal/impl/protobuf/p$a;
    .locals 1

    .line 41678
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$b$a;->g()Lkotlin/reflect/jvm/internal/impl/b/a$b$a;

    move-result-object v0

    .line 40681
    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/b/a$b$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$b;)Lkotlin/reflect/jvm/internal/impl/b/a$b$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic i()Lkotlin/reflect/jvm/internal/impl/protobuf/p$a;
    .locals 1

    .line 42678
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$b$a;->g()Lkotlin/reflect/jvm/internal/impl/b/a$b$a;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic j()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 1

    .line 39517
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->s:Lkotlin/reflect/jvm/internal/impl/b/a$b;

    return-object v0
.end method

.method public final k()Z
    .locals 2

    .line 9295
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->u:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final l()Z
    .locals 2

    .line 9344
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->u:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
