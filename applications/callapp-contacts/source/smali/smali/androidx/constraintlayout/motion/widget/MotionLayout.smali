.class public Landroidx/constraintlayout/motion/widget/MotionLayout;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/widget/MotionLayout$g;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$b;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$c;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$a;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$f;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$e;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$d;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$h;
    }
.end annotation


# static fields
.field public static a:Z


# instance fields
.field A:F

.field B:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/MotionLayout$g;",
            ">;"
        }
    .end annotation
.end field

.field C:Z

.field protected D:Z

.field E:I

.field F:I

.field G:I

.field H:I

.field I:I

.field J:I

.field K:F

.field L:I

.field M:Landroidx/constraintlayout/motion/widget/MotionLayout$c;

.field N:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private aa:I

.field private ab:I

.field private ac:J

.field private ad:J

.field private ae:Z

.field private af:Landroidx/constraintlayout/motion/widget/MotionLayout$g;

.field private ag:F

.field private ah:F

.field private ai:Z

.field private aj:Landroidx/constraintlayout/motion/a/g;

.field private ak:Landroidx/constraintlayout/motion/widget/MotionLayout$a;

.field private al:Z

.field private am:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/MotionHelper;",
            ">;"
        }
    .end annotation
.end field

.field private an:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/MotionHelper;",
            ">;"
        }
    .end annotation
.end field

.field private ao:I

.field private ap:J

.field private aq:F

.field private ar:I

.field private as:F

.field private at:Landroidx/constraintlayout/motion/widget/d;

.field private au:Z

.field private av:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

.field private aw:Z

.field private ax:Landroid/graphics/RectF;

.field private ay:Landroid/view/View;

.field b:Landroidx/constraintlayout/motion/widget/p;

.field public c:Landroid/view/animation/Interpolator;

.field public d:F

.field e:I

.field f:I

.field g:I

.field h:Z

.field public i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Landroidx/constraintlayout/motion/widget/m;",
            ">;"
        }
    .end annotation
.end field

.field public j:F

.field k:F

.field public l:F

.field public m:F

.field n:Z

.field o:Z

.field p:I

.field q:Landroidx/constraintlayout/motion/widget/MotionLayout$b;

.field r:Z

.field s:I

.field t:I

.field u:I

.field v:I

.field w:Z

.field x:F

.field y:F

.field z:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 963
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 876
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:F

    const/4 v0, -0x1

    .line 877
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    .line 878
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    .line 879
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g:I

    const/4 v0, 0x0

    .line 880
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->aa:I

    .line 881
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ab:I

    const/4 v1, 0x1

    .line 882
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->h:Z

    .line 884
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->i:Ljava/util/HashMap;

    const-wide/16 v2, 0x0

    .line 886
    iput-wide v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ac:J

    const/high16 v2, 0x3f800000    # 1.0f

    .line 887
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->j:F

    .line 888
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k:F

    .line 889
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    .line 891
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m:F

    .line 893
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:Z

    .line 894
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:Z

    .line 901
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->p:I

    .line 905
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ai:Z

    .line 906
    new-instance v2, Landroidx/constraintlayout/motion/a/g;

    invoke-direct {v2}, Landroidx/constraintlayout/motion/a/g;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->aj:Landroidx/constraintlayout/motion/a/g;

    .line 907
    new-instance v2, Landroidx/constraintlayout/motion/widget/MotionLayout$a;

    invoke-direct {v2, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$a;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ak:Landroidx/constraintlayout/motion/widget/MotionLayout$a;

    .line 911
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Z

    .line 918
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Z

    .line 923
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->al:Z

    const/4 v1, 0x0

    .line 925
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->am:Ljava/util/ArrayList;

    .line 926
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->an:Ljava/util/ArrayList;

    .line 927
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:Ljava/util/ArrayList;

    .line 928
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ao:I

    const-wide/16 v2, -0x1

    .line 929
    iput-wide v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ap:J

    .line 930
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->aq:F

    .line 931
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ar:I

    .line 932
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->as:F

    .line 933
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:Z

    .line 940
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:Z

    .line 948
    new-instance p1, Landroidx/constraintlayout/motion/widget/d;

    invoke-direct {p1}, Landroidx/constraintlayout/motion/widget/d;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->at:Landroidx/constraintlayout/motion/widget/d;

    .line 949
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->au:Z

    .line 959
    sget p1, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->a:I

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:I

    .line 2336
    new-instance p1, Landroidx/constraintlayout/motion/widget/MotionLayout$c;

    invoke-direct {p1, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$c;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$c;

    .line 3182
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->aw:Z

    .line 3388
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ax:Landroid/graphics/RectF;

    .line 3389
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ay:Landroid/view/View;

    .line 3746
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->N:Ljava/util/ArrayList;

    .line 964
    invoke-direct {p0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 968
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 876
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:F

    const/4 v0, -0x1

    .line 877
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    .line 878
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    .line 879
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g:I

    const/4 v0, 0x0

    .line 880
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->aa:I

    .line 881
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ab:I

    const/4 v1, 0x1

    .line 882
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->h:Z

    .line 884
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->i:Ljava/util/HashMap;

    const-wide/16 v2, 0x0

    .line 886
    iput-wide v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ac:J

    const/high16 v2, 0x3f800000    # 1.0f

    .line 887
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->j:F

    .line 888
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k:F

    .line 889
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    .line 891
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m:F

    .line 893
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:Z

    .line 894
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:Z

    .line 901
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->p:I

    .line 905
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ai:Z

    .line 906
    new-instance v2, Landroidx/constraintlayout/motion/a/g;

    invoke-direct {v2}, Landroidx/constraintlayout/motion/a/g;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->aj:Landroidx/constraintlayout/motion/a/g;

    .line 907
    new-instance v2, Landroidx/constraintlayout/motion/widget/MotionLayout$a;

    invoke-direct {v2, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$a;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ak:Landroidx/constraintlayout/motion/widget/MotionLayout$a;

    .line 911
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Z

    .line 918
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Z

    .line 923
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->al:Z

    const/4 v1, 0x0

    .line 925
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->am:Ljava/util/ArrayList;

    .line 926
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->an:Ljava/util/ArrayList;

    .line 927
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:Ljava/util/ArrayList;

    .line 928
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ao:I

    const-wide/16 v2, -0x1

    .line 929
    iput-wide v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ap:J

    .line 930
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->aq:F

    .line 931
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ar:I

    .line 932
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->as:F

    .line 933
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:Z

    .line 940
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:Z

    .line 948
    new-instance p1, Landroidx/constraintlayout/motion/widget/d;

    invoke-direct {p1}, Landroidx/constraintlayout/motion/widget/d;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->at:Landroidx/constraintlayout/motion/widget/d;

    .line 949
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->au:Z

    .line 959
    sget p1, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->a:I

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:I

    .line 2336
    new-instance p1, Landroidx/constraintlayout/motion/widget/MotionLayout$c;

    invoke-direct {p1, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$c;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$c;

    .line 3182
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->aw:Z

    .line 3388
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ax:Landroid/graphics/RectF;

    .line 3389
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ay:Landroid/view/View;

    .line 3746
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->N:Ljava/util/ArrayList;

    .line 969
    invoke-direct {p0, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 973
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 876
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:F

    const/4 p3, -0x1

    .line 877
    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    .line 878
    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    .line 879
    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g:I

    const/4 p3, 0x0

    .line 880
    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->aa:I

    .line 881
    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ab:I

    const/4 v0, 0x1

    .line 882
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->h:Z

    .line 884
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->i:Ljava/util/HashMap;

    const-wide/16 v1, 0x0

    .line 886
    iput-wide v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ac:J

    const/high16 v1, 0x3f800000    # 1.0f

    .line 887
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->j:F

    .line 888
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k:F

    .line 889
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    .line 891
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m:F

    .line 893
    iput-boolean p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:Z

    .line 894
    iput-boolean p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o:Z

    .line 901
    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->p:I

    .line 905
    iput-boolean p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ai:Z

    .line 906
    new-instance v1, Landroidx/constraintlayout/motion/a/g;

    invoke-direct {v1}, Landroidx/constraintlayout/motion/a/g;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->aj:Landroidx/constraintlayout/motion/a/g;

    .line 907
    new-instance v1, Landroidx/constraintlayout/motion/widget/MotionLayout$a;

    invoke-direct {v1, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$a;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ak:Landroidx/constraintlayout/motion/widget/MotionLayout$a;

    .line 911
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Z

    .line 918
    iput-boolean p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Z

    .line 923
    iput-boolean p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->al:Z

    const/4 v0, 0x0

    .line 925
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->am:Ljava/util/ArrayList;

    .line 926
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->an:Ljava/util/ArrayList;

    .line 927
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:Ljava/util/ArrayList;

    .line 928
    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ao:I

    const-wide/16 v1, -0x1

    .line 929
    iput-wide v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ap:J

    .line 930
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->aq:F

    .line 931
    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ar:I

    .line 932
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->as:F

    .line 933
    iput-boolean p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:Z

    .line 940
    iput-boolean p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:Z

    .line 948
    new-instance p1, Landroidx/constraintlayout/motion/widget/d;

    invoke-direct {p1}, Landroidx/constraintlayout/motion/widget/d;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->at:Landroidx/constraintlayout/motion/widget/d;

    .line 949
    iput-boolean p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->au:Z

    .line 959
    sget p1, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->a:I

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:I

    .line 2336
    new-instance p1, Landroidx/constraintlayout/motion/widget/MotionLayout$c;

    invoke-direct {p1, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$c;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$c;

    .line 3182
    iput-boolean p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->aw:Z

    .line 3388
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ax:Landroid/graphics/RectF;

    .line 3389
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ay:Landroid/view/View;

    .line 3746
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->N:Ljava/util/ArrayList;

    .line 974
    invoke-direct {p0, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Landroidx/constraintlayout/motion/widget/MotionLayout;)I
    .locals 0

    .line 859
    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g:I

    return p0
.end method

.method protected static a()Landroidx/constraintlayout/motion/widget/MotionLayout$d;
    .locals 1

    .line 992
    invoke-static {}, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->e()Landroidx/constraintlayout/motion/widget/MotionLayout$e;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 12

    .line 3225
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isInEditMode()Z

    move-result v0

    sput-boolean v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const-string v3, "MotionLayout"

    if-eqz p1, :cond_9

    .line 3227
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroidx/constraintlayout/widget/e$b;->MotionLayout:[I

    .line 3228
    invoke-virtual {v4, p1, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 3229
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    :goto_0
    if-ge v6, v4, :cond_7

    .line 3233
    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v8

    .line 3234
    sget v9, Landroidx/constraintlayout/widget/e$b;->MotionLayout_layoutDescription:I

    if-ne v8, v9, :cond_0

    .line 3235
    invoke-virtual {p1, v8, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 3236
    new-instance v9, Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10, p0, v8}, Landroidx/constraintlayout/motion/widget/p;-><init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/MotionLayout;I)V

    iput-object v9, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    goto :goto_2

    .line 3237
    :cond_0
    sget v9, Landroidx/constraintlayout/widget/e$b;->MotionLayout_currentState:I

    if-ne v8, v9, :cond_1

    .line 3238
    invoke-virtual {p1, v8, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    goto :goto_2

    .line 3239
    :cond_1
    sget v9, Landroidx/constraintlayout/widget/e$b;->MotionLayout_motionProgress:I

    if-ne v8, v9, :cond_2

    const/4 v9, 0x0

    .line 3240
    invoke-virtual {p1, v8, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    iput v8, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m:F

    .line 3241
    iput-boolean v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:Z

    goto :goto_2

    .line 3242
    :cond_2
    sget v9, Landroidx/constraintlayout/widget/e$b;->MotionLayout_applyMotionScene:I

    if-ne v8, v9, :cond_3

    .line 3243
    invoke-virtual {p1, v8, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    goto :goto_2

    .line 3244
    :cond_3
    sget v9, Landroidx/constraintlayout/widget/e$b;->MotionLayout_showPaths:I

    if-ne v8, v9, :cond_5

    .line 3245
    iget v9, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->p:I

    if-nez v9, :cond_6

    .line 3246
    invoke-virtual {p1, v8, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v8, 0x2

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    :goto_1
    iput v8, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->p:I

    goto :goto_2

    .line 3248
    :cond_5
    sget v9, Landroidx/constraintlayout/widget/e$b;->MotionLayout_motionDebug:I

    if-ne v8, v9, :cond_6

    .line 3249
    invoke-virtual {p1, v8, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    iput v8, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->p:I

    :cond_6
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3252
    :cond_7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 3253
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    if-nez p1, :cond_8

    const-string p1, "WARNING NO app:layoutDescription tag"

    .line 3254
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    if-nez v7, :cond_9

    .line 3257
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    .line 3260
    :cond_9
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->p:I

    if-eqz p1, :cond_1a

    .line 50475
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    if-nez p1, :cond_a

    const-string p1, "CHECK: motion scene not set! set \"app:layoutDescription=\"@xml/file\""

    .line 50476
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 50480
    :cond_a
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/p;->b()I

    move-result p1

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {v4}, Landroidx/constraintlayout/motion/widget/p;->b()I

    move-result v5

    .line 50513
    invoke-virtual {v4, v5}, Landroidx/constraintlayout/motion/widget/p;->a(I)Landroidx/constraintlayout/widget/c;

    move-result-object v4

    .line 50514
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, p1}, Landroidx/constraintlayout/motion/widget/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 50515
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildCount()I

    move-result v5

    const/4 v6, 0x0

    :goto_3
    const-string v7, "CHECK: "

    if-ge v6, v5, :cond_e

    .line 50517
    invoke-virtual {p0, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 50518
    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v9

    if-ne v9, v2, :cond_b

    .line 50520
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " ALL VIEWS SHOULD HAVE ID\'s "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50521
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " does not!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 50520
    invoke-static {v3, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50543
    :cond_b
    iget-object v10, v4, Landroidx/constraintlayout/widget/c;->c:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 50544
    iget-object v10, v4, Landroidx/constraintlayout/widget/c;->c:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/widget/c$a;

    goto :goto_4

    :cond_c
    move-object v9, v0

    :goto_4
    if-nez v9, :cond_d

    .line 50525
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " NO CONSTRAINTS for "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Landroidx/constraintlayout/motion/widget/a;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 50528
    :cond_e
    invoke-virtual {v4}, Landroidx/constraintlayout/widget/c;->a()[I

    move-result-object v0

    .line 50529
    :goto_5
    array-length v5, v0

    if-ge v1, v5, :cond_12

    .line 50530
    aget v5, v0, v1

    .line 50531
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5}, Landroidx/constraintlayout/motion/widget/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    .line 50532
    aget v8, v0, v1

    invoke-virtual {p0, v8}, Landroidx/constraintlayout/motion/widget/MotionLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-nez v8, :cond_f

    .line 50533
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " NO View matches id "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50535
    :cond_f
    invoke-virtual {v4, v5}, Landroidx/constraintlayout/widget/c;->c(I)I

    move-result v8

    const-string v9, ") no LAYOUT_HEIGHT"

    const-string v10, "("

    if-ne v8, v2, :cond_10

    .line 50536
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50538
    :cond_10
    invoke-virtual {v4, v5}, Landroidx/constraintlayout/widget/c;->d(I)I

    move-result v5

    if-ne v5, v2, :cond_11

    .line 50539
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 50481
    :cond_12
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    .line 50482
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 50483
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    .line 50547
    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/p;->d:Ljava/util/ArrayList;

    .line 50483
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/motion/widget/p$a;

    .line 50548
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "CHECK: transition = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 50554
    iget v7, v4, Landroidx/constraintlayout/motion/widget/p$a;->d:I

    if-ne v7, v2, :cond_14

    const-string v7, "null"

    goto :goto_7

    .line 50557
    :cond_14
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget v8, v4, Landroidx/constraintlayout/motion/widget/p$a;->d:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v7

    .line 50559
    :goto_7
    iget v8, v4, Landroidx/constraintlayout/motion/widget/p$a;->c:I

    if-ne v8, v2, :cond_15

    .line 50560
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " -> null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_8

    .line 50562
    :cond_15
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " -> "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, v4, Landroidx/constraintlayout/motion/widget/p$a;->c:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 50548
    :goto_8
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50549
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "CHECK: transition.setDuration = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50565
    iget v6, v4, Landroidx/constraintlayout/motion/widget/p$a;->h:I

    .line 50549
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50566
    iget v5, v4, Landroidx/constraintlayout/motion/widget/p$a;->d:I

    .line 50567
    iget v6, v4, Landroidx/constraintlayout/motion/widget/p$a;->c:I

    if-ne v5, v6, :cond_16

    const-string v5, "CHECK: start and end constraint set should not be the same!"

    .line 50551
    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50568
    :cond_16
    iget v5, v4, Landroidx/constraintlayout/motion/widget/p$a;->d:I

    .line 50569
    iget v4, v4, Landroidx/constraintlayout/motion/widget/p$a;->c:I

    .line 50490
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5}, Landroidx/constraintlayout/motion/widget/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    .line 50491
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v4}, Landroidx/constraintlayout/motion/widget/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    .line 50492
    invoke-virtual {p1, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    const-string v9, "->"

    if-ne v8, v4, :cond_17

    .line 50494
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "CHECK: two transitions with the same start and end "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50497
    :cond_17
    invoke-virtual {v0, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    if-ne v8, v5, :cond_18

    .line 50499
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "CHECK: you can\'t have reverse transitions"

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50502
    :cond_18
    invoke-virtual {p1, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 50503
    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 50504
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    .line 50570
    invoke-virtual {v7, v5}, Landroidx/constraintlayout/motion/widget/p;->a(I)Landroidx/constraintlayout/widget/c;

    move-result-object v5

    if-nez v5, :cond_19

    .line 50505
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v7, " no such constraintSetStart "

    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50508
    :cond_19
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    .line 50571
    invoke-virtual {v5, v4}, Landroidx/constraintlayout/motion/widget/p;->a(I)Landroidx/constraintlayout/widget/c;

    move-result-object v4

    if-nez v4, :cond_13

    .line 50509
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, " no such constraintSetEnd "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 3263
    :cond_1a
    :goto_9
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    if-ne p1, v2, :cond_1b

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    if-eqz p1, :cond_1b

    .line 3264
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/p;->b()I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    .line 3265
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/p;->b()I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    .line 3269
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/p;->c()I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g:I

    :cond_1b
    return-void
.end method

.method static synthetic a(Landroidx/constraintlayout/motion/widget/MotionLayout;IIIIZZ)V
    .locals 0

    .line 859
    invoke-virtual/range {p0 .. p6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(IIIIZZ)V

    return-void
.end method

.method static synthetic a(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroid/view/View;Landroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V
    .locals 6

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 859
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(ZLandroid/view/View;Landroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V

    return-void
.end method

.method static synthetic a(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/a/a/f;III)V
    .locals 0

    .line 859
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(Landroidx/constraintlayout/a/a/f;III)V

    return-void
.end method

.method private a(FFLandroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .line 3401
    instance-of v0, p3, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 3402
    move-object v0, p3

    check-cast v0, Landroid/view/ViewGroup;

    .line 3403
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    .line 3405
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3406
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, p1

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, p2

    invoke-direct {p0, v6, v7, v5, p4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(FFLandroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_0

    return v2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3411
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ax:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, p1

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, p2

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr p1, v5

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr p2, v5

    invoke-virtual {v0, v3, v4, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3413
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_2

    .line 3414
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ax:Landroid/graphics/RectF;

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3415
    invoke-virtual {p3, p4}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v2

    .line 3420
    :cond_2
    invoke-virtual {p3, p4}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method static synthetic b(Landroidx/constraintlayout/motion/widget/MotionLayout;)Landroidx/constraintlayout/a/a/f;
    .locals 0

    .line 859
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->P:Landroidx/constraintlayout/a/a/f;

    return-object p0
.end method

.method static synthetic b(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/a/a/f;III)V
    .locals 0

    .line 859
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(Landroidx/constraintlayout/a/a/f;III)V

    return-void
.end method

.method static synthetic c(Landroidx/constraintlayout/motion/widget/MotionLayout;)Landroidx/constraintlayout/a/a/f;
    .locals 0

    .line 859
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->P:Landroidx/constraintlayout/a/a/f;

    return-object p0
.end method

.method static synthetic c(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/a/a/f;III)V
    .locals 0

    .line 859
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(Landroidx/constraintlayout/a/a/f;III)V

    return-void
.end method

.method static synthetic d(Landroidx/constraintlayout/motion/widget/MotionLayout;)Landroidx/constraintlayout/a/a/f;
    .locals 0

    .line 859
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->P:Landroidx/constraintlayout/a/a/f;

    return-object p0
.end method

.method private d()V
    .locals 4

    .line 3718
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->af:Landroidx/constraintlayout/motion/widget/MotionLayout$g;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3719
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->as:F

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    .line 3720
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ar:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 3724
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 3725
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 3729
    :cond_1
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:Z

    .line 3731
    :cond_2
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ar:I

    .line 3732
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->as:F

    .line 3736
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 3737
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_1

    .line 3741
    :cond_3
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:Z

    :cond_4
    return-void
.end method

.method static synthetic d(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/a/a/f;III)V
    .locals 0

    .line 859
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(Landroidx/constraintlayout/a/a/f;III)V

    return-void
.end method

.method static synthetic e(Landroidx/constraintlayout/motion/widget/MotionLayout;)Landroidx/constraintlayout/a/a/f;
    .locals 0

    .line 859
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->P:Landroidx/constraintlayout/a/a/f;

    return-object p0
.end method

.method private e()V
    .locals 3

    .line 3752
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->af:Landroidx/constraintlayout/motion/widget/MotionLayout$g;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3753
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ar:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 3754
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ar:I

    .line 3756
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->N:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3757
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->N:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 3759
    :goto_0
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    if-eq v0, v2, :cond_2

    if-eq v2, v1, :cond_2

    .line 3760
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->N:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3764
    :cond_2
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->f()V

    return-void
.end method

.method static synthetic e(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/a/a/f;III)V
    .locals 0

    .line 859
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(Landroidx/constraintlayout/a/a/f;III)V

    return-void
.end method

.method private f()V
    .locals 4

    .line 3768
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->af:Landroidx/constraintlayout/motion/widget/MotionLayout$g;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .line 3771
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:Z

    .line 3772
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->N:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3773
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->af:Landroidx/constraintlayout/motion/widget/MotionLayout$g;

    if-eqz v2, :cond_3

    .line 3774
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 3776
    :cond_3
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 3777
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 3778
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    goto :goto_0

    .line 3782
    :cond_4
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->N:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method static synthetic f(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/a/a/f;III)V
    .locals 0

    .line 859
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(Landroidx/constraintlayout/a/a/f;III)V

    return-void
.end method

.method static synthetic f(Landroidx/constraintlayout/motion/widget/MotionLayout;)Z
    .locals 0

    .line 859
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isRtl()Z

    move-result p0

    return p0
.end method

.method private g()V
    .locals 1

    .line 3897
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$c;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->a()V

    .line 3898
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->invalidate()V

    return-void
.end method

.method static synthetic g(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/a/a/f;III)V
    .locals 0

    .line 859
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(Landroidx/constraintlayout/a/a/f;III)V

    return-void
.end method

.method static synthetic g(Landroidx/constraintlayout/motion/widget/MotionLayout;)Z
    .locals 0

    .line 859
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isRtl()Z

    move-result p0

    return p0
.end method

.method static synthetic h(Landroidx/constraintlayout/motion/widget/MotionLayout;)I
    .locals 0

    .line 859
    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->aa:I

    return p0
.end method

.method static synthetic h(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/a/a/f;III)V
    .locals 0

    .line 859
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(Landroidx/constraintlayout/a/a/f;III)V

    return-void
.end method

.method static synthetic i(Landroidx/constraintlayout/motion/widget/MotionLayout;)I
    .locals 0

    .line 859
    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ab:I

    return p0
.end method

.method static synthetic j(Landroidx/constraintlayout/motion/widget/MotionLayout;)V
    .locals 12

    .line 50681
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildCount()I

    move-result v0

    .line 50683
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$c;

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->b()V

    const/4 v1, 0x1

    .line 50684
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:Z

    .line 50686
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getWidth()I

    move-result v2

    .line 50687
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getHeight()I

    move-result v3

    .line 50688
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    .line 50759
    iget-object v5, v4, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$a;

    const/4 v6, -0x1

    if-eqz v5, :cond_0

    iget-object v4, v4, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$a;

    .line 50760
    iget v4, v4, Landroidx/constraintlayout/motion/widget/p$a;->p:I

    goto :goto_0

    :cond_0
    const/4 v4, -0x1

    :goto_0
    const/4 v5, 0x0

    if-eq v4, v6, :cond_2

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v0, :cond_2

    .line 50691
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->i:Ljava/util/HashMap;

    invoke-virtual {p0, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/motion/widget/m;

    if-eqz v7, :cond_1

    .line 50761
    iput v4, v7, Landroidx/constraintlayout/motion/widget/m;->s:I

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v0, :cond_4

    .line 50699
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->i:Ljava/util/HashMap;

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/motion/widget/m;

    if-eqz v6, :cond_3

    .line 50701
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {v7, v6}, Landroidx/constraintlayout/motion/widget/p;->a(Landroidx/constraintlayout/motion/widget/m;)V

    .line 50763
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    .line 50702
    invoke-virtual {v6, v2, v3, v7, v8}, Landroidx/constraintlayout/motion/widget/m;->a(IIJ)V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 50706
    :cond_4
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/p;->f()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_10

    float-to-double v3, v2

    const-wide/16 v6, 0x0

    cmpg-double v8, v3, v6

    if-gez v8, :cond_5

    const/4 v3, 0x1

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    .line 50710
    :goto_3
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v4, -0x800001

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v7, 0x0

    const v8, 0x7f7fffff    # Float.MAX_VALUE

    const v9, -0x800001

    :goto_4
    if-ge v7, v0, :cond_8

    .line 50713
    iget-object v10, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->i:Ljava/util/HashMap;

    invoke-virtual {p0, v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/motion/widget/m;

    .line 50714
    iget v11, v10, Landroidx/constraintlayout/motion/widget/m;->i:F

    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v11

    if-nez v11, :cond_6

    goto :goto_6

    .line 50764
    :cond_6
    iget-object v11, v10, Landroidx/constraintlayout/motion/widget/m;->e:Landroidx/constraintlayout/motion/widget/o;

    iget v11, v11, Landroidx/constraintlayout/motion/widget/o;->f:F

    .line 50765
    iget-object v10, v10, Landroidx/constraintlayout/motion/widget/m;->e:Landroidx/constraintlayout/motion/widget/o;

    iget v10, v10, Landroidx/constraintlayout/motion/widget/o;->g:F

    if-eqz v3, :cond_7

    sub-float/2addr v10, v11

    goto :goto_5

    :cond_7
    add-float/2addr v10, v11

    .line 50721
    :goto_5
    invoke-static {v8, v10}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 50722
    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    :goto_6
    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_a

    .line 50729
    iget-object v8, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->i:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/motion/widget/m;

    .line 50730
    iget v9, v8, Landroidx/constraintlayout/motion/widget/m;->i:F

    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-nez v9, :cond_9

    .line 50731
    iget v9, v8, Landroidx/constraintlayout/motion/widget/m;->i:F

    invoke-static {v6, v9}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 50732
    iget v8, v8, Landroidx/constraintlayout/motion/widget/m;->i:F

    invoke-static {v4, v8}, Ljava/lang/Math;->max(FF)F

    move-result v4

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_a
    :goto_8
    if-ge v5, v0, :cond_d

    .line 50736
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->i:Ljava/util/HashMap;

    invoke-virtual {p0, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/m;

    .line 50737
    iget v8, v1, Landroidx/constraintlayout/motion/widget/m;->i:F

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-nez v8, :cond_c

    sub-float v8, v7, v2

    div-float v8, v7, v8

    .line 50739
    iput v8, v1, Landroidx/constraintlayout/motion/widget/m;->k:F

    if-eqz v3, :cond_b

    .line 50741
    iget v8, v1, Landroidx/constraintlayout/motion/widget/m;->i:F

    sub-float v8, v4, v8

    sub-float v9, v4, v6

    div-float/2addr v8, v9

    mul-float v8, v8, v2

    sub-float v8, v2, v8

    iput v8, v1, Landroidx/constraintlayout/motion/widget/m;->j:F

    goto :goto_9

    .line 50743
    :cond_b
    iget v8, v1, Landroidx/constraintlayout/motion/widget/m;->i:F

    sub-float/2addr v8, v6

    mul-float v8, v8, v2

    sub-float v9, v4, v6

    div-float/2addr v8, v9

    sub-float v8, v2, v8

    iput v8, v1, Landroidx/constraintlayout/motion/widget/m;->j:F

    :cond_c
    :goto_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_d
    return-void

    :cond_e
    :goto_a
    if-ge v5, v0, :cond_10

    .line 50749
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->i:Ljava/util/HashMap;

    invoke-virtual {p0, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/m;

    .line 50766
    iget-object v4, v1, Landroidx/constraintlayout/motion/widget/m;->e:Landroidx/constraintlayout/motion/widget/o;

    iget v4, v4, Landroidx/constraintlayout/motion/widget/o;->f:F

    .line 50767
    iget-object v6, v1, Landroidx/constraintlayout/motion/widget/m;->e:Landroidx/constraintlayout/motion/widget/o;

    iget v6, v6, Landroidx/constraintlayout/motion/widget/o;->g:F

    if-eqz v3, :cond_f

    sub-float/2addr v6, v4

    goto :goto_b

    :cond_f
    add-float/2addr v6, v4

    :goto_b
    sub-float v4, v7, v2

    div-float v4, v7, v4

    .line 50753
    iput v4, v1, Landroidx/constraintlayout/motion/widget/m;->k:F

    sub-float/2addr v6, v8

    mul-float v6, v6, v2

    sub-float v4, v9, v8

    div-float/2addr v6, v4

    sub-float v4, v2, v6

    .line 50754
    iput v4, v1, Landroidx/constraintlayout/motion/widget/m;->j:F

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_10
    return-void
.end method


# virtual methods
.method a(F)V
    .locals 4

    .line 1739
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    if-nez v0, :cond_0

    return-void

    .line 1743
    :cond_0
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ae:Z

    if-eqz v1, :cond_1

    .line 1746
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    .line 1749
    :cond_1
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    cmpl-float v2, v1, p1

    if-nez v2, :cond_2

    return-void

    :cond_2
    const/4 v2, 0x0

    .line 1752
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ai:Z

    .line 1754
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m:F

    .line 1755
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/p;->e()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p1, v0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->j:F

    .line 1756
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m:F

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 1757
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/p;->d()Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->c:Landroid/view/animation/Interpolator;

    .line 1758
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ae:Z

    .line 20983
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 1759
    iput-wide v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ac:J

    const/4 p1, 0x1

    .line 1760
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:Z

    .line 1761
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k:F

    .line 1765
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    .line 1766
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->invalidate()V

    return-void
.end method

.method final a(I)V
    .locals 3

    .line 1040
    sget v0, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->d:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 1043
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:I

    .line 1044
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:I

    .line 1046
    sget v1, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->c:I

    if-ne v0, v1, :cond_1

    sget v1, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->c:I

    if-ne p1, v1, :cond_1

    .line 1047
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->d()V

    .line 1049
    :cond_1
    sget-object v1, Landroidx/constraintlayout/motion/widget/MotionLayout$2;->a:[I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    aget v0, v1, v0

    if-eq v0, v2, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 1060
    :cond_2
    sget v0, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->d:I

    if-ne p1, v0, :cond_5

    .line 1061
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->e()V

    goto :goto_0

    .line 1052
    :cond_3
    sget v0, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->c:I

    if-ne p1, v0, :cond_4

    .line 1053
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->d()V

    .line 1055
    :cond_4
    sget v0, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->d:I

    if-ne p1, v0, :cond_5

    .line 1056
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->e()V

    :cond_5
    :goto_0
    return-void
.end method

.method public final a(IFF)V
    .locals 11

    .line 1617
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    if-nez v1, :cond_0

    return-void

    .line 1620
    :cond_0
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    cmpl-float v1, v1, p2

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 1624
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ai:Z

    .line 18983
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1625
    iput-wide v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ac:J

    .line 1626
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/p;->e()I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float v4, v2, v4

    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->j:F

    .line 1628
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m:F

    .line 1629
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:Z

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v5, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz p1, :cond_7

    if-eq p1, v1, :cond_7

    if-eq p1, v5, :cond_7

    const/4 v4, 0x4

    if-eq p1, v4, :cond_6

    const/4 v4, 0x5

    if-eq p1, v4, :cond_2

    goto/16 :goto_2

    .line 1659
    :cond_2
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {v4}, Landroidx/constraintlayout/motion/widget/p;->g()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    cmpl-float v6, p3, v9

    if-lez v6, :cond_3

    div-float v6, p3, v4

    mul-float v10, p3, v6

    mul-float v4, v4, v6

    mul-float v4, v4, v6

    div-float/2addr v4, v5

    sub-float/2addr v10, v4

    add-float/2addr v0, v10

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4

    goto :goto_0

    :cond_3
    neg-float v2, p3

    div-float/2addr v2, v4

    mul-float v6, p3, v2

    mul-float v4, v4, v2

    mul-float v4, v4, v2

    div-float/2addr v4, v5

    add-float/2addr v6, v4

    add-float/2addr v0, v6

    cmpg-float v0, v0, v9

    if-gez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_5

    .line 1660
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ak:Landroidx/constraintlayout/motion/widget/MotionLayout$a;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/p;->g()F

    move-result v2

    invoke-virtual {v0, p3, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$a;->a(FFF)V

    .line 1661
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ak:Landroidx/constraintlayout/motion/widget/MotionLayout$a;

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->c:Landroid/view/animation/Interpolator;

    goto :goto_2

    .line 1663
    :cond_5
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->aj:Landroidx/constraintlayout/motion/a/g;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->j:F

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    .line 1664
    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/p;->g()F

    move-result v5

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/p;->h()F

    move-result v6

    move v2, p2

    move v3, p3

    .line 1663
    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/motion/a/g;->a(FFFFFF)V

    .line 1665
    iput v9, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:F

    .line 1666
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    .line 1667
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m:F

    .line 1668
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    .line 1669
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->aj:Landroidx/constraintlayout/motion/a/g;

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->c:Landroid/view/animation/Interpolator;

    goto :goto_2

    .line 1654
    :cond_6
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ak:Landroidx/constraintlayout/motion/widget/MotionLayout$a;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/p;->g()F

    move-result v2

    invoke-virtual {v0, p3, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$a;->a(FFF)V

    .line 1655
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ak:Landroidx/constraintlayout/motion/widget/MotionLayout$a;

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->c:Landroid/view/animation/Interpolator;

    goto :goto_2

    :cond_7
    if-ne p1, v1, :cond_8

    const/4 v7, 0x0

    goto :goto_1

    :cond_8
    if-ne p1, v5, :cond_9

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_9
    move v7, p2

    .line 1640
    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->aj:Landroidx/constraintlayout/motion/a/g;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    .line 1641
    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/p;->g()F

    move-result v5

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/p;->h()F

    move-result v6

    move v2, v7

    move v3, p3

    .line 1640
    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/motion/a/g;->a(FFFFFF)V

    .line 1643
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    .line 1644
    iput v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m:F

    .line 1645
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    .line 1646
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->aj:Landroidx/constraintlayout/motion/a/g;

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->c:Landroid/view/animation/Interpolator;

    .line 1675
    :goto_2
    iput-boolean v8, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ae:Z

    .line 19983
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 1676
    iput-wide v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ac:J

    .line 1677
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->invalidate()V

    return-void
.end method

.method final a(IFFF[F)V
    .locals 2

    .line 3576
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->i:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/m;

    if-eqz v0, :cond_0

    .line 3581
    invoke-virtual {v0, p2, p3, p4, p5}, Landroidx/constraintlayout/motion/widget/m;->a(FFF[F)V

    .line 3582
    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result p1

    .line 3590
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ag:F

    .line 3591
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ah:F

    return-void

    :cond_0
    if-nez v1, :cond_1

    .line 3593
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 3594
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 3595
    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "WARNING could not find view id "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "MotionLayout"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final a(Landroid/view/View;I)V
    .locals 9

    .line 2438
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    if-nez p1, :cond_0

    return-void

    .line 2441
    :cond_0
    iget p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:F

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:F

    div-float/2addr p2, v0

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y:F

    div-float/2addr v1, v0

    .line 37352
    iget-object v0, p1, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$a;

    if-eqz v0, :cond_6

    iget-object v0, p1, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$a;

    .line 37433
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/p$a;->l:Landroidx/constraintlayout/motion/widget/s;

    if-eqz v0, :cond_6

    .line 37353
    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$a;

    .line 38433
    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/p$a;->l:Landroidx/constraintlayout/motion/widget/s;

    const/4 v0, 0x0

    .line 39345
    iput-boolean v0, p1, Landroidx/constraintlayout/motion/widget/s;->i:Z

    .line 39347
    iget-object v2, p1, Landroidx/constraintlayout/motion/widget/s;->m:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 39558
    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    .line 39348
    iget-object v3, p1, Landroidx/constraintlayout/motion/widget/s;->m:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v4, p1, Landroidx/constraintlayout/motion/widget/s;->b:I

    iget v6, p1, Landroidx/constraintlayout/motion/widget/s;->f:F

    iget v7, p1, Landroidx/constraintlayout/motion/widget/s;->e:F

    iget-object v8, p1, Landroidx/constraintlayout/motion/widget/s;->j:[F

    move v5, v2

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(IFFF[F)V

    .line 39351
    iget v3, p1, Landroidx/constraintlayout/motion/widget/s;->g:F

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_1

    .line 39352
    iget v1, p1, Landroidx/constraintlayout/motion/widget/s;->g:F

    mul-float p2, p2, v1

    iget-object v1, p1, Landroidx/constraintlayout/motion/widget/s;->j:[F

    aget v1, v1, v0

    div-float/2addr p2, v1

    goto :goto_0

    .line 39354
    :cond_1
    iget p2, p1, Landroidx/constraintlayout/motion/widget/s;->h:F

    mul-float v1, v1, p2

    iget-object p2, p1, Landroidx/constraintlayout/motion/widget/s;->j:[F

    aget p2, p2, v4

    div-float p2, v1, p2

    .line 39356
    :goto_0
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_2

    const/high16 v1, 0x40400000    # 3.0f

    div-float v1, p2, v1

    add-float/2addr v2, v1

    :cond_2
    cmpl-float v1, v2, v5

    if-eqz v1, :cond_6

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v1

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    .line 39359
    :goto_1
    iget v6, p1, Landroidx/constraintlayout/motion/widget/s;->a:I

    const/4 v7, 0x3

    if-eq v6, v7, :cond_4

    const/4 v0, 0x1

    :cond_4
    and-int/2addr v0, v3

    if-eqz v0, :cond_6

    .line 39360
    iget-object v0, p1, Landroidx/constraintlayout/motion/widget/s;->m:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget p1, p1, Landroidx/constraintlayout/motion/widget/s;->a:I

    float-to-double v2, v2

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpg-double v4, v2, v6

    if-gez v4, :cond_5

    goto :goto_2

    :cond_5
    const/high16 v5, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {v0, p1, v5, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(IFF)V

    :cond_6
    return-void
.end method

.method public final a(Landroid/view/View;IIIII)V
    .locals 0

    return-void
.end method

.method public final a(Landroid/view/View;IIIII[I)V
    .locals 0

    .line 2446
    iget-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Z

    const/4 p6, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    .line 2447
    :cond_0
    aget p1, p7, p6

    add-int/2addr p1, p4

    aput p1, p7, p6

    const/4 p1, 0x1

    .line 2448
    aget p2, p7, p1

    add-int/2addr p2, p5

    aput p2, p7, p1

    .line 2450
    :cond_1
    iput-boolean p6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Z

    return-void
.end method

.method public final a(Landroid/view/View;II[II)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 2463
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    if-eqz v4, :cond_14

    iget-object v4, v4, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$a;

    if-nez v4, :cond_0

    goto/16 :goto_3

    .line 2467
    :cond_0
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    iget-object v4, v4, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$a;

    invoke-virtual {v4}, Landroidx/constraintlayout/motion/widget/p$a;->a()Z

    move-result v4

    if-nez v4, :cond_1

    return-void

    .line 2471
    :cond_1
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    iget-object v4, v4, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$a;

    const/4 v5, -0x1

    if-eqz v4, :cond_2

    .line 2472
    invoke-virtual {v4}, Landroidx/constraintlayout/motion/widget/p$a;->a()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 39560
    iget-object v6, v4, Landroidx/constraintlayout/motion/widget/p$a;->l:Landroidx/constraintlayout/motion/widget/s;

    if-eqz v6, :cond_2

    .line 40512
    iget v6, v6, Landroidx/constraintlayout/motion/widget/s;->c:I

    if-eq v6, v5, :cond_2

    .line 2476
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v7

    if-eq v7, v6, :cond_2

    return-void

    .line 2482
    :cond_2
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz v6, :cond_5

    .line 41486
    iget-object v10, v6, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$a;

    if-eqz v10, :cond_3

    iget-object v10, v6, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$a;

    .line 42433
    iget-object v10, v10, Landroidx/constraintlayout/motion/widget/p$a;->l:Landroidx/constraintlayout/motion/widget/s;

    if-eqz v10, :cond_3

    .line 41487
    iget-object v6, v6, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$a;

    .line 43433
    iget-object v6, v6, Landroidx/constraintlayout/motion/widget/p$a;->l:Landroidx/constraintlayout/motion/widget/s;

    .line 43490
    iget-boolean v6, v6, Landroidx/constraintlayout/motion/widget/s;->p:Z

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_5

    .line 2484
    iget v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k:F

    cmpl-float v10, v6, v7

    if-eqz v10, :cond_4

    cmpl-float v6, v6, v8

    if-nez v6, :cond_5

    :cond_4
    invoke-virtual {v1, v5}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v5

    if-eqz v5, :cond_5

    return-void

    .line 43560
    :cond_5
    iget-object v4, v4, Landroidx/constraintlayout/motion/widget/p$a;->l:Landroidx/constraintlayout/motion/widget/s;

    const/4 v5, 0x1

    if-eqz v4, :cond_d

    .line 2490
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    iget-object v4, v4, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$a;

    .line 44560
    iget-object v4, v4, Landroidx/constraintlayout/motion/widget/p$a;->l:Landroidx/constraintlayout/motion/widget/s;

    .line 45548
    iget v4, v4, Landroidx/constraintlayout/motion/widget/s;->r:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_d

    .line 2491
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    int-to-float v6, v2

    int-to-float v10, v3

    .line 46365
    iget-object v11, v4, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$a;

    if-eqz v11, :cond_9

    iget-object v11, v4, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$a;

    .line 46433
    iget-object v11, v11, Landroidx/constraintlayout/motion/widget/p$a;->l:Landroidx/constraintlayout/motion/widget/s;

    if-eqz v11, :cond_9

    .line 46366
    iget-object v4, v4, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$a;

    .line 47433
    iget-object v4, v4, Landroidx/constraintlayout/motion/widget/p$a;->l:Landroidx/constraintlayout/motion/widget/s;

    .line 48327
    iget-object v11, v4, Landroidx/constraintlayout/motion/widget/s;->m:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 48558
    iget v14, v11, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    .line 48328
    iget-object v12, v4, Landroidx/constraintlayout/motion/widget/s;->m:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v13, v4, Landroidx/constraintlayout/motion/widget/s;->b:I

    iget v15, v4, Landroidx/constraintlayout/motion/widget/s;->f:F

    iget v11, v4, Landroidx/constraintlayout/motion/widget/s;->e:F

    iget-object v7, v4, Landroidx/constraintlayout/motion/widget/s;->j:[F

    move/from16 v16, v11

    move-object/from16 v17, v7

    invoke-virtual/range {v12 .. v17}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(IFFF[F)V

    .line 48330
    iget v7, v4, Landroidx/constraintlayout/motion/widget/s;->g:F

    const v11, 0x33d6bf95    # 1.0E-7f

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_7

    .line 48331
    iget-object v7, v4, Landroidx/constraintlayout/motion/widget/s;->j:[F

    aget v7, v7, v9

    cmpl-float v7, v7, v8

    if-nez v7, :cond_6

    .line 48332
    iget-object v7, v4, Landroidx/constraintlayout/motion/widget/s;->j:[F

    aput v11, v7, v9

    .line 48334
    :cond_6
    iget v7, v4, Landroidx/constraintlayout/motion/widget/s;->g:F

    mul-float v6, v6, v7

    iget-object v4, v4, Landroidx/constraintlayout/motion/widget/s;->j:[F

    aget v4, v4, v9

    div-float/2addr v6, v4

    goto :goto_1

    .line 48336
    :cond_7
    iget-object v6, v4, Landroidx/constraintlayout/motion/widget/s;->j:[F

    aget v6, v6, v5

    cmpl-float v6, v6, v8

    if-nez v6, :cond_8

    .line 48337
    iget-object v6, v4, Landroidx/constraintlayout/motion/widget/s;->j:[F

    aput v11, v6, v5

    .line 48339
    :cond_8
    iget v6, v4, Landroidx/constraintlayout/motion/widget/s;->h:F

    mul-float v10, v10, v6

    iget-object v4, v4, Landroidx/constraintlayout/motion/widget/s;->j:[F

    aget v4, v4, v5

    div-float v6, v10, v4

    goto :goto_1

    :cond_9
    const/4 v6, 0x0

    .line 2492
    :goto_1
    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    cmpg-float v7, v4, v8

    if-gtz v7, :cond_a

    cmpg-float v7, v6, v8

    if-ltz v7, :cond_b

    :cond_a
    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v7

    if-ltz v4, :cond_d

    cmpl-float v4, v6, v8

    if-lez v4, :cond_d

    .line 2494
    :cond_b
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_c

    .line 2495
    invoke-virtual {v1, v9}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    .line 2497
    new-instance v2, Landroidx/constraintlayout/motion/widget/MotionLayout$1;

    invoke-direct {v2, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$1;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_c
    return-void

    .line 2511
    :cond_d
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k:F

    .line 48983
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    int-to-float v4, v2

    .line 2513
    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:F

    int-to-float v10, v3

    .line 2514
    iput v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y:F

    .line 2515
    iget-wide v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z:J

    sub-long v11, v6, v11

    long-to-double v11, v11

    const-wide v13, 0x3e112e0be826d695L    # 1.0E-9

    mul-double v11, v11, v13

    double-to-float v11, v11

    iput v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:F

    .line 2516
    iput-wide v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z:J

    .line 2520
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    .line 49346
    iget-object v7, v6, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$a;

    if-eqz v7, :cond_11

    iget-object v7, v6, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$a;

    .line 49433
    iget-object v7, v7, Landroidx/constraintlayout/motion/widget/p$a;->l:Landroidx/constraintlayout/motion/widget/s;

    if-eqz v7, :cond_11

    .line 49347
    iget-object v6, v6, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$a;

    .line 50433
    iget-object v6, v6, Landroidx/constraintlayout/motion/widget/p$a;->l:Landroidx/constraintlayout/motion/widget/s;

    .line 50436
    iget-object v7, v6, Landroidx/constraintlayout/motion/widget/s;->m:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 50466
    iget v7, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    .line 50437
    iget-boolean v11, v6, Landroidx/constraintlayout/motion/widget/s;->i:Z

    if-nez v11, :cond_e

    .line 50438
    iput-boolean v5, v6, Landroidx/constraintlayout/motion/widget/s;->i:Z

    .line 50439
    iget-object v11, v6, Landroidx/constraintlayout/motion/widget/s;->m:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v11, v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 50441
    :cond_e
    iget-object v11, v6, Landroidx/constraintlayout/motion/widget/s;->m:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v12, v6, Landroidx/constraintlayout/motion/widget/s;->b:I

    iget v14, v6, Landroidx/constraintlayout/motion/widget/s;->f:F

    iget v15, v6, Landroidx/constraintlayout/motion/widget/s;->e:F

    iget-object v13, v6, Landroidx/constraintlayout/motion/widget/s;->j:[F

    move-object/from16 v16, v13

    move v13, v7

    invoke-virtual/range {v11 .. v16}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(IFFF[F)V

    .line 50442
    iget v11, v6, Landroidx/constraintlayout/motion/widget/s;->g:F

    iget-object v12, v6, Landroidx/constraintlayout/motion/widget/s;->j:[F

    aget v12, v12, v9

    mul-float v11, v11, v12

    iget v12, v6, Landroidx/constraintlayout/motion/widget/s;->h:F

    iget-object v13, v6, Landroidx/constraintlayout/motion/widget/s;->j:[F

    aget v13, v13, v5

    mul-float v12, v12, v13

    add-float/2addr v11, v12

    .line 50444
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-double v11, v11

    const-wide v13, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v15, v11, v13

    if-gez v15, :cond_f

    .line 50445
    iget-object v11, v6, Landroidx/constraintlayout/motion/widget/s;->j:[F

    const v12, 0x3c23d70a    # 0.01f

    aput v12, v11, v9

    .line 50446
    iget-object v11, v6, Landroidx/constraintlayout/motion/widget/s;->j:[F

    aput v12, v11, v5

    .line 50450
    :cond_f
    iget v11, v6, Landroidx/constraintlayout/motion/widget/s;->g:F

    cmpl-float v11, v11, v8

    if-eqz v11, :cond_10

    .line 50451
    iget v10, v6, Landroidx/constraintlayout/motion/widget/s;->g:F

    mul-float v4, v4, v10

    iget-object v10, v6, Landroidx/constraintlayout/motion/widget/s;->j:[F

    aget v10, v10, v9

    div-float/2addr v4, v10

    goto :goto_2

    .line 50453
    :cond_10
    iget v4, v6, Landroidx/constraintlayout/motion/widget/s;->h:F

    mul-float v10, v10, v4

    iget-object v4, v6, Landroidx/constraintlayout/motion/widget/s;->j:[F

    aget v4, v4, v5

    div-float v4, v10, v4

    :goto_2
    add-float/2addr v7, v4

    const/high16 v4, 0x3f800000    # 1.0f

    .line 50455
    invoke-static {v7, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v4, v8}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 50457
    iget-object v7, v6, Landroidx/constraintlayout/motion/widget/s;->m:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 50467
    iget v7, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    cmpl-float v7, v4, v7

    if-eqz v7, :cond_11

    .line 50458
    iget-object v6, v6, Landroidx/constraintlayout/motion/widget/s;->m:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v6, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 2521
    :cond_11
    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_12

    .line 2522
    aput v2, p4, v9

    .line 2523
    aput v3, p4, v5

    .line 2525
    :cond_12
    invoke-virtual {v0, v9}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(Z)V

    .line 2526
    aget v1, p4, v9

    if-nez v1, :cond_13

    aget v1, p4, v5

    if-eqz v1, :cond_14

    .line 2527
    :cond_13
    iput-boolean v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Z

    :cond_14
    :goto_3
    return-void
.end method

.method protected final a(Landroidx/constraintlayout/motion/widget/p$a;)V
    .locals 3

    .line 1230
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/p;->a(Landroidx/constraintlayout/motion/widget/p$a;)V

    .line 1232
    sget v0, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->b:I

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(I)V

    .line 1233
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/p;->c()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1234
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    .line 1235
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k:F

    .line 1236
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1238
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    .line 1239
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k:F

    .line 1240
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m:F

    .line 14635
    :goto_0
    iget p1, p1, Landroidx/constraintlayout/motion/widget/p$a;->r:I

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    const-wide/16 v0, -0x1

    goto :goto_2

    .line 14983
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 1242
    :goto_2
    iput-wide v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ad:J

    .line 1247
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/p;->b()I

    move-result p1

    .line 1248
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/p;->c()I

    move-result v0

    .line 1249
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    if-ne p1, v1, :cond_3

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g:I

    if-ne v0, v1, :cond_3

    return-void

    .line 1252
    :cond_3
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    .line 1253
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g:I

    .line 1254
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {v1, p1, v0}, Landroidx/constraintlayout/motion/widget/p;->a(II)V

    .line 1260
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$c;

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    .line 15080
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/p;->a(I)Landroidx/constraintlayout/widget/c;

    move-result-object v0

    .line 1260
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g:I

    .line 16080
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/motion/widget/p;->a(I)Landroidx/constraintlayout/widget/c;

    move-result-object v1

    .line 1260
    invoke-virtual {p1, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->a(Landroidx/constraintlayout/widget/c;Landroidx/constraintlayout/widget/c;)V

    .line 1261
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$c;

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g:I

    invoke-virtual {p1, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->a(II)V

    .line 1262
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$c;

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->a()V

    .line 1264
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->g()V

    return-void
.end method

.method final a(Z)V
    .locals 22

    move-object/from16 v0, p0

    .line 3003
    iget-wide v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ad:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 50470
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 3004
    iput-wide v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ad:J

    .line 3006
    :cond_0
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    const/4 v2, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    cmpl-float v5, v1, v4

    if-lez v5, :cond_1

    cmpg-float v5, v1, v3

    if-gez v5, :cond_1

    .line 3007
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    .line 3011
    :cond_1
    iget-boolean v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->al:Z

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v5, :cond_2

    iget-boolean v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:Z

    if-eqz v5, :cond_24

    if-nez p1, :cond_2

    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m:F

    cmpl-float v5, v5, v1

    if-eqz v5, :cond_24

    .line 3012
    :cond_2
    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m:F

    sub-float/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v1

    .line 50471
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 3016
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->c:Landroid/view/animation/Interpolator;

    instance-of v10, v5, Landroidx/constraintlayout/motion/widget/n;

    const v11, 0x3089705f    # 1.0E-9f

    if-nez v10, :cond_3

    .line 3017
    iget-wide v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ad:J

    sub-long v12, v8, v12

    long-to-float v10, v12

    mul-float v10, v10, v1

    mul-float v10, v10, v11

    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->j:F

    div-float/2addr v10, v12

    .line 3018
    iput v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:F

    goto :goto_0

    :cond_3
    const/4 v10, 0x0

    .line 3020
    :goto_0
    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    add-float/2addr v12, v10

    .line 3023
    iget-boolean v13, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ae:Z

    if-eqz v13, :cond_4

    .line 3024
    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m:F

    :cond_4
    cmpl-float v13, v1, v4

    if-lez v13, :cond_5

    .line 3027
    iget v14, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m:F

    cmpl-float v14, v12, v14

    if-gez v14, :cond_6

    :cond_5
    cmpg-float v14, v1, v4

    if-gtz v14, :cond_7

    iget v14, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m:F

    cmpg-float v14, v12, v14

    if-gtz v14, :cond_7

    .line 3029
    :cond_6
    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m:F

    .line 3030
    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:Z

    const/4 v14, 0x1

    goto :goto_1

    :cond_7
    const/4 v14, 0x0

    .line 3036
    :goto_1
    iput v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    .line 3037
    iput v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k:F

    .line 3038
    iput-wide v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ad:J

    const v15, 0x3727c5ac    # 1.0E-5f

    if-eqz v5, :cond_d

    if-nez v14, :cond_d

    .line 3041
    iget-boolean v14, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ai:Z

    if-eqz v14, :cond_a

    .line 3042
    iget-wide v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ac:J

    sub-long v2, v8, v2

    long-to-float v2, v2

    mul-float v2, v2, v11

    .line 3043
    invoke-interface {v5, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 3047
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    .line 3049
    iput-wide v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ad:J

    .line 3050
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->c:Landroid/view/animation/Interpolator;

    instance-of v5, v3, Landroidx/constraintlayout/motion/widget/n;

    if-eqz v5, :cond_c

    .line 3051
    check-cast v3, Landroidx/constraintlayout/motion/widget/n;

    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/n;->a()F

    move-result v3

    .line 3052
    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:F

    .line 3053
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->j:F

    mul-float v5, v5, v8

    cmpg-float v5, v5, v15

    if-gtz v5, :cond_8

    .line 3054
    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:Z

    :cond_8
    cmpl-float v5, v3, v4

    if-lez v5, :cond_9

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v8, v2, v5

    if-ltz v8, :cond_9

    .line 3057
    iput v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    .line 3058
    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:Z

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_9
    cmpg-float v3, v3, v4

    if-gez v3, :cond_c

    cmpg-float v3, v2, v4

    if-gtz v3, :cond_c

    .line 3061
    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    .line 3062
    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:Z

    const/4 v12, 0x0

    goto :goto_3

    .line 3069
    :cond_a
    invoke-interface {v5, v12}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 3070
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->c:Landroid/view/animation/Interpolator;

    instance-of v5, v3, Landroidx/constraintlayout/motion/widget/n;

    if-eqz v5, :cond_b

    .line 3071
    check-cast v3, Landroidx/constraintlayout/motion/widget/n;

    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/n;->a()F

    move-result v3

    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:F

    goto :goto_2

    :cond_b
    add-float/2addr v12, v10

    .line 3073
    invoke-interface {v3, v12}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    sub-float/2addr v3, v2

    mul-float v3, v3, v1

    div-float/2addr v3, v10

    .line 3074
    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:F

    :cond_c
    :goto_2
    move v12, v2

    .line 3079
    :cond_d
    :goto_3
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v15

    if-lez v2, :cond_e

    .line 3080
    sget v2, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->c:I

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(I)V

    :cond_e
    if-lez v13, :cond_f

    .line 3083
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m:F

    cmpl-float v2, v12, v2

    if-gez v2, :cond_10

    :cond_f
    cmpg-float v2, v1, v4

    if-gtz v2, :cond_11

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m:F

    cmpg-float v2, v12, v2

    if-gtz v2, :cond_11

    .line 3085
    :cond_10
    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m:F

    .line 3086
    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:Z

    :cond_11
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v12, v2

    if-gez v3, :cond_12

    cmpg-float v2, v12, v4

    if-gtz v2, :cond_13

    .line 3090
    :cond_12
    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:Z

    .line 3091
    sget v2, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->d:I

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(I)V

    .line 3094
    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildCount()I

    move-result v2

    .line 3095
    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->al:Z

    .line 50472
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 3100
    iput v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v2, :cond_15

    .line 3102
    invoke-virtual {v0, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 3103
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->i:Ljava/util/HashMap;

    invoke-virtual {v11, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v16, v11

    check-cast v16, Landroidx/constraintlayout/motion/widget/m;

    if-eqz v16, :cond_14

    .line 3105
    iget-boolean v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->al:Z

    iget-object v15, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->at:Landroidx/constraintlayout/motion/widget/d;

    move-object/from16 v17, v10

    move/from16 v18, v12

    move-wide/from16 v19, v8

    move-object/from16 v21, v15

    invoke-virtual/range {v16 .. v21}, Landroidx/constraintlayout/motion/widget/m;->a(Landroid/view/View;FJLandroidx/constraintlayout/motion/widget/d;)Z

    move-result v10

    or-int/2addr v10, v11

    iput-boolean v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->al:Z

    :cond_14
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_15
    if-lez v13, :cond_16

    .line 3113
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m:F

    cmpl-float v2, v12, v2

    if-gez v2, :cond_17

    :cond_16
    cmpg-float v2, v1, v4

    if-gtz v2, :cond_18

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m:F

    cmpg-float v2, v12, v2

    if-gtz v2, :cond_18

    :cond_17
    const/4 v2, 0x1

    goto :goto_5

    :cond_18
    const/4 v2, 0x0

    .line 3115
    :goto_5
    iget-boolean v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->al:Z

    if-nez v5, :cond_19

    iget-boolean v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:Z

    if-nez v5, :cond_19

    if-eqz v2, :cond_19

    .line 3116
    sget v5, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->d:I

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(I)V

    .line 3118
    :cond_19
    iget-boolean v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:Z

    if-eqz v5, :cond_1a

    .line 3119
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    .line 3122
    :cond_1a
    iget-boolean v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->al:Z

    xor-int/2addr v2, v6

    or-int/2addr v2, v5

    iput-boolean v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->al:Z

    cmpg-float v2, v12, v4

    if-gtz v2, :cond_1b

    .line 3125
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_1b

    .line 3129
    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    if-eq v5, v2, :cond_1b

    .line 3131
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    .line 3132
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    .line 50473
    invoke-virtual {v5, v2}, Landroidx/constraintlayout/motion/widget/p;->a(I)Landroidx/constraintlayout/widget/c;

    move-result-object v2

    .line 3133
    invoke-virtual {v2, v0}, Landroidx/constraintlayout/widget/c;->c(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 3134
    sget v2, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->d:I

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(I)V

    const/4 v7, 0x1

    :cond_1b
    float-to-double v8, v12

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v8, v10

    if-ltz v2, :cond_1c

    .line 3142
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g:I

    if-eq v2, v5, :cond_1c

    .line 3144
    iput v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    .line 3145
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    .line 50474
    invoke-virtual {v2, v5}, Landroidx/constraintlayout/motion/widget/p;->a(I)Landroidx/constraintlayout/widget/c;

    move-result-object v2

    .line 3146
    invoke-virtual {v2, v0}, Landroidx/constraintlayout/widget/c;->c(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 3147
    sget v2, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->d:I

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(I)V

    const/4 v7, 0x1

    .line 3151
    :cond_1c
    iget-boolean v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->al:Z

    if-nez v2, :cond_20

    iget-boolean v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:Z

    if-eqz v2, :cond_1d

    goto :goto_6

    :cond_1d
    if-lez v13, :cond_1e

    if-eqz v3, :cond_1f

    :cond_1e
    cmpg-float v2, v1, v4

    if-gez v2, :cond_21

    cmpl-float v2, v12, v4

    if-nez v2, :cond_21

    .line 3155
    :cond_1f
    sget v2, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->d:I

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(I)V

    goto :goto_7

    .line 3152
    :cond_20
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->invalidate()V

    .line 3157
    :cond_21
    :goto_7
    iget-boolean v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->al:Z

    if-nez v2, :cond_22

    iget-boolean v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:Z

    if-eqz v2, :cond_22

    if-lez v13, :cond_22

    if-eqz v3, :cond_23

    :cond_22
    cmpg-float v1, v1, v4

    if-gez v1, :cond_24

    cmpl-float v1, v12, v4

    if-nez v1, :cond_24

    .line 3158
    :cond_23
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->b()V

    .line 3161
    :cond_24
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_26

    .line 3162
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g:I

    if-eq v1, v2, :cond_25

    goto :goto_8

    :cond_25
    move v6, v7

    .line 3165
    :goto_8
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    :goto_9
    move v7, v6

    goto :goto_b

    :cond_26
    cmpg-float v1, v1, v4

    if-gtz v1, :cond_28

    .line 3167
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    if-eq v1, v2, :cond_27

    goto :goto_a

    :cond_27
    move v6, v7

    .line 3170
    :goto_a
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    goto :goto_9

    .line 3173
    :cond_28
    :goto_b
    iget-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->aw:Z

    or-int/2addr v1, v7

    iput-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->aw:Z

    if-eqz v7, :cond_29

    .line 3175
    iget-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->au:Z

    if-nez v1, :cond_29

    .line 3176
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    .line 3179
    :cond_29
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k:F

    return-void
.end method

.method public final a(Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    .line 2415
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    if-eqz p1, :cond_1

    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$a;

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$a;

    .line 34560
    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/p$a;->l:Landroidx/constraintlayout/motion/widget/s;

    if-eqz p1, :cond_1

    .line 2417
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$a;

    .line 35560
    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/p$a;->l:Landroidx/constraintlayout/motion/widget/s;

    .line 36548
    iget p1, p1, Landroidx/constraintlayout/motion/widget/s;->r:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method final b()V
    .locals 2

    .line 3528
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    if-nez v0, :cond_0

    return-void

    .line 3531
    :cond_0
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    invoke-virtual {v0, p0, v1}, Landroidx/constraintlayout/motion/widget/p;->b(Landroidx/constraintlayout/motion/widget/MotionLayout;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3532
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    return-void

    .line 3535
    :cond_1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 3536
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {v1, p0, v0}, Landroidx/constraintlayout/motion/widget/p;->a(Landroidx/constraintlayout/motion/widget/MotionLayout;I)V

    .line 3538
    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/p;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3539
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/p;->i()V

    :cond_3
    return-void
.end method

.method public final b(I)V
    .locals 13

    .line 1806
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1807
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->av:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    if-nez v0, :cond_0

    .line 1808
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$f;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->av:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    .line 1810
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->av:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    .line 21418
    iput p1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->d:I

    return-void

    .line 21834
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    const/4 v1, -0x1

    if-eqz v0, :cond_6

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/p;->b:Landroidx/constraintlayout/widget/f;

    if-eqz v0, :cond_6

    .line 21835
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/p;->b:Landroidx/constraintlayout/widget/f;

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    .line 22177
    iget-object v0, v0, Landroidx/constraintlayout/widget/f;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/f$a;

    if-nez v0, :cond_2

    move v2, p1

    goto :goto_0

    .line 22182
    :cond_2
    iget v3, v0, Landroidx/constraintlayout/widget/f$a;->c:I

    if-ne v3, v2, :cond_3

    goto :goto_0

    .line 22185
    :cond_3
    iget-object v3, v0, Landroidx/constraintlayout/widget/f$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/f$b;

    .line 22186
    iget v4, v4, Landroidx/constraintlayout/widget/f$b;->e:I

    if-ne v2, v4, :cond_4

    goto :goto_0

    .line 22190
    :cond_5
    iget v2, v0, Landroidx/constraintlayout/widget/f$a;->c:I

    :goto_0
    if-eq v2, v1, :cond_6

    move p1, v2

    .line 21846
    :cond_6
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    if-eq v0, p1, :cond_12

    .line 21849
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    const/4 v3, 0x0

    if-ne v2, p1, :cond_7

    .line 21850
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(F)V

    return-void

    .line 21853
    :cond_7
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g:I

    const/high16 v4, 0x3f800000    # 1.0f

    if-ne v2, p1, :cond_8

    .line 21854
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(F)V

    return-void

    .line 21857
    :cond_8
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g:I

    if-eq v0, v1, :cond_9

    .line 21866
    invoke-virtual {p0, v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(II)V

    .line 21867
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(F)V

    .line 21869
    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    .line 22796
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(F)V

    return-void

    :cond_9
    const/4 v0, 0x0

    .line 21879
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ai:Z

    .line 21880
    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m:F

    .line 21881
    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k:F

    .line 21882
    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    .line 22983
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 21883
    iput-wide v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ad:J

    .line 23983
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 21884
    iput-wide v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ac:J

    .line 21885
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ae:Z

    const/4 v2, 0x0

    .line 21886
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->c:Landroid/view/animation/Interpolator;

    .line 21887
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {v5}, Landroidx/constraintlayout/motion/widget/p;->e()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    iput v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->j:F

    .line 21888
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    .line 21889
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g:I

    invoke-virtual {v5, v1, v6}, Landroidx/constraintlayout/motion/widget/p;->a(II)V

    .line 21891
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/p;->b()I

    .line 21893
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildCount()I

    move-result v1

    .line 21894
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->i:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_a

    .line 21896
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 21897
    new-instance v7, Landroidx/constraintlayout/motion/widget/m;

    invoke-direct {v7, v6}, Landroidx/constraintlayout/motion/widget/m;-><init>(Landroid/view/View;)V

    .line 21898
    iget-object v8, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->i:Ljava/util/HashMap;

    invoke-virtual {v8, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_a
    const/4 v5, 0x1

    .line 21900
    iput-boolean v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:Z

    .line 21902
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$c;

    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    .line 24080
    invoke-virtual {v7, p1}, Landroidx/constraintlayout/motion/widget/p;->a(I)Landroidx/constraintlayout/widget/c;

    move-result-object p1

    .line 21902
    invoke-virtual {v6, v2, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->a(Landroidx/constraintlayout/widget/c;Landroidx/constraintlayout/widget/c;)V

    .line 21903
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->g()V

    .line 21904
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$c;

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->b()V

    .line 24770
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildCount()I

    move-result p1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, p1, :cond_e

    .line 24772
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 24773
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->i:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/motion/widget/m;

    if-eqz v7, :cond_d

    .line 24839
    iget-object v8, v7, Landroidx/constraintlayout/motion/widget/m;->d:Landroidx/constraintlayout/motion/widget/o;

    iput v3, v8, Landroidx/constraintlayout/motion/widget/o;->d:F

    .line 24840
    iget-object v8, v7, Landroidx/constraintlayout/motion/widget/m;->d:Landroidx/constraintlayout/motion/widget/o;

    iput v3, v8, Landroidx/constraintlayout/motion/widget/o;->e:F

    .line 24841
    iget-object v8, v7, Landroidx/constraintlayout/motion/widget/m;->d:Landroidx/constraintlayout/motion/widget/o;

    invoke-virtual {v6}, Landroid/view/View;->getX()F

    move-result v9

    invoke-virtual {v6}, Landroid/view/View;->getY()F

    move-result v10

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v8, v9, v10, v11, v12}, Landroidx/constraintlayout/motion/widget/o;->a(FFFF)V

    .line 24842
    iget-object v7, v7, Landroidx/constraintlayout/motion/widget/m;->f:Landroidx/constraintlayout/motion/widget/l;

    .line 25328
    invoke-virtual {v6}, Landroid/view/View;->getX()F

    move-result v8

    invoke-virtual {v6}, Landroid/view/View;->getY()F

    move-result v9

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v7, v8, v9, v10, v11}, Landroidx/constraintlayout/motion/widget/l;->a(FFFF)V

    .line 26202
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v8

    iput v8, v7, Landroidx/constraintlayout/motion/widget/l;->c:I

    .line 26203
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eqz v8, :cond_b

    const/4 v8, 0x0

    goto :goto_3

    :cond_b
    invoke-virtual {v6}, Landroid/view/View;->getAlpha()F

    move-result v8

    :goto_3
    iput v8, v7, Landroidx/constraintlayout/motion/widget/l;->a:F

    .line 26204
    iput-boolean v0, v7, Landroidx/constraintlayout/motion/widget/l;->d:Z

    .line 26205
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_c

    .line 26206
    invoke-virtual {v6}, Landroid/view/View;->getElevation()F

    move-result v8

    iput v8, v7, Landroidx/constraintlayout/motion/widget/l;->e:F

    .line 26208
    :cond_c
    invoke-virtual {v6}, Landroid/view/View;->getRotation()F

    move-result v8

    iput v8, v7, Landroidx/constraintlayout/motion/widget/l;->f:F

    .line 26209
    invoke-virtual {v6}, Landroid/view/View;->getRotationX()F

    move-result v8

    iput v8, v7, Landroidx/constraintlayout/motion/widget/l;->g:F

    .line 26210
    invoke-virtual {v6}, Landroid/view/View;->getRotationY()F

    move-result v8

    iput v8, v7, Landroidx/constraintlayout/motion/widget/l;->h:F

    .line 26211
    invoke-virtual {v6}, Landroid/view/View;->getScaleX()F

    move-result v8

    iput v8, v7, Landroidx/constraintlayout/motion/widget/l;->i:F

    .line 26212
    invoke-virtual {v6}, Landroid/view/View;->getScaleY()F

    move-result v8

    iput v8, v7, Landroidx/constraintlayout/motion/widget/l;->j:F

    .line 26213
    invoke-virtual {v6}, Landroid/view/View;->getPivotX()F

    move-result v8

    iput v8, v7, Landroidx/constraintlayout/motion/widget/l;->k:F

    .line 26214
    invoke-virtual {v6}, Landroid/view/View;->getPivotY()F

    move-result v8

    iput v8, v7, Landroidx/constraintlayout/motion/widget/l;->l:F

    .line 26215
    invoke-virtual {v6}, Landroid/view/View;->getTranslationX()F

    move-result v8

    iput v8, v7, Landroidx/constraintlayout/motion/widget/l;->m:F

    .line 26216
    invoke-virtual {v6}, Landroid/view/View;->getTranslationY()F

    move-result v8

    iput v8, v7, Landroidx/constraintlayout/motion/widget/l;->n:F

    .line 26217
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v9, :cond_d

    .line 26218
    invoke-virtual {v6}, Landroid/view/View;->getTranslationZ()F

    move-result v6

    iput v6, v7, Landroidx/constraintlayout/motion/widget/l;->o:F

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 21906
    :cond_e
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getWidth()I

    move-result p1

    .line 21907
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getHeight()I

    move-result v2

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v1, :cond_f

    .line 21910
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->i:Ljava/util/HashMap;

    invoke-virtual {p0, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/motion/widget/m;

    .line 21911
    iget-object v8, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {v8, v7}, Landroidx/constraintlayout/motion/widget/p;->a(Landroidx/constraintlayout/motion/widget/m;)V

    .line 26983
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 21912
    invoke-virtual {v7, p1, v2, v8, v9}, Landroidx/constraintlayout/motion/widget/m;->a(IIJ)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 21915
    :cond_f
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/p;->f()F

    move-result p1

    cmpl-float v2, p1, v3

    if-eqz v2, :cond_11

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    const v6, -0x800001

    const/4 v7, 0x0

    :goto_5
    if-ge v7, v1, :cond_10

    .line 21920
    iget-object v8, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->i:Ljava/util/HashMap;

    invoke-virtual {p0, v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/motion/widget/m;

    .line 27118
    iget-object v9, v8, Landroidx/constraintlayout/motion/widget/m;->e:Landroidx/constraintlayout/motion/widget/o;

    iget v9, v9, Landroidx/constraintlayout/motion/widget/o;->f:F

    .line 27122
    iget-object v8, v8, Landroidx/constraintlayout/motion/widget/m;->e:Landroidx/constraintlayout/motion/widget/o;

    iget v8, v8, Landroidx/constraintlayout/motion/widget/o;->g:F

    add-float/2addr v8, v9

    .line 21923
    invoke-static {v2, v8}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 21924
    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_10
    :goto_6
    if-ge v0, v1, :cond_11

    .line 21928
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->i:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/motion/widget/m;

    .line 28118
    iget-object v8, v7, Landroidx/constraintlayout/motion/widget/m;->e:Landroidx/constraintlayout/motion/widget/o;

    iget v8, v8, Landroidx/constraintlayout/motion/widget/o;->f:F

    .line 28122
    iget-object v9, v7, Landroidx/constraintlayout/motion/widget/m;->e:Landroidx/constraintlayout/motion/widget/o;

    iget v9, v9, Landroidx/constraintlayout/motion/widget/o;->g:F

    sub-float v10, v4, p1

    div-float v10, v4, v10

    .line 21931
    iput v10, v7, Landroidx/constraintlayout/motion/widget/m;->k:F

    add-float/2addr v8, v9

    sub-float/2addr v8, v2

    mul-float v8, v8, p1

    sub-float v9, v6, v2

    div-float/2addr v8, v9

    sub-float v8, p1, v8

    .line 21932
    iput v8, v7, Landroidx/constraintlayout/motion/widget/m;->j:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 21936
    :cond_11
    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k:F

    .line 21937
    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    .line 21938
    iput-boolean v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:Z

    .line 21940
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->invalidate()V

    :cond_12
    return-void
.end method

.method public final b(Landroid/view/View;Landroid/view/View;II)V
    .locals 0

    return-void
.end method

.method public final c(I)V
    .locals 0

    const/4 p1, 0x0

    .line 3221
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->R:Landroidx/constraintlayout/widget/b;

    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9

    const/4 v0, 0x0

    .line 2901
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(Z)V

    .line 2908
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2909
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    if-nez v1, :cond_0

    return-void

    .line 2915
    :cond_0
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->p:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    .line 2916
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2917
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ao:I

    add-int/2addr v1, v2

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ao:I

    .line 50468
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 2919
    iget-wide v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ap:J

    const-wide/16 v7, -0x1

    cmp-long v1, v5, v7

    if-eqz v1, :cond_1

    sub-long v5, v3, v5

    const-wide/32 v7, 0xbebc200

    cmp-long v1, v5, v7

    if-lez v1, :cond_2

    .line 2922
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ao:I

    int-to-float v1, v1

    long-to-float v5, v5

    const v6, 0x3089705f    # 1.0E-9f

    mul-float v5, v5, v6

    div-float/2addr v1, v5

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float v1, v1, v5

    float-to-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    .line 2923
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->aq:F

    .line 2924
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ao:I

    .line 2925
    iput-wide v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ap:J

    goto :goto_0

    .line 2928
    :cond_1
    iput-wide v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ap:J

    .line 2930
    :cond_2
    :goto_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/high16 v1, 0x42280000    # 42.0f

    .line 2931
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 50469
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float v1, v1, v3

    float-to-int v1, v1

    int-to-float v1, v1

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v1, v3

    .line 2933
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->aq:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " fps "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    invoke-static {p0, v5}, Landroidx/constraintlayout/motion/widget/a;->a(Landroidx/constraintlayout/motion/widget/MotionLayout;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2934
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g:I

    invoke-static {p0, v4}, Landroidx/constraintlayout/motion/widget/a;->a(Landroidx/constraintlayout/motion/widget/MotionLayout;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (progress: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " ) state="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_3

    const-string v1, "undefined"

    goto :goto_1

    .line 2935
    :cond_3
    invoke-static {p0, v1}, Landroidx/constraintlayout/motion/widget/a;->a(Landroidx/constraintlayout/motion/widget/MotionLayout;I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v4, -0x1000000

    .line 2936
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v4, 0x41300000    # 11.0f

    .line 2937
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, -0x1d

    int-to-float v5, v5

    invoke-virtual {p1, v1, v4, v5, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const v4, -0x77ff78

    .line 2938
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 2939
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getHeight()I

    move-result v4

    add-int/lit8 v4, v4, -0x1e

    int-to-float v4, v4

    invoke-virtual {p1, v1, v3, v4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2943
    :cond_4
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->p:I

    if-le v0, v2, :cond_6

    .line 2944
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Landroidx/constraintlayout/motion/widget/MotionLayout$b;

    if-nez v0, :cond_5

    .line 2945
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$b;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Landroidx/constraintlayout/motion/widget/MotionLayout$b;

    .line 2947
    :cond_5
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Landroidx/constraintlayout/motion/widget/MotionLayout$b;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->i:Ljava/util/HashMap;

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/p;->e()I

    move-result v2

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->p:I

    invoke-virtual {v0, p1, v1, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->a(Landroid/graphics/Canvas;Ljava/util/HashMap;II)V

    :cond_6
    return-void
.end method

.method public isAttachedToWindow()Z
    .locals 2

    .line 1296
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 1297
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isAttachedToWindow()Z

    move-result v0

    return v0

    .line 1299
    :cond_0
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 19

    move-object/from16 v0, p0

    .line 3493
    invoke-super/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->onAttachedToWindow()V

    .line 3494
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    if-eqz v1, :cond_11

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_11

    .line 50575
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/motion/widget/p;->a(I)Landroidx/constraintlayout/widget/c;

    move-result-object v1

    .line 3496
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 50576
    :goto_0
    iget-object v6, v2, Landroidx/constraintlayout/motion/widget/p;->e:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ge v5, v6, :cond_4

    .line 50577
    iget-object v6, v2, Landroidx/constraintlayout/motion/widget/p;->e:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 50589
    iget-object v8, v2, Landroidx/constraintlayout/motion/widget/p;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    .line 50590
    iget-object v9, v2, Landroidx/constraintlayout/motion/widget/p;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    :goto_1
    if-lez v8, :cond_2

    if-ne v8, v6, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v10, v9, -0x1

    if-gez v9, :cond_1

    goto :goto_2

    .line 50598
    :cond_1
    iget-object v9, v2, Landroidx/constraintlayout/motion/widget/p;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    move v9, v10

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_3

    const-string v2, "MotionScene"

    const-string v3, "Cannot be derived from yourself"

    .line 50579
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 50582
    :cond_3
    invoke-virtual {v2, v6}, Landroidx/constraintlayout/motion/widget/p;->b(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    .line 50584
    :goto_3
    iget-object v6, v2, Landroidx/constraintlayout/motion/widget/p;->e:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_f

    .line 50585
    iget-object v6, v2, Landroidx/constraintlayout/motion/widget/p;->e:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/widget/c;

    .line 50601
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v8

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v8, :cond_e

    .line 50603
    invoke-virtual {v0, v9}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 50604
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 50606
    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v12

    .line 50607
    iget-boolean v13, v6, Landroidx/constraintlayout/widget/c;->b:Z

    if-eqz v13, :cond_6

    if-eq v12, v3, :cond_5

    goto :goto_5

    .line 50608
    :cond_5
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 50610
    :cond_6
    :goto_5
    iget-object v13, v6, Landroidx/constraintlayout/widget/c;->c:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7

    .line 50611
    iget-object v13, v6, Landroidx/constraintlayout/widget/c;->c:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-instance v15, Landroidx/constraintlayout/widget/c$a;

    invoke-direct {v15}, Landroidx/constraintlayout/widget/c$a;-><init>()V

    invoke-virtual {v13, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50613
    :cond_7
    iget-object v13, v6, Landroidx/constraintlayout/widget/c;->c:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/constraintlayout/widget/c$a;

    .line 50614
    iget-object v14, v13, Landroidx/constraintlayout/widget/c$a;->d:Landroidx/constraintlayout/widget/c$b;

    iget-boolean v14, v14, Landroidx/constraintlayout/widget/c$b;->b:Z

    if-nez v14, :cond_9

    .line 50662
    invoke-virtual {v13, v12, v11}, Landroidx/constraintlayout/widget/c$a;->a(ILandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    .line 50616
    instance-of v11, v10, Landroidx/constraintlayout/widget/ConstraintHelper;

    if-eqz v11, :cond_8

    .line 50617
    iget-object v11, v13, Landroidx/constraintlayout/widget/c$a;->d:Landroidx/constraintlayout/widget/c$b;

    move-object v12, v10

    check-cast v12, Landroidx/constraintlayout/widget/ConstraintHelper;

    invoke-virtual {v12}, Landroidx/constraintlayout/widget/ConstraintHelper;->b()[I

    move-result-object v12

    iput-object v12, v11, Landroidx/constraintlayout/widget/c$b;->ae:[I

    .line 50618
    instance-of v11, v10, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v11, :cond_8

    .line 50619
    move-object v11, v10

    check-cast v11, Landroidx/constraintlayout/widget/Barrier;

    .line 50620
    iget-object v12, v13, Landroidx/constraintlayout/widget/c$a;->d:Landroidx/constraintlayout/widget/c$b;

    .line 50663
    iget-object v14, v11, Landroidx/constraintlayout/widget/Barrier;->b:Landroidx/constraintlayout/a/a/a;

    .line 50664
    iget-boolean v14, v14, Landroidx/constraintlayout/a/a/a;->b:Z

    .line 50620
    iput-boolean v14, v12, Landroidx/constraintlayout/widget/c$b;->aj:Z

    .line 50621
    iget-object v12, v13, Landroidx/constraintlayout/widget/c$a;->d:Landroidx/constraintlayout/widget/c$b;

    .line 50665
    iget v14, v11, Landroidx/constraintlayout/widget/Barrier;->a:I

    .line 50621
    iput v14, v12, Landroidx/constraintlayout/widget/c$b;->ab:I

    .line 50622
    iget-object v12, v13, Landroidx/constraintlayout/widget/c$a;->d:Landroidx/constraintlayout/widget/c$b;

    .line 50666
    iget-object v11, v11, Landroidx/constraintlayout/widget/Barrier;->b:Landroidx/constraintlayout/a/a/a;

    .line 50667
    iget v11, v11, Landroidx/constraintlayout/a/a/a;->c:I

    .line 50622
    iput v11, v12, Landroidx/constraintlayout/widget/c$b;->ac:I

    .line 50625
    :cond_8
    iget-object v11, v13, Landroidx/constraintlayout/widget/c$a;->d:Landroidx/constraintlayout/widget/c$b;

    iput-boolean v7, v11, Landroidx/constraintlayout/widget/c$b;->b:Z

    .line 50627
    :cond_9
    iget-object v11, v13, Landroidx/constraintlayout/widget/c$a;->b:Landroidx/constraintlayout/widget/c$d;

    iget-boolean v11, v11, Landroidx/constraintlayout/widget/c$d;->a:Z

    if-nez v11, :cond_a

    .line 50628
    iget-object v11, v13, Landroidx/constraintlayout/widget/c$a;->b:Landroidx/constraintlayout/widget/c$d;

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v12

    iput v12, v11, Landroidx/constraintlayout/widget/c$d;->b:I

    .line 50629
    iget-object v11, v13, Landroidx/constraintlayout/widget/c$a;->b:Landroidx/constraintlayout/widget/c$d;

    invoke-virtual {v10}, Landroid/view/View;->getAlpha()F

    move-result v12

    iput v12, v11, Landroidx/constraintlayout/widget/c$d;->d:F

    .line 50630
    iget-object v11, v13, Landroidx/constraintlayout/widget/c$a;->b:Landroidx/constraintlayout/widget/c$d;

    iput-boolean v7, v11, Landroidx/constraintlayout/widget/c$d;->a:Z

    .line 50632
    :cond_a
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x11

    if-lt v11, v12, :cond_d

    .line 50634
    iget-object v11, v13, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$e;

    iget-boolean v11, v11, Landroidx/constraintlayout/widget/c$e;->a:Z

    if-nez v11, :cond_d

    .line 50635
    iget-object v11, v13, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$e;

    iput-boolean v7, v11, Landroidx/constraintlayout/widget/c$e;->a:Z

    .line 50636
    iget-object v11, v13, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$e;

    invoke-virtual {v10}, Landroid/view/View;->getRotation()F

    move-result v12

    iput v12, v11, Landroidx/constraintlayout/widget/c$e;->b:F

    .line 50637
    iget-object v11, v13, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$e;

    invoke-virtual {v10}, Landroid/view/View;->getRotationX()F

    move-result v12

    iput v12, v11, Landroidx/constraintlayout/widget/c$e;->c:F

    .line 50638
    iget-object v11, v13, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$e;

    invoke-virtual {v10}, Landroid/view/View;->getRotationY()F

    move-result v12

    iput v12, v11, Landroidx/constraintlayout/widget/c$e;->d:F

    .line 50639
    iget-object v11, v13, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$e;

    invoke-virtual {v10}, Landroid/view/View;->getScaleX()F

    move-result v12

    iput v12, v11, Landroidx/constraintlayout/widget/c$e;->e:F

    .line 50640
    iget-object v11, v13, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$e;

    invoke-virtual {v10}, Landroid/view/View;->getScaleY()F

    move-result v12

    iput v12, v11, Landroidx/constraintlayout/widget/c$e;->f:F

    .line 50642
    invoke-virtual {v10}, Landroid/view/View;->getPivotX()F

    move-result v11

    .line 50643
    invoke-virtual {v10}, Landroid/view/View;->getPivotY()F

    move-result v12

    float-to-double v14, v11

    const-wide/16 v16, 0x0

    cmpl-double v18, v14, v16

    if-nez v18, :cond_b

    float-to-double v14, v12

    cmpl-double v18, v14, v16

    if-eqz v18, :cond_c

    .line 50646
    :cond_b
    iget-object v14, v13, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$e;

    iput v11, v14, Landroidx/constraintlayout/widget/c$e;->g:F

    .line 50647
    iget-object v11, v13, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$e;

    iput v12, v11, Landroidx/constraintlayout/widget/c$e;->h:F

    .line 50650
    :cond_c
    iget-object v11, v13, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$e;

    invoke-virtual {v10}, Landroid/view/View;->getTranslationX()F

    move-result v12

    iput v12, v11, Landroidx/constraintlayout/widget/c$e;->i:F

    .line 50651
    iget-object v11, v13, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$e;

    invoke-virtual {v10}, Landroid/view/View;->getTranslationY()F

    move-result v12

    iput v12, v11, Landroidx/constraintlayout/widget/c$e;->j:F

    .line 50652
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x15

    if-lt v11, v12, :cond_d

    .line 50653
    iget-object v11, v13, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$e;

    invoke-virtual {v10}, Landroid/view/View;->getTranslationZ()F

    move-result v12

    iput v12, v11, Landroidx/constraintlayout/widget/c$e;->k:F

    .line 50654
    iget-object v11, v13, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$e;

    iget-boolean v11, v11, Landroidx/constraintlayout/widget/c$e;->l:Z

    if-eqz v11, :cond_d

    .line 50655
    iget-object v11, v13, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$e;

    invoke-virtual {v10}, Landroid/view/View;->getElevation()F

    move-result v10

    iput v10, v11, Landroidx/constraintlayout/widget/c$e;->m:F

    :cond_d
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_4

    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    :cond_f
    :goto_6
    if-eqz v1, :cond_10

    .line 3498
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/c;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 3500
    :cond_10
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    .line 3502
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->b()V

    .line 3503
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->av:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    if-eqz v1, :cond_12

    .line 3504
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->a()V

    return-void

    .line 3506
    :cond_12
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    if-eqz v1, :cond_13

    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$a;

    if-eqz v1, :cond_13

    .line 3507
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$a;

    .line 50668
    iget v1, v1, Landroidx/constraintlayout/motion/widget/p$a;->n:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_13

    const/high16 v1, 0x3f800000    # 1.0f

    .line 50669
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(F)V

    .line 3509
    sget v1, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->b:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(I)V

    .line 3510
    sget v1, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->c:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(I)V

    :cond_13
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 3436
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->h:Z

    if-nez v2, :cond_0

    goto/16 :goto_0

    .line 3439
    :cond_0
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$a;

    if-eqz v0, :cond_4

    .line 3440
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/p$a;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 50572
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/p$a;->l:Landroidx/constraintlayout/motion/widget/s;

    if-eqz v0, :cond_4

    .line 3443
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    .line 3444
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0, p0, v2}, Landroidx/constraintlayout/motion/widget/s;->a(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3446
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 50573
    :cond_1
    iget v0, v0, Landroidx/constraintlayout/motion/widget/s;->c:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    .line 3452
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ay:Landroid/view/View;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    if-eq v2, v0, :cond_3

    .line 3453
    :cond_2
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ay:Landroid/view/View;

    .line 3455
    :cond_3
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ay:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 3456
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ax:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ay:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ay:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ay:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3457
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ax:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3460
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ay:Landroid/view/View;

    const/4 v2, 0x0

    invoke-direct {p0, v2, v2, v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(FFLandroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3462
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v1
.end method

.method public onLayout(ZIIII)V
    .locals 3

    const/4 v0, 0x1

    .line 3186
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->au:Z

    const/4 v1, 0x0

    .line 3191
    :try_start_0
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    if-nez v2, :cond_0

    .line 3192
    invoke-super/range {p0 .. p5}, Landroidx/constraintlayout/widget/ConstraintLayout;->onLayout(ZIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3210
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->au:Z

    return-void

    :cond_0
    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 3197
    :try_start_1
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:I

    if-ne p1, p4, :cond_1

    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    if-eq p1, p5, :cond_2

    .line 3198
    :cond_1
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->g()V

    .line 3199
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(Z)V

    .line 3205
    :cond_2
    iput p4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:I

    .line 3206
    iput p5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    .line 3207
    iput p4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s:I

    .line 3208
    iput p5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3210
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->au:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->au:Z

    .line 3211
    throw p1
.end method

.method public onMeasure(II)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 2362
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    if-nez v3, :cond_0

    .line 2363
    invoke-super/range {p0 .. p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    return-void

    .line 2366
    :cond_0
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->aa:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v1, :cond_2

    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ab:I

    if-eq v3, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x1

    .line 2367
    :goto_1
    iget-boolean v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->aw:Z

    if-eqz v6, :cond_3

    .line 2368
    iput-boolean v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->aw:Z

    .line 2369
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->b()V

    .line 2370
    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->f()V

    const/4 v3, 0x1

    .line 2374
    :cond_3
    iget-boolean v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->Q:Z

    if-eqz v6, :cond_4

    const/4 v3, 0x1

    .line 2378
    :cond_4
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->aa:I

    .line 2379
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ab:I

    .line 2381
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {v6}, Landroidx/constraintlayout/motion/widget/p;->b()I

    move-result v6

    .line 2382
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {v7}, Landroidx/constraintlayout/motion/widget/p;->c()I

    move-result v7

    if-nez v3, :cond_7

    .line 2384
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$c;

    .line 29332
    iget v8, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->e:I

    if-ne v6, v8, :cond_6

    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->f:I

    if-eq v7, v3, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v3, 0x1

    :goto_3
    if-eqz v3, :cond_8

    .line 2384
    :cond_7
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    const/4 v8, -0x1

    if-eq v3, v8, :cond_8

    .line 2385
    invoke-super/range {p0 .. p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    .line 2386
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$c;

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    .line 30080
    invoke-virtual {v2, v6}, Landroidx/constraintlayout/motion/widget/p;->a(I)Landroidx/constraintlayout/widget/c;

    move-result-object v2

    .line 2386
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    .line 31080
    invoke-virtual {v3, v7}, Landroidx/constraintlayout/motion/widget/p;->a(I)Landroidx/constraintlayout/widget/c;

    move-result-object v3

    .line 2386
    invoke-virtual {v1, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->a(Landroidx/constraintlayout/widget/c;Landroidx/constraintlayout/widget/c;)V

    .line 2387
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$c;

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->a()V

    .line 2388
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$c;

    invoke-virtual {v1, v6, v7}, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->a(II)V

    const/4 v1, 0x0

    goto :goto_4

    :cond_8
    const/4 v1, 0x1

    .line 2392
    :goto_4
    iget-boolean v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:Z

    if-nez v2, :cond_9

    if-eqz v1, :cond_e

    .line 2393
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 2394
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    .line 2395
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->P:Landroidx/constraintlayout/a/a/f;

    invoke-virtual {v3}, Landroidx/constraintlayout/a/a/f;->o()I

    move-result v3

    add-int/2addr v3, v2

    .line 2396
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->P:Landroidx/constraintlayout/a/a/f;

    invoke-virtual {v2}, Landroidx/constraintlayout/a/a/f;->p()I

    move-result v2

    add-int/2addr v2, v1

    .line 2397
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I:I

    const/high16 v6, -0x80000000

    if-eq v1, v6, :cond_a

    if-nez v1, :cond_b

    .line 2398
    :cond_a
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:I

    int-to-float v3, v1

    iget v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    iget v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:I

    sub-int/2addr v8, v1

    int-to-float v1, v8

    mul-float v7, v7, v1

    add-float/2addr v3, v7

    float-to-int v3, v3

    .line 2399
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    .line 2401
    :cond_b
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:I

    if-eq v1, v6, :cond_c

    if-nez v1, :cond_d

    .line 2402
    :cond_c
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:I

    int-to-float v2, v1

    iget v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    iget v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:I

    sub-int/2addr v7, v1

    int-to-float v1, v7

    mul-float v6, v6, v1

    add-float/2addr v2, v6

    float-to-int v2, v2

    .line 2403
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    .line 2405
    :cond_d
    invoke-virtual {v0, v3, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setMeasuredDimension(II)V

    .line 31955
    :cond_e
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m:F

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    .line 32983
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 31959
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->c:Landroid/view/animation/Interpolator;

    instance-of v7, v6, Landroidx/constraintlayout/motion/a/g;

    const v8, 0x3089705f    # 1.0E-9f

    const/4 v9, 0x0

    if-nez v7, :cond_f

    .line 31960
    iget-wide v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ad:J

    sub-long v10, v2, v10

    long-to-float v7, v10

    mul-float v7, v7, v1

    mul-float v7, v7, v8

    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->j:F

    div-float/2addr v7, v10

    goto :goto_5

    :cond_f
    const/4 v7, 0x0

    .line 31962
    :goto_5
    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    add-float/2addr v10, v7

    .line 31965
    iget-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ae:Z

    if-eqz v7, :cond_10

    .line 31966
    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m:F

    :cond_10
    cmpl-float v7, v1, v9

    if-lez v7, :cond_11

    .line 31969
    iget v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m:F

    cmpl-float v11, v10, v11

    if-gez v11, :cond_12

    :cond_11
    cmpg-float v11, v1, v9

    if-gtz v11, :cond_13

    iget v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m:F

    cmpg-float v11, v10, v11

    if-gtz v11, :cond_13

    .line 31971
    :cond_12
    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m:F

    goto :goto_6

    :cond_13
    const/4 v5, 0x0

    :goto_6
    if-eqz v6, :cond_15

    if-nez v5, :cond_15

    .line 31975
    iget-boolean v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ai:Z

    if-eqz v5, :cond_14

    .line 31976
    iget-wide v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ac:J

    sub-long/2addr v2, v10

    long-to-float v2, v2

    mul-float v2, v2, v8

    .line 31977
    invoke-interface {v6, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v10

    goto :goto_7

    .line 31979
    :cond_14
    invoke-interface {v6, v10}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v10

    :cond_15
    :goto_7
    if-lez v7, :cond_16

    .line 31982
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m:F

    cmpl-float v2, v10, v2

    if-gez v2, :cond_17

    :cond_16
    cmpg-float v1, v1, v9

    if-gtz v1, :cond_18

    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m:F

    cmpg-float v1, v10, v1

    if-gtz v1, :cond_18

    .line 31984
    :cond_17
    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m:F

    .line 31986
    :cond_18
    iput v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    .line 31987
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildCount()I

    move-result v1

    .line 33983
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    :goto_8
    if-ge v4, v1, :cond_1a

    .line 31990
    invoke-virtual {v0, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 31991
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->i:Ljava/util/HashMap;

    invoke-virtual {v5, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Landroidx/constraintlayout/motion/widget/m;

    if-eqz v11, :cond_19

    .line 31993
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->at:Landroidx/constraintlayout/motion/widget/d;

    move v13, v10

    move-wide v14, v2

    move-object/from16 v16, v5

    invoke-virtual/range {v11 .. v16}, Landroidx/constraintlayout/motion/widget/m;->a(Landroid/view/View;FJLandroidx/constraintlayout/motion/widget/d;)Z

    :cond_19
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 31996
    :cond_1a
    iget-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:Z

    if-eqz v1, :cond_1b

    .line 31997
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    :cond_1b
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1

    .line 3518
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    if-eqz p1, :cond_0

    .line 3519
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isRtl()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/p;->a(Z)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 3477
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->h:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/p;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3478
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$a;

    if-eqz v0, :cond_0

    .line 3479
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/p$a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3480
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 3482
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    .line 50574
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    .line 3482
    invoke-virtual {v0, p1, v1, p0}, Landroidx/constraintlayout/motion/widget/p;->a(Landroid/view/MotionEvent;ILandroidx/constraintlayout/motion/widget/MotionLayout;)V

    const/4 p1, 0x1

    return p1

    .line 3488
    :cond_1
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 1

    .line 3800
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    .line 3801
    instance-of v0, p1, Landroidx/constraintlayout/motion/widget/MotionHelper;

    if-eqz v0, :cond_4

    .line 3802
    check-cast p1, Landroidx/constraintlayout/motion/widget/MotionHelper;

    .line 3803
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 3804
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:Ljava/util/ArrayList;

    .line 3806
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50671
    iget-boolean v0, p1, Landroidx/constraintlayout/motion/widget/MotionHelper;->a:Z

    if-eqz v0, :cond_2

    .line 3809
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->am:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 3810
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->am:Ljava/util/ArrayList;

    .line 3812
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->am:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50672
    :cond_2
    iget-boolean v0, p1, Landroidx/constraintlayout/motion/widget/MotionHelper;->b:Z

    if-eqz v0, :cond_4

    .line 3815
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->an:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 3816
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->an:Ljava/util/ArrayList;

    .line 3818
    :cond_3
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->an:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 1

    .line 3828
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewRemoved(Landroid/view/View;)V

    .line 3829
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->am:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 3830
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3832
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->an:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 3833
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public requestLayout()V
    .locals 2

    .line 2340
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:Z

    if-nez v0, :cond_0

    .line 2341
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$a;

    .line 28460
    iget v0, v0, Landroidx/constraintlayout/motion/widget/p$a;->q:I

    if-nez v0, :cond_0

    return-void

    .line 2347
    :cond_0
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setDebugMode(I)V
    .locals 0

    .line 3371
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->p:I

    .line 3372
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->invalidate()V

    return-void
.end method

.method public setInteractionEnabled(Z)V
    .locals 0

    .line 4027
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->h:Z

    return-void
.end method

.method public setInterpolatedProgress(F)V
    .locals 1

    .line 1329
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    if-eqz v0, :cond_0

    .line 1330
    sget v0, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->c:I

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(I)V

    .line 1331
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/p;->d()Landroid/view/animation/Interpolator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1333
    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    return-void

    .line 1337
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    return-void
.end method

.method public setOnHide(F)V
    .locals 3

    .line 3848
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->an:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 3849
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3851
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->an:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionHelper;

    .line 3852
    invoke-virtual {v2, p1}, Landroidx/constraintlayout/motion/widget/MotionHelper;->setProgress(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setOnShow(F)V
    .locals 3

    .line 3838
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->am:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 3839
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3841
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->am:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionHelper;

    .line 3842
    invoke-virtual {v2, p1}, Landroidx/constraintlayout/motion/widget/MotionHelper;->setProgress(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 5

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, p1, v0

    if-ltz v2, :cond_0

    cmpl-float v3, p1, v1

    if-lez v3, :cond_1

    :cond_0
    const-string v3, "MotionLayout"

    const-string v4, "Warning! Progress is defined for values between 0.0 and 1.0 inclusive"

    .line 1468
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    :cond_1
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1471
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->av:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    if-nez v0, :cond_2

    .line 1472
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$f;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->av:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    .line 1474
    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->av:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    .line 18414
    iput p1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->a:F

    return-void

    :cond_3
    if-gtz v2, :cond_4

    .line 1485
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    .line 1486
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    cmpl-float v0, v1, v0

    if-nez v0, :cond_6

    .line 1487
    sget v0, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->d:I

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(I)V

    goto :goto_0

    :cond_4
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_5

    .line 1490
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    .line 1491
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_6

    .line 1492
    sget v0, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->d:I

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(I)V

    goto :goto_0

    :cond_5
    const/4 v0, -0x1

    .line 1495
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    .line 1496
    sget v0, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->c:I

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(I)V

    .line 1500
    :cond_6
    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x1

    .line 1504
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ae:Z

    .line 1505
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m:F

    .line 1506
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k:F

    const-wide/16 v1, -0x1

    .line 1507
    iput-wide v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ad:J

    .line 1508
    iput-wide v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->ac:J

    const/4 p1, 0x0

    .line 1509
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->c:Landroid/view/animation/Interpolator;

    .line 1511
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n:Z

    .line 1512
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->invalidate()V

    return-void
.end method

.method public setProgress(FF)V
    .locals 1

    .line 1347
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1348
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->av:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    if-nez v0, :cond_0

    .line 1349
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$f;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->av:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    .line 1351
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->av:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    .line 17414
    iput p1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->a:F

    .line 1352
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->av:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    .line 17422
    iput p2, p1, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->b:F

    return-void

    .line 1355
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 1356
    sget p1, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->c:I

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(I)V

    .line 1357
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 1358
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(F)V

    return-void
.end method

.method public setScene(Landroidx/constraintlayout/motion/widget/p;)V
    .locals 1

    .line 3280
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    .line 3281
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isRtl()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/p;->a(Z)V

    .line 3282
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->g()V

    return-void
.end method

.method public setState(III)V
    .locals 1

    .line 1312
    sget v0, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->b:I

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(I)V

    .line 1313
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    const/4 v0, -0x1

    .line 1314
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    .line 1315
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g:I

    .line 1316
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->R:Landroidx/constraintlayout/widget/b;

    if-eqz v0, :cond_0

    .line 1317
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->R:Landroidx/constraintlayout/widget/b;

    int-to-float p2, p2

    int-to-float p3, p3

    invoke-virtual {v0, p1, p2, p3}, Landroidx/constraintlayout/widget/b;->a(IFF)V

    return-void

    .line 1318
    :cond_0
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    if-eqz p2, :cond_1

    .line 17080
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/motion/widget/p;->a(I)Landroidx/constraintlayout/widget/c;

    move-result-object p1

    .line 1319
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/widget/c;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_1
    return-void
.end method

.method public setTransition(I)V
    .locals 5

    .line 1186
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    if-eqz v0, :cond_8

    .line 8331
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/p;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/p$a;

    .line 8433
    iget v2, v1, Landroidx/constraintlayout/motion/widget/p$a;->a:I

    if-ne v2, p1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 8511
    :goto_0
    iget p1, v1, Landroidx/constraintlayout/motion/widget/p$a;->d:I

    .line 1189
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    .line 9502
    iget p1, v1, Landroidx/constraintlayout/motion/widget/p$a;->c:I

    .line 1190
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g:I

    .line 1192
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    move-result p1

    if-nez p1, :cond_3

    .line 1193
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->av:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    if-nez p1, :cond_2

    .line 1194
    new-instance p1, Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    invoke-direct {p1, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$f;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->av:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    .line 1196
    :cond_2
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->av:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    .line 10426
    iput v0, p1, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->c:I

    .line 1197
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->av:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g:I

    .line 11418
    iput v0, p1, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->d:I

    return-void

    :cond_3
    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 1209
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    const/4 v3, 0x0

    if-ne v0, v2, :cond_4

    const/4 p1, 0x0

    goto :goto_1

    .line 1211
    :cond_4
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g:I

    if-ne v0, v2, :cond_5

    const/high16 p1, 0x3f800000    # 1.0f

    .line 1214
    :cond_5
    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/p;->a(Landroidx/constraintlayout/motion/widget/p$a;)V

    .line 1215
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$c;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    .line 12080
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/motion/widget/p;->a(I)Landroidx/constraintlayout/widget/c;

    move-result-object v1

    .line 1215
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g:I

    .line 13080
    invoke-virtual {v2, v4}, Landroidx/constraintlayout/motion/widget/p;->a(I)Landroidx/constraintlayout/widget/c;

    move-result-object v2

    .line 1215
    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->a(Landroidx/constraintlayout/widget/c;Landroidx/constraintlayout/widget/c;)V

    .line 1216
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->g()V

    .line 1218
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    goto :goto_2

    :cond_6
    move v0, p1

    :goto_2
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    .line 1220
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1221
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroidx/constraintlayout/motion/widget/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " transitionToStart "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13787
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(F)V

    return-void

    .line 1224
    :cond_7
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    :cond_8
    return-void
.end method

.method public setTransition(II)V
    .locals 2

    .line 1154
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1155
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->av:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    if-nez v0, :cond_0

    .line 1156
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$f;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->av:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    .line 1158
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->av:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    .line 4426
    iput p1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->c:I

    .line 1159
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->av:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    .line 5418
    iput p2, p1, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->d:I

    return-void

    .line 1163
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    if-eqz v0, :cond_2

    .line 1164
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    .line 1165
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g:I

    .line 1171
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/motion/widget/p;->a(II)V

    .line 1172
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Landroidx/constraintlayout/motion/widget/MotionLayout$c;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    .line 6080
    invoke-virtual {v1, p1}, Landroidx/constraintlayout/motion/widget/p;->a(I)Landroidx/constraintlayout/widget/c;

    move-result-object p1

    .line 1172
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    .line 7080
    invoke-virtual {v1, p2}, Landroidx/constraintlayout/motion/widget/p;->a(I)Landroidx/constraintlayout/widget/c;

    move-result-object p2

    .line 1172
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->a(Landroidx/constraintlayout/widget/c;Landroidx/constraintlayout/widget/c;)V

    .line 1173
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->g()V

    const/4 p1, 0x0

    .line 1174
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    .line 7787
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(F)V

    :cond_2
    return-void
.end method

.method public setTransitionDuration(I)V
    .locals 2

    .line 3964
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b:Landroidx/constraintlayout/motion/widget/p;

    if-nez v0, :cond_0

    const-string p1, "MotionLayout"

    const-string v0, "MotionScene not defined"

    .line 3965
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 50673
    :cond_0
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$a;

    if-eqz v1, :cond_1

    .line 50674
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$a;

    .line 50679
    iput p1, v0, Landroidx/constraintlayout/motion/widget/p$a;->h:I

    return-void

    .line 50676
    :cond_1
    iput p1, v0, Landroidx/constraintlayout/motion/widget/p;->g:I

    return-void
.end method

.method public setTransitionListener(Landroidx/constraintlayout/motion/widget/MotionLayout$g;)V
    .locals 0

    .line 3618
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->af:Landroidx/constraintlayout/motion/widget/MotionLayout$g;

    return-void
.end method

.method public setTransitionState(Landroid/os/Bundle;)V
    .locals 2

    .line 1441
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->av:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    if-nez v0, :cond_0

    .line 1442
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$f;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->av:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    .line 1444
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->av:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    const-string v1, "motion.progress"

    .line 18407
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->a:F

    const-string v1, "motion.velocity"

    .line 18408
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->b:F

    const-string v1, "motion.StartState"

    .line 18409
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->c:I

    const-string v1, "motion.EndState"

    .line 18410
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->d:I

    .line 1445
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1446
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->av:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->a()V

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 2352
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2353
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    invoke-static {v0, v2}, Landroidx/constraintlayout/motion/widget/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g:I

    .line 2354
    invoke-static {v0, v2}, Landroidx/constraintlayout/motion/widget/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (pos:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " Dpos/Dt:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
