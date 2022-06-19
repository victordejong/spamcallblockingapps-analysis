.class public final Landroidx/constraintlayout/motion/widget/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/widget/p$a;
    }
.end annotation


# instance fields
.field final a:Landroidx/constraintlayout/motion/widget/MotionLayout;

.field b:Landroidx/constraintlayout/widget/f;

.field c:Landroidx/constraintlayout/motion/widget/p$a;

.field d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/p$a;",
            ">;"
        }
    .end annotation
.end field

.field e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/widget/c;",
            ">;"
        }
    .end annotation
.end field

.field f:Landroid/util/SparseIntArray;

.field g:I

.field h:I

.field i:F

.field j:F

.field private k:Z

.field private l:Landroidx/constraintlayout/motion/widget/p$a;

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/p$a;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private o:Z

.field private p:Landroid/view/MotionEvent;

.field private q:Z

.field private r:Z

.field private s:Landroidx/constraintlayout/motion/widget/MotionLayout$d;

.field private t:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/MotionLayout;I)V
    .locals 3

    .line 890
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->b:Landroidx/constraintlayout/widget/f;

    .line 70
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$a;

    const/4 v1, 0x0

    .line 71
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/p;->k:Z

    .line 72
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/p;->d:Ljava/util/ArrayList;

    .line 73
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->l:Landroidx/constraintlayout/motion/widget/p$a;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->m:Ljava/util/ArrayList;

    .line 76
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->e:Landroid/util/SparseArray;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->n:Ljava/util/HashMap;

    .line 78
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->f:Landroid/util/SparseIntArray;

    .line 79
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/p;->o:Z

    const/16 v0, 0x190

    .line 80
    iput v0, p0, Landroidx/constraintlayout/motion/widget/p;->g:I

    .line 81
    iput v1, p0, Landroidx/constraintlayout/motion/widget/p;->h:I

    .line 85
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/p;->q:Z

    .line 86
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/p;->r:Z

    .line 891
    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/p;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 892
    invoke-direct {p0, p1, p3}, Landroidx/constraintlayout/motion/widget/p;->a(Landroid/content/Context;I)V

    .line 894
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/p;->e:Landroid/util/SparseArray;

    sget p2, Landroidx/constraintlayout/widget/e$a;->motion_base:I

    new-instance p3, Landroidx/constraintlayout/widget/c;

    invoke-direct {p3}, Landroidx/constraintlayout/widget/c;-><init>()V

    invoke-virtual {p1, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 895
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/p;->n:Ljava/util/HashMap;

    sget p2, Landroidx/constraintlayout/widget/e$a;->motion_base:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "motion_base"

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V
    .locals 3

    .line 886
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->b:Landroidx/constraintlayout/widget/f;

    .line 70
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$a;

    const/4 v1, 0x0

    .line 71
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/p;->k:Z

    .line 72
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/p;->d:Ljava/util/ArrayList;

    .line 73
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->l:Landroidx/constraintlayout/motion/widget/p$a;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->m:Ljava/util/ArrayList;

    .line 76
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->e:Landroid/util/SparseArray;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->n:Ljava/util/HashMap;

    .line 78
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->f:Landroid/util/SparseIntArray;

    .line 79
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/p;->o:Z

    const/16 v0, 0x190

    .line 80
    iput v0, p0, Landroidx/constraintlayout/motion/widget/p;->g:I

    .line 81
    iput v1, p0, Landroidx/constraintlayout/motion/widget/p;->h:I

    .line 85
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/p;->q:Z

    .line 86
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/p;->r:Z

    .line 887
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/p;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5

    const-string v0, "/"

    .line 1006
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/16 v0, 0x2f

    .line 1007
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1008
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v4, "id"

    invoke-virtual {v3, v0, v4, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 1009
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/p;->o:Z

    if-eqz v0, :cond_1

    .line 1010
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "id getMap res = "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :cond_1
    :goto_0
    if-ne p1, v1, :cond_3

    if-eqz p2, :cond_2

    .line 1014
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_2

    .line 1015
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_1

    :cond_2
    const-string p2, "MotionScene"

    const-string v0, "error in parsing id"

    .line 1017
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return p1
.end method

.method private a(IFFLandroid/view/MotionEvent;)Landroidx/constraintlayout/motion/widget/p$a;
    .locals 8

    const/4 v0, -0x1

    if-eq p1, v0, :cond_9

    .line 24220
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/p;->b:Landroidx/constraintlayout/widget/f;

    if-eqz v1, :cond_0

    .line 24221
    invoke-virtual {v1, p1, v0, v0}, Landroidx/constraintlayout/widget/f;->a(III)I

    move-result v1

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, p1

    .line 23231
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23232
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/p;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/motion/widget/p$a;

    .line 24433
    iget v4, v3, Landroidx/constraintlayout/motion/widget/p$a;->d:I

    if-eq v4, v1, :cond_2

    .line 25433
    iget v4, v3, Landroidx/constraintlayout/motion/widget/p$a;->c:I

    if-ne v4, v1, :cond_1

    .line 23234
    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 280
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 281
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/motion/widget/p$a;

    .line 26433
    iget-boolean v5, v4, Landroidx/constraintlayout/motion/widget/p$a;->o:Z

    if-nez v5, :cond_4

    .line 27433
    iget-object v5, v4, Landroidx/constraintlayout/motion/widget/p$a;->l:Landroidx/constraintlayout/motion/widget/s;

    if-eqz v5, :cond_4

    .line 28433
    iget-object v5, v4, Landroidx/constraintlayout/motion/widget/p$a;->l:Landroidx/constraintlayout/motion/widget/s;

    .line 286
    iget-boolean v6, p0, Landroidx/constraintlayout/motion/widget/p;->t:Z

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/motion/widget/s;->a(Z)V

    .line 29433
    iget-object v5, v4, Landroidx/constraintlayout/motion/widget/p$a;->l:Landroidx/constraintlayout/motion/widget/s;

    .line 287
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/p;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v5, v6, v3}, Landroidx/constraintlayout/motion/widget/s;->a(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v5

    if-eqz v5, :cond_5

    if-eqz p4, :cond_5

    .line 288
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 30433
    :cond_5
    iget-object v5, v4, Landroidx/constraintlayout/motion/widget/p$a;->l:Landroidx/constraintlayout/motion/widget/s;

    .line 291
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/p;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v5, v6, v3}, Landroidx/constraintlayout/motion/widget/s;->a(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v5

    if-eqz v5, :cond_6

    if-eqz p4, :cond_6

    .line 292
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 31433
    :cond_6
    iget-object v5, v4, Landroidx/constraintlayout/motion/widget/p$a;->l:Landroidx/constraintlayout/motion/widget/s;

    .line 31536
    iget v6, v5, Landroidx/constraintlayout/motion/widget/s;->g:F

    mul-float v6, v6, p2

    iget v5, v5, Landroidx/constraintlayout/motion/widget/s;->h:F

    mul-float v5, v5, p3

    add-float/2addr v6, v5

    .line 32433
    iget v5, v4, Landroidx/constraintlayout/motion/widget/p$a;->c:I

    if-ne v5, p1, :cond_7

    const/high16 v5, -0x40800000    # -1.0f

    goto :goto_3

    :cond_7
    const v5, 0x3f8ccccd    # 1.1f

    :goto_3
    mul-float v6, v6, v5

    cmpl-float v5, v6, v1

    if-lez v5, :cond_4

    move-object v2, v4

    move v1, v6

    goto :goto_2

    :cond_8
    return-object v2

    .line 323
    :cond_9
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$a;

    return-object p1
.end method

.method private a(Landroid/content/Context;I)V
    .locals 8

    .line 906
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 907
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    const/4 v1, 0x0

    .line 912
    :try_start_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    :goto_0
    const/4 v3, 0x1

    if-eq v2, v3, :cond_8

    if-eqz v2, :cond_7

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    goto/16 :goto_4

    .line 920
    :cond_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 921
    iget-boolean v5, p0, Landroidx/constraintlayout/motion/widget/p;->o:Z

    if-eqz v5, :cond_1

    .line 922
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "parsing = "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 927
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, -0x1

    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v3, "StateSet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x4

    goto :goto_2

    :sswitch_1
    const-string v3, "MotionScene"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :sswitch_2
    const-string v3, "OnSwipe"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x2

    goto :goto_2

    :sswitch_3
    const-string v3, "OnClick"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x3

    goto :goto_2

    :sswitch_4
    const-string v4, "Transition"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :sswitch_5
    const-string v3, "KeyFrameSet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x6

    goto :goto_2

    :sswitch_6
    const-string v3, "ConstraintSet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x5

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v3, -0x1

    :goto_2
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_4

    .line 966
    :pswitch_0
    new-instance v2, Landroidx/constraintlayout/motion/widget/g;

    invoke-direct {v2, p1, v0}, Landroidx/constraintlayout/motion/widget/g;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 50433
    iget-object v3, v1, Landroidx/constraintlayout/motion/widget/p$a;->k:Ljava/util/ArrayList;

    .line 967
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 963
    :pswitch_1
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/motion/widget/p;->b(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_4

    .line 960
    :pswitch_2
    new-instance v2, Landroidx/constraintlayout/widget/f;

    invoke-direct {v2, p1, v0}, Landroidx/constraintlayout/widget/f;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/p;->b:Landroidx/constraintlayout/widget/f;

    goto/16 :goto_4

    .line 49464
    :pswitch_3
    iget-object v2, v1, Landroidx/constraintlayout/motion/widget/p$a;->m:Ljava/util/ArrayList;

    new-instance v3, Landroidx/constraintlayout/motion/widget/p$a$a;

    invoke-direct {v3, p1, v1, v0}, Landroidx/constraintlayout/motion/widget/p$a$a;-><init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/p$a;Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :pswitch_4
    if-nez v1, :cond_3

    .line 950
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    .line 951
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v3

    .line 952
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " OnSwipe ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".xml:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 954
    :cond_3
    new-instance v2, Landroidx/constraintlayout/motion/widget/s;

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/p;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-direct {v2, p1, v3, v0}, Landroidx/constraintlayout/motion/widget/s;-><init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/MotionLayout;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 49433
    iput-object v2, v1, Landroidx/constraintlayout/motion/widget/p$a;->l:Landroidx/constraintlayout/motion/widget/s;

    goto :goto_4

    .line 932
    :pswitch_5
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/p;->d:Ljava/util/ArrayList;

    new-instance v2, Landroidx/constraintlayout/motion/widget/p$a;

    invoke-direct {v2, p0, p1, v0}, Landroidx/constraintlayout/motion/widget/p$a;-><init>(Landroidx/constraintlayout/motion/widget/p;Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 933
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$a;

    if-nez v1, :cond_4

    .line 44433
    iget-boolean v1, v2, Landroidx/constraintlayout/motion/widget/p$a;->b:Z

    if-nez v1, :cond_4

    .line 934
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$a;

    .line 45433
    iget-object v1, v2, Landroidx/constraintlayout/motion/widget/p$a;->l:Landroidx/constraintlayout/motion/widget/s;

    if-eqz v1, :cond_4

    .line 936
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$a;

    .line 46433
    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/p$a;->l:Landroidx/constraintlayout/motion/widget/s;

    .line 936
    iget-boolean v3, p0, Landroidx/constraintlayout/motion/widget/p;->t:Z

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/motion/widget/s;->a(Z)V

    .line 47433
    :cond_4
    iget-boolean v1, v2, Landroidx/constraintlayout/motion/widget/p$a;->b:Z

    if-eqz v1, :cond_6

    .line 48433
    iget v1, v2, Landroidx/constraintlayout/motion/widget/p$a;->c:I

    if-ne v1, v6, :cond_5

    .line 941
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/p;->l:Landroidx/constraintlayout/motion/widget/p$a;

    goto :goto_3

    .line 943
    :cond_5
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/p;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 945
    :goto_3
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/p;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_6
    move-object v1, v2

    goto :goto_4

    .line 929
    :pswitch_6
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/motion/widget/p;->a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_4

    .line 917
    :cond_7
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 914
    :goto_4
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :cond_8
    return-void

    :catch_0
    move-exception p1

    .line 985
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-void

    :catch_1
    move-exception p1

    .line 983
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x50764adb -> :sswitch_6
        -0x49df9cec -> :sswitch_5
        0x100d4975 -> :sswitch_4
        0x12a432c9 -> :sswitch_3
        0x138aac7b -> :sswitch_2
        0x2f487256 -> :sswitch_1
        0x526c4e31 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4

    .line 990
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p2

    .line 991
    sget-object v0, Landroidx/constraintlayout/widget/e$b;->MotionScene:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 992
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    .line 994
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 995
    sget v3, Landroidx/constraintlayout/widget/e$b;->MotionScene_defaultDuration:I

    if-ne v2, v3, :cond_0

    .line 996
    iget v3, p0, Landroidx/constraintlayout/motion/widget/p;->g:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/p;->g:I

    goto :goto_1

    .line 997
    :cond_0
    sget v3, Landroidx/constraintlayout/widget/e$b;->MotionScene_layoutDuringTransition:I

    if-ne v2, v3, :cond_1

    .line 998
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/p;->h:I

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1001
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private b(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 11

    .line 1024
    new-instance v0, Landroidx/constraintlayout/widget/c;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/c;-><init>()V

    const/4 v1, 0x0

    .line 50434
    iput-boolean v1, v0, Landroidx/constraintlayout/widget/c;->b:Z

    .line 1026
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    :goto_0
    if-ge v1, v2, :cond_5

    .line 1030
    invoke-interface {p2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    .line 1031
    invoke-interface {p2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    .line 1032
    iget-boolean v8, p0, Landroidx/constraintlayout/motion/widget/p;->o:Z

    if-eqz v8, :cond_0

    .line 1033
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "id string = "

    invoke-virtual {v10, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1035
    :cond_0
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    const-string v8, "deriveConstraintsFrom"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "id"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_2

    .line 1037
    :cond_1
    invoke-direct {p0, p1, v7}, Landroidx/constraintlayout/motion/widget/p;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 1038
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/p;->n:Ljava/util/HashMap;

    if-nez v7, :cond_2

    const-string v7, ""

    goto :goto_1

    :cond_2
    const/16 v8, 0x2f

    .line 50439
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-gez v8, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v8, v8, 0x1

    .line 50443
    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 1038
    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1041
    :cond_4
    invoke-direct {p0, p1, v7}, Landroidx/constraintlayout/motion/widget/p;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    if-eq v4, v3, :cond_8

    .line 1046
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/p;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->p:I

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    .line 50444
    iput-boolean v1, v0, Landroidx/constraintlayout/widget/c;->a:Z

    .line 1049
    :cond_6
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/widget/c;->a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    if-eq v5, v3, :cond_7

    .line 1051
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/p;->f:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1053
    :cond_7
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/p;->e:Landroid/util/SparseArray;

    invoke-virtual {p1, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_8
    return-void
.end method


# virtual methods
.method final a(I)Landroidx/constraintlayout/widget/c;
    .locals 3

    .line 1084
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/p;->o:Z

    if-eqz v0, :cond_0

    .line 1085
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "id "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1086
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/p;->e:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1088
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->b:Landroidx/constraintlayout/widget/f;

    if-eqz v0, :cond_1

    const/4 v1, -0x1

    .line 1089
    invoke-virtual {v0, p1, v1, v1}, Landroidx/constraintlayout/widget/f;->a(III)I

    move-result v0

    if-eq v0, v1, :cond_1

    move p1, v0

    .line 1094
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1095
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Warning could not find ConstraintSet id/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/p;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroidx/constraintlayout/motion/widget/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " In MotionScene"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MotionScene"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/p;->e:Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/c;

    return-object p1

    .line 1098
    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/c;

    return-object p1
.end method

.method final a(II)V
    .locals 6

    .line 101
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->b:Landroidx/constraintlayout/widget/f;

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {v0, p1, v1, v1}, Landroidx/constraintlayout/widget/f;->a(III)I

    move-result v0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, p1

    .line 106
    :goto_0
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/p;->b:Landroidx/constraintlayout/widget/f;

    invoke-virtual {v2, p2, v1, v1}, Landroidx/constraintlayout/widget/f;->a(III)I

    move-result v2

    if-eq v2, v1, :cond_2

    goto :goto_1

    :cond_1
    move v0, p1

    :cond_2
    move v2, p2

    .line 116
    :goto_1
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/p;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/motion/widget/p$a;

    .line 4433
    iget v5, v4, Landroidx/constraintlayout/motion/widget/p$a;->c:I

    if-ne v5, v2, :cond_4

    .line 5433
    iget v5, v4, Landroidx/constraintlayout/motion/widget/p$a;->d:I

    if-eq v5, v0, :cond_5

    .line 6433
    :cond_4
    iget v5, v4, Landroidx/constraintlayout/motion/widget/p$a;->c:I

    if-ne v5, p2, :cond_3

    .line 7433
    iget v5, v4, Landroidx/constraintlayout/motion/widget/p$a;->d:I

    if-ne v5, p1, :cond_3

    .line 126
    :cond_5
    iput-object v4, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$a;

    if-eqz v4, :cond_6

    .line 8433
    iget-object p1, v4, Landroidx/constraintlayout/motion/widget/p$a;->l:Landroidx/constraintlayout/motion/widget/s;

    if-eqz p1, :cond_6

    .line 128
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$a;

    .line 9433
    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/p$a;->l:Landroidx/constraintlayout/motion/widget/s;

    .line 128
    iget-boolean p2, p0, Landroidx/constraintlayout/motion/widget/p;->t:Z

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/s;->a(Z)V

    :cond_6
    return-void

    .line 134
    :cond_7
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/p;->l:Landroidx/constraintlayout/motion/widget/p$a;

    .line 135
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/p;->m:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/motion/widget/p$a;

    .line 10433
    iget v5, v4, Landroidx/constraintlayout/motion/widget/p$a;->c:I

    if-ne v5, p2, :cond_8

    move-object p1, v4

    goto :goto_2

    .line 141
    :cond_9
    new-instance p2, Landroidx/constraintlayout/motion/widget/p$a;

    invoke-direct {p2, p0, p1}, Landroidx/constraintlayout/motion/widget/p$a;-><init>(Landroidx/constraintlayout/motion/widget/p;Landroidx/constraintlayout/motion/widget/p$a;)V

    .line 11433
    iput v0, p2, Landroidx/constraintlayout/motion/widget/p$a;->d:I

    .line 12433
    iput v2, p2, Landroidx/constraintlayout/motion/widget/p$a;->c:I

    if-eq v0, v1, :cond_a

    .line 146
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/p;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_a
    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$a;

    return-void
.end method

.method final a(Landroid/view/MotionEvent;ILandroidx/constraintlayout/motion/widget/MotionLayout;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    .line 1255
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 1256
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/p;->s:Landroidx/constraintlayout/motion/widget/MotionLayout$d;

    if-nez v5, :cond_0

    .line 1257
    invoke-static {}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a()Landroidx/constraintlayout/motion/widget/MotionLayout$d;

    move-result-object v5

    iput-object v5, v0, Landroidx/constraintlayout/motion/widget/p;->s:Landroidx/constraintlayout/motion/widget/MotionLayout$d;

    .line 1259
    :cond_0
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/p;->s:Landroidx/constraintlayout/motion/widget/MotionLayout$d;

    invoke-interface {v5, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->a(Landroid/view/MotionEvent;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eq v2, v7, :cond_c

    .line 1271
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    if-eqz v10, :cond_6

    if-eq v10, v5, :cond_1

    goto/16 :goto_4

    .line 1297
    :cond_1
    iget-boolean v10, v0, Landroidx/constraintlayout/motion/widget/p;->q:Z

    if-nez v10, :cond_c

    .line 1300
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v10

    iget v11, v0, Landroidx/constraintlayout/motion/widget/p;->j:F

    sub-float/2addr v10, v11

    .line 1301
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v11

    iget v12, v0, Landroidx/constraintlayout/motion/widget/p;->i:F

    sub-float/2addr v11, v12

    float-to-double v12, v11

    const-wide/16 v14, 0x0

    cmpl-double v16, v12, v14

    if-nez v16, :cond_2

    float-to-double v12, v10

    cmpl-double v16, v12, v14

    if-eqz v16, :cond_3

    .line 1305
    :cond_2
    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/p;->p:Landroid/view/MotionEvent;

    if-nez v12, :cond_4

    :cond_3
    return-void

    .line 1309
    :cond_4
    invoke-direct {v0, v2, v11, v10, v12}, Landroidx/constraintlayout/motion/widget/p;->a(IFFLandroid/view/MotionEvent;)Landroidx/constraintlayout/motion/widget/p$a;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 1316
    invoke-virtual {v3, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(Landroidx/constraintlayout/motion/widget/p$a;)V

    .line 1317
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$a;

    .line 50466
    iget-object v2, v2, Landroidx/constraintlayout/motion/widget/p$a;->l:Landroidx/constraintlayout/motion/widget/s;

    .line 1317
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/p;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v2, v10, v4}, Landroidx/constraintlayout/motion/widget/s;->a(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 1318
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/p;->p:Landroid/view/MotionEvent;

    .line 1319
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/p;->p:Landroid/view/MotionEvent;

    invoke-virtual {v10}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-virtual {v2, v4, v10}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x1

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v0, Landroidx/constraintlayout/motion/widget/p;->r:Z

    .line 1320
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$a;

    .line 50467
    iget-object v2, v2, Landroidx/constraintlayout/motion/widget/p$a;->l:Landroidx/constraintlayout/motion/widget/s;

    .line 1320
    iget v4, v0, Landroidx/constraintlayout/motion/widget/p;->i:F

    iget v10, v0, Landroidx/constraintlayout/motion/widget/p;->j:F

    .line 50468
    iput v4, v2, Landroidx/constraintlayout/motion/widget/s;->k:F

    .line 50469
    iput v10, v2, Landroidx/constraintlayout/motion/widget/s;->l:F

    .line 50470
    iput-boolean v9, v2, Landroidx/constraintlayout/motion/widget/s;->i:Z

    goto/16 :goto_4

    .line 1273
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iput v2, v0, Landroidx/constraintlayout/motion/widget/p;->i:F

    .line 1274
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iput v2, v0, Landroidx/constraintlayout/motion/widget/p;->j:F

    .line 1275
    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/p;->p:Landroid/view/MotionEvent;

    .line 1276
    iput-boolean v9, v0, Landroidx/constraintlayout/motion/widget/p;->q:Z

    .line 1277
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$a;

    .line 50450
    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/p$a;->l:Landroidx/constraintlayout/motion/widget/s;

    if-eqz v1, :cond_b

    .line 1278
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$a;

    .line 50451
    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/p$a;->l:Landroidx/constraintlayout/motion/widget/s;

    .line 1278
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/p;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 50452
    iget v3, v1, Landroidx/constraintlayout/motion/widget/s;->d:I

    if-ne v3, v7, :cond_7

    :goto_1
    move-object v1, v6

    goto :goto_2

    .line 50455
    :cond_7
    iget v1, v1, Landroidx/constraintlayout/motion/widget/s;->d:I

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_1

    .line 50459
    :cond_8
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v4, v2, v3, v5, v1}, Landroid/graphics/RectF;->set(FFFF)V

    move-object v1, v4

    :goto_2
    if-eqz v1, :cond_9

    .line 1279
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/p;->p:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/p;->p:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1280
    iput-object v6, v0, Landroidx/constraintlayout/motion/widget/p;->p:Landroid/view/MotionEvent;

    .line 1281
    iput-boolean v8, v0, Landroidx/constraintlayout/motion/widget/p;->q:Z

    return-void

    .line 1284
    :cond_9
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$a;

    .line 50461
    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/p$a;->l:Landroidx/constraintlayout/motion/widget/s;

    .line 1284
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/p;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v1, v2, v4}, Landroidx/constraintlayout/motion/widget/s;->a(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 1285
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/p;->p:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/p;->p:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-nez v1, :cond_a

    .line 1286
    iput-boolean v8, v0, Landroidx/constraintlayout/motion/widget/p;->r:Z

    goto :goto_3

    .line 1288
    :cond_a
    iput-boolean v9, v0, Landroidx/constraintlayout/motion/widget/p;->r:Z

    .line 1290
    :goto_3
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$a;

    .line 50462
    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/p$a;->l:Landroidx/constraintlayout/motion/widget/s;

    .line 1290
    iget v2, v0, Landroidx/constraintlayout/motion/widget/p;->i:F

    iget v3, v0, Landroidx/constraintlayout/motion/widget/p;->j:F

    .line 50463
    iput v2, v1, Landroidx/constraintlayout/motion/widget/s;->k:F

    .line 50464
    iput v3, v1, Landroidx/constraintlayout/motion/widget/s;->l:F

    :cond_b
    return-void

    .line 1324
    :cond_c
    :goto_4
    iget-boolean v2, v0, Landroidx/constraintlayout/motion/widget/p;->q:Z

    if-eqz v2, :cond_d

    return-void

    .line 1327
    :cond_d
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$a;

    if-eqz v2, :cond_1f

    .line 50472
    iget-object v2, v2, Landroidx/constraintlayout/motion/widget/p$a;->l:Landroidx/constraintlayout/motion/widget/s;

    if-eqz v2, :cond_1f

    .line 1327
    iget-boolean v2, v0, Landroidx/constraintlayout/motion/widget/p;->r:Z

    if-nez v2, :cond_1f

    .line 1328
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$a;

    .line 50473
    iget-object v2, v2, Landroidx/constraintlayout/motion/widget/p$a;->l:Landroidx/constraintlayout/motion/widget/s;

    .line 1328
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/p;->s:Landroidx/constraintlayout/motion/widget/MotionLayout$d;

    .line 50474
    invoke-interface {v4, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->a(Landroid/view/MotionEvent;)V

    .line 50475
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    if-eqz v10, :cond_1e

    const/4 v12, 0x0

    if-eq v10, v8, :cond_16

    if-eq v10, v5, :cond_e

    goto/16 :goto_d

    .line 50482
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iget v10, v2, Landroidx/constraintlayout/motion/widget/s;->l:F

    sub-float/2addr v5, v10

    .line 50483
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v10

    iget v13, v2, Landroidx/constraintlayout/motion/widget/s;->k:F

    sub-float/2addr v10, v13

    .line 50484
    iget v13, v2, Landroidx/constraintlayout/motion/widget/s;->g:F

    mul-float v13, v13, v10

    iget v14, v2, Landroidx/constraintlayout/motion/widget/s;->h:F

    mul-float v14, v14, v5

    add-float/2addr v13, v14

    .line 50489
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    iget v14, v2, Landroidx/constraintlayout/motion/widget/s;->s:F

    cmpl-float v13, v13, v14

    if-gtz v13, :cond_f

    iget-boolean v13, v2, Landroidx/constraintlayout/motion/widget/s;->i:Z

    if-eqz v13, :cond_1f

    .line 50493
    :cond_f
    iget-object v13, v2, Landroidx/constraintlayout/motion/widget/s;->m:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 50605
    iget v13, v13, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    .line 50494
    iget-boolean v14, v2, Landroidx/constraintlayout/motion/widget/s;->i:Z

    if-nez v14, :cond_10

    .line 50495
    iput-boolean v8, v2, Landroidx/constraintlayout/motion/widget/s;->i:Z

    .line 50496
    iget-object v14, v2, Landroidx/constraintlayout/motion/widget/s;->m:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v14, v13}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 50501
    :cond_10
    iget v14, v2, Landroidx/constraintlayout/motion/widget/s;->b:I

    if-eq v14, v7, :cond_11

    .line 50503
    iget-object v14, v2, Landroidx/constraintlayout/motion/widget/s;->m:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v15, v2, Landroidx/constraintlayout/motion/widget/s;->b:I

    iget v6, v2, Landroidx/constraintlayout/motion/widget/s;->f:F

    iget v7, v2, Landroidx/constraintlayout/motion/widget/s;->e:F

    iget-object v11, v2, Landroidx/constraintlayout/motion/widget/s;->j:[F

    move/from16 v16, v13

    move/from16 v17, v6

    move/from16 v18, v7

    move-object/from16 v19, v11

    invoke-virtual/range {v14 .. v19}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(IFFF[F)V

    goto :goto_5

    .line 50511
    :cond_11
    iget-object v6, v2, Landroidx/constraintlayout/motion/widget/s;->m:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getWidth()I

    move-result v6

    iget-object v7, v2, Landroidx/constraintlayout/motion/widget/s;->m:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-float v6, v6

    .line 50512
    iget-object v7, v2, Landroidx/constraintlayout/motion/widget/s;->j:[F

    iget v11, v2, Landroidx/constraintlayout/motion/widget/s;->h:F

    mul-float v11, v11, v6

    aput v11, v7, v8

    .line 50513
    iget-object v7, v2, Landroidx/constraintlayout/motion/widget/s;->j:[F

    iget v11, v2, Landroidx/constraintlayout/motion/widget/s;->g:F

    mul-float v6, v6, v11

    aput v6, v7, v9

    .line 50516
    :goto_5
    iget v6, v2, Landroidx/constraintlayout/motion/widget/s;->g:F

    iget-object v7, v2, Landroidx/constraintlayout/motion/widget/s;->j:[F

    aget v7, v7, v9

    mul-float v6, v6, v7

    iget v7, v2, Landroidx/constraintlayout/motion/widget/s;->h:F

    iget-object v11, v2, Landroidx/constraintlayout/motion/widget/s;->j:[F

    aget v11, v11, v8

    mul-float v7, v7, v11

    add-float/2addr v6, v7

    .line 50524
    iget v7, v2, Landroidx/constraintlayout/motion/widget/s;->q:F

    mul-float v6, v6, v7

    .line 50526
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v6, v6

    const-wide v14, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v11, v6, v14

    if-gez v11, :cond_12

    .line 50527
    iget-object v6, v2, Landroidx/constraintlayout/motion/widget/s;->j:[F

    const v7, 0x3c23d70a    # 0.01f

    aput v7, v6, v9

    .line 50528
    iget-object v6, v2, Landroidx/constraintlayout/motion/widget/s;->j:[F

    aput v7, v6, v8

    .line 50532
    :cond_12
    iget v6, v2, Landroidx/constraintlayout/motion/widget/s;->g:F

    cmpl-float v6, v6, v12

    if-eqz v6, :cond_13

    .line 50533
    iget-object v5, v2, Landroidx/constraintlayout/motion/widget/s;->j:[F

    aget v5, v5, v9

    div-float/2addr v10, v5

    goto :goto_6

    .line 50535
    :cond_13
    iget-object v6, v2, Landroidx/constraintlayout/motion/widget/s;->j:[F

    aget v6, v6, v8

    div-float v10, v5, v6

    :goto_6
    add-float/2addr v13, v10

    const/high16 v5, 0x3f800000    # 1.0f

    .line 50540
    invoke-static {v13, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v5, v12}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 50542
    iget-object v6, v2, Landroidx/constraintlayout/motion/widget/s;->m:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 50606
    iget v6, v6, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_15

    .line 50543
    iget-object v6, v2, Landroidx/constraintlayout/motion/widget/s;->m:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v6, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 50547
    invoke-interface {v4}, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->b()V

    .line 50548
    invoke-interface {v4}, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->c()F

    move-result v5

    .line 50549
    invoke-interface {v4}, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->d()F

    move-result v4

    .line 50550
    iget v6, v2, Landroidx/constraintlayout/motion/widget/s;->g:F

    cmpl-float v6, v6, v12

    if-eqz v6, :cond_14

    iget-object v4, v2, Landroidx/constraintlayout/motion/widget/s;->j:[F

    aget v4, v4, v9

    div-float/2addr v5, v4

    goto :goto_7

    :cond_14
    iget-object v5, v2, Landroidx/constraintlayout/motion/widget/s;->j:[F

    aget v5, v5, v8

    div-float v5, v4, v5

    .line 50551
    :goto_7
    iget-object v4, v2, Landroidx/constraintlayout/motion/widget/s;->m:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iput v5, v4, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:F

    goto :goto_8

    .line 50553
    :cond_15
    iget-object v4, v2, Landroidx/constraintlayout/motion/widget/s;->m:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iput v12, v4, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:F

    .line 50555
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iput v4, v2, Landroidx/constraintlayout/motion/widget/s;->k:F

    .line 50556
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iput v4, v2, Landroidx/constraintlayout/motion/widget/s;->l:F

    goto/16 :goto_d

    .line 50560
    :cond_16
    iput-boolean v9, v2, Landroidx/constraintlayout/motion/widget/s;->i:Z

    .line 50561
    invoke-interface {v4}, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->b()V

    .line 50562
    invoke-interface {v4}, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->c()F

    move-result v5

    .line 50563
    invoke-interface {v4}, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->d()F

    move-result v4

    .line 50564
    iget-object v6, v2, Landroidx/constraintlayout/motion/widget/s;->m:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 50607
    iget v6, v6, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    .line 50570
    iget v7, v2, Landroidx/constraintlayout/motion/widget/s;->b:I

    const/4 v10, -0x1

    if-eq v7, v10, :cond_17

    .line 50571
    iget-object v13, v2, Landroidx/constraintlayout/motion/widget/s;->m:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v14, v2, Landroidx/constraintlayout/motion/widget/s;->b:I

    iget v7, v2, Landroidx/constraintlayout/motion/widget/s;->f:F

    iget v10, v2, Landroidx/constraintlayout/motion/widget/s;->e:F

    iget-object v11, v2, Landroidx/constraintlayout/motion/widget/s;->j:[F

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v10

    move-object/from16 v18, v11

    invoke-virtual/range {v13 .. v18}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(IFFF[F)V

    goto :goto_9

    .line 50573
    :cond_17
    iget-object v7, v2, Landroidx/constraintlayout/motion/widget/s;->m:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getWidth()I

    move-result v7

    iget-object v10, v2, Landroidx/constraintlayout/motion/widget/s;->m:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v10}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getHeight()I

    move-result v10

    invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    .line 50574
    iget-object v10, v2, Landroidx/constraintlayout/motion/widget/s;->j:[F

    iget v11, v2, Landroidx/constraintlayout/motion/widget/s;->h:F

    mul-float v11, v11, v7

    aput v11, v10, v8

    .line 50575
    iget-object v10, v2, Landroidx/constraintlayout/motion/widget/s;->j:[F

    iget v11, v2, Landroidx/constraintlayout/motion/widget/s;->g:F

    mul-float v7, v7, v11

    aput v7, v10, v9

    .line 50579
    :goto_9
    iget v7, v2, Landroidx/constraintlayout/motion/widget/s;->g:F

    cmpl-float v7, v7, v12

    if-eqz v7, :cond_18

    .line 50580
    iget-object v4, v2, Landroidx/constraintlayout/motion/widget/s;->j:[F

    aget v4, v4, v9

    div-float/2addr v5, v4

    goto :goto_a

    .line 50582
    :cond_18
    iget-object v5, v2, Landroidx/constraintlayout/motion/widget/s;->j:[F

    aget v5, v5, v8

    div-float v5, v4, v5

    .line 50590
    :goto_a
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_19

    const/high16 v4, 0x40400000    # 3.0f

    div-float v4, v5, v4

    add-float/2addr v4, v6

    goto :goto_b

    :cond_19
    move v4, v6

    :goto_b
    cmpl-float v7, v4, v12

    if-eqz v7, :cond_1c

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v9, v4, v7

    if-eqz v9, :cond_1c

    .line 50593
    iget v7, v2, Landroidx/constraintlayout/motion/widget/s;->a:I

    const/4 v9, 0x3

    if-eq v7, v9, :cond_1c

    .line 50594
    iget-object v7, v2, Landroidx/constraintlayout/motion/widget/s;->m:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v9, v2, Landroidx/constraintlayout/motion/widget/s;->a:I

    float-to-double v10, v4

    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    cmpg-double v4, v10, v13

    if-gez v4, :cond_1a

    const/4 v4, 0x0

    goto :goto_c

    :cond_1a
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_c
    invoke-virtual {v7, v9, v4, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(IFF)V

    cmpl-float v4, v12, v6

    if-gez v4, :cond_1b

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, v4, v6

    if-gtz v4, :cond_1f

    .line 50596
    :cond_1b
    iget-object v2, v2, Landroidx/constraintlayout/motion/widget/s;->m:Landroidx/constraintlayout/motion/widget/MotionLayout;

    sget v4, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->d:I

    invoke-virtual {v2, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(I)V

    goto :goto_d

    :cond_1c
    cmpl-float v5, v12, v4

    if-gez v5, :cond_1d

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v4, v5, v4

    if-gtz v4, :cond_1f

    .line 50599
    :cond_1d
    iget-object v2, v2, Landroidx/constraintlayout/motion/widget/s;->m:Landroidx/constraintlayout/motion/widget/MotionLayout;

    sget v4, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->d:I

    invoke-virtual {v2, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(I)V

    goto :goto_d

    .line 50477
    :cond_1e
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iput v4, v2, Landroidx/constraintlayout/motion/widget/s;->k:F

    .line 50478
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iput v4, v2, Landroidx/constraintlayout/motion/widget/s;->l:F

    .line 50479
    iput-boolean v9, v2, Landroidx/constraintlayout/motion/widget/s;->i:Z

    .line 1331
    :cond_1f
    :goto_d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iput v2, v0, Landroidx/constraintlayout/motion/widget/p;->i:F

    .line 1332
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iput v2, v0, Landroidx/constraintlayout/motion/widget/p;->j:F

    .line 1334
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v8, :cond_20

    .line 1335
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/p;->s:Landroidx/constraintlayout/motion/widget/MotionLayout$d;

    if-eqz v1, :cond_20

    .line 1336
    invoke-interface {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->a()V

    const/4 v1, 0x0

    .line 1337
    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/p;->s:Landroidx/constraintlayout/motion/widget/MotionLayout$d;

    .line 1338
    iget v1, v3, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_20

    .line 1339
    iget v1, v3, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    invoke-virtual {v0, v3, v1}, Landroidx/constraintlayout/motion/widget/p;->b(Landroidx/constraintlayout/motion/widget/MotionLayout;I)Z

    :cond_20
    return-void
.end method

.method public final a(Landroidx/constraintlayout/motion/widget/MotionLayout;I)V
    .locals 4

    .line 243
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/p$a;

    .line 15433
    iget-object v2, v1, Landroidx/constraintlayout/motion/widget/p$a;->m:Ljava/util/ArrayList;

    .line 244
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 16433
    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/p$a;->m:Ljava/util/ArrayList;

    .line 245
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/p$a$a;

    .line 246
    invoke-virtual {v2, p1}, Landroidx/constraintlayout/motion/widget/p$a$a;->a(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    goto :goto_0

    .line 250
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/p$a;

    .line 17433
    iget-object v2, v1, Landroidx/constraintlayout/motion/widget/p$a;->m:Ljava/util/ArrayList;

    .line 251
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 18433
    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/p$a;->m:Ljava/util/ArrayList;

    .line 252
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/p$a$a;

    .line 253
    invoke-virtual {v2, p1}, Landroidx/constraintlayout/motion/widget/p$a$a;->a(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    goto :goto_1

    .line 258
    :cond_3
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/p$a;

    .line 19433
    iget-object v2, v1, Landroidx/constraintlayout/motion/widget/p$a;->m:Ljava/util/ArrayList;

    .line 259
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 20433
    iget-object v2, v1, Landroidx/constraintlayout/motion/widget/p$a;->m:Ljava/util/ArrayList;

    .line 260
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/motion/widget/p$a$a;

    .line 261
    invoke-virtual {v3, p1, p2, v1}, Landroidx/constraintlayout/motion/widget/p$a$a;->a(Landroidx/constraintlayout/motion/widget/MotionLayout;ILandroidx/constraintlayout/motion/widget/p$a;)V

    goto :goto_2

    .line 265
    :cond_5
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/p$a;

    .line 21433
    iget-object v2, v1, Landroidx/constraintlayout/motion/widget/p$a;->m:Ljava/util/ArrayList;

    .line 266
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 22433
    iget-object v2, v1, Landroidx/constraintlayout/motion/widget/p$a;->m:Ljava/util/ArrayList;

    .line 267
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/motion/widget/p$a$a;

    .line 268
    invoke-virtual {v3, p1, p2, v1}, Landroidx/constraintlayout/motion/widget/p$a$a;->a(Landroidx/constraintlayout/motion/widget/MotionLayout;ILandroidx/constraintlayout/motion/widget/p$a;)V

    goto :goto_3

    :cond_7
    return-void
.end method

.method public final a(Landroidx/constraintlayout/motion/widget/m;)V
    .locals 2

    .line 1117
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$a;

    if-nez v0, :cond_1

    .line 1118
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->l:Landroidx/constraintlayout/motion/widget/p$a;

    if-eqz v0, :cond_0

    .line 50446
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/p$a;->k:Ljava/util/ArrayList;

    .line 1119
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/g;

    .line 1120
    invoke-virtual {v1, p1}, Landroidx/constraintlayout/motion/widget/g;->a(Landroidx/constraintlayout/motion/widget/m;)V

    goto :goto_0

    :cond_0
    return-void

    .line 50447
    :cond_1
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/p$a;->k:Ljava/util/ArrayList;

    .line 1125
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/g;

    .line 1126
    invoke-virtual {v1, p1}, Landroidx/constraintlayout/motion/widget/g;->a(Landroidx/constraintlayout/motion/widget/m;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final a(Landroidx/constraintlayout/motion/widget/p$a;)V
    .locals 1

    .line 213
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$a;

    if-eqz p1, :cond_0

    .line 13433
    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/p$a;->l:Landroidx/constraintlayout/motion/widget/s;

    if-eqz p1, :cond_0

    .line 215
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$a;

    .line 14433
    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/p$a;->l:Landroidx/constraintlayout/motion/widget/s;

    .line 215
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/p;->t:Z

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/s;->a(Z)V

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 418
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/p;->t:Z

    .line 419
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$a;

    if-eqz p1, :cond_0

    .line 42433
    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/p$a;->l:Landroidx/constraintlayout/motion/widget/s;

    if-eqz p1, :cond_0

    .line 420
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$a;

    .line 43433
    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/p$a;->l:Landroidx/constraintlayout/motion/widget/s;

    .line 420
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/p;->t:Z

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/s;->a(Z)V

    :cond_0
    return-void
.end method

.method final a()Z
    .locals 3

    .line 1241
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/p$a;

    .line 50448
    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/p$a;->l:Landroidx/constraintlayout/motion/widget/s;

    if-eqz v1, :cond_0

    return v2

    .line 1246
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$a;

    if-eqz v0, :cond_2

    .line 50449
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/p$a;->l:Landroidx/constraintlayout/motion/widget/s;

    if-eqz v0, :cond_2

    return v2

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method final b()I
    .locals 1

    .line 1374
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$a;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 50608
    :cond_0
    iget v0, v0, Landroidx/constraintlayout/motion/widget/p$a;->d:I

    return v0
.end method

.method final b(I)V
    .locals 3

    .line 1540
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-lez v0, :cond_1

    .line 1542
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/p;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/motion/widget/p;->b(I)V

    .line 1543
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/p;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/c;

    .line 1544
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/p;->e:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/c;

    if-nez v2, :cond_0

    .line 1546
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "ERROR! invalid deriveConstraintsFrom: @id/"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/p;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 1547
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/constraintlayout/motion/widget/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MotionScene"

    .line 1546
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1550
    :cond_0
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/c;->a(Landroidx/constraintlayout/widget/c;)V

    .line 1551
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->f:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    :cond_1
    return-void
.end method

.method final b(Landroidx/constraintlayout/motion/widget/MotionLayout;I)Z
    .locals 7

    .line 33414
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->s:Landroidx/constraintlayout/motion/widget/MotionLayout$d;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return v1

    .line 360
    :cond_1
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/p;->k:Z

    if-eqz v0, :cond_2

    return v1

    .line 364
    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/motion/widget/p$a;

    .line 33433
    iget v4, v3, Landroidx/constraintlayout/motion/widget/p$a;->n:I

    if-eqz v4, :cond_3

    .line 368
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$a;

    if-eq v4, v3, :cond_3

    .line 34433
    iget v4, v3, Landroidx/constraintlayout/motion/widget/p$a;->d:I

    if-ne p2, v4, :cond_6

    .line 35433
    iget v4, v3, Landroidx/constraintlayout/motion/widget/p$a;->n:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_4

    .line 36433
    iget v4, v3, Landroidx/constraintlayout/motion/widget/p$a;->n:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_6

    .line 374
    :cond_4
    sget p2, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->d:I

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(I)V

    .line 375
    invoke-virtual {p1, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(Landroidx/constraintlayout/motion/widget/p$a;)V

    .line 37433
    iget p2, v3, Landroidx/constraintlayout/motion/widget/p$a;->n:I

    const/high16 v0, 0x3f800000    # 1.0f

    if-ne p2, v5, :cond_5

    .line 37796
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(F)V

    .line 378
    sget p2, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->b:I

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(I)V

    .line 379
    sget p2, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->c:I

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(I)V

    goto :goto_1

    .line 381
    :cond_5
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 382
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(Z)V

    .line 383
    sget p2, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->b:I

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(I)V

    .line 384
    sget p2, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->c:I

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(I)V

    .line 385
    sget p2, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->d:I

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(I)V

    .line 386
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->b()V

    :goto_1
    return v2

    .line 38433
    :cond_6
    iget v4, v3, Landroidx/constraintlayout/motion/widget/p$a;->c:I

    if-ne p2, v4, :cond_3

    .line 39433
    iget v4, v3, Landroidx/constraintlayout/motion/widget/p$a;->n:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_7

    .line 40433
    iget v4, v3, Landroidx/constraintlayout/motion/widget/p$a;->n:I

    if-ne v4, v2, :cond_3

    .line 393
    :cond_7
    sget p2, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->d:I

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(I)V

    .line 394
    invoke-virtual {p1, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(Landroidx/constraintlayout/motion/widget/p$a;)V

    .line 41433
    iget p2, v3, Landroidx/constraintlayout/motion/widget/p$a;->n:I

    const/4 v0, 0x0

    if-ne p2, v5, :cond_8

    .line 41787
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(F)V

    .line 397
    sget p2, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->b:I

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(I)V

    .line 398
    sget p2, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->c:I

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(I)V

    goto :goto_2

    .line 400
    :cond_8
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 401
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(Z)V

    .line 402
    sget p2, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->b:I

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(I)V

    .line 403
    sget p2, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->c:I

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(I)V

    .line 404
    sget p2, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->d:I

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(I)V

    .line 405
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->b()V

    :goto_2
    return v2

    :cond_9
    return v1
.end method

.method final c()I
    .locals 1

    .line 1381
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$a;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 50609
    :cond_0
    iget v0, v0, Landroidx/constraintlayout/motion/widget/p$a;->c:I

    return v0
.end method

.method public final d()Landroid/view/animation/Interpolator;
    .locals 2

    .line 1395
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$a;

    .line 50610
    iget v0, v0, Landroidx/constraintlayout/motion/widget/p$a;->e:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_6

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1418
    :cond_0
    new-instance v0, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v0}, Landroid/view/animation/BounceInterpolator;-><init>()V

    return-object v0

    .line 1416
    :cond_1
    new-instance v0, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    return-object v0

    .line 1412
    :cond_2
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    return-object v0

    .line 1410
    :cond_3
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    return-object v0

    .line 1408
    :cond_4
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    return-object v0

    .line 1397
    :cond_5
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$a;

    .line 50611
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/p$a;->f:Ljava/lang/String;

    .line 1397
    invoke-static {v0}, Landroidx/constraintlayout/motion/a/c;->a(Ljava/lang/String;)Landroidx/constraintlayout/motion/a/c;

    move-result-object v0

    .line 1398
    new-instance v1, Landroidx/constraintlayout/motion/widget/p$1;

    invoke-direct {v1, p0, v0}, Landroidx/constraintlayout/motion/widget/p$1;-><init>(Landroidx/constraintlayout/motion/widget/p;Landroidx/constraintlayout/motion/a/c;)V

    return-object v1

    .line 1405
    :cond_6
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$a;

    .line 50612
    iget v1, v1, Landroidx/constraintlayout/motion/widget/p$a;->g:I

    .line 1405
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0
.end method

.method public final e()I
    .locals 1

    .line 1429
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$a;

    if-eqz v0, :cond_0

    .line 50613
    iget v0, v0, Landroidx/constraintlayout/motion/widget/p$a;->h:I

    return v0

    .line 1432
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/p;->g:I

    return v0
.end method

.method public final f()F
    .locals 1

    .line 1459
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$a;

    if-eqz v0, :cond_0

    .line 50614
    iget v0, v0, Landroidx/constraintlayout/motion/widget/p$a;->i:F

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final g()F
    .locals 1

    .line 1466
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$a;

    if-eqz v0, :cond_0

    .line 50615
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/p$a;->l:Landroidx/constraintlayout/motion/widget/s;

    if-eqz v0, :cond_0

    .line 1467
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$a;

    .line 50616
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/p$a;->l:Landroidx/constraintlayout/motion/widget/s;

    .line 50617
    iget v0, v0, Landroidx/constraintlayout/motion/widget/s;->o:F

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final h()F
    .locals 1

    .line 1473
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$a;

    if-eqz v0, :cond_0

    .line 50618
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/p$a;->l:Landroidx/constraintlayout/motion/widget/s;

    if-eqz v0, :cond_0

    .line 1474
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$a;

    .line 50619
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/p$a;->l:Landroidx/constraintlayout/motion/widget/s;

    .line 50620
    iget v0, v0, Landroidx/constraintlayout/motion/widget/s;->n:F

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final i()V
    .locals 1

    .line 1480
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$a;

    if-eqz v0, :cond_0

    .line 50621
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/p$a;->l:Landroidx/constraintlayout/motion/widget/s;

    if-eqz v0, :cond_0

    .line 1481
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$a;

    .line 50622
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/p$a;->l:Landroidx/constraintlayout/motion/widget/s;

    .line 1481
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/s;->a()V

    :cond_0
    return-void
.end method
