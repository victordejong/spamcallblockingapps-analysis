.class public final Lkotlin/reflect/jvm/internal/impl/b/a$p;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/b/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "p"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/b/a$p$b;,
        Lkotlin/reflect/jvm/internal/impl/b/a$p$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/protobuf/h$c<",
        "Lkotlin/reflect/jvm/internal/impl/b/a$p;",
        ">;",
        "Lkotlin/reflect/jvm/internal/impl/b/t;"
    }
.end annotation


# static fields
.field public static a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/protobuf/r<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$p;",
            ">;"
        }
    .end annotation
.end field

.field private static final p:Lkotlin/reflect/jvm/internal/impl/b/a$p;


# instance fields
.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$p$a;",
            ">;"
        }
    .end annotation
.end field

.field public c:Z

.field public d:I

.field public e:Lkotlin/reflect/jvm/internal/impl/b/a$p;

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:Lkotlin/reflect/jvm/internal/impl/b/a$p;

.field public l:I

.field public m:Lkotlin/reflect/jvm/internal/impl/b/a$p;

.field public n:I

.field public o:I

.field private final q:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

.field private s:I

.field private t:B

.field private u:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 4971
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$p$1;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$p$1;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    .line 7172
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$p;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$p;-><init>(Z)V

    .line 7173
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->p:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->A()V

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4830
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;-><init>()V

    const/4 v0, -0x1

    .line 5965
    iput-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->t:B

    .line 6055
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->u:I

    .line 4831
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->A()V

    .line 4833
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->h()Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;

    move-result-object v0

    const/4 v1, 0x1

    .line 4835
    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(Ljava/io/OutputStream;I)Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_0
    :goto_0
    if-nez v3, :cond_9

    .line 4841
    :try_start_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a()I

    move-result v5

    const/4 v6, 0x0

    sparse-switch v5, :sswitch_data_0

    .line 4847
    invoke-virtual {p0, p1, v2, p2, v5}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/f;I)Z

    move-result v5

    goto/16 :goto_2

    .line 4946
    :sswitch_0
    iget v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->s:I

    or-int/lit16 v5, v5, 0x800

    iput v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->s:I

    .line 22348
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v5

    .line 4947
    iput v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->n:I

    goto :goto_0

    .line 4934
    :sswitch_1
    iget v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->s:I

    const/16 v7, 0x400

    and-int/2addr v5, v7

    if-ne v5, v7, :cond_1

    .line 4935
    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->m:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 22183
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->i()Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    move-result-object v6

    .line 21186
    invoke-virtual {v6, v5}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    move-result-object v6

    .line 4937
    :cond_1
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-virtual {p1, v5, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/r;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    move-result-object v5

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/b/a$p;

    iput-object v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->m:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    if-eqz v6, :cond_2

    .line 4939
    invoke-virtual {v6, v5}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    .line 4940
    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->h()Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object v5

    iput-object v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->m:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 4942
    :cond_2
    iget v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->s:I

    or-int/2addr v5, v7

    iput v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->s:I

    goto :goto_0

    .line 4928
    :sswitch_2
    iget v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->s:I

    or-int/lit16 v5, v5, 0x80

    iput v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->s:I

    .line 19348
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v5

    .line 4929
    iput v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->j:I

    goto :goto_0

    .line 4923
    :sswitch_3
    iget v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->s:I

    or-int/lit16 v5, v5, 0x200

    iput v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->s:I

    .line 18348
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v5

    .line 4924
    iput v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->l:I

    goto :goto_0

    .line 4911
    :sswitch_4
    iget v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->s:I

    const/16 v7, 0x100

    and-int/2addr v5, v7

    if-ne v5, v7, :cond_3

    .line 4912
    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->k:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 18183
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->i()Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    move-result-object v6

    .line 17186
    invoke-virtual {v6, v5}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    move-result-object v6

    .line 4914
    :cond_3
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-virtual {p1, v5, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/r;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    move-result-object v5

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/b/a$p;

    iput-object v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->k:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    if-eqz v6, :cond_4

    .line 4916
    invoke-virtual {v6, v5}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    .line 4917
    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->h()Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object v5

    iput-object v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->k:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 4919
    :cond_4
    iget v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->s:I

    or-int/2addr v5, v7

    iput v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->s:I

    goto/16 :goto_0

    .line 4905
    :sswitch_5
    iget v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->s:I

    or-int/lit8 v5, v5, 0x40

    iput v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->s:I

    .line 15348
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v5

    .line 4906
    iput v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->i:I

    goto/16 :goto_0

    .line 4900
    :sswitch_6
    iget v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->s:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->s:I

    .line 14348
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v5

    .line 4901
    iput v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->f:I

    goto/16 :goto_0

    .line 4895
    :sswitch_7
    iget v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->s:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->s:I

    .line 13348
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v5

    .line 4896
    iput v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->h:I

    goto/16 :goto_0

    .line 4890
    :sswitch_8
    iget v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->s:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->s:I

    .line 12348
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v5

    .line 4891
    iput v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->g:I

    goto/16 :goto_0

    .line 4878
    :sswitch_9
    iget v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->s:I

    const/4 v7, 0x4

    and-int/2addr v5, v7

    if-ne v5, v7, :cond_5

    .line 4879
    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->e:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 12183
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->i()Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    move-result-object v6

    .line 11186
    invoke-virtual {v6, v5}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    move-result-object v6

    .line 4881
    :cond_5
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-virtual {p1, v5, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/r;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    move-result-object v5

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/b/a$p;

    iput-object v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->e:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    if-eqz v6, :cond_6

    .line 4883
    invoke-virtual {v6, v5}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    .line 4884
    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->h()Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object v5

    iput-object v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->e:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 4886
    :cond_6
    iget v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->s:I

    or-int/2addr v5, v7

    iput v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->s:I

    goto/16 :goto_0

    .line 4872
    :sswitch_a
    iget v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->s:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->s:I

    .line 9348
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v5

    .line 4873
    iput v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->d:I

    goto/16 :goto_0

    .line 4867
    :sswitch_b
    iget v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->s:I

    or-int/2addr v5, v1

    iput v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->s:I

    .line 4868
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->b()Z

    move-result v5

    iput-boolean v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->c:Z

    goto/16 :goto_0

    :sswitch_c
    and-int/lit8 v5, v4, 0x1

    if-eq v5, v1, :cond_7

    .line 4860
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->b:Ljava/util/List;

    or-int/lit8 v4, v4, 0x1

    .line 4863
    :cond_7
    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->b:Ljava/util/List;

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-virtual {p1, v6, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/r;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 4854
    :sswitch_d
    iget v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->s:I

    or-int/lit16 v5, v5, 0x1000

    iput v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->s:I

    .line 8348
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v5

    .line 4855
    iput v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->o:I
    :try_end_0
    .catch Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_e
    const/4 v3, 0x1

    goto/16 :goto_0

    :goto_2
    if-nez v5, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 4955
    :try_start_1
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    .line 24057
    iput-object p0, p2, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 4955
    throw p2

    :catch_1
    move-exception p1

    .line 23057
    iput-object p0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 4953
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 p2, v4, 0x1

    if-ne p2, v1, :cond_8

    .line 4959
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->b:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->b:Ljava/util/List;

    .line 4962
    :cond_8
    :try_start_2
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4966
    :catch_2
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->q:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    goto :goto_4

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->q:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    throw p1

    .line 4968
    :goto_4
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->w()V

    throw p1

    :cond_9
    and-int/lit8 p1, v4, 0x1

    if-ne p1, v1, :cond_a

    .line 4959
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->b:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->b:Ljava/util/List;

    .line 4962
    :cond_a
    :try_start_3
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 4966
    :catch_3
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->q:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    goto :goto_5

    :catchall_2
    move-exception p1

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->q:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    throw p1

    .line 4968
    :goto_5
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->w()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_e
        0x8 -> :sswitch_d
        0x12 -> :sswitch_c
        0x18 -> :sswitch_b
        0x20 -> :sswitch_a
        0x2a -> :sswitch_9
        0x30 -> :sswitch_8
        0x38 -> :sswitch_7
        0x40 -> :sswitch_6
        0x48 -> :sswitch_5
        0x52 -> :sswitch_4
        0x58 -> :sswitch_3
        0x60 -> :sswitch_2
        0x6a -> :sswitch_1
        0x70 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;Lkotlin/reflect/jvm/internal/impl/b/a$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4805
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/a$p;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)V

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/h$b<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$p;",
            "*>;)V"
        }
    .end annotation

    .line 4812
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;)V

    const/4 v0, -0x1

    .line 5965
    iput-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->t:B

    .line 6055
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->u:I

    .line 8123
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    .line 4813
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->q:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-void
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;Lkotlin/reflect/jvm/internal/impl/b/a$1;)V
    .locals 0

    .line 4805
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$p;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 4815
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;-><init>()V

    const/4 p1, -0x1

    .line 5965
    iput-byte p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->t:B

    .line 6055
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->u:I

    .line 4815
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->q:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-void
.end method

.method private A()V
    .locals 2

    .line 5950
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->b:Ljava/util/List;

    const/4 v0, 0x0

    .line 5951
    iput-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->c:Z

    .line 5952
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->d:I

    .line 24819
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/b/a$p;->p:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 5953
    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->e:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 5954
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->f:I

    .line 5955
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->g:I

    .line 5956
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->h:I

    .line 5957
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->i:I

    .line 5958
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->j:I

    .line 5959
    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->k:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 5960
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->l:I

    .line 5961
    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->m:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 5962
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->n:I

    .line 5963
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->o:I

    return-void
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$p;I)I
    .locals 0

    .line 4805
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->d:I

    return p1
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$p;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 4805
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->b:Ljava/util/List;

    return-object p1
.end method

.method public static a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;
    .locals 1

    .line 29183
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->i()Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    move-result-object v0

    .line 6186
    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    move-result-object p0

    return-object p0
.end method

.method public static a()Lkotlin/reflect/jvm/internal/impl/b/a$p;
    .locals 1

    .line 4819
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->p:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    return-object v0
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$p;Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p;
    .locals 0

    .line 4805
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->e:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    return-object p1
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$p;Z)Z
    .locals 0

    .line 4805
    iput-boolean p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->c:Z

    return p1
.end method

.method static synthetic b(Lkotlin/reflect/jvm/internal/impl/b/a$p;I)I
    .locals 0

    .line 4805
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->f:I

    return p1
.end method

.method static synthetic b(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Ljava/util/List;
    .locals 0

    .line 4805
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->b:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lkotlin/reflect/jvm/internal/impl/b/a$p;Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p;
    .locals 0

    .line 4805
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->k:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    return-object p1
.end method

.method static synthetic c(Lkotlin/reflect/jvm/internal/impl/b/a$p;I)I
    .locals 0

    .line 4805
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->g:I

    return p1
.end method

.method static synthetic c(Lkotlin/reflect/jvm/internal/impl/b/a$p;Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p;
    .locals 0

    .line 4805
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->m:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    return-object p1
.end method

.method static synthetic c(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;
    .locals 0

    .line 4805
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->q:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-object p0
.end method

.method static synthetic d(Lkotlin/reflect/jvm/internal/impl/b/a$p;I)I
    .locals 0

    .line 4805
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->h:I

    return p1
.end method

.method static synthetic e(Lkotlin/reflect/jvm/internal/impl/b/a$p;I)I
    .locals 0

    .line 4805
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->i:I

    return p1
.end method

.method static synthetic f(Lkotlin/reflect/jvm/internal/impl/b/a$p;I)I
    .locals 0

    .line 4805
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->j:I

    return p1
.end method

.method static synthetic g(Lkotlin/reflect/jvm/internal/impl/b/a$p;I)I
    .locals 0

    .line 4805
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->l:I

    return p1
.end method

.method static synthetic h(Lkotlin/reflect/jvm/internal/impl/b/a$p;I)I
    .locals 0

    .line 4805
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->n:I

    return p1
.end method

.method static synthetic i(Lkotlin/reflect/jvm/internal/impl/b/a$p;I)I
    .locals 0

    .line 4805
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->o:I

    return p1
.end method

.method static synthetic j(Lkotlin/reflect/jvm/internal/impl/b/a$p;I)I
    .locals 0

    .line 4805
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->s:I

    return p1
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6005
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->f()I

    .line 6007
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->y()Lkotlin/reflect/jvm/internal/impl/protobuf/h$c$a;

    move-result-object v0

    .line 6009
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->s:I

    const/16 v2, 0x1000

    and-int/2addr v1, v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    .line 6010
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->o:I

    invoke-virtual {p1, v3, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(II)V

    :cond_0
    const/4 v1, 0x0

    .line 6012
    :goto_0
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x2

    if-ge v1, v2, :cond_1

    .line 6013
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    invoke-virtual {p1, v4, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6015
    :cond_1
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->s:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_2

    .line 6016
    iget-boolean v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->c:Z

    invoke-virtual {p1, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(Z)V

    .line 6018
    :cond_2
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->s:I

    and-int/2addr v1, v4

    const/4 v2, 0x4

    if-ne v1, v4, :cond_3

    .line 6019
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->d:I

    invoke-virtual {p1, v2, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(II)V

    .line 6021
    :cond_3
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->s:I

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    const/4 v1, 0x5

    .line 6022
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->e:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    invoke-virtual {p1, v1, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)V

    .line 6024
    :cond_4
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->s:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x6

    .line 6025
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->g:I

    invoke-virtual {p1, v1, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(II)V

    .line 6027
    :cond_5
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->s:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    const/4 v1, 0x7

    .line 6028
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->h:I

    invoke-virtual {p1, v1, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(II)V

    .line 6030
    :cond_6
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->s:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_7

    .line 6031
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->f:I

    invoke-virtual {p1, v2, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(II)V

    .line 6033
    :cond_7
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->s:I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_8

    const/16 v1, 0x9

    .line 6034
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->i:I

    invoke-virtual {p1, v1, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(II)V

    .line 6036
    :cond_8
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->s:I

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_9

    const/16 v1, 0xa

    .line 6037
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->k:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    invoke-virtual {p1, v1, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)V

    .line 6039
    :cond_9
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->s:I

    const/16 v2, 0x200

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_a

    const/16 v1, 0xb

    .line 6040
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->l:I

    invoke-virtual {p1, v1, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(II)V

    .line 6042
    :cond_a
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->s:I

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_b

    const/16 v1, 0xc

    .line 6043
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->j:I

    invoke-virtual {p1, v1, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(II)V

    .line 6045
    :cond_b
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->s:I

    const/16 v2, 0x400

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_c

    const/16 v1, 0xd

    .line 6046
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->m:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    invoke-virtual {p1, v1, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)V

    .line 6048
    :cond_c
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->s:I

    const/16 v2, 0x800

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_d

    const/16 v1, 0xe

    .line 6049
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->n:I

    invoke-virtual {p1, v1, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(II)V

    :cond_d
    const/16 v1, 0xc8

    .line 6051
    invoke-virtual {v0, v1, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c$a;->a(ILkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;)V

    .line 6052
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->q:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->d(Lkotlin/reflect/jvm/internal/impl/protobuf/d;)V

    return-void
.end method

.method public final b()Lkotlin/reflect/jvm/internal/impl/protobuf/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/r<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$p;",
            ">;"
        }
    .end annotation

    .line 4983
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    return-object v0
.end method

.method public final c()I
    .locals 1

    .line 5686
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final d()Z
    .locals 2

    .line 5708
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->s:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 4

    .line 5967
    iget-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->t:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    .line 5971
    :goto_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->c()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 27692
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->b:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;

    .line 5972
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->e()Z

    move-result v3

    if-nez v3, :cond_2

    .line 5973
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->t:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5977
    :cond_3
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->k()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 27754
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->e:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 5978
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->e()Z

    move-result v0

    if-nez v0, :cond_4

    .line 5979
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->t:B

    return v2

    .line 5983
    :cond_4
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->q()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 27878
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->k:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 5984
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->e()Z

    move-result v0

    if-nez v0, :cond_5

    .line 5985
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->t:B

    return v2

    .line 5989
    :cond_5
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->s()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 27908
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->m:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 5990
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->e()Z

    move-result v0

    if-nez v0, :cond_6

    .line 5991
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->t:B

    return v2

    .line 5995
    :cond_6
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->x()Z

    move-result v0

    if-nez v0, :cond_7

    .line 5996
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->t:B

    return v2

    .line 5999
    :cond_7
    iput-byte v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->t:B

    return v1
.end method

.method public final f()I
    .locals 5

    .line 6057
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->u:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 6061
    :cond_0
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->s:I

    const/16 v1, 0x1000

    and-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 6062
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->o:I

    invoke-static {v3, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 6065
    :goto_0
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x2

    if-ge v2, v1, :cond_2

    .line 6066
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->b:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    invoke-static {v4, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6069
    :cond_2
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->s:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    const/4 v1, 0x3

    .line 28587
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->d(I)I

    move-result v1

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    .line 6073
    :cond_3
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->s:I

    and-int/2addr v1, v4

    const/4 v2, 0x4

    if-ne v1, v4, :cond_4

    .line 6074
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->d:I

    invoke-static {v2, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6077
    :cond_4
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->s:I

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    .line 6078
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->e:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    invoke-static {v1, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6081
    :cond_5
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->s:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    const/4 v1, 0x6

    .line 6082
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->g:I

    invoke-static {v1, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6085
    :cond_6
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->s:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_7

    const/4 v1, 0x7

    .line 6086
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->h:I

    invoke-static {v1, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6089
    :cond_7
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->s:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_8

    .line 6090
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->f:I

    invoke-static {v2, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6093
    :cond_8
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->s:I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_9

    const/16 v1, 0x9

    .line 6094
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->i:I

    invoke-static {v1, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6097
    :cond_9
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->s:I

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_a

    const/16 v1, 0xa

    .line 6098
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->k:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    invoke-static {v1, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6101
    :cond_a
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->s:I

    const/16 v2, 0x200

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_b

    const/16 v1, 0xb

    .line 6102
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->l:I

    invoke-static {v1, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6105
    :cond_b
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->s:I

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_c

    const/16 v1, 0xc

    .line 6106
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->j:I

    invoke-static {v1, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6109
    :cond_c
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->s:I

    const/16 v2, 0x400

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_d

    const/16 v1, 0xd

    .line 6110
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->m:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    invoke-static {v1, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6113
    :cond_d
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->s:I

    const/16 v2, 0x800

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_e

    const/16 v1, 0xe

    .line 6114
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->n:I

    invoke-static {v1, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6117
    :cond_e
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->z()I

    move-result v1

    add-int/2addr v0, v1

    .line 6118
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->q:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 6119
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->u:I

    return v0
.end method

.method public final g()Z
    .locals 2

    .line 5728
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->s:I

    const/4 v1, 0x2

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

    .line 4805
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->v()Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic i()Lkotlin/reflect/jvm/internal/impl/protobuf/p$a;
    .locals 1

    .line 32183
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->i()Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic j()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 1

    .line 30823
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->p:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    return-object v0
.end method

.method public final k()Z
    .locals 2

    .line 5748
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->s:I

    const/4 v1, 0x4

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

    .line 5763
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->s:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final m()Z
    .locals 2

    .line 5778
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->s:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final n()Z
    .locals 2

    .line 5797
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->s:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final o()Z
    .locals 2

    .line 5820
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->s:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final p()Z
    .locals 2

    .line 5844
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->s:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final q()Z
    .locals 2

    .line 5868
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->s:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final r()Z
    .locals 2

    .line 5887
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->s:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final s()Z
    .locals 2

    .line 5902
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->s:I

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final t()Z
    .locals 2

    .line 5917
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->s:I

    const/16 v1, 0x800

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final u()Z
    .locals 2

    .line 5936
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p;->s:I

    const/16 v1, 0x1000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final v()Lkotlin/reflect/jvm/internal/impl/b/a$p$b;
    .locals 1

    .line 30183
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->i()Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    move-result-object v0

    .line 29186
    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    move-result-object v0

    return-object v0
.end method
