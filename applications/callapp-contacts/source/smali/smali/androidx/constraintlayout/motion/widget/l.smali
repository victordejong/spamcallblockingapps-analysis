.class final Landroidx/constraintlayout/motion/widget/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/constraintlayout/motion/widget/l;",
        ">;"
    }
.end annotation


# static fields
.field static r:[Ljava/lang/String;


# instance fields
.field private A:F

.field private B:F

.field private C:F

.field a:F

.field b:I

.field c:I

.field d:Z

.field e:F

.field f:F

.field g:F

.field public h:F

.field i:F

.field j:F

.field k:F

.field l:F

.field m:F

.field n:F

.field o:F

.field p:F

.field q:F

.field s:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/widget/a;",
            ">;"
        }
    .end annotation
.end field

.field t:I

.field u:[D

.field v:[D

.field private w:Landroidx/constraintlayout/motion/a/c;

.field private x:I

.field private y:F

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "position"

    const-string/jumbo v1, "x"

    const-string/jumbo v2, "y"

    const-string/jumbo v3, "width"

    const-string v4, "height"

    const-string v5, "pathRotate"

    .line 67
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/motion/widget/l;->r:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 40
    iput v0, p0, Landroidx/constraintlayout/motion/widget/l;->a:F

    const/4 v1, 0x0

    .line 41
    iput v1, p0, Landroidx/constraintlayout/motion/widget/l;->b:I

    .line 43
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/l;->d:Z

    const/4 v2, 0x0

    .line 44
    iput v2, p0, Landroidx/constraintlayout/motion/widget/l;->e:F

    .line 45
    iput v2, p0, Landroidx/constraintlayout/motion/widget/l;->f:F

    .line 46
    iput v2, p0, Landroidx/constraintlayout/motion/widget/l;->g:F

    .line 47
    iput v2, p0, Landroidx/constraintlayout/motion/widget/l;->h:F

    .line 48
    iput v0, p0, Landroidx/constraintlayout/motion/widget/l;->i:F

    .line 49
    iput v0, p0, Landroidx/constraintlayout/motion/widget/l;->j:F

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 50
    iput v0, p0, Landroidx/constraintlayout/motion/widget/l;->k:F

    .line 51
    iput v0, p0, Landroidx/constraintlayout/motion/widget/l;->l:F

    .line 52
    iput v2, p0, Landroidx/constraintlayout/motion/widget/l;->m:F

    .line 53
    iput v2, p0, Landroidx/constraintlayout/motion/widget/l;->n:F

    .line 54
    iput v2, p0, Landroidx/constraintlayout/motion/widget/l;->o:F

    .line 56
    iput v1, p0, Landroidx/constraintlayout/motion/widget/l;->x:I

    .line 62
    iput v0, p0, Landroidx/constraintlayout/motion/widget/l;->p:F

    .line 63
    iput v0, p0, Landroidx/constraintlayout/motion/widget/l;->q:F

    .line 69
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/l;->s:Ljava/util/LinkedHashMap;

    .line 70
    iput v1, p0, Landroidx/constraintlayout/motion/widget/l;->t:I

    const/16 v0, 0x12

    new-array v1, v0, [D

    .line 150
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/l;->u:[D

    new-array v0, v0, [D

    .line 151
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/l;->v:[D

    return-void
.end method

.method static a(FF)Z
    .locals 3

    .line 77
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sub-float/2addr p0, p1

    .line 80
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x358637bd    # 1.0E-6f

    cmpl-float p0, p0, p1

    if-lez p0, :cond_1

    return v1

    :cond_1
    return v2

    .line 78
    :cond_2
    :goto_0
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eq p0, p1, :cond_3

    return v1

    :cond_3
    return v2
.end method


# virtual methods
.method final a(FFFF)V
    .locals 0

    .line 189
    iput p1, p0, Landroidx/constraintlayout/motion/widget/l;->z:F

    .line 190
    iput p2, p0, Landroidx/constraintlayout/motion/widget/l;->A:F

    .line 191
    iput p3, p0, Landroidx/constraintlayout/motion/widget/l;->B:F

    .line 192
    iput p4, p0, Landroidx/constraintlayout/motion/widget/l;->C:F

    return-void
.end method

.method public final a(Landroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/widget/c;I)V
    .locals 3

    .line 333
    invoke-virtual {p1}, Landroidx/constraintlayout/a/a/e;->m()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroidx/constraintlayout/a/a/e;->n()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroidx/constraintlayout/a/a/e;->o()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroidx/constraintlayout/a/a/e;->p()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, v0, v1, v2, p1}, Landroidx/constraintlayout/motion/widget/l;->a(FFFF)V

    .line 1407
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/widget/c;->e(I)Landroidx/constraintlayout/widget/c$a;

    move-result-object p1

    .line 2223
    iget-object p2, p1, Landroidx/constraintlayout/widget/c$a;->b:Landroidx/constraintlayout/widget/c$d;

    iget p2, p2, Landroidx/constraintlayout/widget/c$d;->c:I

    iput p2, p0, Landroidx/constraintlayout/motion/widget/l;->b:I

    .line 2224
    iget-object p2, p1, Landroidx/constraintlayout/widget/c$a;->b:Landroidx/constraintlayout/widget/c$d;

    iget p2, p2, Landroidx/constraintlayout/widget/c$d;->b:I

    iput p2, p0, Landroidx/constraintlayout/motion/widget/l;->c:I

    .line 2225
    iget-object p2, p1, Landroidx/constraintlayout/widget/c$a;->b:Landroidx/constraintlayout/widget/c$d;

    iget p2, p2, Landroidx/constraintlayout/widget/c$d;->b:I

    if-eqz p2, :cond_0

    iget p2, p0, Landroidx/constraintlayout/motion/widget/l;->b:I

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    iget-object p2, p1, Landroidx/constraintlayout/widget/c$a;->b:Landroidx/constraintlayout/widget/c$d;

    iget p2, p2, Landroidx/constraintlayout/widget/c$d;->d:F

    :goto_0
    iput p2, p0, Landroidx/constraintlayout/motion/widget/l;->a:F

    .line 2227
    iget-object p2, p1, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$e;

    iget-boolean p2, p2, Landroidx/constraintlayout/widget/c$e;->l:Z

    iput-boolean p2, p0, Landroidx/constraintlayout/motion/widget/l;->d:Z

    .line 2228
    iget-object p2, p1, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$e;

    iget p2, p2, Landroidx/constraintlayout/widget/c$e;->m:F

    iput p2, p0, Landroidx/constraintlayout/motion/widget/l;->e:F

    .line 2229
    iget-object p2, p1, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$e;

    iget p2, p2, Landroidx/constraintlayout/widget/c$e;->b:F

    iput p2, p0, Landroidx/constraintlayout/motion/widget/l;->f:F

    .line 2230
    iget-object p2, p1, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$e;

    iget p2, p2, Landroidx/constraintlayout/widget/c$e;->c:F

    iput p2, p0, Landroidx/constraintlayout/motion/widget/l;->g:F

    .line 2231
    iget-object p2, p1, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$e;

    iget p2, p2, Landroidx/constraintlayout/widget/c$e;->d:F

    iput p2, p0, Landroidx/constraintlayout/motion/widget/l;->h:F

    .line 2232
    iget-object p2, p1, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$e;

    iget p2, p2, Landroidx/constraintlayout/widget/c$e;->e:F

    iput p2, p0, Landroidx/constraintlayout/motion/widget/l;->i:F

    .line 2233
    iget-object p2, p1, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$e;

    iget p2, p2, Landroidx/constraintlayout/widget/c$e;->f:F

    iput p2, p0, Landroidx/constraintlayout/motion/widget/l;->j:F

    .line 2234
    iget-object p2, p1, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$e;

    iget p2, p2, Landroidx/constraintlayout/widget/c$e;->g:F

    iput p2, p0, Landroidx/constraintlayout/motion/widget/l;->k:F

    .line 2235
    iget-object p2, p1, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$e;

    iget p2, p2, Landroidx/constraintlayout/widget/c$e;->h:F

    iput p2, p0, Landroidx/constraintlayout/motion/widget/l;->l:F

    .line 2236
    iget-object p2, p1, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$e;

    iget p2, p2, Landroidx/constraintlayout/widget/c$e;->i:F

    iput p2, p0, Landroidx/constraintlayout/motion/widget/l;->m:F

    .line 2237
    iget-object p2, p1, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$e;

    iget p2, p2, Landroidx/constraintlayout/widget/c$e;->j:F

    iput p2, p0, Landroidx/constraintlayout/motion/widget/l;->n:F

    .line 2238
    iget-object p2, p1, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$e;

    iget p2, p2, Landroidx/constraintlayout/widget/c$e;->k:F

    iput p2, p0, Landroidx/constraintlayout/motion/widget/l;->o:F

    .line 2240
    iget-object p2, p1, Landroidx/constraintlayout/widget/c$a;->c:Landroidx/constraintlayout/widget/c$c;

    iget-object p2, p2, Landroidx/constraintlayout/widget/c$c;->c:Ljava/lang/String;

    invoke-static {p2}, Landroidx/constraintlayout/motion/a/c;->a(Ljava/lang/String;)Landroidx/constraintlayout/motion/a/c;

    move-result-object p2

    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/l;->w:Landroidx/constraintlayout/motion/a/c;

    .line 2241
    iget-object p2, p1, Landroidx/constraintlayout/widget/c$a;->c:Landroidx/constraintlayout/widget/c$c;

    iget p2, p2, Landroidx/constraintlayout/widget/c$c;->g:F

    iput p2, p0, Landroidx/constraintlayout/motion/widget/l;->p:F

    .line 2242
    iget-object p2, p1, Landroidx/constraintlayout/widget/c$a;->c:Landroidx/constraintlayout/widget/c$c;

    iget p2, p2, Landroidx/constraintlayout/widget/c$c;->e:I

    iput p2, p0, Landroidx/constraintlayout/motion/widget/l;->x:I

    .line 2243
    iget-object p2, p1, Landroidx/constraintlayout/widget/c$a;->b:Landroidx/constraintlayout/widget/c$d;

    iget p2, p2, Landroidx/constraintlayout/widget/c$d;->e:F

    iput p2, p0, Landroidx/constraintlayout/motion/widget/l;->q:F

    .line 2244
    iget-object p2, p1, Landroidx/constraintlayout/widget/c$a;->f:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    .line 2245
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 2246
    iget-object v0, p1, Landroidx/constraintlayout/widget/c$a;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/a;

    .line 3062
    iget-object v1, v0, Landroidx/constraintlayout/widget/a;->b:Landroidx/constraintlayout/widget/a$a;

    .line 2247
    sget-object v2, Landroidx/constraintlayout/widget/a$a;->STRING_TYPE:Landroidx/constraintlayout/widget/a$a;

    if-eq v1, v2, :cond_1

    .line 2248
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/l;->s:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p3, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final a(Ljava/util/HashMap;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/motion/widget/q;",
            ">;I)V"
        }
    .end annotation

    .line 254
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 255
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/q;

    .line 259
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x1

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v4, "alpha"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 v3, 0xd

    goto/16 :goto_1

    :sswitch_1
    const-string v4, "transitionPathRotate"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v3, 0xc

    goto/16 :goto_1

    :sswitch_2
    const-string v4, "elevation"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 v3, 0xb

    goto/16 :goto_1

    :sswitch_3
    const-string v4, "rotation"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto/16 :goto_1

    :cond_3
    const/16 v3, 0xa

    goto/16 :goto_1

    :sswitch_4
    const-string v4, "transformPivotY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto/16 :goto_1

    :cond_4
    const/16 v3, 0x9

    goto/16 :goto_1

    :sswitch_5
    const-string v4, "transformPivotX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto/16 :goto_1

    :cond_5
    const/16 v3, 0x8

    goto/16 :goto_1

    :sswitch_6
    const-string v4, "scaleY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_1

    :cond_6
    const/4 v3, 0x7

    goto :goto_1

    :sswitch_7
    const-string v4, "scaleX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_1

    :cond_7
    const/4 v3, 0x6

    goto :goto_1

    :sswitch_8
    const-string v4, "progress"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_1

    :cond_8
    const/4 v3, 0x5

    goto :goto_1

    :sswitch_9
    const-string v4, "translationZ"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_1

    :cond_9
    const/4 v3, 0x4

    goto :goto_1

    :sswitch_a
    const-string v4, "translationY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    goto :goto_1

    :cond_a
    const/4 v3, 0x3

    goto :goto_1

    :sswitch_b
    const-string v4, "translationX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    goto :goto_1

    :cond_b
    const/4 v3, 0x2

    goto :goto_1

    :sswitch_c
    const-string v4, "rotationY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    goto :goto_1

    :cond_c
    const/4 v3, 0x1

    goto :goto_1

    :sswitch_d
    const-string v4, "rotationX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    goto :goto_1

    :cond_d
    const/4 v3, 0x0

    :goto_1
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    packed-switch v3, :pswitch_data_0

    const-string v3, "CUSTOM"

    .line 303
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "MotionPaths"

    if-eqz v3, :cond_10

    const-string v3, ","

    .line 304
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v5

    .line 305
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/l;->s:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 306
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/l;->s:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/a;

    .line 307
    instance-of v5, v2, Landroidx/constraintlayout/motion/widget/q$b;

    if-eqz v5, :cond_e

    .line 308
    check-cast v2, Landroidx/constraintlayout/motion/widget/q$b;

    invoke-virtual {v2, p2, v3}, Landroidx/constraintlayout/motion/widget/q$b;->a(ILandroidx/constraintlayout/widget/a;)V

    goto/16 :goto_0

    .line 310
    :cond_e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " splineSet not a CustomSet frame = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", value"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    invoke-virtual {v3}, Landroidx/constraintlayout/widget/a;->b()F

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 310
    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 317
    :cond_f
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UNKNOWN customName "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 320
    :cond_10
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UNKNOWN spline "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 261
    :pswitch_0
    iget v1, p0, Landroidx/constraintlayout/motion/widget/l;->a:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_2

    :cond_11
    iget v4, p0, Landroidx/constraintlayout/motion/widget/l;->a:F

    :goto_2
    invoke-virtual {v2, p2, v4}, Landroidx/constraintlayout/motion/widget/q;->a(IF)V

    goto/16 :goto_0

    .line 282
    :pswitch_1
    iget v1, p0, Landroidx/constraintlayout/motion/widget/l;->p:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_3

    :cond_12
    iget v6, p0, Landroidx/constraintlayout/motion/widget/l;->p:F

    :goto_3
    invoke-virtual {v2, p2, v6}, Landroidx/constraintlayout/motion/widget/q;->a(IF)V

    goto/16 :goto_0

    .line 264
    :pswitch_2
    iget v1, p0, Landroidx/constraintlayout/motion/widget/l;->e:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_4

    :cond_13
    iget v6, p0, Landroidx/constraintlayout/motion/widget/l;->e:F

    :goto_4
    invoke-virtual {v2, p2, v6}, Landroidx/constraintlayout/motion/widget/q;->a(IF)V

    goto/16 :goto_0

    .line 267
    :pswitch_3
    iget v1, p0, Landroidx/constraintlayout/motion/widget/l;->f:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_5

    :cond_14
    iget v6, p0, Landroidx/constraintlayout/motion/widget/l;->f:F

    :goto_5
    invoke-virtual {v2, p2, v6}, Landroidx/constraintlayout/motion/widget/q;->a(IF)V

    goto/16 :goto_0

    .line 279
    :pswitch_4
    iget v1, p0, Landroidx/constraintlayout/motion/widget/l;->l:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_6

    :cond_15
    iget v6, p0, Landroidx/constraintlayout/motion/widget/l;->l:F

    :goto_6
    invoke-virtual {v2, p2, v6}, Landroidx/constraintlayout/motion/widget/q;->a(IF)V

    goto/16 :goto_0

    .line 276
    :pswitch_5
    iget v1, p0, Landroidx/constraintlayout/motion/widget/l;->k:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_7

    :cond_16
    iget v6, p0, Landroidx/constraintlayout/motion/widget/l;->k:F

    :goto_7
    invoke-virtual {v2, p2, v6}, Landroidx/constraintlayout/motion/widget/q;->a(IF)V

    goto/16 :goto_0

    .line 291
    :pswitch_6
    iget v1, p0, Landroidx/constraintlayout/motion/widget/l;->j:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_8

    :cond_17
    iget v4, p0, Landroidx/constraintlayout/motion/widget/l;->j:F

    :goto_8
    invoke-virtual {v2, p2, v4}, Landroidx/constraintlayout/motion/widget/q;->a(IF)V

    goto/16 :goto_0

    .line 288
    :pswitch_7
    iget v1, p0, Landroidx/constraintlayout/motion/widget/l;->i:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_9

    :cond_18
    iget v4, p0, Landroidx/constraintlayout/motion/widget/l;->i:F

    :goto_9
    invoke-virtual {v2, p2, v4}, Landroidx/constraintlayout/motion/widget/q;->a(IF)V

    goto/16 :goto_0

    .line 285
    :pswitch_8
    iget v1, p0, Landroidx/constraintlayout/motion/widget/l;->q:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_a

    :cond_19
    iget v6, p0, Landroidx/constraintlayout/motion/widget/l;->q:F

    :goto_a
    invoke-virtual {v2, p2, v6}, Landroidx/constraintlayout/motion/widget/q;->a(IF)V

    goto/16 :goto_0

    .line 300
    :pswitch_9
    iget v1, p0, Landroidx/constraintlayout/motion/widget/l;->o:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1a

    goto :goto_b

    :cond_1a
    iget v6, p0, Landroidx/constraintlayout/motion/widget/l;->o:F

    :goto_b
    invoke-virtual {v2, p2, v6}, Landroidx/constraintlayout/motion/widget/q;->a(IF)V

    goto/16 :goto_0

    .line 297
    :pswitch_a
    iget v1, p0, Landroidx/constraintlayout/motion/widget/l;->n:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_c

    :cond_1b
    iget v6, p0, Landroidx/constraintlayout/motion/widget/l;->n:F

    :goto_c
    invoke-virtual {v2, p2, v6}, Landroidx/constraintlayout/motion/widget/q;->a(IF)V

    goto/16 :goto_0

    .line 294
    :pswitch_b
    iget v1, p0, Landroidx/constraintlayout/motion/widget/l;->m:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_d

    :cond_1c
    iget v6, p0, Landroidx/constraintlayout/motion/widget/l;->m:F

    :goto_d
    invoke-virtual {v2, p2, v6}, Landroidx/constraintlayout/motion/widget/q;->a(IF)V

    goto/16 :goto_0

    .line 273
    :pswitch_c
    iget v1, p0, Landroidx/constraintlayout/motion/widget/l;->h:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_e

    :cond_1d
    iget v6, p0, Landroidx/constraintlayout/motion/widget/l;->h:F

    :goto_e
    invoke-virtual {v2, p2, v6}, Landroidx/constraintlayout/motion/widget/q;->a(IF)V

    goto/16 :goto_0

    .line 270
    :pswitch_d
    iget v1, p0, Landroidx/constraintlayout/motion/widget/l;->g:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_f

    :cond_1e
    iget v6, p0, Landroidx/constraintlayout/motion/widget/l;->g:F

    :goto_f
    invoke-virtual {v2, p2, v6}, Landroidx/constraintlayout/motion/widget/q;->a(IF)V

    goto/16 :goto_0

    :cond_1f
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4a771f66 -> :sswitch_d
        -0x4a771f65 -> :sswitch_c
        -0x490b9c39 -> :sswitch_b
        -0x490b9c38 -> :sswitch_a
        -0x490b9c37 -> :sswitch_9
        -0x3bab3dd3 -> :sswitch_8
        -0x3621dfb2 -> :sswitch_7
        -0x3621dfb1 -> :sswitch_6
        -0x2d5a2d1e -> :sswitch_5
        -0x2d5a2d1d -> :sswitch_4
        -0x266f082 -> :sswitch_3
        -0x42d1a3 -> :sswitch_2
        0x2382115 -> :sswitch_1
        0x589b15e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 36
    check-cast p1, Landroidx/constraintlayout/motion/widget/l;

    .line 3197
    iget v0, p0, Landroidx/constraintlayout/motion/widget/l;->y:F

    iget p1, p1, Landroidx/constraintlayout/motion/widget/l;->y:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    return p1
.end method
