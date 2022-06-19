.class public Lp8/c$a;
.super Lp8/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp8/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public d:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lp8/c;-><init>()V

    .line 6
    iput p1, p0, Lp8/c;->a:F

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lp8/c;-><init>()V

    .line 2
    iput p1, p0, Lp8/c;->a:F

    .line 3
    iput p2, p0, Lp8/c$a;->d:F

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lp8/c;->c:Z

    return-void
.end method


# virtual methods
.method public a()Lp8/c;
    .locals 3

    .line 1
    new-instance v0, Lp8/c$a;

    .line 2
    iget v1, p0, Lp8/c;->a:F

    .line 3
    iget v2, p0, Lp8/c$a;->d:F

    invoke-direct {v0, v1, v2}, Lp8/c$a;-><init>(FF)V

    .line 4
    iget-object v1, p0, Lp8/c;->b:Landroid/view/animation/Interpolator;

    .line 5
    iput-object v1, v0, Lp8/c;->b:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lp8/c$a;->d:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/Object;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_0

    .line 2
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lp8/c$a;->d:F

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lp8/c;->c:Z

    :cond_0
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    new-instance v0, Lp8/c$a;

    .line 2
    iget v1, p0, Lp8/c;->a:F

    .line 3
    iget v2, p0, Lp8/c$a;->d:F

    invoke-direct {v0, v1, v2}, Lp8/c$a;-><init>(FF)V

    .line 4
    iget-object v1, p0, Lp8/c;->b:Landroid/view/animation/Interpolator;

    .line 5
    iput-object v1, v0, Lp8/c;->b:Landroid/view/animation/Interpolator;

    return-object v0
.end method
