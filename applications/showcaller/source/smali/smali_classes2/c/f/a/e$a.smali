.class Lc/f/a/e$a;
.super Lc/f/a/e;
.source "Keyframe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/f/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field h:F


# direct methods
.method constructor <init>(F)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lc/f/a/e;-><init>()V

    .line 7
    iput p1, p0, Lc/f/a/e;->d:F

    .line 8
    sget-object p1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object p1, p0, Lc/f/a/e;->e:Ljava/lang/Class;

    return-void
.end method

.method constructor <init>(FF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc/f/a/e;-><init>()V

    .line 2
    iput p1, p0, Lc/f/a/e;->d:F

    .line 3
    iput p2, p0, Lc/f/a/e$a;->h:F

    .line 4
    sget-object p1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object p1, p0, Lc/f/a/e;->e:Ljava/lang/Class;

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lc/f/a/e;->g:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lc/f/a/e;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/f/a/e$a;->j()Lc/f/a/e$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/f/a/e$a;->j()Lc/f/a/e$a;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lc/f/a/e$a;->h:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public j()Lc/f/a/e$a;
    .locals 3

    .line 1
    new-instance v0, Lc/f/a/e$a;

    invoke-virtual {p0}, Lc/f/a/e;->b()F

    move-result v1

    iget v2, p0, Lc/f/a/e$a;->h:F

    invoke-direct {v0, v1, v2}, Lc/f/a/e$a;-><init>(FF)V

    .line 2
    invoke-virtual {p0}, Lc/f/a/e;->c()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/f/a/e;->i(Landroid/view/animation/Interpolator;)V

    return-object v0
.end method

.method public l()F
    .locals 1

    .line 1
    iget v0, p0, Lc/f/a/e$a;->h:F

    return v0
.end method
