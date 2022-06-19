.class public Lh5$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh5$b$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:Z

.field public c:I

.field public d:I

.field public e:I

.field public f:Ljava/lang/String;

.field public g:I

.field public h:I

.field public i:F

.field public final j:Lh5;

.field public k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ly4;",
            ">;"
        }
    .end annotation
.end field

.field public l:Lk5;

.field public m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lh5$b$a;",
            ">;"
        }
    .end annotation
.end field

.field public n:I

.field public o:Z

.field public p:I

.field public q:I

.field public r:I


# direct methods
.method public constructor <init>(Lh5;Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lh5$b;->a:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lh5$b;->b:Z

    iput v0, p0, Lh5$b;->c:I

    iput v0, p0, Lh5$b;->d:I

    iput v1, p0, Lh5$b;->e:I

    const/4 v2, 0x0

    iput-object v2, p0, Lh5$b;->f:Ljava/lang/String;

    iput v0, p0, Lh5$b;->g:I

    const/16 v3, 0x190

    iput v3, p0, Lh5$b;->h:I

    const/4 v3, 0x0

    iput v3, p0, Lh5$b;->i:F

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lh5$b;->k:Ljava/util/ArrayList;

    iput-object v2, p0, Lh5$b;->l:Lk5;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lh5$b;->m:Ljava/util/ArrayList;

    iput v1, p0, Lh5$b;->n:I

    iput-boolean v1, p0, Lh5$b;->o:Z

    iput v0, p0, Lh5$b;->p:I

    iput v1, p0, Lh5$b;->q:I

    iput v1, p0, Lh5$b;->r:I

    invoke-static {p1}, Lh5;->d(Lh5;)I

    move-result v0

    iput v0, p0, Lh5$b;->h:I

    invoke-static {p1}, Lh5;->a(Lh5;)I

    move-result v0

    iput v0, p0, Lh5$b;->q:I

    iput-object p1, p0, Lh5$b;->j:Lh5;

    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lh5$b;->w(Lh5;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Lh5;Lh5$b;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lh5$b;->a:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lh5$b;->b:Z

    iput v0, p0, Lh5$b;->c:I

    iput v0, p0, Lh5$b;->d:I

    iput v1, p0, Lh5$b;->e:I

    const/4 v2, 0x0

    iput-object v2, p0, Lh5$b;->f:Ljava/lang/String;

    iput v0, p0, Lh5$b;->g:I

    const/16 v3, 0x190

    iput v3, p0, Lh5$b;->h:I

    const/4 v3, 0x0

    iput v3, p0, Lh5$b;->i:F

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lh5$b;->k:Ljava/util/ArrayList;

    iput-object v2, p0, Lh5$b;->l:Lk5;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lh5$b;->m:Ljava/util/ArrayList;

    iput v1, p0, Lh5$b;->n:I

    iput-boolean v1, p0, Lh5$b;->o:Z

    iput v0, p0, Lh5$b;->p:I

    iput v1, p0, Lh5$b;->q:I

    iput v1, p0, Lh5$b;->r:I

    iput-object p1, p0, Lh5$b;->j:Lh5;

    if-eqz p2, :cond_0

    iget p1, p2, Lh5$b;->p:I

    iput p1, p0, Lh5$b;->p:I

    iget p1, p2, Lh5$b;->e:I

    iput p1, p0, Lh5$b;->e:I

    iget-object p1, p2, Lh5$b;->f:Ljava/lang/String;

    iput-object p1, p0, Lh5$b;->f:Ljava/lang/String;

    iget p1, p2, Lh5$b;->g:I

    iput p1, p0, Lh5$b;->g:I

    iget p1, p2, Lh5$b;->h:I

    iput p1, p0, Lh5$b;->h:I

    iget-object p1, p2, Lh5$b;->k:Ljava/util/ArrayList;

    iput-object p1, p0, Lh5$b;->k:Ljava/util/ArrayList;

    iget p1, p2, Lh5$b;->i:F

    iput p1, p0, Lh5$b;->i:F

    iget p1, p2, Lh5$b;->q:I

    iput p1, p0, Lh5$b;->q:I

    :cond_0
    return-void
.end method

.method public static synthetic a(Lh5$b;)I
    .locals 0

    iget p0, p0, Lh5$b;->c:I

    return p0
.end method

.method public static synthetic b(Lh5$b;I)I
    .locals 0

    iput p1, p0, Lh5$b;->c:I

    return p1
.end method

.method public static synthetic c(Lh5$b;)I
    .locals 0

    iget p0, p0, Lh5$b;->d:I

    return p0
.end method

.method public static synthetic d(Lh5$b;I)I
    .locals 0

    iput p1, p0, Lh5$b;->d:I

    return p1
.end method

.method public static synthetic e(Lh5$b;)Z
    .locals 0

    iget-boolean p0, p0, Lh5$b;->b:Z

    return p0
.end method

.method public static synthetic f(Lh5$b;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lh5$b;->k:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic g(Lh5$b;)I
    .locals 0

    iget p0, p0, Lh5$b;->e:I

    return p0
.end method

.method public static synthetic h(Lh5$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lh5$b;->f:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic i(Lh5$b;)I
    .locals 0

    iget p0, p0, Lh5$b;->g:I

    return p0
.end method

.method public static synthetic j(Lh5$b;)I
    .locals 0

    iget p0, p0, Lh5$b;->h:I

    return p0
.end method

.method public static synthetic k(Lh5$b;)I
    .locals 0

    iget p0, p0, Lh5$b;->p:I

    return p0
.end method

.method public static synthetic l(Lh5$b;)F
    .locals 0

    iget p0, p0, Lh5$b;->i:F

    return p0
.end method

.method public static synthetic m(Lh5$b;)Lk5;
    .locals 0

    iget-object p0, p0, Lh5$b;->l:Lk5;

    return-object p0
.end method

.method public static synthetic n(Lh5$b;Lk5;)Lk5;
    .locals 0

    iput-object p1, p0, Lh5$b;->l:Lk5;

    return-object p1
.end method

.method public static synthetic o(Lh5$b;)I
    .locals 0

    iget p0, p0, Lh5$b;->a:I

    return p0
.end method

.method public static synthetic p(Lh5$b;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lh5$b;->m:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic q(Lh5$b;)Z
    .locals 0

    iget-boolean p0, p0, Lh5$b;->o:Z

    return p0
.end method

.method public static synthetic r(Lh5$b;)I
    .locals 0

    iget p0, p0, Lh5$b;->n:I

    return p0
.end method

.method public static synthetic s(Lh5$b;)Lh5;
    .locals 0

    iget-object p0, p0, Lh5$b;->j:Lh5;

    return-object p0
.end method


# virtual methods
.method public A()I
    .locals 1

    iget v0, p0, Lh5$b;->q:I

    return v0
.end method

.method public B()I
    .locals 1

    iget v0, p0, Lh5$b;->d:I

    return v0
.end method

.method public C()Lk5;
    .locals 1

    iget-object v0, p0, Lh5$b;->l:Lk5;

    return-object v0
.end method

.method public D()Z
    .locals 1

    iget-boolean v0, p0, Lh5$b;->o:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public E(I)Z
    .locals 1

    iget v0, p0, Lh5$b;->r:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public F(I)V
    .locals 0

    iput p1, p0, Lh5$b;->h:I

    return-void
.end method

.method public t(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2

    iget-object v0, p0, Lh5$b;->m:Ljava/util/ArrayList;

    new-instance v1, Lh5$b$a;

    invoke-direct {v1, p1, p0, p2}, Lh5$b$a;-><init>(Landroid/content/Context;Lh5$b;Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public u(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    iget v0, p0, Lh5$b;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v2, p0, Lh5$b;->d:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget v2, p0, Lh5$b;->c:I

    if-ne v2, v1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -> null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Lh5$b;->c:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public final v(Lh5;Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 8

    invoke-virtual {p3}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    const/4 v4, -0x1

    if-ge v2, v0, :cond_e

    invoke-virtual {p3, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v5

    sget v6, Ld7;->Transition_constraintSetEnd:I

    const-string v7, "layout"

    if-ne v5, v6, :cond_0

    iget v3, p0, Lh5$b;->c:I

    invoke-virtual {p3, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lh5$b;->c:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lh5$b;->c:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    new-instance v3, La7;

    invoke-direct {v3}, La7;-><init>()V

    iget v4, p0, Lh5$b;->c:I

    invoke-virtual {v3, p2, v4}, La7;->y(Landroid/content/Context;I)V

    invoke-static {p1}, Lh5;->b(Lh5;)Landroid/util/SparseArray;

    move-result-object v4

    iget v5, p0, Lh5$b;->c:I

    :goto_1
    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    sget v6, Ld7;->Transition_constraintSetStart:I

    if-ne v5, v6, :cond_1

    iget v3, p0, Lh5$b;->d:I

    invoke-virtual {p3, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lh5$b;->d:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lh5$b;->d:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    new-instance v3, La7;

    invoke-direct {v3}, La7;-><init>()V

    iget v4, p0, Lh5$b;->d:I

    invoke-virtual {v3, p2, v4}, La7;->y(Landroid/content/Context;I)V

    invoke-static {p1}, Lh5;->b(Lh5;)Landroid/util/SparseArray;

    move-result-object v4

    iget v5, p0, Lh5$b;->d:I

    goto :goto_1

    :cond_1
    sget v6, Ld7;->Transition_motionInterpolator:I

    if-ne v5, v6, :cond_5

    invoke-virtual {p3, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v6

    iget v6, v6, Landroid/util/TypedValue;->type:I

    const/4 v7, -0x2

    if-ne v6, v3, :cond_2

    invoke-virtual {p3, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lh5$b;->g:I

    if-eq v3, v4, :cond_d

    :goto_2
    iput v7, p0, Lh5$b;->e:I

    goto/16 :goto_3

    :cond_2
    const/4 v3, 0x3

    if-ne v6, v3, :cond_4

    invoke-virtual {p3, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lh5$b;->f:Ljava/lang/String;

    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual {p3, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lh5$b;->g:I

    goto :goto_2

    :cond_3
    iput v4, p0, Lh5$b;->e:I

    goto/16 :goto_3

    :cond_4
    iget v3, p0, Lh5$b;->e:I

    invoke-virtual {p3, v5, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lh5$b;->e:I

    goto :goto_3

    :cond_5
    sget v3, Ld7;->Transition_duration:I

    if-ne v5, v3, :cond_6

    iget v3, p0, Lh5$b;->h:I

    invoke-virtual {p3, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lh5$b;->h:I

    goto :goto_3

    :cond_6
    sget v3, Ld7;->Transition_staggered:I

    if-ne v5, v3, :cond_7

    iget v3, p0, Lh5$b;->i:F

    invoke-virtual {p3, v5, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lh5$b;->i:F

    goto :goto_3

    :cond_7
    sget v3, Ld7;->Transition_autoTransition:I

    if-ne v5, v3, :cond_8

    iget v3, p0, Lh5$b;->n:I

    invoke-virtual {p3, v5, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lh5$b;->n:I

    goto :goto_3

    :cond_8
    sget v3, Ld7;->Transition_android_id:I

    if-ne v5, v3, :cond_9

    iget v3, p0, Lh5$b;->a:I

    invoke-virtual {p3, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lh5$b;->a:I

    goto :goto_3

    :cond_9
    sget v3, Ld7;->Transition_transitionDisable:I

    if-ne v5, v3, :cond_a

    iget-boolean v3, p0, Lh5$b;->o:Z

    invoke-virtual {p3, v5, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lh5$b;->o:Z

    goto :goto_3

    :cond_a
    sget v3, Ld7;->Transition_pathMotionArc:I

    if-ne v5, v3, :cond_b

    invoke-virtual {p3, v5, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lh5$b;->p:I

    goto :goto_3

    :cond_b
    sget v3, Ld7;->Transition_layoutDuringTransition:I

    if-ne v5, v3, :cond_c

    invoke-virtual {p3, v5, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lh5$b;->q:I

    goto :goto_3

    :cond_c
    sget v3, Ld7;->Transition_transitionFlags:I

    if-ne v5, v3, :cond_d

    invoke-virtual {p3, v5, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lh5$b;->r:I

    :cond_d
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_e
    iget p1, p0, Lh5$b;->d:I

    if-ne p1, v4, :cond_f

    iput-boolean v3, p0, Lh5$b;->b:Z

    :cond_f
    return-void
.end method

.method public final w(Lh5;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget-object v0, Ld7;->Transition:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lh5$b;->v(Lh5;Landroid/content/Context;Landroid/content/res/TypedArray;)V

    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public x()I
    .locals 1

    iget v0, p0, Lh5$b;->n:I

    return v0
.end method

.method public y()I
    .locals 1

    iget v0, p0, Lh5$b;->h:I

    return v0
.end method

.method public z()I
    .locals 1

    iget v0, p0, Lh5$b;->c:I

    return v0
.end method
