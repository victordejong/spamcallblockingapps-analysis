.class public abstract Landroidx/databinding/ViewDataBinding;
.super Landroidx/databinding/a;
.source "ViewDataBinding.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/databinding/ViewDataBinding$OnStartListener;,
        Landroidx/databinding/ViewDataBinding$b;,
        Landroidx/databinding/ViewDataBinding$a;,
        Landroidx/databinding/ViewDataBinding$d;,
        Landroidx/databinding/ViewDataBinding$c;
    }
.end annotation


# static fields
.field static a:I

.field private static final c:I

.field private static final d:Z

.field private static final e:Landroidx/databinding/ViewDataBinding$a;

.field private static final f:Landroidx/databinding/ViewDataBinding$a;

.field private static final g:Landroidx/databinding/ViewDataBinding$a;

.field private static final h:Landroidx/databinding/ViewDataBinding$a;

.field private static final i:Landroidx/databinding/b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/b$a<",
            "Landroidx/databinding/h;",
            "Landroidx/databinding/ViewDataBinding;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Landroidx/databinding/ViewDataBinding;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field protected final b:Landroidx/databinding/e;

.field private final l:Ljava/lang/Runnable;

.field private m:Z

.field private n:Z

.field private o:[Landroidx/databinding/ViewDataBinding$d;

.field private final p:Landroid/view/View;

.field private q:Landroidx/databinding/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/b<",
            "Landroidx/databinding/h;",
            "Landroidx/databinding/ViewDataBinding;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private r:Z

.field private s:Landroid/view/Choreographer;

.field private final t:Landroid/view/Choreographer$FrameCallback;

.field private u:Landroid/os/Handler;

.field private v:Landroidx/databinding/ViewDataBinding;

.field private w:Landroidx/lifecycle/k;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 70
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Landroidx/databinding/ViewDataBinding;->a:I

    const/16 v0, 0x8

    .line 85
    sput v0, Landroidx/databinding/ViewDataBinding;->c:I

    .line 87
    sget v0, Landroidx/databinding/ViewDataBinding;->a:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroidx/databinding/ViewDataBinding;->d:Z

    .line 92
    new-instance v0, Landroidx/databinding/ViewDataBinding$1;

    invoke-direct {v0}, Landroidx/databinding/ViewDataBinding$1;-><init>()V

    sput-object v0, Landroidx/databinding/ViewDataBinding;->e:Landroidx/databinding/ViewDataBinding$a;

    .line 102
    new-instance v0, Landroidx/databinding/ViewDataBinding$2;

    invoke-direct {v0}, Landroidx/databinding/ViewDataBinding$2;-><init>()V

    sput-object v0, Landroidx/databinding/ViewDataBinding;->f:Landroidx/databinding/ViewDataBinding$a;

    .line 112
    new-instance v0, Landroidx/databinding/ViewDataBinding$3;

    invoke-direct {v0}, Landroidx/databinding/ViewDataBinding$3;-><init>()V

    sput-object v0, Landroidx/databinding/ViewDataBinding;->g:Landroidx/databinding/ViewDataBinding$a;

    .line 122
    new-instance v0, Landroidx/databinding/ViewDataBinding$4;

    invoke-direct {v0}, Landroidx/databinding/ViewDataBinding$4;-><init>()V

    sput-object v0, Landroidx/databinding/ViewDataBinding;->h:Landroidx/databinding/ViewDataBinding$a;

    .line 130
    new-instance v0, Landroidx/databinding/ViewDataBinding$5;

    invoke-direct {v0}, Landroidx/databinding/ViewDataBinding$5;-><init>()V

    sput-object v0, Landroidx/databinding/ViewDataBinding;->i:Landroidx/databinding/b$a;

    .line 150
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Landroidx/databinding/ViewDataBinding;->j:Ljava/lang/ref/ReferenceQueue;

    .line 155
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_1

    const/4 v0, 0x0

    .line 156
    sput-object v0, Landroidx/databinding/ViewDataBinding;->k:Landroid/view/View$OnAttachStateChangeListener;

    goto :goto_1

    .line 158
    :cond_1
    new-instance v0, Landroidx/databinding/ViewDataBinding$6;

    invoke-direct {v0}, Landroidx/databinding/ViewDataBinding$6;-><init>()V

    sput-object v0, Landroidx/databinding/ViewDataBinding;->k:Landroid/view/View$OnAttachStateChangeListener;

    :goto_1
    return-void
.end method

.method protected constructor <init>(Landroidx/databinding/e;Landroid/view/View;I)V
    .locals 1

    .line 278
    invoke-direct {p0}, Landroidx/databinding/a;-><init>()V

    .line 178
    new-instance v0, Landroidx/databinding/ViewDataBinding$7;

    invoke-direct {v0, p0}, Landroidx/databinding/ViewDataBinding$7;-><init>(Landroidx/databinding/ViewDataBinding;)V

    iput-object v0, p0, Landroidx/databinding/ViewDataBinding;->l:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 203
    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->m:Z

    .line 208
    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->n:Z

    .line 279
    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->b:Landroidx/databinding/e;

    .line 280
    new-array p1, p3, [Landroidx/databinding/ViewDataBinding$d;

    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->o:[Landroidx/databinding/ViewDataBinding$d;

    .line 281
    iput-object p2, p0, Landroidx/databinding/ViewDataBinding;->p:Landroid/view/View;

    .line 282
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 285
    sget-boolean p1, Landroidx/databinding/ViewDataBinding;->d:Z

    if-eqz p1, :cond_0

    .line 286
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->s:Landroid/view/Choreographer;

    .line 287
    new-instance p1, Landroidx/databinding/ViewDataBinding$8;

    invoke-direct {p1, p0}, Landroidx/databinding/ViewDataBinding$8;-><init>(Landroidx/databinding/ViewDataBinding;)V

    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->t:Landroid/view/Choreographer$FrameCallback;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 294
    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->t:Landroid/view/Choreographer$FrameCallback;

    .line 295
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->u:Landroid/os/Handler;

    :goto_0
    return-void

    .line 283
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "DataBinding must be created in view\'s UI Thread"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    .line 303
    invoke-static {p1}, Landroidx/databinding/ViewDataBinding;->a(Ljava/lang/Object;)Landroidx/databinding/e;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Landroidx/databinding/e;Landroid/view/View;I)V

    return-void
.end method

.method private static a(Landroid/view/ViewGroup;I)I
    .locals 8

    .line 1289
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1290
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1291
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1292
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 1294
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v4, p1, 0x1

    :goto_0
    if-ge v4, v3, :cond_3

    .line 1297
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1298
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    .line 1299
    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_2

    .line 1300
    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1301
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v6, v7, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x30

    if-ne v6, v7, :cond_1

    return p1

    .line 1304
    :cond_1
    invoke-static {v5, v2}, Landroidx/databinding/ViewDataBinding;->a(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    move p1, v4

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return p1
.end method

.method private static a(Ljava/lang/String;ILandroidx/databinding/ViewDataBinding$b;I)I
    .locals 2

    const/16 v0, 0x2f

    .line 1274
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 1275
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    .line 1277
    iget-object p2, p2, Landroidx/databinding/ViewDataBinding$b;->a:[[Ljava/lang/String;

    aget-object p2, p2, p3

    .line 1278
    array-length p3, p2

    :goto_0
    if-ge p1, p3, :cond_1

    .line 1280
    aget-object v0, p2, p1

    .line 1281
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private static a(Ljava/lang/Object;)Landroidx/databinding/e;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 310
    :cond_0
    instance-of v0, p0, Landroidx/databinding/e;

    if-eqz v0, :cond_1

    .line 316
    check-cast p0, Landroidx/databinding/e;

    return-object p0

    .line 311
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The provided bindingComponent parameter must be an instance of DataBindingComponent. See  https://issuetracker.google.com/issues/116541301 for details of why this parameter is not defined as DataBindingComponent"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Landroidx/databinding/ViewDataBinding;)Ljava/lang/Runnable;
    .locals 0

    .line 64
    iget-object p0, p0, Landroidx/databinding/ViewDataBinding;->l:Ljava/lang/Runnable;

    return-object p0
.end method

.method private static a(Landroidx/databinding/e;Landroid/view/View;[Ljava/lang/Object;Landroidx/databinding/ViewDataBinding$b;Landroid/util/SparseIntArray;Z)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    .line 1188
    invoke-static/range {p1 .. p1}, Landroidx/databinding/ViewDataBinding;->b(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    .line 1192
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 1193
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-string v9, "layout"

    const/4 v2, -0x1

    const/4 v11, 0x1

    if-eqz p5, :cond_5

    if-eqz v1, :cond_5

    .line 1195
    invoke-virtual {v1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0x5f

    .line 1196
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-lez v3, :cond_4

    add-int/2addr v3, v11

    .line 1197
    invoke-static {v1, v3}, Landroidx/databinding/ViewDataBinding;->a(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1198
    invoke-static {v1, v3}, Landroidx/databinding/ViewDataBinding;->b(Ljava/lang/String;I)I

    move-result v1

    .line 1199
    aget-object v3, p2, v1

    if-nez v3, :cond_2

    .line 1200
    aput-object v0, p2, v1

    :cond_2
    if-nez v7, :cond_3

    move v1, v2

    :cond_3
    move v3, v1

    move v1, v11

    goto :goto_1

    :cond_4
    move v3, v2

    const/4 v1, 0x0

    :goto_1
    move v12, v3

    goto :goto_2

    :cond_5
    if-eqz v1, :cond_8

    const-string v3, "binding_"

    .line 1207
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1208
    sget v3, Landroidx/databinding/ViewDataBinding;->c:I

    invoke-static {v1, v3}, Landroidx/databinding/ViewDataBinding;->b(Ljava/lang/String;I)I

    move-result v1

    .line 1209
    aget-object v3, p2, v1

    if-nez v3, :cond_6

    .line 1210
    aput-object v0, p2, v1

    :cond_6
    if-nez v7, :cond_7

    move v1, v2

    :cond_7
    move v12, v1

    move v1, v11

    goto :goto_2

    :cond_8
    move v12, v2

    const/4 v1, 0x0

    :goto_2
    if-nez v1, :cond_9

    .line 1219
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    if-lez v1, :cond_9

    if-eqz v8, :cond_9

    .line 1222
    invoke-virtual {v8, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-ltz v1, :cond_9

    aget-object v2, p2, v1

    if-nez v2, :cond_9

    .line 1224
    aput-object v0, p2, v1

    .line 1229
    :cond_9
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_e

    .line 1230
    move-object v13, v0

    check-cast v13, Landroid/view/ViewGroup;

    .line 1231
    invoke-virtual {v13}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v14

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_3
    if-ge v0, v14, :cond_e

    .line 1234
    invoke-virtual {v13, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ltz v12, :cond_c

    .line 1236
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_c

    .line 1237
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "_0"

    .line 1238
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1239
    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-lez v4, :cond_c

    .line 1241
    invoke-static {v3, v1, v7, v12}, Landroidx/databinding/ViewDataBinding;->a(Ljava/lang/String;ILandroidx/databinding/ViewDataBinding$b;I)I

    move-result v3

    if-ltz v3, :cond_c

    add-int/lit8 v1, v3, 0x1

    .line 1246
    iget-object v4, v7, Landroidx/databinding/ViewDataBinding$b;->b:[[I

    aget-object v4, v4, v12

    aget v4, v4, v3

    .line 1247
    iget-object v5, v7, Landroidx/databinding/ViewDataBinding$b;->c:[[I

    aget-object v5, v5, v12

    aget v3, v5, v3

    .line 1248
    invoke-static {v13, v0}, Landroidx/databinding/ViewDataBinding;->a(Landroid/view/ViewGroup;I)I

    move-result v5

    if-ne v5, v0, :cond_a

    .line 1250
    invoke-static {v6, v2, v3}, Landroidx/databinding/f;->a(Landroidx/databinding/e;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    aput-object v3, p2, v4

    move v10, v0

    move v15, v1

    goto :goto_5

    :cond_a
    sub-int/2addr v5, v0

    add-int/2addr v5, v11

    .line 1254
    new-array v15, v5, [Landroid/view/View;

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v5, :cond_b

    add-int v11, v0, v10

    .line 1256
    invoke-virtual {v13, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    aput-object v11, v15, v10

    add-int/lit8 v10, v10, 0x1

    const/4 v11, 0x1

    goto :goto_4

    .line 1258
    :cond_b
    invoke-static {v6, v15, v3}, Landroidx/databinding/f;->a(Landroidx/databinding/e;[Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    aput-object v3, p2, v4

    add-int/lit8 v5, v5, -0x1

    add-int/2addr v0, v5

    move v10, v0

    move v15, v1

    const/4 v11, 0x1

    goto :goto_5

    :cond_c
    move v10, v0

    move v15, v1

    const/4 v11, 0x0

    :goto_5
    if-nez v11, :cond_d

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v2

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 1266
    invoke-static/range {v0 .. v5}, Landroidx/databinding/ViewDataBinding;->a(Landroidx/databinding/e;Landroid/view/View;[Ljava/lang/Object;Landroidx/databinding/ViewDataBinding$b;Landroid/util/SparseIntArray;Z)V

    :cond_d
    const/4 v0, 0x1

    add-int/lit8 v1, v10, 0x1

    move v11, v0

    move v0, v1

    move v1, v15

    goto/16 :goto_3

    :cond_e
    return-void
.end method

.method static synthetic a(Landroidx/databinding/ViewDataBinding;Z)Z
    .locals 0

    .line 64
    iput-boolean p1, p0, Landroidx/databinding/ViewDataBinding;->n:Z

    return p1
.end method

.method private static a(Ljava/lang/String;I)Z
    .locals 3

    .line 1313
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    :goto_0
    if-ge p1, v0, :cond_2

    .line 1318
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method protected static a(Landroidx/databinding/e;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$b;Landroid/util/SparseIntArray;)[Ljava/lang/Object;
    .locals 6

    .line 716
    new-array p2, p2, [Ljava/lang/Object;

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 717
    invoke-static/range {v0 .. v5}, Landroidx/databinding/ViewDataBinding;->a(Landroidx/databinding/e;Landroid/view/View;[Ljava/lang/Object;Landroidx/databinding/ViewDataBinding$b;Landroid/util/SparseIntArray;Z)V

    return-object p2
.end method

.method private static b(Ljava/lang/String;I)I
    .locals 3

    .line 1332
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge p1, v0, :cond_0

    mul-int/lit8 v1, v1, 0xa

    .line 1336
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v1, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method static synthetic b(Landroidx/databinding/ViewDataBinding;)Landroid/view/View;
    .locals 0

    .line 64
    iget-object p0, p0, Landroidx/databinding/ViewDataBinding;->p:Landroid/view/View;

    return-object p0
.end method

.method static b(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;
    .locals 1

    if-eqz p0, :cond_0

    .line 524
    sget v0, Landroidx/databinding/a/a$a;->dataBinding:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/databinding/ViewDataBinding;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic b(Landroidx/databinding/ViewDataBinding;Z)Z
    .locals 0

    .line 64
    iput-boolean p1, p0, Landroidx/databinding/ViewDataBinding;->m:Z

    return p1
.end method

.method static synthetic f()V
    .locals 0

    .line 64
    invoke-static {}, Landroidx/databinding/ViewDataBinding;->i()V

    return-void
.end method

.method static synthetic g()Landroid/view/View$OnAttachStateChangeListener;
    .locals 1

    .line 64
    sget-object v0, Landroidx/databinding/ViewDataBinding;->k:Landroid/view/View$OnAttachStateChangeListener;

    return-object v0
.end method

.method private h()V
    .locals 4

    .line 454
    iget-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->r:Z

    if-eqz v0, :cond_0

    .line 455
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->e()V

    return-void

    .line 458
    :cond_0
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->c()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 461
    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->r:Z

    const/4 v1, 0x0

    .line 462
    iput-boolean v1, p0, Landroidx/databinding/ViewDataBinding;->n:Z

    .line 463
    iget-object v2, p0, Landroidx/databinding/ViewDataBinding;->q:Landroidx/databinding/b;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 464
    invoke-virtual {v2, p0, v0, v3}, Landroidx/databinding/b;->a(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 467
    iget-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->n:Z

    if-eqz v0, :cond_2

    .line 468
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->q:Landroidx/databinding/b;

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v2, v3}, Landroidx/databinding/b;->a(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 471
    :cond_2
    iget-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->n:Z

    if-nez v0, :cond_3

    .line 472
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->b()V

    .line 473
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->q:Landroidx/databinding/b;

    if-eqz v0, :cond_3

    const/4 v2, 0x3

    .line 474
    invoke-virtual {v0, p0, v2, v3}, Landroidx/databinding/b;->a(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 477
    :cond_3
    iput-boolean v1, p0, Landroidx/databinding/ViewDataBinding;->r:Z

    return-void
.end method

.method private static i()V
    .locals 2

    .line 1347
    :cond_0
    :goto_0
    sget-object v0, Landroidx/databinding/ViewDataBinding;->j:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1348
    instance-of v1, v0, Landroidx/databinding/ViewDataBinding$d;

    if-eqz v1, :cond_0

    .line 1349
    check-cast v0, Landroidx/databinding/ViewDataBinding$d;

    .line 1350
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding$d;->a()Z

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 443
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->v:Landroidx/databinding/ViewDataBinding;

    if-nez v0, :cond_0

    .line 444
    invoke-direct {p0}, Landroidx/databinding/ViewDataBinding;->h()V

    goto :goto_0

    .line 446
    :cond_0
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->a()V

    :goto_0
    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 1

    .line 323
    sget v0, Landroidx/databinding/a/a$a;->dataBinding:I

    invoke-virtual {p1, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method protected abstract b()V
.end method

.method public abstract c()Z
.end method

.method public d()Landroid/view/View;
    .locals 1

    .line 537
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->p:Landroid/view/View;

    return-object v0
.end method

.method protected e()V
    .locals 2

    .line 568
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->v:Landroidx/databinding/ViewDataBinding;

    if-eqz v0, :cond_0

    .line 569
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->e()V

    goto :goto_0

    .line 571
    :cond_0
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->w:Landroidx/lifecycle/k;

    if-eqz v0, :cond_1

    .line 573
    invoke-interface {v0}, Landroidx/lifecycle/k;->getLifecycle()Landroidx/lifecycle/g;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/g;->a()Landroidx/lifecycle/g$b;

    move-result-object v0

    .line 574
    sget-object v1, Landroidx/lifecycle/g$b;->d:Landroidx/lifecycle/g$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/g$b;->a(Landroidx/lifecycle/g$b;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 578
    :cond_1
    monitor-enter p0

    .line 579
    :try_start_0
    iget-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->m:Z

    if-eqz v0, :cond_2

    .line 580
    monitor-exit p0

    return-void

    :cond_2
    const/4 v0, 0x1

    .line 582
    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->m:Z

    .line 583
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 584
    sget-boolean v0, Landroidx/databinding/ViewDataBinding;->d:Z

    if-eqz v0, :cond_3

    .line 585
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->s:Landroid/view/Choreographer;

    iget-object v1, p0, Landroidx/databinding/ViewDataBinding;->t:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_0

    .line 587
    :cond_3
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->u:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/databinding/ViewDataBinding;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    .line 583
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
