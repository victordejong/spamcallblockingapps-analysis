.class public abstract Lc/f/a/e;
.super Ljava/lang/Object;
.source "Keyframe.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/f/a/e$a;
    }
.end annotation


# instance fields
.field d:F

.field e:Ljava/lang/Class;

.field private f:Landroid/view/animation/Interpolator;

.field g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lc/f/a/e;->f:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lc/f/a/e;->g:Z

    return-void
.end method

.method public static g(F)Lc/f/a/e;
    .locals 1

    .line 1
    new-instance v0, Lc/f/a/e$a;

    invoke-direct {v0, p0}, Lc/f/a/e$a;-><init>(F)V

    return-object v0
.end method

.method public static h(FF)Lc/f/a/e;
    .locals 1

    .line 1
    new-instance v0, Lc/f/a/e$a;

    invoke-direct {v0, p0, p1}, Lc/f/a/e$a;-><init>(FF)V

    return-object v0
.end method


# virtual methods
.method public abstract a()Lc/f/a/e;
.end method

.method public b()F
    .locals 1

    .line 1
    iget v0, p0, Lc/f/a/e;->d:F

    return v0
.end method

.method public c()Landroid/view/animation/Interpolator;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/f/a/e;->f:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/f/a/e;->a()Lc/f/a/e;

    move-result-object v0

    return-object v0
.end method

.method public abstract d()Ljava/lang/Object;
.end method

.method public i(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/f/a/e;->f:Landroid/view/animation/Interpolator;

    return-void
.end method
