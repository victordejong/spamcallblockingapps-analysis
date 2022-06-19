.class public Lt5;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt5$a;
    }
.end annotation


# static fields
.field public static q:I = 0x1


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:I

.field public f:F

.field public g:Z

.field public h:[F

.field public i:[F

.field public j:Lt5$a;

.field public k:[Lm5;

.field public l:I

.field public m:I

.field public n:Z

.field public o:I

.field public p:F


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lt5$a;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, -0x1

    iput p2, p0, Lt5;->c:I

    iput p2, p0, Lt5;->d:I

    const/4 v0, 0x0

    iput v0, p0, Lt5;->e:I

    iput-boolean v0, p0, Lt5;->g:Z

    const/16 v1, 0x9

    new-array v2, v1, [F

    iput-object v2, p0, Lt5;->h:[F

    new-array v1, v1, [F

    iput-object v1, p0, Lt5;->i:[F

    const/16 v1, 0x10

    new-array v1, v1, [Lm5;

    iput-object v1, p0, Lt5;->k:[Lm5;

    iput v0, p0, Lt5;->l:I

    iput v0, p0, Lt5;->m:I

    iput-boolean v0, p0, Lt5;->n:Z

    iput p2, p0, Lt5;->o:I

    const/4 p2, 0x0

    iput p2, p0, Lt5;->p:F

    iput-object p1, p0, Lt5;->j:Lt5$a;

    return-void
.end method

.method public static b()V
    .locals 1

    sget v0, Lt5;->q:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lt5;->q:I

    return-void
.end method


# virtual methods
.method public final a(Lm5;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lt5;->l:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lt5;->k:[Lm5;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lt5;->k:[Lm5;

    array-length v2, v0

    if-lt v1, v2, :cond_2

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lm5;

    iput-object v0, p0, Lt5;->k:[Lm5;

    :cond_2
    iget-object v0, p0, Lt5;->k:[Lm5;

    iget v1, p0, Lt5;->l:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lt5;->l:I

    return-void
.end method

.method public final c(Lm5;)V
    .locals 4

    iget v0, p0, Lt5;->l:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lt5;->k:[Lm5;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_1

    :goto_1
    add-int/lit8 p1, v0, -0x1

    if-ge v1, p1, :cond_0

    iget-object p1, p0, Lt5;->k:[Lm5;

    add-int/lit8 v2, v1, 0x1

    aget-object v3, p1, v2

    aput-object v3, p1, v1

    move v1, v2

    goto :goto_1

    :cond_0
    iget p1, p0, Lt5;->l:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lt5;->l:I

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public d()V
    .locals 6

    const/4 v0, 0x0

    iput-object v0, p0, Lt5;->b:Ljava/lang/String;

    sget-object v1, Lt5$a;->f:Lt5$a;

    iput-object v1, p0, Lt5;->j:Lt5$a;

    const/4 v1, 0x0

    iput v1, p0, Lt5;->e:I

    const/4 v2, -0x1

    iput v2, p0, Lt5;->c:I

    iput v2, p0, Lt5;->d:I

    const/4 v3, 0x0

    iput v3, p0, Lt5;->f:F

    iput-boolean v1, p0, Lt5;->g:Z

    iput-boolean v1, p0, Lt5;->n:Z

    iput v2, p0, Lt5;->o:I

    iput v3, p0, Lt5;->p:F

    iget v2, p0, Lt5;->l:I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    iget-object v5, p0, Lt5;->k:[Lm5;

    aput-object v0, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Lt5;->l:I

    iput v1, p0, Lt5;->m:I

    iput-boolean v1, p0, Lt5;->a:Z

    iget-object v0, p0, Lt5;->i:[F

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([FF)V

    return-void
.end method

.method public e(Lo5;F)V
    .locals 3

    iput p2, p0, Lt5;->f:F

    const/4 p2, 0x1

    iput-boolean p2, p0, Lt5;->g:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Lt5;->n:Z

    const/4 v0, -0x1

    iput v0, p0, Lt5;->o:I

    const/4 v1, 0x0

    iput v1, p0, Lt5;->p:F

    iget v1, p0, Lt5;->l:I

    iput v0, p0, Lt5;->d:I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lt5;->k:[Lm5;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1, p0, p2}, Lm5;->A(Lo5;Lt5;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput p2, p0, Lt5;->l:I

    return-void
.end method

.method public f(Lt5$a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lt5;->j:Lt5$a;

    return-void
.end method

.method public final g(Lo5;Lm5;)V
    .locals 4

    iget v0, p0, Lt5;->l:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lt5;->k:[Lm5;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, p2, v1}, Lm5;->B(Lo5;Lm5;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Lt5;->l:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lt5;->b:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lt5;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lt5;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
