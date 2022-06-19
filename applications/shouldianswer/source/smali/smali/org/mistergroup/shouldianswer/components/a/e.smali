.class public final Lorg/mistergroup/shouldianswer/components/a/e;
.super Landroidx/recyclerview/widget/RecyclerView$a;
.source "ContactsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mistergroup/shouldianswer/components/a/e$a;,
        Lorg/mistergroup/shouldianswer/components/a/e$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$a<",
        "Landroidx/recyclerview/widget/RecyclerView$w;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lorg/mistergroup/shouldianswer/components/a/e$a;

.field private b:Z

.field private c:Lkotlin/e/a/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/e/a/m<",
            "-",
            "Landroid/view/ContextMenu;",
            "-",
            "Lorg/mistergroup/shouldianswer/components/a/a;",
            "Lkotlin/o;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lkotlin/e/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/e/a/b<",
            "-",
            "Lorg/mistergroup/shouldianswer/components/a/a;",
            "Lkotlin/o;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/mistergroup/shouldianswer/components/a/e$b;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mistergroup/shouldianswer/components/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/lang/String;

.field private final m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/mistergroup/shouldianswer/components/a/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mistergroup/shouldianswer/components/a/a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ContactItems"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$a;-><init>()V

    .line 34
    new-instance p1, Lorg/mistergroup/shouldianswer/components/a/e$a;

    invoke-direct {p1}, Lorg/mistergroup/shouldianswer/components/a/e$a;-><init>()V

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/components/a/e;->a:Lorg/mistergroup/shouldianswer/components/a/e$a;

    .line 40
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/components/a/e;->e:Ljava/util/ArrayList;

    const/4 p1, 0x1

    .line 41
    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/components/a/e;->f:Z

    .line 45
    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/components/a/e;->j:Z

    .line 48
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/components/a/e;->m:Ljava/util/ArrayList;

    return-void
.end method

.method private final a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 17

    move-object/from16 v0, p2

    .line 66
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 67
    :cond_0
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, -0x1

    if-eqz v1, :cond_1

    return v3

    :cond_1
    if-nez p1, :cond_2

    .line 68
    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_2
    if-eqz p1, :cond_e

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v4, "(this as java.lang.String).toUpperCase()"

    invoke-static {v1, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_3
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    .line 70
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x1

    new-array v7, v6, [C

    const/16 v8, 0x31

    aput-char v8, v7, v2

    .line 71
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x4

    new-array v8, v7, [C

    .line 72
    fill-array-data v8, :array_0

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v8, v7, [C

    .line 73
    fill-array-data v8, :array_1

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v8, v7, [C

    .line 74
    fill-array-data v8, :array_2

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v8, v7, [C

    .line 75
    fill-array-data v8, :array_3

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v8, v7, [C

    .line 76
    fill-array-data v8, :array_4

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x5

    new-array v9, v8, [C

    .line 77
    fill-array-data v9, :array_5

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v9, v7, [C

    .line 78
    fill-array-data v9, :array_6

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v9, v8, [C

    .line 79
    fill-array-data v9, :array_7

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x2

    new-array v10, v9, [C

    .line 80
    fill-array-data v10, :array_8

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v10, v6, [C

    const/16 v11, 0x2a

    aput-char v11, v10, v2

    .line 81
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v10, v6, [C

    const/16 v12, 0x23

    aput-char v12, v10, v2

    .line 82
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ltz v4, :cond_d

    move v10, v2

    .line 85
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v13

    move v14, v2

    :goto_1
    if-ge v14, v13, :cond_a

    add-int v15, v10, v14

    .line 86
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x0

    .line 87
    check-cast v16, [C

    .line 88
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v12, :cond_5

    if-eq v3, v11, :cond_4

    packed-switch v3, :pswitch_data_0

    :goto_2
    move-object/from16 v3, v16

    goto/16 :goto_3

    :pswitch_0
    const/16 v3, 0x8

    .line 97
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, [C

    goto :goto_2

    :pswitch_1
    const/4 v3, 0x7

    .line 96
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, [C

    goto :goto_2

    :pswitch_2
    const/4 v3, 0x6

    .line 95
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, [C

    goto :goto_2

    .line 94
    :pswitch_3
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, [C

    goto :goto_2

    .line 93
    :pswitch_4
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, [C

    goto :goto_2

    :pswitch_5
    const/4 v3, 0x3

    .line 92
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, [C

    goto :goto_2

    .line 91
    :pswitch_6
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, [C

    goto :goto_2

    .line 90
    :pswitch_7
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, [C

    goto :goto_2

    .line 89
    :pswitch_8
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, [C

    goto :goto_2

    :pswitch_9
    const/16 v3, 0x9

    .line 98
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, [C

    goto :goto_2

    :cond_4
    const/16 v3, 0xa

    .line 99
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, [C

    goto :goto_2

    :cond_5
    const/16 v3, 0xb

    .line 100
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, [C

    goto :goto_2

    :goto_3
    if-nez v3, :cond_6

    goto :goto_6

    .line 107
    :cond_6
    array-length v2, v3

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v2, :cond_8

    .line 108
    aget-char v7, v3, v6

    if-ne v15, v7, :cond_7

    const/4 v2, 0x1

    goto :goto_5

    :cond_7
    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x4

    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    :goto_5
    if-nez v2, :cond_9

    const/4 v2, 0x0

    goto :goto_6

    :cond_9
    add-int/lit8 v14, v14, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x4

    goto/16 :goto_1

    :cond_a
    const/4 v2, 0x1

    :goto_6
    if-eqz v2, :cond_b

    return v10

    :cond_b
    if-eq v10, v4, :cond_c

    add-int/lit8 v10, v10, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x4

    goto/16 :goto_0

    :cond_c
    const/4 v0, -0x1

    goto :goto_7

    :cond_d
    move v0, v3

    :goto_7
    return v0

    .line 68
    :cond_e
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 2
        0x32s
        0x41s
        0x42s
        0x43s
    .end array-data

    :array_1
    .array-data 2
        0x33s
        0x44s
        0x45s
        0x46s
    .end array-data

    :array_2
    .array-data 2
        0x34s
        0x47s
        0x48s
        0x49s
    .end array-data

    :array_3
    .array-data 2
        0x35s
        0x4as
        0x4bs
        0x4cs
    .end array-data

    :array_4
    .array-data 2
        0x36s
        0x4ds
        0x4es
        0x4fs
    .end array-data

    :array_5
    .array-data 2
        0x37s
        0x50s
        0x51s
        0x52s
        0x53s
    .end array-data

    nop

    :array_6
    .array-data 2
        0x38s
        0x54s
        0x55s
        0x56s
    .end array-data

    :array_7
    .array-data 2
        0x39s
        0x57s
        0x58s
        0x59s
        0x5as
    .end array-data

    nop

    :array_8
    .array-data 2
        0x30s
        0x2bs
    .end array-data
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/components/a/e;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lorg/mistergroup/shouldianswer/components/a/e;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/components/a/e;)Ljava/util/List;
    .locals 0

    .line 32
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/components/a/e;->k:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic a(Lorg/mistergroup/shouldianswer/components/a/e;Ljava/util/List;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 247
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/components/a/e;->a(Ljava/util/List;Z)V

    return-void
.end method


# virtual methods
.method public final a(F)I
    .locals 5

    .line 171
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/lit8 p1, p1, 0x41

    int-to-char p1, p1

    .line 173
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/components/a/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mistergroup/shouldianswer/components/a/e$b;

    .line 174
    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/components/a/e$b;->b()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    if-eqz v4, :cond_1

    goto :goto_0

    .line 175
    :cond_1
    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/components/a/e$b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, p1, :cond_2

    .line 177
    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/components/a/e$b;->c()I

    move-result p1

    return p1

    .line 179
    :cond_2
    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/components/a/e$b;->c()I

    move-result v2

    goto :goto_0

    :cond_3
    return v2
.end method

.method public final a()Lorg/mistergroup/shouldianswer/components/a/e$a;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/components/a/e;->a:Lorg/mistergroup/shouldianswer/components/a/e$a;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 7

    .line 186
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/components/a/e;->l:Ljava/lang/String;

    .line 187
    sget-object v0, Lkotlinx/coroutines/bd;->a:Lkotlinx/coroutines/bd;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/ad;

    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->a()Lkotlinx/coroutines/y;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/c/f;

    new-instance v0, Lorg/mistergroup/shouldianswer/components/a/e$c;

    const/4 v3, 0x0

    invoke-direct {v0, p0, p1, v3}, Lorg/mistergroup/shouldianswer/components/a/e$c;-><init>(Lorg/mistergroup/shouldianswer/components/a/e;Ljava/lang/String;Lkotlin/c/c;)V

    move-object v4, v0

    check-cast v4, Lkotlin/e/a/m;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/e;->b(Lkotlinx/coroutines/ad;Lkotlin/c/f;Lkotlinx/coroutines/ae;Lkotlin/e/a/m;ILjava/lang/Object;)Lkotlinx/coroutines/bk;

    return-void
.end method

.method public final a(Ljava/util/List;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mistergroup/shouldianswer/components/a/a;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "contactItems"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    sget-object v0, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    .line 249
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContactsAdapter.setData items count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    if-nez p2, :cond_0

    .line 252
    :try_start_0
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/components/a/e;->k:Ljava/util/List;

    .line 253
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/components/a/e;->l:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/components/a/e;->l:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/mistergroup/shouldianswer/components/a/e;->a(Ljava/lang/String;)V

    return-void

    .line 259
    :cond_0
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/components/a/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 260
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/components/a/e;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 261
    move-object v0, v3

    check-cast v0, Lorg/mistergroup/shouldianswer/components/a/e$b;

    const/4 v1, 0x0

    if-nez p2, :cond_2

    .line 263
    iget-boolean v4, p0, Lorg/mistergroup/shouldianswer/components/a/e;->h:Z

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto/16 :goto_3

    .line 264
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v4, v0

    move v0, v1

    move v5, v0

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/mistergroup/shouldianswer/components/a/a;

    .line 265
    invoke-virtual {v6}, Lorg/mistergroup/shouldianswer/components/a/a;->f()Lorg/mistergroup/shouldianswer/model/ac;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 266
    iget-boolean v8, p0, Lorg/mistergroup/shouldianswer/components/a/e;->b:Z

    if-eqz v8, :cond_4

    invoke-virtual {v7}, Lorg/mistergroup/shouldianswer/model/ac;->i()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_4
    invoke-virtual {v7}, Lorg/mistergroup/shouldianswer/model/ac;->b()Ljava/lang/String;

    move-result-object v7

    :goto_2
    const/4 v8, 0x1

    if-eqz v7, :cond_b

    .line 267
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v8, :cond_b

    .line 268
    invoke-virtual {v7, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v7, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v7}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v7, "(this as java.lang.String).toUpperCase()"

    invoke-static {v0, v7}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    iget-boolean v7, p0, Lorg/mistergroup/shouldianswer/components/a/e;->f:Z

    if-eqz v7, :cond_7

    if-eqz v4, :cond_6

    if-nez v4, :cond_5

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_5
    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/components/a/e$b;->b()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    xor-int/2addr v7, v8

    if-eqz v7, :cond_7

    .line 270
    :cond_6
    new-instance v4, Lorg/mistergroup/shouldianswer/components/a/e$b;

    invoke-direct {v4, p0, v0, v5}, Lorg/mistergroup/shouldianswer/components/a/e$b;-><init>(Lorg/mistergroup/shouldianswer/components/a/e;Ljava/lang/String;I)V

    .line 271
    iget-object v7, p0, Lorg/mistergroup/shouldianswer/components/a/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    new-instance v7, Lorg/mistergroup/shouldianswer/components/a/a;

    sget-object v9, Lorg/mistergroup/shouldianswer/components/a/a$a;->b:Lorg/mistergroup/shouldianswer/components/a/a$a;

    invoke-direct {v7, v9, v3}, Lorg/mistergroup/shouldianswer/components/a/a;-><init>(Lorg/mistergroup/shouldianswer/components/a/a$a;Lorg/mistergroup/shouldianswer/model/ac;)V

    .line 273
    invoke-virtual {v7, v0}, Lorg/mistergroup/shouldianswer/components/a/a;->a(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/components/a/e;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/components/a/e$b;->a()I

    move-result v0

    add-int/2addr v0, v8

    invoke-virtual {v4, v0}, Lorg/mistergroup/shouldianswer/components/a/e$b;->a(I)V

    add-int/lit8 v5, v5, 0x1

    .line 278
    :cond_7
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/components/a/e;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v5, v8

    if-eqz v4, :cond_9

    if-nez v4, :cond_8

    .line 280
    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_8
    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/components/a/e$b;->a()I

    move-result v0

    add-int/2addr v0, v8

    invoke-virtual {v4, v0}, Lorg/mistergroup/shouldianswer/components/a/e$b;->a(I)V

    :cond_9
    move v0, v8

    goto/16 :goto_1

    .line 268
    :cond_a
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 283
    :cond_b
    sget-object v6, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v7, "Blank contact title!"

    invoke-static {v6, v7, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->c(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    goto/16 :goto_1

    :cond_c
    :goto_3
    if-nez v0, :cond_d

    if-nez p2, :cond_d

    .line 289
    iget-boolean p1, p0, Lorg/mistergroup/shouldianswer/components/a/e;->h:Z

    :cond_d
    if-nez v0, :cond_e

    if-eqz p2, :cond_e

    .line 295
    iget-boolean p1, p0, Lorg/mistergroup/shouldianswer/components/a/e;->g:Z

    if-eqz p1, :cond_e

    .line 296
    new-instance p1, Lorg/mistergroup/shouldianswer/components/a/a;

    sget-object v4, Lorg/mistergroup/shouldianswer/components/a/a$a;->c:Lorg/mistergroup/shouldianswer/components/a/a$a;

    invoke-direct {p1, v4, v3}, Lorg/mistergroup/shouldianswer/components/a/a;-><init>(Lorg/mistergroup/shouldianswer/components/a/a$a;Lorg/mistergroup/shouldianswer/model/ac;)V

    .line 297
    iget-object v4, p0, Lorg/mistergroup/shouldianswer/components/a/e;->m:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    if-nez v0, :cond_f

    if-eqz p2, :cond_f

    .line 300
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/components/a/e;->l:Ljava/lang/String;

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string p1, "number"

    .line 301
    invoke-static {v5, p1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lkotlin/i/g;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 302
    new-instance v4, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    sget-object p1, Lorg/mistergroup/shouldianswer/utils/f;->a:Lorg/mistergroup/shouldianswer/utils/f;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/utils/f;->a()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lorg/mistergroup/shouldianswer/model/k;->h:Lorg/mistergroup/shouldianswer/model/k;

    const/4 v8, 0x0

    const/16 v9, 0x8

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v10}, Lorg/mistergroup/shouldianswer/model/NumberInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/mistergroup/shouldianswer/model/k;ZILkotlin/e/b/e;)V

    .line 303
    new-instance p1, Lorg/mistergroup/shouldianswer/components/a/a;

    sget-object p2, Lorg/mistergroup/shouldianswer/components/a/a$a;->b:Lorg/mistergroup/shouldianswer/components/a/a$a;

    invoke-direct {p1, p2, v3}, Lorg/mistergroup/shouldianswer/components/a/a;-><init>(Lorg/mistergroup/shouldianswer/components/a/a$a;Lorg/mistergroup/shouldianswer/model/ac;)V

    .line 304
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/components/a/e;->m:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    :cond_f
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string p2, "ContactsAdapter.setData notifyChanges"

    invoke-static {p1, p2, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 308
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/components/a/e;->notifyDataSetChanged()V

    .line 309
    iput-boolean v1, p0, Lorg/mistergroup/shouldianswer/components/a/e;->j:Z

    .line 310
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/components/a/e;->a:Lorg/mistergroup/shouldianswer/components/a/e$a;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/components/a/e$a;->setChanged()V

    .line 311
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/components/a/e;->a:Lorg/mistergroup/shouldianswer/components/a/e$a;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/components/a/e$a;->notifyObservers()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 313
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {p2, p1, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_4
    return-void
.end method

.method public final a(Lkotlin/e/a/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/e/a/b<",
            "-",
            "Lorg/mistergroup/shouldianswer/components/a/a;",
            "Lkotlin/o;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/components/a/e;->d:Lkotlin/e/a/b;

    return-void
.end method

.method public final a(Lkotlin/e/a/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/e/a/m<",
            "-",
            "Landroid/view/ContextMenu;",
            "-",
            "Lorg/mistergroup/shouldianswer/components/a/a;",
            "Lkotlin/o;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/components/a/e;->c:Lkotlin/e/a/m;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 35
    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/components/a/e;->b:Z

    return-void
.end method

.method public final b(Z)V
    .locals 0

    .line 41
    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/components/a/e;->f:Z

    return-void
.end method

.method public final b()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/components/a/e;->b:Z

    return v0
.end method

.method public final c()Lkotlin/e/a/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/e/a/m<",
            "Landroid/view/ContextMenu;",
            "Lorg/mistergroup/shouldianswer/components/a/a;",
            "Lkotlin/o;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/components/a/e;->c:Lkotlin/e/a/m;

    return-object v0
.end method

.method public final c(Z)V
    .locals 0

    .line 42
    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/components/a/e;->g:Z

    return-void
.end method

.method public final d()Lkotlin/e/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/e/a/b<",
            "Lorg/mistergroup/shouldianswer/components/a/a;",
            "Lkotlin/o;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/components/a/e;->d:Lkotlin/e/a/b;

    return-object v0
.end method

.method public final d(Z)V
    .locals 0

    .line 43
    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/components/a/e;->h:Z

    return-void
.end method

.method public final e(Z)V
    .locals 0

    .line 44
    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/components/a/e;->i:Z

    return-void
.end method

.method public final e()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/components/a/e;->i:Z

    return v0
.end method

.method public final f()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/components/a/e;->j:Z

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .line 166
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/components/a/e;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 162
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/components/a/e;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/components/a/a;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/components/a/a;->e()Lorg/mistergroup/shouldianswer/components/a/a$a;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/components/a/a$a;->ordinal()I

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$w;I)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    :try_start_0
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/components/a/e;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "items[position]"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lorg/mistergroup/shouldianswer/components/a/a;

    .line 151
    instance-of v0, p1, Lorg/mistergroup/shouldianswer/components/a/c;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/mistergroup/shouldianswer/components/a/c;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/components/a/c;->a(Lorg/mistergroup/shouldianswer/components/a/a;)V

    goto :goto_0

    .line 152
    :cond_0
    instance-of v0, p1, Lorg/mistergroup/shouldianswer/components/a/b;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/mistergroup/shouldianswer/components/a/b;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/components/a/b;->a(Lorg/mistergroup/shouldianswer/components/a/a;)V

    goto :goto_0

    .line 153
    :cond_1
    instance-of v0, p1, Lorg/mistergroup/shouldianswer/components/a/d;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/mistergroup/shouldianswer/components/a/d;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/components/a/d;->a(Lorg/mistergroup/shouldianswer/components/a/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 156
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p2, p1, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$w;
    .locals 7

    const-string v0, "bindingNumber"

    const-string v1, "parent"

    invoke-static {p1, v1}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x2

    const v3, 0x7f0d003b

    const/4 v4, 0x0

    .line 126
    :try_start_0
    sget-object v5, Lorg/mistergroup/shouldianswer/components/a/a$a;->d:Lorg/mistergroup/shouldianswer/components/a/a$a$a;

    invoke-virtual {v5, p2}, Lorg/mistergroup/shouldianswer/components/a/a$a$a;->a(I)Lorg/mistergroup/shouldianswer/components/a/a$a;

    move-result-object p2

    sget-object v5, Lorg/mistergroup/shouldianswer/components/a/f;->a:[I

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/components/a/a$a;->ordinal()I

    move-result p2

    aget p2, v5, p2

    const/4 v5, 0x1

    if-eq p2, v5, :cond_2

    if-eq p2, v2, :cond_1

    const/4 v5, 0x3

    if-ne p2, v5, :cond_0

    .line 136
    invoke-static {v1, v3, p1, v4}, Landroidx/databinding/f;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lorg/mistergroup/shouldianswer/a/ag;

    .line 137
    new-instance v5, Lorg/mistergroup/shouldianswer/components/a/c;

    invoke-static {p2, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, p2, p0}, Lorg/mistergroup/shouldianswer/components/a/c;-><init>(Lorg/mistergroup/shouldianswer/a/ag;Lorg/mistergroup/shouldianswer/components/a/e;)V

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$w;

    return-object v5

    :cond_0
    new-instance p2, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p2}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p2

    .line 132
    :cond_1
    invoke-static {v1, v3, p1, v4}, Landroidx/databinding/f;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lorg/mistergroup/shouldianswer/a/ag;

    .line 133
    new-instance v5, Lorg/mistergroup/shouldianswer/components/a/b;

    invoke-static {p2, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, p2, p0}, Lorg/mistergroup/shouldianswer/components/a/b;-><init>(Lorg/mistergroup/shouldianswer/a/ag;Lorg/mistergroup/shouldianswer/components/a/e;)V

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$w;

    return-object v5

    :cond_2
    const p2, 0x7f0d0039

    .line 128
    invoke-static {v1, p2, p1, v4}, Landroidx/databinding/f;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lorg/mistergroup/shouldianswer/a/ac;

    .line 129
    new-instance v5, Lorg/mistergroup/shouldianswer/components/a/d;

    const-string v6, "bindingInfo"

    invoke-static {p2, v6}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, p2}, Lorg/mistergroup/shouldianswer/components/a/d;-><init>(Lorg/mistergroup/shouldianswer/a/ac;)V

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$w;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :catch_0
    move-exception p2

    .line 141
    sget-object v5, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v6, 0x0

    invoke-static {v5, p2, v6, v2, v6}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 143
    invoke-static {v1, v3, p1, v4}, Landroidx/databinding/f;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/a/ag;

    .line 144
    new-instance p2, Lorg/mistergroup/shouldianswer/components/a/b;

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1, p0}, Lorg/mistergroup/shouldianswer/components/a/b;-><init>(Lorg/mistergroup/shouldianswer/a/ag;Lorg/mistergroup/shouldianswer/components/a/e;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$w;

    return-object p2
.end method
