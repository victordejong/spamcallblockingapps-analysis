.class public final Landroidx/j/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/j/a/c;

.field public static final b:Landroidx/j/a/c;

.field public static final c:Landroidx/j/a/c;

.field public static final d:Landroidx/j/a/c;

.field public static final e:Landroidx/j/a/c;

.field public static final f:Landroidx/j/a/c;


# instance fields
.field final g:[F

.field final h:[F

.field final i:[F

.field j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 90
    new-instance v0, Landroidx/j/a/c;

    invoke-direct {v0}, Landroidx/j/a/c;-><init>()V

    .line 91
    sput-object v0, Landroidx/j/a/c;->a:Landroidx/j/a/c;

    invoke-static {v0}, Landroidx/j/a/c;->c(Landroidx/j/a/c;)V

    .line 92
    invoke-static {v0}, Landroidx/j/a/c;->d(Landroidx/j/a/c;)V

    .line 94
    new-instance v0, Landroidx/j/a/c;

    invoke-direct {v0}, Landroidx/j/a/c;-><init>()V

    .line 95
    sput-object v0, Landroidx/j/a/c;->b:Landroidx/j/a/c;

    invoke-static {v0}, Landroidx/j/a/c;->b(Landroidx/j/a/c;)V

    .line 96
    invoke-static {v0}, Landroidx/j/a/c;->d(Landroidx/j/a/c;)V

    .line 98
    new-instance v0, Landroidx/j/a/c;

    invoke-direct {v0}, Landroidx/j/a/c;-><init>()V

    .line 99
    sput-object v0, Landroidx/j/a/c;->c:Landroidx/j/a/c;

    invoke-static {v0}, Landroidx/j/a/c;->a(Landroidx/j/a/c;)V

    .line 100
    invoke-static {v0}, Landroidx/j/a/c;->d(Landroidx/j/a/c;)V

    .line 102
    new-instance v0, Landroidx/j/a/c;

    invoke-direct {v0}, Landroidx/j/a/c;-><init>()V

    .line 103
    sput-object v0, Landroidx/j/a/c;->d:Landroidx/j/a/c;

    invoke-static {v0}, Landroidx/j/a/c;->c(Landroidx/j/a/c;)V

    .line 104
    invoke-static {v0}, Landroidx/j/a/c;->e(Landroidx/j/a/c;)V

    .line 106
    new-instance v0, Landroidx/j/a/c;

    invoke-direct {v0}, Landroidx/j/a/c;-><init>()V

    .line 107
    sput-object v0, Landroidx/j/a/c;->e:Landroidx/j/a/c;

    invoke-static {v0}, Landroidx/j/a/c;->b(Landroidx/j/a/c;)V

    .line 108
    invoke-static {v0}, Landroidx/j/a/c;->e(Landroidx/j/a/c;)V

    .line 110
    new-instance v0, Landroidx/j/a/c;

    invoke-direct {v0}, Landroidx/j/a/c;-><init>()V

    .line 111
    sput-object v0, Landroidx/j/a/c;->f:Landroidx/j/a/c;

    invoke-static {v0}, Landroidx/j/a/c;->a(Landroidx/j/a/c;)V

    .line 112
    invoke-static {v0}, Landroidx/j/a/c;->e(Landroidx/j/a/c;)V

    return-void
.end method

.method constructor <init>()V
    .locals 4

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [F

    .line 115
    iput-object v1, p0, Landroidx/j/a/c;->g:[F

    new-array v2, v0, [F

    .line 116
    iput-object v2, p0, Landroidx/j/a/c;->h:[F

    new-array v0, v0, [F

    .line 117
    iput-object v0, p0, Landroidx/j/a/c;->i:[F

    const/4 v3, 0x1

    .line 118
    iput-boolean v3, p0, Landroidx/j/a/c;->j:Z

    .line 121
    invoke-static {v1}, Landroidx/j/a/c;->a([F)V

    .line 122
    invoke-static {v2}, Landroidx/j/a/c;->a([F)V

    const/4 v1, 0x0

    const v2, 0x3e75c28f    # 0.24f

    aput v2, v0, v1

    const v1, 0x3f051eb8    # 0.52f

    aput v1, v0, v3

    const/4 v1, 0x2

    aput v2, v0, v1

    return-void
.end method

.method constructor <init>(Landroidx/j/a/c;)V
    .locals 6

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [F

    .line 115
    iput-object v1, p0, Landroidx/j/a/c;->g:[F

    new-array v2, v0, [F

    .line 116
    iput-object v2, p0, Landroidx/j/a/c;->h:[F

    new-array v0, v0, [F

    .line 117
    iput-object v0, p0, Landroidx/j/a/c;->i:[F

    const/4 v3, 0x1

    .line 118
    iput-boolean v3, p0, Landroidx/j/a/c;->j:Z

    .line 127
    iget-object v3, p1, Landroidx/j/a/c;->g:[F

    array-length v4, v1

    const/4 v5, 0x0

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    iget-object v1, p1, Landroidx/j/a/c;->h:[F

    array-length v3, v2

    invoke-static {v1, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 131
    iget-object p1, p1, Landroidx/j/a/c;->i:[F

    array-length v1, v0

    invoke-static {p1, v5, v0, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private static a(Landroidx/j/a/c;)V
    .locals 2

    .line 258
    iget-object p0, p0, Landroidx/j/a/c;->h:[F

    const/4 v0, 0x1

    const v1, 0x3e851eb8    # 0.26f

    aput v1, p0, v0

    const/4 v0, 0x2

    const v1, 0x3ee66666    # 0.45f

    .line 259
    aput v1, p0, v0

    return-void
.end method

.method private static a([F)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 229
    aput v1, p0, v0

    const/4 v0, 0x1

    const/high16 v1, 0x3f000000    # 0.5f

    .line 230
    aput v1, p0, v0

    const/4 v0, 0x2

    const/high16 v1, 0x3f800000    # 1.0f

    .line 231
    aput v1, p0, v0

    return-void
.end method

.method private static b(Landroidx/j/a/c;)V
    .locals 2

    .line 263
    iget-object p0, p0, Landroidx/j/a/c;->h:[F

    const/4 v0, 0x0

    const v1, 0x3e99999a    # 0.3f

    aput v1, p0, v0

    const/4 v0, 0x1

    const/high16 v1, 0x3f000000    # 0.5f

    .line 264
    aput v1, p0, v0

    const/4 v0, 0x2

    const v1, 0x3f333333    # 0.7f

    .line 265
    aput v1, p0, v0

    return-void
.end method

.method private static c(Landroidx/j/a/c;)V
    .locals 2

    .line 269
    iget-object p0, p0, Landroidx/j/a/c;->h:[F

    const/4 v0, 0x0

    const v1, 0x3f0ccccd    # 0.55f

    aput v1, p0, v0

    const/4 v0, 0x1

    const v1, 0x3f3d70a4    # 0.74f

    .line 270
    aput v1, p0, v0

    return-void
.end method

.method private static d(Landroidx/j/a/c;)V
    .locals 2

    .line 274
    iget-object p0, p0, Landroidx/j/a/c;->g:[F

    const/4 v0, 0x0

    const v1, 0x3eb33333    # 0.35f

    aput v1, p0, v0

    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 275
    aput v1, p0, v0

    return-void
.end method

.method private static e(Landroidx/j/a/c;)V
    .locals 2

    .line 279
    iget-object p0, p0, Landroidx/j/a/c;->g:[F

    const/4 v0, 0x1

    const v1, 0x3e99999a    # 0.3f

    aput v1, p0, v0

    const/4 v0, 0x2

    const v1, 0x3ecccccd    # 0.4f

    .line 280
    aput v1, p0, v0

    return-void
.end method
