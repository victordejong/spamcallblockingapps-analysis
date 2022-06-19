.class public final Lkotlin/reflect/jvm/internal/impl/resolve/e/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/resolve/e/d$a;
    }
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/resolve/e/d$a;

.field public static final d:Lkotlin/reflect/jvm/internal/impl/resolve/e/d;

.field public static final e:Lkotlin/reflect/jvm/internal/impl/resolve/e/d;

.field public static final f:Lkotlin/reflect/jvm/internal/impl/resolve/e/d;

.field public static final g:Lkotlin/reflect/jvm/internal/impl/resolve/e/d;

.field public static final h:Lkotlin/reflect/jvm/internal/impl/resolve/e/d;

.field public static final i:Lkotlin/reflect/jvm/internal/impl/resolve/e/d;

.field public static final j:Lkotlin/reflect/jvm/internal/impl/resolve/e/d;

.field public static final k:Lkotlin/reflect/jvm/internal/impl/resolve/e/d;

.field public static final l:Lkotlin/reflect/jvm/internal/impl/resolve/e/d;

.field public static final m:Lkotlin/reflect/jvm/internal/impl/resolve/e/d;

.field private static n:I

.field private static final o:I

.field private static final p:I

.field private static final q:I

.field private static final r:I

.field private static final s:I

.field private static final t:I

.field private static final u:I

.field private static final v:I

.field private static final w:I

.field private static final x:I

.field private static final y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/resolve/e/d$a$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/resolve/e/d$a$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/resolve/e/c;",
            ">;"
        }
    .end annotation
.end field

.field final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const-class v0, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/resolve/e/d$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lkotlin/reflect/jvm/internal/impl/resolve/e/d$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->a:Lkotlin/reflect/jvm/internal/impl/resolve/e/d$a;

    const/4 v1, 0x1

    .line 142
    sput v1, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->n:I

    .line 5141
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/resolve/e/d$a;->a()I

    move-result v3

    .line 145
    sput v3, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->o:I

    .line 6141
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/resolve/e/d$a;->a()I

    move-result v4

    .line 146
    sput v4, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->p:I

    .line 7141
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/resolve/e/d$a;->a()I

    move-result v5

    .line 147
    sput v5, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->q:I

    .line 8141
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/resolve/e/d$a;->a()I

    move-result v6

    .line 148
    sput v6, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->r:I

    .line 9141
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/resolve/e/d$a;->a()I

    move-result v7

    .line 149
    sput v7, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->s:I

    .line 10141
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/resolve/e/d$a;->a()I

    move-result v8

    .line 150
    sput v8, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->t:I

    .line 11141
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/resolve/e/d$a;->a()I

    move-result v9

    sub-int/2addr v9, v1

    .line 152
    sput v9, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->u:I

    or-int v10, v3, v4

    or-int/2addr v10, v5

    .line 153
    sput v10, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->v:I

    or-int v11, v4, v7

    or-int/2addr v11, v8

    .line 154
    sput v11, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->w:I

    or-int v12, v7, v8

    .line 155
    sput v12, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->x:I

    .line 157
    new-instance v13, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;

    const/4 v14, 0x2

    invoke-direct {v13, v9, v2, v14, v2}, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v13, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->d:Lkotlin/reflect/jvm/internal/impl/resolve/e/d;

    .line 158
    new-instance v9, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;

    invoke-direct {v9, v12, v2, v14, v2}, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v9, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->e:Lkotlin/reflect/jvm/internal/impl/resolve/e/d;

    .line 159
    new-instance v9, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;

    invoke-direct {v9, v3, v2, v14, v2}, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v9, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->f:Lkotlin/reflect/jvm/internal/impl/resolve/e/d;

    .line 160
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;

    invoke-direct {v3, v4, v2, v14, v2}, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->g:Lkotlin/reflect/jvm/internal/impl/resolve/e/d;

    .line 161
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;

    invoke-direct {v3, v5, v2, v14, v2}, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->h:Lkotlin/reflect/jvm/internal/impl/resolve/e/d;

    .line 162
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;

    invoke-direct {v3, v10, v2, v14, v2}, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->i:Lkotlin/reflect/jvm/internal/impl/resolve/e/d;

    .line 163
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;

    invoke-direct {v3, v6, v2, v14, v2}, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->j:Lkotlin/reflect/jvm/internal/impl/resolve/e/d;

    .line 164
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;

    invoke-direct {v3, v7, v2, v14, v2}, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->k:Lkotlin/reflect/jvm/internal/impl/resolve/e/d;

    .line 165
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;

    invoke-direct {v3, v8, v2, v14, v2}, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->l:Lkotlin/reflect/jvm/internal/impl/resolve/e/d;

    .line 166
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;

    invoke-direct {v3, v11, v2, v14, v2}, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->m:Lkotlin/reflect/jvm/internal/impl/resolve/e/d;

    .line 256
    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    const-string v4, "T::class.java.fields"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, [Ljava/lang/Object;

    .line 257
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/Collection;

    .line 258
    array-length v6, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v6, :cond_1

    aget-object v9, v3, v8

    move-object v10, v9

    check-cast v10, Ljava/lang/reflect/Field;

    .line 256
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v10

    invoke-static {v10}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v5, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 259
    :cond_1
    check-cast v5, Ljava/util/List;

    .line 256
    check-cast v5, Ljava/lang/Iterable;

    .line 260
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .line 269
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v8, "field.name"

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 268
    check-cast v6, Ljava/lang/reflect/Field;

    .line 172
    invoke-virtual {v6, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    instance-of v10, v9, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;

    if-eqz v10, :cond_3

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;

    goto :goto_2

    :cond_3
    move-object v9, v2

    :goto_2
    if-eqz v9, :cond_4

    .line 173
    new-instance v10, Lkotlin/reflect/jvm/internal/impl/resolve/e/d$a$a;

    .line 29086
    iget v9, v9, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->c:I

    .line 173
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v8}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v10, v9, v6}, Lkotlin/reflect/jvm/internal/impl/resolve/e/d$a$a;-><init>(ILjava/lang/String;)V

    goto :goto_3

    :cond_4
    move-object v10, v2

    :goto_3
    if-eqz v10, :cond_2

    .line 268
    invoke-interface {v3, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 272
    :cond_5
    check-cast v3, Ljava/util/List;

    .line 171
    sput-object v3, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->y:Ljava/util/List;

    .line 273
    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [Ljava/lang/Object;

    .line 274
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .line 275
    array-length v4, v0

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v4, :cond_7

    aget-object v6, v0, v5

    move-object v9, v6

    check-cast v9, Ljava/lang/reflect/Field;

    .line 273
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v9

    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v3, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 276
    :cond_7
    check-cast v3, Ljava/util/List;

    .line 273
    check-cast v3, Ljava/lang/Iterable;

    .line 277
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 278
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/reflect/Field;

    .line 177
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 279
    :cond_9
    check-cast v0, Ljava/util/List;

    .line 277
    check-cast v0, Ljava/lang/Iterable;

    .line 280
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .line 289
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 288
    check-cast v4, Ljava/lang/reflect/Field;

    .line 179
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v5, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    neg-int v6, v5

    and-int/2addr v6, v5

    if-ne v5, v6, :cond_b

    const/4 v6, 0x1

    goto :goto_7

    :cond_b
    const/4 v6, 0x0

    :goto_7
    if-eqz v6, :cond_c

    .line 181
    new-instance v6, Lkotlin/reflect/jvm/internal/impl/resolve/e/d$a$a;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v8}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, v5, v4}, Lkotlin/reflect/jvm/internal/impl/resolve/e/d$a$a;-><init>(ILjava/lang/String;)V

    goto :goto_8

    :cond_c
    move-object v6, v2

    :goto_8
    if-eqz v6, :cond_a

    .line 288
    invoke-interface {v3, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 292
    :cond_d
    check-cast v3, Ljava/util/List;

    .line 178
    sput-object v3, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->z:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/resolve/e/c;",
            ">;)V"
        }
    .end annotation

    const-string v0, "excludes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->b:Ljava/util/List;

    .line 90
    check-cast p2, Ljava/lang/Iterable;

    .line 236
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/resolve/e/c;

    .line 90
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/e/c;->a()I

    move-result v0

    not-int v0, v0

    and-int/2addr p1, v0

    goto :goto_0

    .line 91
    :cond_0
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->c:I

    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 1071
    sget-object p2, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast p2, Ljava/util/List;

    .line 82
    :cond_0
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;-><init>(ILjava/util/List;)V

    return-void
.end method

.method public static final synthetic a()I
    .locals 1

    .line 82
    sget v0, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->n:I

    return v0
.end method

.method public static final synthetic b()I
    .locals 1

    .line 82
    sget v0, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->o:I

    return v0
.end method

.method public static final synthetic b(I)V
    .locals 0

    .line 82
    sput p0, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->n:I

    return-void
.end method

.method public static final synthetic c()I
    .locals 1

    .line 82
    sget v0, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->p:I

    return v0
.end method

.method public static final synthetic d()I
    .locals 1

    .line 82
    sget v0, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->q:I

    return v0
.end method

.method public static final synthetic e()I
    .locals 1

    .line 82
    sget v0, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->r:I

    return v0
.end method

.method public static final synthetic f()I
    .locals 1

    .line 82
    sget v0, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->s:I

    return v0
.end method

.method public static final synthetic g()I
    .locals 1

    .line 82
    sget v0, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->t:I

    return v0
.end method

.method public static final synthetic h()I
    .locals 1

    .line 82
    sget v0, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->u:I

    return v0
.end method

.method public static final synthetic i()I
    .locals 1

    .line 82
    sget v0, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->v:I

    return v0
.end method


# virtual methods
.method public final a(I)Z
    .locals 1

    .line 98
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->c:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 10

    .line 121
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->y:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 241
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/resolve/e/d$a$a;

    .line 1168
    iget v3, v3, Lkotlin/reflect/jvm/internal/impl/resolve/e/d$a$a;->a:I

    .line 2086
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->c:I

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_0

    goto :goto_1

    :cond_2
    move-object v1, v2

    .line 121
    :goto_1
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/resolve/e/d$a$a;

    if-nez v1, :cond_3

    move-object v0, v2

    goto :goto_2

    .line 2168
    :cond_3
    iget-object v0, v1, Lkotlin/reflect/jvm/internal/impl/resolve/e/d$a$a;->b:Ljava/lang/String;

    :goto_2
    if-nez v0, :cond_7

    .line 122
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->z:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 243
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 252
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 251
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/resolve/e/d$a$a;

    .line 3168
    iget v4, v3, Lkotlin/reflect/jvm/internal/impl/resolve/e/d$a$a;->a:I

    .line 123
    invoke-virtual {p0, v4}, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->a(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 4168
    iget-object v3, v3, Lkotlin/reflect/jvm/internal/impl/resolve/e/d$a$a;->b:Ljava/lang/String;

    goto :goto_4

    :cond_5
    move-object v3, v2

    :goto_4
    if-eqz v3, :cond_4

    .line 251
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 255
    :cond_6
    check-cast v1, Ljava/util/List;

    .line 243
    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    const-string v0, " | "

    .line 124
    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3e

    invoke-static/range {v2 .. v9}, Lkotlin/a/n;->a(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v0

    .line 126
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DescriptorKindFilter("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->b:Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
