.class public final Lkotlin/reflect/jvm/internal/impl/b/a$q;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/b/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "q"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/b/a$q$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/protobuf/h$c<",
        "Lkotlin/reflect/jvm/internal/impl/b/a$q;",
        ">;",
        "Lkotlin/reflect/jvm/internal/impl/b/s;"
    }
.end annotation


# static fields
.field public static a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/protobuf/r<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$q;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:Lkotlin/reflect/jvm/internal/impl/b/a$q;


# instance fields
.field public b:I

.field public c:I

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$r;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lkotlin/reflect/jvm/internal/impl/b/a$p;

.field public f:I

.field public g:Lkotlin/reflect/jvm/internal/impl/b/a$p;

.field public h:I

.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

.field private m:I

.field private n:B

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19195
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$q$1;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$q$1;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    .line 20457
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$q;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$q;-><init>(Z)V

    .line 20458
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->k:Lkotlin/reflect/jvm/internal/impl/b/a$q;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$q;->n()V

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 19062
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;-><init>()V

    const/4 v0, -0x1

    .line 19426
    iput-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->n:B

    .line 19505
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->o:I

    .line 19063
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$q;->n()V

    .line 19065
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->h()Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;

    move-result-object v0

    const/4 v1, 0x1

    .line 19067
    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(Ljava/io/OutputStream;I)Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_0
    :goto_0
    const/16 v5, 0x80

    const/16 v6, 0x100

    const/4 v7, 0x4

    if-nez v3, :cond_d

    .line 19073
    :try_start_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a()I

    move-result v8

    const/4 v9, 0x0

    sparse-switch v8, :sswitch_data_0

    .line 19079
    invoke-virtual {p0, p1, v2, p2, v8}, Lkotlin/reflect/jvm/internal/impl/b/a$q;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/f;I)Z

    move-result v5

    goto/16 :goto_3

    .line 19156
    :sswitch_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v8

    .line 19157
    invoke-virtual {p1, v8}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->b(I)I

    move-result v8

    and-int/lit16 v9, v4, 0x100

    if-eq v9, v6, :cond_1

    .line 19158
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->h()I

    move-result v9

    if-lez v9, :cond_1

    .line 19159
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->j:Ljava/util/List;

    or-int/lit16 v4, v4, 0x100

    .line 19162
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->h()I

    move-result v9

    if-lez v9, :cond_2

    .line 19163
    iget-object v9, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->j:Ljava/util/List;

    .line 26348
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v10

    .line 19163
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 19165
    :cond_2
    invoke-virtual {p1, v8}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->c(I)V

    goto :goto_0

    :sswitch_1
    and-int/lit16 v8, v4, 0x100

    if-eq v8, v6, :cond_3

    .line 19149
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->j:Ljava/util/List;

    or-int/lit16 v4, v4, 0x100

    .line 19152
    :cond_3
    iget-object v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->j:Ljava/util/List;

    .line 25348
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v9

    .line 19152
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_2
    and-int/lit16 v8, v4, 0x80

    if-eq v8, v5, :cond_4

    .line 19141
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->i:Ljava/util/List;

    or-int/lit16 v4, v4, 0x80

    .line 19144
    :cond_4
    iget-object v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->i:Ljava/util/List;

    sget-object v9, Lkotlin/reflect/jvm/internal/impl/b/a$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-virtual {p1, v9, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/r;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 19135
    :sswitch_3
    iget v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->m:I

    or-int/lit8 v8, v8, 0x20

    iput v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->m:I

    .line 24348
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v8

    .line 19136
    iput v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->h:I

    goto/16 :goto_0

    .line 19123
    :sswitch_4
    iget v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->m:I

    const/16 v10, 0x10

    and-int/2addr v8, v10

    if-ne v8, v10, :cond_5

    .line 19124
    iget-object v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->g:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    invoke-virtual {v8}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->v()Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    move-result-object v9

    .line 19126
    :cond_5
    sget-object v8, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-virtual {p1, v8, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/r;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    move-result-object v8

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/b/a$p;

    iput-object v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->g:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    if-eqz v9, :cond_6

    .line 19128
    invoke-virtual {v9, v8}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    .line 19129
    invoke-virtual {v9}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->h()Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object v8

    iput-object v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->g:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 19131
    :cond_6
    iget v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->m:I

    or-int/2addr v8, v10

    iput v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->m:I

    goto/16 :goto_0

    .line 19117
    :sswitch_5
    iget v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->m:I

    or-int/lit8 v8, v8, 0x8

    iput v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->m:I

    .line 23348
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v8

    .line 19118
    iput v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->f:I

    goto/16 :goto_0

    .line 19105
    :sswitch_6
    iget v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->m:I

    and-int/2addr v8, v7

    if-ne v8, v7, :cond_7

    .line 19106
    iget-object v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->e:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    invoke-virtual {v8}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->v()Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    move-result-object v9

    .line 19108
    :cond_7
    sget-object v8, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-virtual {p1, v8, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/r;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    move-result-object v8

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/b/a$p;

    iput-object v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->e:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    if-eqz v9, :cond_8

    .line 19110
    invoke-virtual {v9, v8}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    .line 19111
    invoke-virtual {v9}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->h()Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object v8

    iput-object v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->e:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 19113
    :cond_8
    iget v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->m:I

    or-int/2addr v8, v7

    iput v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->m:I

    goto/16 :goto_0

    :sswitch_7
    and-int/lit8 v8, v4, 0x4

    if-eq v8, v7, :cond_9

    .line 19097
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->d:Ljava/util/List;

    or-int/lit8 v4, v4, 0x4

    .line 19100
    :cond_9
    iget-object v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->d:Ljava/util/List;

    sget-object v9, Lkotlin/reflect/jvm/internal/impl/b/a$r;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-virtual {p1, v9, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/r;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 19091
    :sswitch_8
    iget v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->m:I

    or-int/lit8 v8, v8, 0x2

    iput v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->m:I

    .line 22348
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v8

    .line 19092
    iput v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->c:I

    goto/16 :goto_0

    .line 19086
    :sswitch_9
    iget v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->m:I

    or-int/2addr v8, v1

    iput v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->m:I

    .line 21348
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v8

    .line 19087
    iput v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->b:I
    :try_end_0
    .catch Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_2
    :sswitch_a
    const/4 v3, 0x1

    goto/16 :goto_0

    :goto_3
    if-nez v5, :cond_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 19173
    :try_start_1
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    .line 28057
    iput-object p0, p2, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 19173
    throw p2

    :catch_1
    move-exception p1

    .line 27057
    iput-object p0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 19171
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    and-int/lit8 p2, v4, 0x4

    if-ne p2, v7, :cond_a

    .line 19177
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->d:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->d:Ljava/util/List;

    :cond_a
    and-int/lit16 p2, v4, 0x80

    if-ne p2, v5, :cond_b

    .line 19180
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->i:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->i:Ljava/util/List;

    :cond_b
    and-int/lit16 p2, v4, 0x100

    if-ne p2, v6, :cond_c

    .line 19183
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->j:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->j:Ljava/util/List;

    .line 19186
    :cond_c
    :try_start_2
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 19190
    :catch_2
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->l:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    goto :goto_5

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->l:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    throw p1

    .line 19192
    :goto_5
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$q;->w()V

    throw p1

    :cond_d
    and-int/lit8 p1, v4, 0x4

    if-ne p1, v7, :cond_e

    .line 19177
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->d:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->d:Ljava/util/List;

    :cond_e
    and-int/lit16 p1, v4, 0x80

    if-ne p1, v5, :cond_f

    .line 19180
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->i:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->i:Ljava/util/List;

    :cond_f
    and-int/lit16 p1, v4, 0x100

    if-ne p1, v6, :cond_10

    .line 19183
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->j:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->j:Ljava/util/List;

    .line 19186
    :cond_10
    :try_start_3
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 19190
    :catch_3
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->l:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    goto :goto_6

    :catchall_2
    move-exception p1

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->l:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    throw p1

    .line 19192
    :goto_6
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$q;->w()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0x8 -> :sswitch_9
        0x10 -> :sswitch_8
        0x1a -> :sswitch_7
        0x22 -> :sswitch_6
        0x28 -> :sswitch_5
        0x32 -> :sswitch_4
        0x38 -> :sswitch_3
        0x42 -> :sswitch_2
        0xf8 -> :sswitch_1
        0xfa -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;Lkotlin/reflect/jvm/internal/impl/b/a$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 19037
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/a$q;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)V

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/h$b<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$q;",
            "*>;)V"
        }
    .end annotation

    .line 19044
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;)V

    const/4 v0, -0x1

    .line 19426
    iput-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->n:B

    .line 19505
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->o:I

    .line 21123
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    .line 19045
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->l:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-void
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;Lkotlin/reflect/jvm/internal/impl/b/a$1;)V
    .locals 0

    .line 19037
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$q;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 19047
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;-><init>()V

    const/4 p1, -0x1

    .line 19426
    iput-byte p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->n:B

    .line 19505
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->o:I

    .line 19047
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->l:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-void
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$q;I)I
    .locals 0

    .line 19037
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->b:I

    return p1
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$q;)Ljava/util/List;
    .locals 0

    .line 19037
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->d:Ljava/util/List;

    return-object p0
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$q;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 19037
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->d:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$q;Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p;
    .locals 0

    .line 19037
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->e:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    return-object p1
.end method

.method public static a()Lkotlin/reflect/jvm/internal/impl/b/a$q;
    .locals 1

    .line 19051
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->k:Lkotlin/reflect/jvm/internal/impl/b/a$q;

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/a$q;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19604
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-interface {v0, p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->a(Ljava/io/InputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;

    return-object p0
.end method

.method static synthetic b(Lkotlin/reflect/jvm/internal/impl/b/a$q;I)I
    .locals 0

    .line 19037
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->c:I

    return p1
.end method

.method static synthetic b(Lkotlin/reflect/jvm/internal/impl/b/a$q;)Ljava/util/List;
    .locals 0

    .line 19037
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->i:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lkotlin/reflect/jvm/internal/impl/b/a$q;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 19037
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->i:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lkotlin/reflect/jvm/internal/impl/b/a$q;Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p;
    .locals 0

    .line 19037
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->g:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    return-object p1
.end method

.method static synthetic c(Lkotlin/reflect/jvm/internal/impl/b/a$q;I)I
    .locals 0

    .line 19037
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->f:I

    return p1
.end method

.method static synthetic c(Lkotlin/reflect/jvm/internal/impl/b/a$q;)Ljava/util/List;
    .locals 0

    .line 19037
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->j:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Lkotlin/reflect/jvm/internal/impl/b/a$q;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 19037
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->j:Ljava/util/List;

    return-object p1
.end method

.method static synthetic d(Lkotlin/reflect/jvm/internal/impl/b/a$q;I)I
    .locals 0

    .line 19037
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->h:I

    return p1
.end method

.method static synthetic d(Lkotlin/reflect/jvm/internal/impl/b/a$q;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;
    .locals 0

    .line 19037
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->l:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-object p0
.end method

.method static synthetic e(Lkotlin/reflect/jvm/internal/impl/b/a$q;I)I
    .locals 0

    .line 19037
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->m:I

    return p1
.end method

.method private n()V
    .locals 2

    const/4 v0, 0x6

    .line 19416
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->b:I

    const/4 v0, 0x0

    .line 19417
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->c:I

    .line 19418
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->d:Ljava/util/List;

    .line 19419
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a()Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->e:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 19420
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->f:I

    .line 19421
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a()Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->g:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 19422
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->h:I

    .line 19423
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->i:Ljava/util/List;

    .line 19424
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->j:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19470
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$q;->f()I

    .line 19472
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$q;->y()Lkotlin/reflect/jvm/internal/impl/protobuf/h$c$a;

    move-result-object v0

    .line 19474
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->m:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 19475
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->b:I

    invoke-virtual {p1, v2, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(II)V

    .line 19477
    :cond_0
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->m:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 19478
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->c:I

    invoke-virtual {p1, v2, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(II)V

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 19480
    :goto_0
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    const/4 v3, 0x3

    .line 19481
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->d:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    invoke-virtual {p1, v3, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 19483
    :cond_2
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->m:I

    const/4 v3, 0x4

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_3

    .line 19484
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->e:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    invoke-virtual {p1, v3, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)V

    .line 19486
    :cond_3
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->m:I

    const/16 v3, 0x8

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_4

    const/4 v2, 0x5

    .line 19487
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->f:I

    invoke-virtual {p1, v2, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(II)V

    .line 19489
    :cond_4
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->m:I

    const/16 v4, 0x10

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_5

    const/4 v2, 0x6

    .line 19490
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->g:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    invoke-virtual {p1, v2, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)V

    .line 19492
    :cond_5
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->m:I

    const/16 v4, 0x20

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_6

    const/4 v2, 0x7

    .line 19493
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->h:I

    invoke-virtual {p1, v2, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(II)V

    :cond_6
    const/4 v2, 0x0

    .line 19495
    :goto_1
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->i:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_7

    .line 19496
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->i:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    invoke-virtual {p1, v3, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 19498
    :cond_7
    :goto_2
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    const/16 v2, 0x1f

    .line 19499
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->j:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    const/16 v1, 0xc8

    .line 19501
    invoke-virtual {v0, v1, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c$a;->a(ILkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;)V

    .line 19502
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->l:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->d(Lkotlin/reflect/jvm/internal/impl/protobuf/d;)V

    return-void
.end method

.method public final b()Lkotlin/reflect/jvm/internal/impl/protobuf/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/r<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$q;",
            ">;"
        }
    .end annotation

    .line 19207
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    return-object v0
.end method

.method public final c()Z
    .locals 2

    .line 19222
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->m:I

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

    .line 19242
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->m:I

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

    .line 19428
    iget-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->n:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 19432
    :cond_1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$q;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 19433
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->n:B

    return v2

    :cond_2
    const/4 v0, 0x0

    .line 28270
    :goto_0
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 28276
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->d:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/b/a$r;

    .line 19437
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/b/a$r;->e()Z

    move-result v3

    if-nez v3, :cond_3

    .line 19438
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->n:B

    return v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 19442
    :cond_4
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$q;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 28298
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->e:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 19443
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->e()Z

    move-result v0

    if-nez v0, :cond_5

    .line 19444
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->n:B

    return v2

    .line 19448
    :cond_5
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$q;->l()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 28328
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->g:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 19449
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->e()Z

    move-result v0

    if-nez v0, :cond_6

    .line 19450
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->n:B

    return v2

    :cond_6
    const/4 v0, 0x0

    .line 28365
    :goto_1
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_8

    .line 28371
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->i:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/b/a$a;

    .line 19455
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/b/a$a;->e()Z

    move-result v3

    if-nez v3, :cond_7

    .line 19456
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->n:B

    return v2

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 19460
    :cond_8
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$q;->x()Z

    move-result v0

    if-nez v0, :cond_9

    .line 19461
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->n:B

    return v2

    .line 19464
    :cond_9
    iput-byte v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->n:B

    return v1
.end method

.method public final f()I
    .locals 6

    .line 19507
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->o:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 19511
    :cond_0
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->m:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 19512
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->b:I

    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 19515
    :goto_0
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->m:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_2

    .line 19516
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->c:I

    invoke-static {v3, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    const/4 v1, 0x0

    .line 19519
    :goto_1
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    const/4 v4, 0x3

    .line 19520
    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->d:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    invoke-static {v4, v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 19523
    :cond_3
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->m:I

    const/4 v4, 0x4

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_4

    .line 19524
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->e:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    invoke-static {v4, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)I

    move-result v1

    add-int/2addr v0, v1

    .line 19527
    :cond_4
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->m:I

    const/16 v4, 0x8

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_5

    const/4 v1, 0x5

    .line 19528
    iget v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->f:I

    invoke-static {v1, v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 19531
    :cond_5
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->m:I

    const/16 v5, 0x10

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_6

    const/4 v1, 0x6

    .line 19532
    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->g:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    invoke-static {v1, v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)I

    move-result v1

    add-int/2addr v0, v1

    .line 19535
    :cond_6
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->m:I

    const/16 v5, 0x20

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_7

    const/4 v1, 0x7

    .line 19536
    iget v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->h:I

    invoke-static {v1, v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    const/4 v1, 0x0

    .line 19539
    :goto_2
    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->i:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_8

    .line 19540
    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->i:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    invoke-static {v4, v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)I

    move-result v5

    add-int/2addr v0, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    const/4 v1, 0x0

    .line 19545
    :goto_3
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->j:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_9

    .line 19546
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->j:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(I)I

    move-result v4

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    add-int/2addr v0, v1

    .line 28392
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->j:Ljava/util/List;

    .line 19550
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 19552
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$q;->z()I

    move-result v1

    add-int/2addr v0, v1

    .line 19553
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->l:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 19554
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->o:I

    return v0
.end method

.method public final g()Z
    .locals 2

    .line 19292
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->m:I

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

    .line 31618
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->g()Lkotlin/reflect/jvm/internal/impl/b/a$q$a;

    move-result-object v0

    .line 30621
    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$q;)Lkotlin/reflect/jvm/internal/impl/b/a$q$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic i()Lkotlin/reflect/jvm/internal/impl/protobuf/p$a;
    .locals 1

    .line 32618
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->g()Lkotlin/reflect/jvm/internal/impl/b/a$q$a;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic j()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 1

    .line 29055
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->k:Lkotlin/reflect/jvm/internal/impl/b/a$q;

    return-object v0
.end method

.method public final k()Z
    .locals 2

    .line 19307
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->m:I

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

    .line 19322
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->m:I

    const/16 v1, 0x10

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

    .line 19337
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q;->m:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
