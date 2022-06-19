.class public Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    }
.end annotation


# static fields
.field public static C0:F = 0.5f


# instance fields
.field public A:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field A0:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field public B:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field B0:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field public C:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field public D:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field E:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field F:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field G:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field H:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field public I:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field protected J:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation
.end field

.field private K:[Z

.field public L:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

.field public M:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field N:I

.field O:I

.field public P:F

.field protected Q:I

.field protected R:I

.field protected S:I

.field T:I

.field U:I

.field protected V:I

.field protected W:I

.field X:I

.field protected Y:I

.field protected Z:I

.field public a:Z

.field a0:F

.field public b:Landroidx/constraintlayout/solver/widgets/analyzer/c;

.field b0:F

.field public c:Landroidx/constraintlayout/solver/widgets/analyzer/c;

.field private c0:Ljava/lang/Object;

.field public d:Landroidx/constraintlayout/solver/widgets/analyzer/i;

.field private d0:I

.field public e:Landroidx/constraintlayout/solver/widgets/analyzer/k;

.field private e0:I

.field public f:[Z

.field private f0:Ljava/lang/String;

.field public g:[I

.field private g0:Ljava/lang/String;

.field public h:I

.field h0:I

.field public i:I

.field i0:I

.field public j:I

.field j0:I

.field public k:I

.field k0:I

.field public l:[I

.field l0:Z

.field public m:I

.field m0:Z

.field public n:I

.field n0:Z

.field public o:F

.field o0:Z

.field public p:I

.field p0:Z

.field public q:I

.field q0:Z

.field public r:F

.field r0:Z

.field public s:Z

.field s0:Z

.field public t:Z

.field t0:I

.field u:I

.field u0:I

.field v:F

.field v0:Z

.field private w:[I

.field w0:Z

.field private x:F

.field public x0:[F

.field private y:Z

.field protected y0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field private z:Z

.field protected z0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a:Z

    new-instance v1, Landroidx/constraintlayout/solver/widgets/analyzer/i;

    invoke-direct {v1, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/i;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    iput-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/solver/widgets/analyzer/i;

    new-instance v1, Landroidx/constraintlayout/solver/widgets/analyzer/k;

    invoke-direct {v1, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/k;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    iput-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    const/4 v1, 0x2

    new-array v2, v1, [Z

    fill-array-data v2, :array_0

    iput-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->f:[Z

    const/4 v2, 0x4

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    iput-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g:[I

    const/4 v3, -0x1

    iput v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->h:I

    iput v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->k:I

    new-array v4, v1, [I

    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->l:[I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->m:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n:I

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->o:F

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->p:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->q:I

    iput v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->r:F

    iput v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u:I

    iput v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->v:F

    new-array v4, v1, [I

    fill-array-data v4, :array_2

    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w:[I

    const/4 v4, 0x0

    iput v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->x:F

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->y:Z

    new-instance v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->c:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v5, p0, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->A:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    new-instance v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v6, p0, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->B:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    new-instance v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->e:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v7, p0, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    new-instance v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v8, p0, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v8, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->D:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    new-instance v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->g:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v9, p0, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v9, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->E:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    new-instance v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    sget-object v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->i:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v10, p0, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v10, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    new-instance v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    sget-object v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->j:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v10, p0, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v10, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->G:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    new-instance v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    sget-object v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->h:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v10, p0, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v10, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->H:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v11, 0x6

    new-array v11, v11, [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aput-object v5, v11, v0

    const/4 v5, 0x1

    aput-object v7, v11, v5

    aput-object v6, v11, v1

    const/4 v6, 0x3

    aput-object v8, v11, v6

    aput-object v9, v11, v2

    const/4 v2, 0x5

    aput-object v10, v11, v2

    iput-object v11, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Ljava/util/ArrayList;

    new-array v2, v1, [Z

    iput-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->K:[Z

    new-array v2, v1, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v6, v2, v0

    aput-object v6, v2, v5

    iput-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->L:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->O:I

    iput v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->P:F

    iput v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->S:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->T:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->U:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->V:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->W:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->X:I

    sget v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C0:F

    iput v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a0:F

    iput v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->b0:F

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d0:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e0:I

    iput-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->f0:Ljava/lang/String;

    iput-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g0:Ljava/lang/String;

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->r0:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->s0:Z

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->t0:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u0:I

    new-array v3, v1, [F

    fill-array-data v3, :array_3

    iput-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->x0:[F

    new-array v3, v1, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aput-object v2, v3, v0

    aput-object v2, v3, v5

    iput-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->y0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    new-array v1, v1, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aput-object v2, v1, v0

    aput-object v2, v1, v5

    iput-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iput-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->A0:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iput-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->B0:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d()V

    return-void

    :array_0
    .array-data 1
        0x1t
        0x1t
    .end array-data

    nop

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x7fffffff
        0x7fffffff
    .end array-data

    :array_3
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method private V(I)Z
    .locals 4

    mul-int/lit8 p1, p1, 0x2

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v1, v0, p1

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    aget-object v1, v0, p1

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v3, v0, p1

    if-eq v1, v3, :cond_0

    add-int/2addr p1, v2

    aget-object v1, v0, p1

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_0

    aget-object v1, v0, p1

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object p1, v0, p1

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->A:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->B:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->D:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->G:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->H:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->E:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private h(Landroidx/constraintlayout/solver/d;ZZZZLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ZLandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIIIFZZZZIIIIFZ)V
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move/from16 v15, p14

    move/from16 v1, p15

    move/from16 v2, p22

    move/from16 v3, p23

    move/from16 v4, p24

    invoke-virtual {v10, v13}, Landroidx/constraintlayout/solver/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v9

    invoke-virtual {v10, v14}, Landroidx/constraintlayout/solver/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v8

    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->g()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroidx/constraintlayout/solver/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v7

    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->g()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroidx/constraintlayout/solver/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v6

    invoke-static {}, Landroidx/constraintlayout/solver/d;->w()Landroidx/constraintlayout/solver/e;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {}, Landroidx/constraintlayout/solver/d;->w()Landroidx/constraintlayout/solver/e;

    move-result-object v5

    iget-wide v12, v5, Landroidx/constraintlayout/solver/e;->w:J

    const-wide/16 v16, 0x1

    add-long v12, v12, v16

    iput-wide v12, v5, Landroidx/constraintlayout/solver/e;->w:J

    :cond_0
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j()Z

    move-result v12

    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j()Z

    move-result v13

    iget-object v5, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->H:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j()Z

    move-result v16

    if-eqz v13, :cond_1

    add-int/lit8 v5, v12, 0x1

    goto :goto_0

    :cond_1
    move v5, v12

    :goto_0
    if-eqz v16, :cond_2

    add-int/lit8 v5, v5, 0x1

    :cond_2
    if-eqz p17, :cond_3

    const/16 v18, 0x3

    goto :goto_1

    :cond_3
    move/from16 v18, p21

    :goto_1
    sget-object v17, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$a;->b:[I

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Enum;->ordinal()I

    move-result v19

    aget v2, v17, v19

    const/4 v14, 0x1

    if-eq v2, v14, :cond_4

    const/4 v14, 0x2

    if-eq v2, v14, :cond_4

    const/4 v14, 0x3

    if-eq v2, v14, :cond_4

    const/4 v14, 0x4

    if-eq v2, v14, :cond_5

    :cond_4
    move/from16 v2, v18

    :goto_2
    const/16 v18, 0x0

    goto :goto_3

    :cond_5
    move/from16 v2, v18

    if-ne v2, v14, :cond_6

    goto :goto_2

    :cond_6
    const/16 v18, 0x1

    :goto_3
    iget v14, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e0:I

    const/16 v11, 0x8

    if-ne v14, v11, :cond_7

    const/4 v14, 0x0

    const/16 v18, 0x0

    goto :goto_4

    :cond_7
    move/from16 v14, p13

    :goto_4
    if-eqz p26, :cond_9

    if-nez v12, :cond_8

    if-nez v13, :cond_8

    if-nez v16, :cond_8

    move/from16 v11, p12

    invoke-virtual {v10, v9, v11}, Landroidx/constraintlayout/solver/d;->f(Landroidx/constraintlayout/solver/SolverVariable;I)V

    goto :goto_5

    :cond_8
    if-eqz v12, :cond_9

    if-nez v13, :cond_9

    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c()I

    move-result v11

    move-object/from16 v22, v6

    const/16 v6, 0x8

    invoke-virtual {v10, v9, v7, v11, v6}, Landroidx/constraintlayout/solver/d;->e(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/b;

    goto :goto_6

    :cond_9
    :goto_5
    move-object/from16 v22, v6

    const/16 v6, 0x8

    :goto_6
    if-nez v18, :cond_d

    if-eqz p9, :cond_b

    const/4 v6, 0x0

    const/4 v11, 0x3

    invoke-virtual {v10, v8, v9, v6, v11}, Landroidx/constraintlayout/solver/d;->e(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/b;

    const/16 v6, 0x8

    if-lez v15, :cond_a

    invoke-virtual {v10, v8, v9, v15, v6}, Landroidx/constraintlayout/solver/d;->h(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    :cond_a
    const v11, 0x7fffffff

    if-ge v1, v11, :cond_c

    invoke-virtual {v10, v8, v9, v1, v6}, Landroidx/constraintlayout/solver/d;->j(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_7

    :cond_b
    invoke-virtual {v10, v8, v9, v14, v6}, Landroidx/constraintlayout/solver/d;->e(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/b;

    :cond_c
    :goto_7
    move/from16 v14, p5

    move-object v15, v7

    move-object v1, v8

    move/from16 v23, v18

    move-object/from16 v11, v22

    move/from16 v18, v3

    :goto_8
    move/from16 v22, v5

    goto/16 :goto_11

    :cond_d
    const/4 v1, 0x2

    if-eq v5, v1, :cond_10

    if-nez p17, :cond_10

    const/4 v1, 0x1

    if-eq v2, v1, :cond_e

    if-nez v2, :cond_10

    :cond_e
    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-lez v4, :cond_f

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_f
    const/16 v6, 0x8

    invoke-virtual {v10, v8, v9, v1, v6}, Landroidx/constraintlayout/solver/d;->e(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/b;

    move/from16 v14, p5

    move/from16 v18, v3

    move-object v15, v7

    move-object v1, v8

    move-object/from16 v11, v22

    const/16 v23, 0x0

    goto :goto_8

    :cond_10
    const/4 v1, -0x2

    if-ne v3, v1, :cond_11

    move v11, v14

    goto :goto_9

    :cond_11
    move v11, v3

    :goto_9
    if-ne v4, v1, :cond_12

    move v1, v14

    goto :goto_a

    :cond_12
    move v1, v4

    :goto_a
    if-lez v14, :cond_13

    const/4 v3, 0x1

    if-eq v2, v3, :cond_13

    const/4 v14, 0x0

    :cond_13
    if-lez v11, :cond_14

    const/16 v3, 0x8

    invoke-virtual {v10, v8, v9, v11, v3}, Landroidx/constraintlayout/solver/d;->h(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    invoke-static {v14, v11}, Ljava/lang/Math;->max(II)I

    move-result v14

    :cond_14
    if-lez v1, :cond_17

    if-eqz p3, :cond_15

    const/4 v3, 0x1

    if-ne v2, v3, :cond_15

    const/4 v3, 0x0

    goto :goto_b

    :cond_15
    const/4 v3, 0x1

    :goto_b
    if-eqz v3, :cond_16

    const/16 v3, 0x8

    invoke-virtual {v10, v8, v9, v1, v3}, Landroidx/constraintlayout/solver/d;->j(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_c

    :cond_16
    const/16 v3, 0x8

    :goto_c
    invoke-static {v14, v1}, Ljava/lang/Math;->min(II)I

    move-result v14

    goto :goto_d

    :cond_17
    const/16 v3, 0x8

    :goto_d
    const/4 v4, 0x1

    if-ne v2, v4, :cond_19

    if-eqz p3, :cond_18

    invoke-virtual {v10, v8, v9, v14, v3}, Landroidx/constraintlayout/solver/d;->e(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/b;

    goto :goto_e

    :cond_18
    const/4 v4, 0x5

    invoke-virtual {v10, v8, v9, v14, v4}, Landroidx/constraintlayout/solver/d;->e(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/b;

    invoke-virtual {v10, v8, v9, v14, v3}, Landroidx/constraintlayout/solver/d;->j(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    :goto_e
    move/from16 v14, p5

    move v4, v1

    move-object v15, v7

    move-object v1, v8

    move/from16 v23, v18

    move/from16 v18, v11

    move-object/from16 v11, v22

    goto :goto_8

    :cond_19
    const/4 v14, 0x2

    if-ne v2, v14, :cond_1c

    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->h()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-result-object v3

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v3, v4, :cond_1b

    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->h()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-result-object v3

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v3, v6, :cond_1a

    goto :goto_f

    :cond_1a
    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->c:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroidx/constraintlayout/solver/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v3

    iget-object v4, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->e:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    goto :goto_10

    :cond_1b
    :goto_f
    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroidx/constraintlayout/solver/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v3

    iget-object v4, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    :goto_10
    invoke-virtual {v4, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroidx/constraintlayout/solver/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v4

    move-object/from16 v18, v3

    move-object v6, v4

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/d;->r()Landroidx/constraintlayout/solver/b;

    move-result-object v4

    move-object v3, v4

    move-object v14, v4

    move-object v4, v8

    move/from16 p9, v1

    move v1, v5

    move-object v5, v9

    move/from16 p13, v11

    move-object/from16 v11, v22

    move-object v15, v7

    move-object/from16 v7, v18

    move/from16 v22, v1

    move-object v1, v8

    move/from16 v8, p25

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/solver/b;->k(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;F)Landroidx/constraintlayout/solver/b;

    invoke-virtual {v10, v14}, Landroidx/constraintlayout/solver/d;->d(Landroidx/constraintlayout/solver/b;)V

    move/from16 v14, p5

    move/from16 v4, p9

    move/from16 v18, p13

    const/16 v23, 0x0

    goto :goto_11

    :cond_1c
    move/from16 p9, v1

    move-object v15, v7

    move-object v1, v8

    move/from16 p13, v11

    move-object/from16 v11, v22

    move/from16 v22, v5

    move/from16 v4, p9

    move/from16 v23, v18

    const/4 v14, 0x1

    move/from16 v18, p13

    :goto_11
    if-eqz p26, :cond_4e

    if-eqz p18, :cond_1d

    move-object/from16 v2, p7

    move-object v4, v1

    move-object v3, v9

    move/from16 p5, v14

    move/from16 v5, v22

    const/4 v6, 0x2

    const/16 v12, 0x8

    move-object/from16 v1, p6

    goto/16 :goto_2c

    :cond_1d
    if-nez v12, :cond_1e

    if-nez v13, :cond_1e

    if-nez v16, :cond_1e

    goto/16 :goto_29

    :cond_1e
    if-eqz v12, :cond_1f

    if-nez v13, :cond_1f

    goto/16 :goto_29

    :cond_1f
    if-nez v12, :cond_20

    if-eqz v13, :cond_20

    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c()I

    move-result v2

    neg-int v2, v2

    const/16 v3, 0x8

    invoke-virtual {v10, v1, v11, v2, v3}, Landroidx/constraintlayout/solver/d;->e(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/b;

    if-eqz p3, :cond_4a

    move-object/from16 v8, p6

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v10, v9, v8, v3, v2}, Landroidx/constraintlayout/solver/d;->h(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto/16 :goto_29

    :cond_20
    move-object/from16 v8, p6

    const/16 v7, 0x8

    if-eqz v12, :cond_4a

    if-eqz v13, :cond_4a

    move-object/from16 v12, p10

    iget-object v3, v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v13, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v6, p11

    const/4 v3, 0x2

    iget-object v5, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->H()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v7

    const/16 v16, 0x6

    if-eqz v23, :cond_32

    if-nez v2, :cond_24

    if-nez v4, :cond_21

    if-nez v18, :cond_21

    move-object/from16 p8, v1

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/16 v22, 0x0

    const/16 v24, 0x1

    goto :goto_12

    :cond_21
    move-object/from16 p8, v1

    const/4 v3, 0x5

    const/4 v4, 0x5

    const/16 v22, 0x1

    const/16 v24, 0x0

    :goto_12
    instance-of v1, v13, Landroidx/constraintlayout/solver/widgets/a;

    if-nez v1, :cond_23

    instance-of v1, v5, Landroidx/constraintlayout/solver/widgets/a;

    if-eqz v1, :cond_22

    goto :goto_13

    :cond_22
    move/from16 v25, v24

    const/4 v1, 0x6

    move/from16 v24, v3

    const/4 v3, 0x0

    move/from16 v31, v22

    move/from16 v22, v4

    move/from16 v4, v31

    goto/16 :goto_1d

    :cond_23
    :goto_13
    move/from16 v4, v22

    move/from16 v25, v24

    const/4 v1, 0x6

    const/16 v22, 0x4

    move/from16 v24, v3

    const/4 v3, 0x0

    goto/16 :goto_1d

    :cond_24
    move-object/from16 p8, v1

    const/4 v1, 0x1

    if-ne v2, v1, :cond_25

    const/4 v1, 0x6

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/16 v22, 0x4

    const/16 v24, 0x8

    goto/16 :goto_1c

    :cond_25
    const/4 v1, 0x3

    if-ne v2, v1, :cond_31

    iget v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_28

    if-eqz p19, :cond_27

    if-eqz p3, :cond_26

    const/4 v1, 0x5

    goto :goto_14

    :cond_26
    const/4 v1, 0x4

    goto :goto_14

    :cond_27
    const/16 v1, 0x8

    :goto_14
    const/4 v3, 0x1

    const/4 v4, 0x1

    const/16 v22, 0x5

    const/16 v24, 0x8

    :goto_15
    const/16 v25, 0x1

    goto :goto_1d

    :cond_28
    if-eqz p17, :cond_2c

    move/from16 v1, p22

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2a

    const/4 v3, 0x1

    if-ne v1, v3, :cond_29

    goto :goto_16

    :cond_29
    const/4 v1, 0x0

    goto :goto_17

    :cond_2a
    :goto_16
    const/4 v1, 0x1

    :goto_17
    if-nez v1, :cond_2b

    const/16 v1, 0x8

    const/4 v3, 0x5

    goto :goto_18

    :cond_2b
    const/4 v1, 0x5

    const/4 v3, 0x4

    :goto_18
    move/from16 v24, v1

    move/from16 v22, v3

    const/4 v1, 0x6

    const/4 v3, 0x1

    const/4 v4, 0x1

    goto :goto_15

    :cond_2c
    if-lez v4, :cond_2d

    const/4 v1, 0x6

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/16 v22, 0x5

    goto :goto_1a

    :cond_2d
    if-nez v4, :cond_30

    if-nez v18, :cond_30

    if-nez p19, :cond_2e

    const/4 v1, 0x6

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/16 v22, 0x8

    goto :goto_1a

    :cond_2e
    if-eq v13, v7, :cond_2f

    if-eq v5, v7, :cond_2f

    const/4 v1, 0x4

    goto :goto_19

    :cond_2f
    const/4 v1, 0x5

    :goto_19
    move/from16 v24, v1

    const/4 v1, 0x6

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/16 v22, 0x4

    goto :goto_15

    :cond_30
    const/4 v1, 0x6

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/16 v22, 0x4

    :goto_1a
    const/16 v24, 0x5

    goto :goto_15

    :cond_31
    const/4 v1, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x0

    goto :goto_1b

    :cond_32
    move-object/from16 p8, v1

    const/4 v1, 0x6

    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_1b
    const/16 v22, 0x4

    const/16 v24, 0x5

    :goto_1c
    const/16 v25, 0x0

    :goto_1d
    if-eqz v3, :cond_33

    if-ne v15, v11, :cond_33

    if-eq v13, v7, :cond_33

    const/16 v26, 0x0

    const/16 v27, 0x0

    goto :goto_1e

    :cond_33
    move/from16 v26, v3

    const/16 v27, 0x1

    :goto_1e
    if-eqz v4, :cond_35

    iget v3, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e0:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_34

    const/16 v21, 0x4

    goto :goto_1f

    :cond_34
    move/from16 v21, v1

    :goto_1f
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c()I

    move-result v28

    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c()I

    move-result v29

    move-object/from16 v3, p8

    move-object/from16 v1, p1

    move v12, v2

    move-object v2, v9

    move/from16 p5, v14

    const/4 v14, 0x3

    move-object v3, v15

    const/16 v20, 0x8

    move/from16 v4, v28

    move-object v14, v5

    move/from16 v5, p16

    move-object v6, v11

    move-object/from16 v20, v7

    move/from16 p2, v12

    const/16 v12, 0x8

    move-object/from16 v7, p8

    move/from16 v8, v29

    move-object/from16 v30, v9

    move/from16 v9, v21

    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/solver/d;->c(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_20

    :cond_35
    move/from16 p2, v2

    move-object/from16 v20, v7

    move-object/from16 v30, v9

    move/from16 p5, v14

    const/16 v12, 0x8

    move-object v14, v5

    :goto_20
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e0:I

    if-ne v1, v12, :cond_36

    return-void

    :cond_36
    if-eqz v26, :cond_39

    if-eqz p3, :cond_38

    if-eq v15, v11, :cond_38

    if-nez v23, :cond_38

    instance-of v1, v13, Landroidx/constraintlayout/solver/widgets/a;

    if-nez v1, :cond_37

    instance-of v1, v14, Landroidx/constraintlayout/solver/widgets/a;

    if-eqz v1, :cond_38

    :cond_37
    const/4 v1, 0x6

    goto :goto_21

    :cond_38
    move/from16 v1, v24

    :goto_21
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c()I

    move-result v2

    move-object/from16 v3, v30

    invoke-virtual {v10, v3, v15, v2, v1}, Landroidx/constraintlayout/solver/d;->h(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c()I

    move-result v2

    neg-int v2, v2

    move-object/from16 v4, p8

    invoke-virtual {v10, v4, v11, v2, v1}, Landroidx/constraintlayout/solver/d;->j(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    move/from16 v24, v1

    goto :goto_22

    :cond_39
    move-object/from16 v4, p8

    move-object/from16 v3, v30

    :goto_22
    if-eqz p3, :cond_3a

    if-eqz p20, :cond_3a

    instance-of v1, v13, Landroidx/constraintlayout/solver/widgets/a;

    if-nez v1, :cond_3a

    instance-of v1, v14, Landroidx/constraintlayout/solver/widgets/a;

    if-nez v1, :cond_3a

    const/4 v1, 0x6

    const/4 v2, 0x6

    const/16 v27, 0x1

    goto :goto_23

    :cond_3a
    move/from16 v1, v22

    move/from16 v2, v24

    :goto_23
    if-eqz v27, :cond_46

    if-eqz v25, :cond_43

    if-eqz p19, :cond_3b

    if-eqz p4, :cond_43

    :cond_3b
    move-object/from16 v5, v20

    if-eq v13, v5, :cond_3d

    if-ne v14, v5, :cond_3c

    goto :goto_24

    :cond_3c
    move/from16 v16, v1

    :cond_3d
    :goto_24
    instance-of v6, v13, Landroidx/constraintlayout/solver/widgets/f;

    if-nez v6, :cond_3e

    instance-of v6, v14, Landroidx/constraintlayout/solver/widgets/f;

    if-eqz v6, :cond_3f

    :cond_3e
    const/16 v16, 0x5

    :cond_3f
    instance-of v6, v13, Landroidx/constraintlayout/solver/widgets/a;

    if-nez v6, :cond_40

    instance-of v6, v14, Landroidx/constraintlayout/solver/widgets/a;

    if-eqz v6, :cond_41

    :cond_40
    const/16 v16, 0x5

    :cond_41
    if-eqz p19, :cond_42

    const/4 v6, 0x5

    goto :goto_25

    :cond_42
    move/from16 v6, v16

    :goto_25
    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_26

    :cond_43
    move-object/from16 v5, v20

    :goto_26
    if-eqz p3, :cond_45

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-eqz p17, :cond_45

    if-nez p19, :cond_45

    if-eq v13, v5, :cond_44

    if-ne v14, v5, :cond_45

    :cond_44
    const/4 v14, 0x4

    goto :goto_27

    :cond_45
    move v14, v1

    :goto_27
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c()I

    move-result v1

    invoke-virtual {v10, v3, v15, v1, v14}, Landroidx/constraintlayout/solver/d;->e(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/b;

    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v10, v4, v11, v1, v14}, Landroidx/constraintlayout/solver/d;->e(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/b;

    :cond_46
    if-eqz p3, :cond_48

    move-object/from16 v1, p6

    if-ne v1, v15, :cond_47

    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c()I

    move-result v2

    goto :goto_28

    :cond_47
    const/4 v2, 0x0

    :goto_28
    if-eq v15, v1, :cond_48

    const/4 v5, 0x5

    invoke-virtual {v10, v3, v1, v2, v5}, Landroidx/constraintlayout/solver/d;->h(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    :cond_48
    if-eqz p3, :cond_4b

    if-eqz v23, :cond_4b

    if-nez p14, :cond_4b

    if-nez v18, :cond_4b

    if-eqz v23, :cond_49

    move/from16 v2, p2

    const/4 v1, 0x3

    if-ne v2, v1, :cond_49

    const/4 v1, 0x0

    invoke-virtual {v10, v4, v3, v1, v12}, Landroidx/constraintlayout/solver/d;->h(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_2a

    :cond_49
    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-virtual {v10, v4, v3, v1, v2}, Landroidx/constraintlayout/solver/d;->h(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_2a

    :cond_4a
    :goto_29
    move-object v4, v1

    move/from16 p5, v14

    :cond_4b
    :goto_2a
    if-eqz p3, :cond_4d

    if-eqz p5, :cond_4d

    move-object/from16 v1, p11

    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_4c

    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c()I

    move-result v14

    move-object/from16 v2, p7

    goto :goto_2b

    :cond_4c
    move-object/from16 v2, p7

    const/4 v14, 0x0

    :goto_2b
    if-eq v11, v2, :cond_4d

    const/4 v1, 0x5

    invoke-virtual {v10, v2, v4, v14, v1}, Landroidx/constraintlayout/solver/d;->h(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    :cond_4d
    return-void

    :cond_4e
    move-object/from16 v2, p7

    move-object v4, v1

    move-object v3, v9

    move/from16 p5, v14

    const/16 v12, 0x8

    move-object/from16 v1, p6

    move/from16 v5, v22

    const/4 v6, 0x2

    :goto_2c
    if-ge v5, v6, :cond_53

    if-eqz p3, :cond_53

    if-eqz p5, :cond_53

    const/4 v5, 0x0

    invoke-virtual {v10, v3, v1, v5, v12}, Landroidx/constraintlayout/solver/d;->h(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    if-nez p2, :cond_50

    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->E:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v1, :cond_4f

    goto :goto_2d

    :cond_4f
    const/4 v6, 0x0

    goto :goto_2e

    :cond_50
    :goto_2d
    const/4 v6, 0x1

    :goto_2e
    if-nez p2, :cond_52

    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->E:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_52

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->P:F

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_51

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->L:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v3, 0x0

    aget-object v5, v1, v3

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v3, :cond_51

    const/4 v5, 0x1

    aget-object v1, v1, v5

    if-ne v1, v3, :cond_51

    const/4 v14, 0x1

    goto :goto_2f

    :cond_51
    const/4 v14, 0x0

    goto :goto_2f

    :cond_52
    move v14, v6

    :goto_2f
    if-eqz v14, :cond_53

    const/4 v1, 0x0

    invoke-virtual {v10, v2, v4, v1, v12}, Landroidx/constraintlayout/solver/d;->h(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    :cond_53
    return-void
.end method


# virtual methods
.method public A()I
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->A:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->e:I

    add-int/2addr v1, v0

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_1

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->e:I

    add-int/2addr v1, v0

    :cond_1
    return v1
.end method

.method public A0(II)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->S:I

    sub-int/2addr p2, p1

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->O:I

    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Z:I

    if-ge p2, p1, :cond_0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->O:I

    :cond_0
    return-void
.end method

.method public B(I)I
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q()I

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w()I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public B0(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->L:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x1

    aput-object p1, v0, v1

    return-void
.end method

.method public C()I
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public C0(IIIF)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->k:I

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->p:I

    const p2, 0x7fffffff

    if-ne p3, p2, :cond_0

    const/4 p3, 0x0

    :cond_0
    iput p3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->q:I

    iput p4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->r:F

    const/4 p2, 0x0

    cmpl-float p2, p4, p2

    if-lez p2, :cond_1

    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p2, p4, p2

    if-gez p2, :cond_1

    if-nez p1, :cond_1

    const/4 p1, 0x2

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->k:I

    :cond_1
    return-void
.end method

.method public D()I
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public D0(F)V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->x0:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    return-void
.end method

.method public E()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Z:I

    return v0
.end method

.method public E0(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e0:I

    return-void
.end method

.method public F()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Y:I

    return v0
.end method

.method public F0(I)V
    .locals 1

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:I

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Y:I

    if-ge p1, v0, :cond_0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:I

    :cond_0
    return-void
.end method

.method public G(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_1

    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-ne v1, p1, :cond_1

    iget-object p1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->D:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_1

    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-ne v1, p1, :cond_1

    iget-object p1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public G0(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:I

    return-void
.end method

.method public H()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    return-object v0
.end method

.method public H0(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->S:I

    return-void
.end method

.method public I(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->A:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_1

    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-ne v1, p1, :cond_1

    iget-object p1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->B:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_1

    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-ne v1, p1, :cond_1

    iget-object p1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public I0(ZZZZ)V
    .locals 3

    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u:I

    const/high16 p2, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    if-eqz p3, :cond_0

    if-nez p4, :cond_0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u:I

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    if-eqz p4, :cond_1

    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u:I

    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:I

    if-ne p1, v1, :cond_1

    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->v:F

    div-float p1, p2, p1

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->v:F

    :cond_1
    :goto_0
    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u:I

    if-nez p1, :cond_3

    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->B:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->D:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j()Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u:I

    goto :goto_1

    :cond_3
    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u:I

    if-ne p1, v2, :cond_5

    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->A:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j()Z

    move-result p1

    if-nez p1, :cond_5

    :cond_4
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u:I

    :cond_5
    :goto_1
    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u:I

    if-ne p1, v1, :cond_8

    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->B:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->D:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->A:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j()Z

    move-result p1

    if-nez p1, :cond_8

    :cond_6
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->B:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->D:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j()Z

    move-result p1

    if-eqz p1, :cond_7

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u:I

    goto :goto_2

    :cond_7
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->A:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j()Z

    move-result p1

    if-eqz p1, :cond_8

    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->v:F

    div-float p1, p2, p1

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->v:F

    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u:I

    :cond_8
    :goto_2
    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u:I

    if-ne p1, v1, :cond_a

    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->m:I

    if-lez p1, :cond_9

    iget p3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->p:I

    if-nez p3, :cond_9

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u:I

    goto :goto_3

    :cond_9
    if-nez p1, :cond_a

    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->p:I

    if-lez p1, :cond_a

    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->v:F

    div-float/2addr p2, p1

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->v:F

    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u:I

    :cond_a
    :goto_3
    return-void
.end method

.method public J()I
    .locals 2

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R()I

    move-result v0

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:I

    add-int/2addr v0, v1

    return v0
.end method

.method public J0(ZZ)V
    .locals 7

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/solver/widgets/analyzer/i;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->k()Z

    move-result v0

    and-int/2addr p1, v0

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->k()Z

    move-result v0

    and-int/2addr p2, v0

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/solver/widgets/analyzer/i;

    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    iget-object v3, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    sub-int v4, v0, v1

    sub-int v5, v2, v3

    const/4 v6, 0x0

    if-ltz v4, :cond_0

    if-ltz v5, :cond_0

    const/high16 v4, -0x80000000

    if-eq v1, v4, :cond_0

    const v5, 0x7fffffff

    if-eq v1, v5, :cond_0

    if-eq v3, v4, :cond_0

    if-eq v3, v5, :cond_0

    if-eq v0, v4, :cond_0

    if-eq v0, v5, :cond_0

    if-eq v2, v4, :cond_0

    if-ne v2, v5, :cond_1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_1
    sub-int/2addr v0, v1

    sub-int/2addr v2, v3

    if-eqz p1, :cond_2

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:I

    :cond_2
    if-eqz p2, :cond_3

    iput v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->S:I

    :cond_3
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e0:I

    const/16 v3, 0x8

    if-ne v1, v3, :cond_4

    iput v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:I

    iput v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->O:I

    return-void

    :cond_4
    if-eqz p1, :cond_6

    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->L:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object p1, p1, v6

    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p1, v1, :cond_5

    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:I

    if-ge v0, p1, :cond_5

    move v0, p1

    :cond_5
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:I

    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Y:I

    if-ge v0, p1, :cond_6

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:I

    :cond_6
    if-eqz p2, :cond_8

    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->L:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 p2, 0x1

    aget-object p1, p1, p2

    sget-object p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p1, p2, :cond_7

    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->O:I

    if-ge v2, p1, :cond_7

    move v2, p1

    :cond_7
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->O:I

    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Z:I

    if-ge v2, p1, :cond_8

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->O:I

    :cond_8
    return-void
.end method

.method public K(I)Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/solver/widgets/analyzer/i;

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public K0(Landroidx/constraintlayout/solver/d;)V
    .locals 6

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->A:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/solver/d;->x(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->B:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/solver/d;->x(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/solver/d;->x(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->D:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v3}, Landroidx/constraintlayout/solver/d;->x(Ljava/lang/Object;)I

    move-result p1

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/solver/widgets/analyzer/i;

    iget-object v4, v3, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-boolean v5, v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    if-eqz v5, :cond_0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-boolean v5, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    if-eqz v5, :cond_0

    iget v0, v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    iget v2, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    :cond_0
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    iget-object v4, v3, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-boolean v5, v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    if-eqz v5, :cond_1

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-boolean v5, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    if-eqz v5, :cond_1

    iget v1, v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    iget p1, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    :cond_1
    sub-int v3, v2, v0

    sub-int v4, p1, v1

    const/4 v5, 0x0

    if-ltz v3, :cond_2

    if-ltz v4, :cond_2

    const/high16 v3, -0x80000000

    if-eq v0, v3, :cond_2

    const v4, 0x7fffffff

    if-eq v0, v4, :cond_2

    if-eq v1, v3, :cond_2

    if-eq v1, v4, :cond_2

    if-eq v2, v3, :cond_2

    if-eq v2, v4, :cond_2

    if-eq p1, v3, :cond_2

    if-ne p1, v4, :cond_3

    :cond_2
    const/4 p1, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_3
    invoke-virtual {p0, v0, v1, v2, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g0(IIII)V

    return-void
.end method

.method public L()F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->b0:F

    return v0
.end method

.method public M()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u0:I

    return v0
.end method

.method public N()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->L:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public O()I
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->A:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->B:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->e:I

    add-int/2addr v1, v0

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->D:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->e:I

    add-int/2addr v1, v0

    :cond_1
    return v1
.end method

.method public P()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e0:I

    return v0
.end method

.method public Q()I
    .locals 2

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e0:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:I

    return v0
.end method

.method public R()I
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroidx/constraintlayout/solver/widgets/d;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/d;

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/d;->K0:I

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:I

    return v0
.end method

.method public S()I
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroidx/constraintlayout/solver/widgets/d;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/d;

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/d;->L0:I

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->S:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->S:I

    return v0
.end method

.method public T()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->y:Z

    return v0
.end method

.method public U(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;II)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object p1

    invoke-virtual {p2, p3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p4, p5, p3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIZ)Z

    return-void
.end method

.method public W()Z
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->A:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eq v1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_2

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-ne v1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public X()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:Z

    return v0
.end method

.method public Y()Z
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->B:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eq v1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->D:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_2

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-ne v1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public Z()V
    .locals 6

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->A:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->l()V

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->B:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->l()V

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->l()V

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->D:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->l()V

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->E:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->l()V

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->l()V

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->G:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->l()V

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->H:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->l()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const/4 v1, 0x0

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->x:F

    const/4 v2, 0x0

    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:I

    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->O:I

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->P:F

    const/4 v1, -0x1

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:I

    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:I

    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->S:I

    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->V:I

    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->W:I

    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->X:I

    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Y:I

    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Z:I

    sget v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C0:F

    iput v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a0:F

    iput v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->b0:F

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->L:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v4, v3, v2

    const/4 v5, 0x1

    aput-object v4, v3, v5

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->c0:Ljava/lang/Object;

    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d0:I

    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e0:I

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g0:Ljava/lang/String;

    iput-boolean v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->p0:Z

    iput-boolean v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->q0:Z

    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->t0:I

    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u0:I

    iput-boolean v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->v0:Z

    iput-boolean v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w0:Z

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->x0:[F

    const/high16 v3, -0x40800000    # -1.0f

    aput v3, v0, v2

    aput v3, v0, v5

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->h:I

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i:I

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w:[I

    const v3, 0x7fffffff

    aput v3, v0, v2

    aput v3, v0, v5

    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j:I

    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->k:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->o:F

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->r:F

    iput v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n:I

    iput v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->q:I

    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->m:I

    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->p:I

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->v:F

    iput-boolean v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->r0:Z

    iput-boolean v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->s0:Z

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->f:[Z

    aput-boolean v5, v0, v2

    aput-boolean v5, v0, v5

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->K:[Z

    aput-boolean v2, v0, v2

    aput-boolean v2, v0, v5

    return-void
.end method

.method public a0()V
    .locals 3

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->H()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v0, v0, Landroidx/constraintlayout/solver/widgets/d;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->H()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/d;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/d;->Y0()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->l()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b0(Landroidx/constraintlayout/solver/c;)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->A:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->m(Landroidx/constraintlayout/solver/c;)V

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->B:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->m(Landroidx/constraintlayout/solver/c;)V

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->m(Landroidx/constraintlayout/solver/c;)V

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->D:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->m(Landroidx/constraintlayout/solver/c;)V

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->E:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->m(Landroidx/constraintlayout/solver/c;)V

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->H:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->m(Landroidx/constraintlayout/solver/c;)V

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->m(Landroidx/constraintlayout/solver/c;)V

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->G:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->m(Landroidx/constraintlayout/solver/c;)V

    return-void
.end method

.method public c0(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->X:I

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->y:Z

    return-void
.end method

.method public d0(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->c0:Ljava/lang/Object;

    return-void
.end method

.method e()Z
    .locals 1

    instance-of v0, p0, Landroidx/constraintlayout/solver/widgets/j;

    if-nez v0, :cond_1

    instance-of v0, p0, Landroidx/constraintlayout/solver/widgets/f;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public e0(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->f0:Ljava/lang/String;

    return-void
.end method

.method public f(Landroidx/constraintlayout/solver/d;)V
    .locals 48

    move-object/from16 v13, p0

    move-object/from16 v9, p1

    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->A:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v0}, Landroidx/constraintlayout/solver/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v7

    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v0}, Landroidx/constraintlayout/solver/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v6

    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->B:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v0}, Landroidx/constraintlayout/solver/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v4

    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->D:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v0}, Landroidx/constraintlayout/solver/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v3

    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->E:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v0}, Landroidx/constraintlayout/solver/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v1

    sget-object v0, Landroidx/constraintlayout/solver/d;->r:Landroidx/constraintlayout/solver/e;

    const-wide/16 v10, 0x1

    if-eqz v0, :cond_0

    iget-wide v14, v0, Landroidx/constraintlayout/solver/e;->y:J

    add-long/2addr v14, v10

    iput-wide v14, v0, Landroidx/constraintlayout/solver/e;->y:J

    :cond_0
    iget-object v2, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/solver/widgets/analyzer/i;

    iget-object v5, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-boolean v8, v5, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    const/4 v12, 0x0

    if-eqz v8, :cond_6

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-boolean v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    if-eqz v2, :cond_6

    iget-object v2, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    iget-object v8, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-boolean v8, v8, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    if-eqz v8, :cond_6

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-boolean v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    if-eqz v2, :cond_6

    if-eqz v0, :cond_1

    iget-wide v14, v0, Landroidx/constraintlayout/solver/e;->r:J

    add-long/2addr v14, v10

    iput-wide v14, v0, Landroidx/constraintlayout/solver/e;->r:J

    :cond_1
    iget v0, v5, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    invoke-virtual {v9, v7, v0}, Landroidx/constraintlayout/solver/d;->f(Landroidx/constraintlayout/solver/SolverVariable;I)V

    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/solver/widgets/analyzer/i;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    invoke-virtual {v9, v6, v0}, Landroidx/constraintlayout/solver/d;->f(Landroidx/constraintlayout/solver/SolverVariable;I)V

    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    invoke-virtual {v9, v4, v0}, Landroidx/constraintlayout/solver/d;->f(Landroidx/constraintlayout/solver/SolverVariable;I)V

    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    invoke-virtual {v9, v3, v0}, Landroidx/constraintlayout/solver/d;->f(Landroidx/constraintlayout/solver/SolverVariable;I)V

    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/k;->k:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    invoke-virtual {v9, v1, v0}, Landroidx/constraintlayout/solver/d;->f(Landroidx/constraintlayout/solver/SolverVariable;I)V

    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_5

    if-eqz v0, :cond_2

    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->L:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v1, v1, v12

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->c:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_3

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->L:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->c:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-eqz v1, :cond_4

    iget-object v1, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->f:[Z

    aget-boolean v1, v1, v12

    if-eqz v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->W()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v1}, Landroidx/constraintlayout/solver/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v9, v1, v6, v12, v2}, Landroidx/constraintlayout/solver/d;->h(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    :cond_4
    if-eqz v0, :cond_5

    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->f:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Y()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->D:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v0}, Landroidx/constraintlayout/solver/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v9, v0, v3, v12, v1}, Landroidx/constraintlayout/solver/d;->h(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    :cond_5
    return-void

    :cond_6
    if-eqz v0, :cond_7

    iget-wide v14, v0, Landroidx/constraintlayout/solver/e;->s:J

    add-long/2addr v14, v10

    iput-wide v14, v0, Landroidx/constraintlayout/solver/e;->s:J

    :cond_7
    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_e

    if-eqz v0, :cond_8

    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->L:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v2, v2, v12

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->c:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v5, :cond_8

    const/4 v2, 0x1

    goto :goto_2

    :cond_8
    const/4 v2, 0x0

    :goto_2
    if-eqz v0, :cond_9

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->L:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v5, 0x1

    aget-object v0, v0, v5

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->c:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v5, :cond_9

    const/4 v0, 0x1

    goto :goto_3

    :cond_9
    const/4 v0, 0x0

    :goto_3
    invoke-direct {v13, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->V(I)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    check-cast v5, Landroidx/constraintlayout/solver/widgets/d;

    invoke-virtual {v5, v13, v12}, Landroidx/constraintlayout/solver/widgets/d;->P0(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)V

    const/4 v5, 0x1

    goto :goto_4

    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->W()Z

    move-result v5

    :goto_4
    const/4 v8, 0x1

    invoke-direct {v13, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->V(I)Z

    move-result v10

    if-eqz v10, :cond_b

    iget-object v10, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    check-cast v10, Landroidx/constraintlayout/solver/widgets/d;

    invoke-virtual {v10, v13, v8}, Landroidx/constraintlayout/solver/widgets/d;->P0(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)V

    const/4 v8, 0x1

    goto :goto_5

    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Y()Z

    move-result v8

    :goto_5
    if-nez v5, :cond_c

    if-eqz v2, :cond_c

    iget v10, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e0:I

    const/16 v11, 0x8

    if-eq v10, v11, :cond_c

    iget-object v10, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->A:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v10, :cond_c

    iget-object v10, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v10, :cond_c

    iget-object v10, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/solver/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v6, v12, v11}, Landroidx/constraintlayout/solver/d;->h(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    :cond_c
    if-nez v8, :cond_d

    if-eqz v0, :cond_d

    iget v10, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e0:I

    const/16 v11, 0x8

    if-eq v10, v11, :cond_d

    iget-object v10, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->B:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v10, :cond_d

    iget-object v10, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->D:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v10, :cond_d

    iget-object v10, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->E:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v10, :cond_d

    iget-object v10, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->D:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/solver/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v3, v12, v11}, Landroidx/constraintlayout/solver/d;->h(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    :cond_d
    move v15, v2

    move/from16 v28, v5

    move/from16 v27, v8

    goto :goto_6

    :cond_e
    const/4 v0, 0x0

    const/4 v15, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    :goto_6
    iget v2, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:I

    iget v5, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Y:I

    if-ge v2, v5, :cond_f

    goto :goto_7

    :cond_f
    move v5, v2

    :goto_7
    iget v8, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->O:I

    iget v10, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Z:I

    if-ge v8, v10, :cond_10

    goto :goto_8

    :cond_10
    move v10, v8

    :goto_8
    iget-object v11, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->L:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v14, v11, v12

    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v19, v1

    if-eq v14, v12, :cond_11

    const/4 v14, 0x1

    goto :goto_9

    :cond_11
    const/4 v14, 0x0

    :goto_9
    const/16 v17, 0x1

    aget-object v1, v11, v17

    move-object/from16 v20, v3

    if-eq v1, v12, :cond_12

    const/4 v1, 0x1

    goto :goto_a

    :cond_12
    const/4 v1, 0x0

    :goto_a
    iget v3, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:I

    iput v3, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u:I

    move-object/from16 v21, v4

    iget v4, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->P:F

    iput v4, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->v:F

    move/from16 v22, v5

    iget v5, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j:I

    move/from16 v23, v10

    iget v10, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->k:I

    const/16 v24, 0x0

    const/16 v25, 0x4

    move-object/from16 v26, v6

    cmpl-float v24, v4, v24

    if-lez v24, :cond_1c

    iget v6, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e0:I

    move-object/from16 v30, v7

    const/16 v7, 0x8

    if-eq v6, v7, :cond_1d

    const/4 v6, 0x0

    aget-object v7, v11, v6

    if-ne v7, v12, :cond_13

    if-nez v5, :cond_13

    const/4 v5, 0x3

    :cond_13
    const/4 v7, 0x1

    aget-object v6, v11, v7

    if-ne v6, v12, :cond_14

    if-nez v10, :cond_14

    const/4 v6, 0x0

    const/4 v10, 0x3

    goto :goto_b

    :cond_14
    const/4 v6, 0x0

    :goto_b
    aget-object v9, v11, v6

    if-ne v9, v12, :cond_15

    aget-object v6, v11, v7

    if-ne v6, v12, :cond_15

    const/4 v6, 0x3

    if-ne v5, v6, :cond_16

    if-ne v10, v6, :cond_16

    invoke-virtual {v13, v15, v0, v14, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I0(ZZZZ)V

    goto :goto_c

    :cond_15
    const/4 v6, 0x3

    :cond_16
    const/4 v1, 0x0

    aget-object v7, v11, v1

    if-ne v7, v12, :cond_18

    if-ne v5, v6, :cond_18

    iput v1, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u:I

    int-to-float v1, v8

    mul-float v4, v4, v1

    float-to-int v1, v4

    const/4 v6, 0x1

    aget-object v2, v11, v6

    if-eq v2, v12, :cond_17

    move v5, v1

    move/from16 v33, v10

    move/from16 v32, v23

    const/4 v2, 0x0

    const/16 v31, 0x0

    const/16 v34, 0x4

    goto :goto_e

    :cond_17
    move/from16 v34, v5

    move/from16 v33, v10

    move/from16 v32, v23

    const/4 v2, 0x0

    const/16 v31, 0x1

    move v5, v1

    goto :goto_e

    :cond_18
    const/4 v6, 0x1

    aget-object v1, v11, v6

    if-ne v1, v12, :cond_1b

    const/4 v1, 0x3

    if-ne v10, v1, :cond_1b

    iput v6, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u:I

    const/4 v1, -0x1

    if-ne v3, v1, :cond_19

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v4

    iput v1, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->v:F

    :cond_19
    iget v1, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->v:F

    int-to-float v2, v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    const/4 v2, 0x0

    aget-object v3, v11, v2

    move/from16 v32, v1

    move/from16 v34, v5

    if-eq v3, v12, :cond_1a

    move/from16 v5, v22

    const/16 v31, 0x0

    const/16 v33, 0x4

    goto :goto_e

    :cond_1a
    move/from16 v33, v10

    move/from16 v5, v22

    goto :goto_d

    :cond_1b
    :goto_c
    const/4 v2, 0x0

    move/from16 v34, v5

    move/from16 v33, v10

    move/from16 v5, v22

    move/from16 v32, v23

    :goto_d
    const/16 v31, 0x1

    goto :goto_e

    :cond_1c
    move-object/from16 v30, v7

    :cond_1d
    const/4 v2, 0x0

    move/from16 v34, v5

    move/from16 v33, v10

    move/from16 v5, v22

    move/from16 v32, v23

    const/16 v31, 0x0

    :goto_e
    iget-object v1, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->l:[I

    aput v34, v1, v2

    const/4 v2, 0x1

    aput v33, v1, v2

    if-eqz v31, :cond_1f

    iget v1, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u:I

    const/4 v6, -0x1

    if-eqz v1, :cond_1e

    if-ne v1, v6, :cond_20

    :cond_1e
    const/16 v22, 0x1

    goto :goto_f

    :cond_1f
    const/4 v6, -0x1

    :cond_20
    const/16 v22, 0x0

    :goto_f
    iget-object v1, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->L:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->c:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v9, :cond_21

    instance-of v1, v13, Landroidx/constraintlayout/solver/widgets/d;

    if-eqz v1, :cond_21

    const/16 v29, 0x1

    goto :goto_10

    :cond_21
    const/16 v29, 0x0

    :goto_10
    if-eqz v29, :cond_22

    const/16 v35, 0x0

    goto :goto_11

    :cond_22
    move/from16 v35, v5

    :goto_11
    iget-object v1, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->H:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j()Z

    move-result v1

    const/4 v3, 0x1

    xor-int/lit8 v36, v1, 0x1

    iget-object v1, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->K:[Z

    const/4 v2, 0x0

    aget-boolean v37, v1, v2

    aget-boolean v38, v1, v3

    iget v1, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->h:I

    const/4 v7, 0x2

    const/16 v39, 0x0

    if-eq v1, v7, :cond_28

    iget-object v1, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/solver/widgets/analyzer/i;

    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-boolean v4, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    if-eqz v4, :cond_25

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-boolean v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    if-nez v1, :cond_23

    goto :goto_12

    :cond_23
    iget v1, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    move-object/from16 v4, p1

    move-object/from16 v14, v30

    invoke-virtual {v4, v14, v1}, Landroidx/constraintlayout/solver/d;->f(Landroidx/constraintlayout/solver/SolverVariable;I)V

    iget-object v1, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/solver/widgets/analyzer/i;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    move-object/from16 v12, v26

    invoke-virtual {v4, v12, v1}, Landroidx/constraintlayout/solver/d;->f(Landroidx/constraintlayout/solver/SolverVariable;I)V

    iget-object v1, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v1, :cond_24

    if-eqz v15, :cond_24

    iget-object v1, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->f:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_24

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->W()Z

    move-result v1

    if-nez v1, :cond_24

    iget-object v1, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4, v1}, Landroidx/constraintlayout/solver/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v1

    const/16 v11, 0x8

    invoke-virtual {v4, v1, v12, v2, v11}, Landroidx/constraintlayout/solver/d;->h(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    :cond_24
    move/from16 v43, v0

    move-object/from16 v47, v9

    move-object/from16 v40, v12

    move-object/from16 v41, v14

    move/from16 v42, v15

    move-object/from16 v44, v19

    move-object/from16 v45, v20

    move-object/from16 v46, v21

    goto/16 :goto_16

    :cond_25
    :goto_12
    move-object/from16 v4, p1

    move-object/from16 v12, v26

    move-object/from16 v14, v30

    const/16 v11, 0x8

    iget-object v1, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v1, :cond_26

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4, v1}, Landroidx/constraintlayout/solver/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v1

    move-object/from16 v17, v1

    goto :goto_13

    :cond_26
    move-object/from16 v17, v39

    :goto_13
    iget-object v1, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v1, :cond_27

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->A:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4, v1}, Landroidx/constraintlayout/solver/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v1

    move-object/from16 v26, v1

    goto :goto_14

    :cond_27
    move-object/from16 v26, v39

    :goto_14
    const/4 v2, 0x1

    iget-object v1, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->f:[Z

    const/16 v16, 0x0

    aget-boolean v5, v1, v16

    iget-object v1, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->L:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v8, v1, v16

    iget-object v10, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->A:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/16 v18, 0x8

    move-object v11, v1

    iget v1, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:I

    move-object/from16 v40, v12

    const/4 v2, 0x0

    move v12, v1

    iget v1, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Y:I

    move-object/from16 v41, v14

    move v14, v1

    iget-object v1, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w:[I

    aget v1, v1, v2

    move/from16 v42, v15

    move v15, v1

    iget v1, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a0:F

    move/from16 v16, v1

    iget v1, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->m:I

    move/from16 v23, v1

    iget v1, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n:I

    move/from16 v24, v1

    iget v1, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->o:F

    move/from16 v25, v1

    move/from16 v43, v0

    move-object/from16 v0, p0

    move-object/from16 v44, v19

    move-object/from16 v1, p1

    move-object/from16 v45, v20

    move/from16 v3, v42

    move-object/from16 v46, v21

    move/from16 v4, v43

    move-object/from16 v6, v26

    move-object/from16 v7, v17

    move-object/from16 v47, v9

    move/from16 v9, v29

    move/from16 v13, v35

    move/from16 v17, v22

    move/from16 v18, v28

    move/from16 v19, v27

    move/from16 v20, v37

    move/from16 v21, v34

    move/from16 v22, v33

    move/from16 v26, v36

    const/4 v2, 0x1

    invoke-direct/range {v0 .. v26}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->h(Landroidx/constraintlayout/solver/d;ZZZZLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ZLandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIIIFZZZZIIIIFZ)V

    goto :goto_15

    :cond_28
    move/from16 v43, v0

    move-object/from16 v47, v9

    move/from16 v42, v15

    move-object/from16 v44, v19

    move-object/from16 v45, v20

    move-object/from16 v46, v21

    move-object/from16 v40, v26

    move-object/from16 v41, v30

    :goto_15
    move-object/from16 v13, p0

    :goto_16
    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-boolean v2, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    if-eqz v2, :cond_2b

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-boolean v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    if-eqz v0, :cond_2b

    iget v0, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    move-object/from16 v9, p1

    move-object/from16 v7, v46

    invoke-virtual {v9, v7, v0}, Landroidx/constraintlayout/solver/d;->f(Landroidx/constraintlayout/solver/SolverVariable;I)V

    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    move-object/from16 v6, v45

    invoke-virtual {v9, v6, v0}, Landroidx/constraintlayout/solver/d;->f(Landroidx/constraintlayout/solver/SolverVariable;I)V

    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/k;->k:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->g:I

    move-object/from16 v1, v44

    invoke-virtual {v9, v1, v0}, Landroidx/constraintlayout/solver/d;->f(Landroidx/constraintlayout/solver/SolverVariable;I)V

    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_2a

    if-nez v27, :cond_2a

    if-eqz v43, :cond_2a

    iget-object v2, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->f:[Z

    const/4 v4, 0x1

    aget-boolean v2, v2, v4

    if-eqz v2, :cond_29

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->D:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v0}, Landroidx/constraintlayout/solver/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v9, v0, v6, v3, v2}, Landroidx/constraintlayout/solver/d;->h(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_17

    :cond_29
    const/16 v2, 0x8

    const/4 v3, 0x0

    goto :goto_17

    :cond_2a
    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    :goto_17
    const/4 v14, 0x0

    goto :goto_18

    :cond_2b
    move-object/from16 v9, p1

    move-object/from16 v1, v44

    move-object/from16 v6, v45

    move-object/from16 v7, v46

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v14, 0x1

    :goto_18
    iget v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i:I

    const/4 v5, 0x2

    if-ne v0, v5, :cond_2c

    const/4 v12, 0x0

    goto :goto_19

    :cond_2c
    move v12, v14

    :goto_19
    if-eqz v12, :cond_37

    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->L:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, v4

    move-object/from16 v5, v47

    if-ne v0, v5, :cond_2d

    instance-of v0, v13, Landroidx/constraintlayout/solver/widgets/d;

    if-eqz v0, :cond_2d

    const/16 v17, 0x1

    goto :goto_1a

    :cond_2d
    const/16 v17, 0x0

    :goto_1a
    if-eqz v17, :cond_2e

    const/16 v32, 0x0

    :cond_2e
    if-eqz v31, :cond_30

    iget v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u:I

    if-eq v0, v4, :cond_2f

    const/4 v5, -0x1

    if-ne v0, v5, :cond_30

    :cond_2f
    const/16 v18, 0x1

    goto :goto_1b

    :cond_30
    const/16 v18, 0x0

    :goto_1b
    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_31

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->D:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v0}, Landroidx/constraintlayout/solver/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    goto :goto_1c

    :cond_31
    move-object/from16 v0, v39

    :goto_1c
    iget-object v5, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v5, :cond_32

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->B:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v5}, Landroidx/constraintlayout/solver/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v5

    move-object/from16 v39, v5

    :cond_32
    iget v5, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->X:I

    if-gtz v5, :cond_33

    iget v5, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e0:I

    if-ne v5, v2, :cond_36

    :cond_33
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->o()I

    move-result v5

    invoke-virtual {v9, v1, v7, v5, v2}, Landroidx/constraintlayout/solver/d;->e(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/b;

    iget-object v5, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->E:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v5, :cond_35

    invoke-virtual {v9, v5}, Landroidx/constraintlayout/solver/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v5

    invoke-virtual {v9, v1, v5, v3, v2}, Landroidx/constraintlayout/solver/d;->e(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/b;

    if-eqz v43, :cond_34

    iget-object v1, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->D:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v1}, Landroidx/constraintlayout/solver/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v9, v0, v1, v3, v2}, Landroidx/constraintlayout/solver/d;->h(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    :cond_34
    const/16 v26, 0x0

    goto :goto_1d

    :cond_35
    iget v5, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e0:I

    if-ne v5, v2, :cond_36

    invoke-virtual {v9, v1, v7, v3, v2}, Landroidx/constraintlayout/solver/d;->e(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/b;

    :cond_36
    move/from16 v26, v36

    :goto_1d
    const/4 v2, 0x0

    iget-object v1, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->f:[Z

    aget-boolean v5, v1, v4

    iget-object v1, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->L:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v8, v1, v4

    iget-object v10, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->B:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v11, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->D:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v12, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->S:I

    iget v14, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Z:I

    iget-object v1, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w:[I

    aget v15, v1, v4

    iget v1, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->b0:F

    move/from16 v16, v1

    iget v1, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->p:I

    move/from16 v23, v1

    iget v1, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->q:I

    move/from16 v24, v1

    iget v1, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->r:F

    move/from16 v25, v1

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, v43

    move/from16 v4, v42

    move-object/from16 v29, v6

    move-object/from16 v6, v39

    move-object/from16 v30, v7

    move-object/from16 v7, v19

    move/from16 v9, v17

    move/from16 v13, v32

    move/from16 v17, v18

    move/from16 v18, v27

    move/from16 v19, v28

    move/from16 v20, v38

    move/from16 v21, v33

    move/from16 v22, v34

    invoke-direct/range {v0 .. v26}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->h(Landroidx/constraintlayout/solver/d;ZZZZLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ZLandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIIIFZZZZIIIIFZ)V

    goto :goto_1e

    :cond_37
    move-object/from16 v29, v6

    move-object/from16 v30, v7

    :goto_1e
    if-eqz v31, :cond_39

    const/16 v6, 0x8

    move-object/from16 v7, p0

    iget v0, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u:I

    const/4 v1, 0x1

    iget v5, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->v:F

    if-ne v0, v1, :cond_38

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v40

    move-object/from16 v4, v41

    goto :goto_1f

    :cond_38
    const/16 v6, 0x8

    move-object/from16 v0, p1

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    move-object/from16 v3, v29

    move-object/from16 v4, v30

    :goto_1f
    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/solver/d;->k(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;FI)V

    goto :goto_20

    :cond_39
    move-object/from16 v7, p0

    :goto_20
    iget-object v0, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->H:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->H:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->g()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->e()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    iget v1, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->x:F

    const/high16 v2, 0x42b40000    # 90.0f

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->H:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c()I

    move-result v2

    move-object/from16 v3, p1

    invoke-virtual {v3, v7, v0, v1, v2}, Landroidx/constraintlayout/solver/d;->b(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;FI)V

    :cond_3a
    return-void
.end method

.method public f0(Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x2c

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v3, :cond_3

    add-int/lit8 v6, v2, -0x1

    if-ge v3, v6, :cond_3

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "W"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const-string v4, "H"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    add-int/lit8 v4, v3, 0x1

    :cond_3
    const/16 v3, 0x3a

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_5

    sub-int/2addr v2, v5

    if-ge v3, v2, :cond_5

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/2addr v3, v5

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    :try_start_0
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    cmpl-float v3, v2, v0

    if-lez v3, :cond_6

    cmpl-float v3, p1, v0

    if-lez v3, :cond_6

    if-ne v1, v5, :cond_4

    div-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    goto :goto_1

    :cond_4
    div-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_5
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    :try_start_1
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    :cond_6
    const/4 p1, 0x0

    :goto_1
    cmpl-float v0, p1, v0

    if-lez v0, :cond_7

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->P:F

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:I

    :cond_7
    return-void

    :cond_8
    :goto_2
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->P:F

    return-void
.end method

.method public g()Z
    .locals 2

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e0:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g0(IIII)V
    .locals 1

    sub-int/2addr p3, p1

    sub-int/2addr p4, p2

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:I

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->S:I

    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e0:I

    const/4 p2, 0x0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:I

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->O:I

    return-void

    :cond_0
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->L:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object p2, p1, p2

    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p2, v0, :cond_1

    iget p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:I

    if-ge p3, p2, :cond_1

    move p3, p2

    :cond_1
    const/4 p2, 0x1

    aget-object p1, p1, p2

    if-ne p1, v0, :cond_2

    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->O:I

    if-ge p4, p1, :cond_2

    move p4, p1

    :cond_2
    iput p3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:I

    iput p4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->O:I

    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Z:I

    if-ge p4, p1, :cond_3

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->O:I

    :cond_3
    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Y:I

    if-ge p3, p1, :cond_4

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:I

    :cond_4
    return-void
.end method

.method public h0(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->y:Z

    return-void
.end method

.method public i(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;I)V
    .locals 8

    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->h:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_c

    sget-object p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->c:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne p3, v0, :cond_8

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object p3

    sget-object p4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->e:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, p4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v2

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v4

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v6

    const/4 v7, 0x1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j()Z

    move-result p3

    if-nez p3, :cond_1

    :cond_0
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j()Z

    move-result p3

    if-eqz p3, :cond_2

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2, p1, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;I)V

    invoke-virtual {p0, p4, p2, p4, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;I)V

    const/4 p1, 0x1

    :goto_0
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j()Z

    move-result p3

    if-nez p3, :cond_4

    :cond_3
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j()Z

    move-result p3

    if-eqz p3, :cond_5

    :cond_4
    const/4 v7, 0x0

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v3, p2, v3, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;I)V

    invoke-virtual {p0, v5, p2, v5, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;I)V

    :goto_1
    if-eqz p1, :cond_6

    if-eqz v7, :cond_6

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object p1

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object p2

    goto :goto_6

    :cond_6
    if-eqz p1, :cond_7

    sget-object p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->i:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    :goto_2
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object p3

    invoke-virtual {p2, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object p1

    invoke-virtual {p3, p1, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    goto/16 :goto_a

    :cond_7
    if-eqz v7, :cond_1d

    sget-object p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->j:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    goto :goto_2

    :cond_8
    if-eq p3, p1, :cond_b

    sget-object p4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->e:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne p3, p4, :cond_9

    goto :goto_3

    :cond_9
    sget-object p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq p3, p1, :cond_a

    sget-object p4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne p3, p4, :cond_1d

    :cond_a
    invoke-virtual {p0, p1, p2, p3, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;I)V

    sget-object p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, p1, p2, p3, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;I)V

    goto :goto_4

    :cond_b
    :goto_3
    invoke-virtual {p0, p1, p2, p3, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;I)V

    sget-object p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->e:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_4
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object p1

    :goto_5
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object p2

    goto :goto_6

    :cond_c
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->i:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne p1, v2, :cond_e

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->c:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq p3, v3, :cond_d

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->e:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne p3, v4, :cond_e

    :cond_d
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object p1

    invoke-virtual {p2, p3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object p2

    sget-object p3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->e:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, p3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object p3

    invoke-virtual {p1, p2, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    invoke-virtual {p3, p2, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object p1

    :goto_6
    invoke-virtual {p1, p2, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    goto/16 :goto_a

    :cond_e
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->j:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne p1, v3, :cond_10

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq p3, v4, :cond_f

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne p3, v5, :cond_10

    :cond_f
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object p1

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object p2

    invoke-virtual {p2, p1, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    sget-object p2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object p2

    invoke-virtual {p2, p1, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object p2

    invoke-virtual {p2, p1, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    goto/16 :goto_a

    :cond_10
    if-ne p1, v2, :cond_11

    if-ne p3, v2, :cond_11

    sget-object p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->c:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object p4

    invoke-virtual {p2, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object p1

    invoke-virtual {p4, p1, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    sget-object p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->e:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object p4

    invoke-virtual {p2, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object p1

    invoke-virtual {p4, p1, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object p1

    goto :goto_5

    :cond_11
    if-ne p1, v3, :cond_12

    if-ne p3, v3, :cond_12

    sget-object p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object p4

    invoke-virtual {p2, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object p1

    invoke-virtual {p4, p1, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    sget-object p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object p4

    invoke-virtual {p2, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object p1

    invoke-virtual {p4, p1, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object p1

    goto/16 :goto_5

    :cond_12
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v4

    invoke-virtual {p2, p3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object p2

    invoke-virtual {v4, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->k(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)Z

    move-result p3

    if-eqz p3, :cond_1d

    sget-object p3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->g:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne p1, p3, :cond_15

    sget-object p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object p1

    sget-object p3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, p3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object p3

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->l()V

    :cond_13
    if-eqz p3, :cond_14

    invoke-virtual {p3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->l()V

    :cond_14
    const/4 p4, 0x0

    goto :goto_9

    :cond_15
    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq p1, v1, :cond_19

    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->f:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne p1, v1, :cond_16

    goto :goto_7

    :cond_16
    sget-object p3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->c:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq p1, p3, :cond_17

    sget-object p3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->e:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne p1, p3, :cond_1c

    :cond_17
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->g()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v0

    if-eq v0, p2, :cond_18

    invoke-virtual {p3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->l()V

    :cond_18
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object p1

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j()Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_8

    :cond_19
    :goto_7
    invoke-virtual {p0, p3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object p3

    if-eqz p3, :cond_1a

    invoke-virtual {p3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->l()V

    :cond_1a
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->g()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v0

    if-eq v0, p2, :cond_1b

    invoke-virtual {p3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->l()V

    :cond_1b
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object p1

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->j()Z

    move-result v0

    if-eqz v0, :cond_1c

    :goto_8
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->l()V

    invoke-virtual {p3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->l()V

    :cond_1c
    :goto_9
    invoke-virtual {v4, p2, p4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    :cond_1d
    :goto_a
    return-void

    :catchall_0
    move-exception p1

    goto :goto_c

    :goto_b
    throw p1

    :goto_c
    goto :goto_b
.end method

.method public i0(I)V
    .locals 1

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->O:I

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Z:I

    if-ge p1, v0, :cond_0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->O:I

    :cond_0
    return-void
.end method

.method public j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V
    .locals 1

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->e()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    if-ne v0, p0, :cond_0

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->h()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-result-object p1

    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->e()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->h()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2, p3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;I)V

    :cond_0
    return-void
.end method

.method public j0(F)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a0:F

    return-void
.end method

.method public k(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;FI)V
    .locals 6

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->h:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v3

    move-object v2, p1

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->U(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;II)V

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->x:F

    return-void
.end method

.method public k0(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->t0:I

    return-void
.end method

.method public l(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            "Ljava/util/HashMap<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;)V"
        }
    .end annotation

    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->h:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->h:I

    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i:I

    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j:I

    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->k:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->k:I

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->l:[I

    iget-object v1, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->l:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    aput v3, v0, v2

    const/4 v3, 0x1

    aget v1, v1, v3

    aput v1, v0, v3

    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->m:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->m:I

    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n:I

    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->p:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->p:I

    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->q:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->q:I

    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->r:F

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->r:F

    iget-boolean v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->s:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->s:Z

    iget-boolean v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->t:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->t:Z

    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u:I

    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->v:F

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->v:F

    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w:[I

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w:[I

    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->x:F

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->x:F

    iget-boolean v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->y:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->y:Z

    iget-boolean v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:Z

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->A:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->l()V

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->B:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->l()V

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->l()V

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->D:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->l()V

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->E:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->l()V

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->l()V

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->G:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->l()V

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->H:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->l()V

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->L:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->L:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    :goto_0
    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:I

    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->O:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->O:I

    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->P:F

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->P:F

    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:I

    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:I

    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->S:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->S:I

    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->T:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->T:I

    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->U:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->U:I

    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->V:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->V:I

    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->W:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->W:I

    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->X:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->X:I

    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Y:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Y:I

    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Z:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Z:I

    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a0:F

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a0:F

    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->b0:F

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->b0:F

    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->c0:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->c0:Ljava/lang/Object;

    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d0:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d0:I

    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e0:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e0:I

    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->f0:Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->f0:Ljava/lang/String;

    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g0:Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g0:Ljava/lang/String;

    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->h0:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->h0:I

    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i0:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i0:I

    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j0:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j0:I

    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->k0:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->k0:I

    iget-boolean v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->l0:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->l0:Z

    iget-boolean v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->m0:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->m0:Z

    iget-boolean v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n0:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n0:Z

    iget-boolean v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->o0:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->o0:Z

    iget-boolean v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->p0:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->p0:Z

    iget-boolean v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->q0:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->q0:Z

    iget-boolean v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->r0:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->r0:Z

    iget-boolean v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->s0:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->s0:Z

    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->t0:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->t0:I

    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u0:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u0:I

    iget-boolean v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->v0:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->v0:Z

    iget-boolean v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w0:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w0:Z

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->x0:[F

    iget-object v4, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->x0:[F

    aget v5, v4, v2

    aput v5, v0, v2

    aget v4, v4, v3

    aput v4, v0, v3

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->y0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v4, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->y0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v5, v4, v2

    aput-object v5, v0, v2

    aget-object v4, v4, v3

    aput-object v4, v0, v3

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v4, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v5, v4, v2

    aput-object v5, v0, v2

    aget-object v2, v4, v3

    aput-object v2, v0, v3

    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->A0:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    :goto_1
    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->A0:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object p1, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->B0:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    :goto_2
    iput-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->B0:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    return-void
.end method

.method public l0(II)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:I

    sub-int/2addr p2, p1

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:I

    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Y:I

    if-ge p2, p1, :cond_0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:I

    :cond_0
    return-void
.end method

.method public m(Landroidx/constraintlayout/solver/d;)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->A:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/solver/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->B:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/solver/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/solver/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->D:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/solver/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->X:I

    if-lez v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->E:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/solver/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    :cond_0
    return-void
.end method

.method public m0(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->L:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return-void
.end method

.method public n(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .locals 2

    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    :pswitch_1
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->G:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    return-object p1

    :pswitch_2
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    return-object p1

    :pswitch_3
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->H:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    return-object p1

    :pswitch_4
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->E:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    return-object p1

    :pswitch_5
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->D:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    return-object p1

    :pswitch_6
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    return-object p1

    :pswitch_7
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->B:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    return-object p1

    :pswitch_8
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->A:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public n0(IIIF)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j:I

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->m:I

    const p2, 0x7fffffff

    if-ne p3, p2, :cond_0

    const/4 p3, 0x0

    :cond_0
    iput p3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n:I

    iput p4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->o:F

    const/4 p2, 0x0

    cmpl-float p2, p4, p2

    if-lez p2, :cond_1

    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p2, p4, p2

    if-gez p2, :cond_1

    if-nez p1, :cond_1

    const/4 p1, 0x2

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j:I

    :cond_1
    return-void
.end method

.method public o()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->X:I

    return v0
.end method

.method public o0(F)V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->x0:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    return-void
.end method

.method public p(I)F
    .locals 1

    if-nez p1, :cond_0

    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a0:F

    return p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->b0:F

    return p1

    :cond_1
    const/high16 p1, -0x40800000    # -1.0f

    return p1
.end method

.method protected p0(IZ)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->K:[Z

    aput-boolean p2, v0, p1

    return-void
.end method

.method public q()I
    .locals 2

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->S()I

    move-result v0

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->O:I

    add-int/2addr v0, v1

    return v0
.end method

.method public q0(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:Z

    return-void
.end method

.method public r()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->c0:Ljava/lang/Object;

    return-object v0
.end method

.method public r0(Z)V
    .locals 0

    return-void
.end method

.method public s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->f0:Ljava/lang/String;

    return-object v0
.end method

.method public s0(I)V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    return-void
.end method

.method public t(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public t0(I)V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g0:Ljava/lang/String;

    const-string v2, " "

    const-string v3, ""

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g0:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->f0:Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->f0:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->S:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") - ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->N:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->O:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->P:F

    return v0
.end method

.method public u0(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Z:I

    return-void
.end method

.method public v()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:I

    return v0
.end method

.method public v0(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Y:I

    return-void
.end method

.method public w()I
    .locals 2

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e0:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->O:I

    return v0
.end method

.method public w0(II)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->R:I

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->S:I

    return-void
.end method

.method public x()F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a0:F

    return v0
.end method

.method public x0(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    return-void
.end method

.method public y()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->t0:I

    return v0
.end method

.method public y0(F)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->b0:F

    return-void
.end method

.method public z()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->L:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public z0(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u0:I

    return-void
.end method
