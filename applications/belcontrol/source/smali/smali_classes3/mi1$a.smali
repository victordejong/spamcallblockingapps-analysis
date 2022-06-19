.class public Lmi1$a;
.super Lmi1;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmi1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public c:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Lmi1;-><init>()V

    iput p1, p0, Lmi1;->a:F

    sget-object p1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Lmi1;-><init>()V

    iput p1, p0, Lmi1;->a:F

    iput p2, p0, Lmi1$a;->c:F

    sget-object p1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public bridge synthetic b()Lmi1;
    .locals 1

    invoke-virtual {p0}, Lmi1$a;->j()Lmi1$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lmi1$a;->j()Lmi1$a;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lmi1$a;->c:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public j()Lmi1$a;
    .locals 3

    new-instance v0, Lmi1$a;

    invoke-virtual {p0}, Lmi1;->c()F

    move-result v1

    iget v2, p0, Lmi1$a;->c:F

    invoke-direct {v0, v1, v2}, Lmi1$a;-><init>(FF)V

    invoke-virtual {p0}, Lmi1;->d()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmi1;->i(Landroid/view/animation/Interpolator;)V

    return-object v0
.end method

.method public k()F
    .locals 1

    iget v0, p0, Lmi1$a;->c:F

    return v0
.end method
