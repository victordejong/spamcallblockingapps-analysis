.class public abstract Lmi1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmi1$a;
    }
.end annotation


# instance fields
.field public a:F

.field public b:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmi1;->b:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public static g(F)Lmi1;
    .locals 1

    new-instance v0, Lmi1$a;

    invoke-direct {v0, p0}, Lmi1$a;-><init>(F)V

    return-object v0
.end method

.method public static h(FF)Lmi1;
    .locals 1

    new-instance v0, Lmi1$a;

    invoke-direct {v0, p0, p1}, Lmi1$a;-><init>(FF)V

    return-object v0
.end method


# virtual methods
.method public abstract b()Lmi1;
.end method

.method public c()F
    .locals 1

    iget v0, p0, Lmi1;->a:F

    return v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lmi1;->b()Lmi1;

    move-result-object v0

    return-object v0
.end method

.method public d()Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lmi1;->b:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public abstract f()Ljava/lang/Object;
.end method

.method public i(Landroid/view/animation/Interpolator;)V
    .locals 0

    iput-object p1, p0, Lmi1;->b:Landroid/view/animation/Interpolator;

    return-void
.end method
