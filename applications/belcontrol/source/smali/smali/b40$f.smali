.class public abstract Lb40$f;
.super Lb40$e;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb40;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "f"
.end annotation


# instance fields
.field public a:[Lu8$b;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb40$e;-><init>(Lb40$a;)V

    iput-object v0, p0, Lb40$f;->a:[Lu8$b;

    const/4 v0, 0x0

    iput v0, p0, Lb40$f;->c:I

    return-void
.end method

.method public constructor <init>(Lb40$f;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb40$e;-><init>(Lb40$a;)V

    iput-object v0, p0, Lb40$f;->a:[Lu8$b;

    const/4 v0, 0x0

    iput v0, p0, Lb40$f;->c:I

    iget-object v0, p1, Lb40$f;->b:Ljava/lang/String;

    iput-object v0, p0, Lb40$f;->b:Ljava/lang/String;

    iget v0, p1, Lb40$f;->d:I

    iput v0, p0, Lb40$f;->d:I

    iget-object p1, p1, Lb40$f;->a:[Lu8$b;

    invoke-static {p1}, Lu8;->f([Lu8$b;)[Lu8$b;

    move-result-object p1

    iput-object p1, p0, Lb40$f;->a:[Lu8$b;

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d(Landroid/graphics/Path;)V
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lb40$f;->a:[Lu8$b;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lu8$b;->e([Lu8$b;Landroid/graphics/Path;)V

    :cond_0
    return-void
.end method

.method public getPathData()[Lu8$b;
    .locals 1

    iget-object v0, p0, Lb40$f;->a:[Lu8$b;

    return-object v0
.end method

.method public getPathName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb40$f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setPathData([Lu8$b;)V
    .locals 1

    iget-object v0, p0, Lb40$f;->a:[Lu8$b;

    invoke-static {v0, p1}, Lu8;->b([Lu8$b;[Lu8$b;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lu8;->f([Lu8$b;)[Lu8$b;

    move-result-object p1

    iput-object p1, p0, Lb40$f;->a:[Lu8$b;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb40$f;->a:[Lu8$b;

    invoke-static {v0, p1}, Lu8;->j([Lu8$b;[Lu8$b;)V

    :goto_0
    return-void
.end method
