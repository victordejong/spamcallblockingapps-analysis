.class abstract Ld/s/a/a/i$f;
.super Ld/s/a/a/i$e;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/s/a/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "f"
.end annotation


# instance fields
.field protected a:[Ld/h/e/c$b;

.field b:Ljava/lang/String;

.field c:I

.field d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ld/s/a/a/i$e;-><init>(Ld/s/a/a/i$a;)V

    iput-object v0, p0, Ld/s/a/a/i$f;->a:[Ld/h/e/c$b;

    const/4 v0, 0x0

    iput v0, p0, Ld/s/a/a/i$f;->c:I

    return-void
.end method

.method public constructor <init>(Ld/s/a/a/i$f;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ld/s/a/a/i$e;-><init>(Ld/s/a/a/i$a;)V

    iput-object v0, p0, Ld/s/a/a/i$f;->a:[Ld/h/e/c$b;

    const/4 v0, 0x0

    iput v0, p0, Ld/s/a/a/i$f;->c:I

    iget-object v0, p1, Ld/s/a/a/i$f;->b:Ljava/lang/String;

    iput-object v0, p0, Ld/s/a/a/i$f;->b:Ljava/lang/String;

    iget v0, p1, Ld/s/a/a/i$f;->d:I

    iput v0, p0, Ld/s/a/a/i$f;->d:I

    iget-object p1, p1, Ld/s/a/a/i$f;->a:[Ld/h/e/c$b;

    invoke-static {p1}, Ld/h/e/c;->f([Ld/h/e/c$b;)[Ld/h/e/c$b;

    move-result-object p1

    iput-object p1, p0, Ld/s/a/a/i$f;->a:[Ld/h/e/c$b;

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

    iget-object v0, p0, Ld/s/a/a/i$f;->a:[Ld/h/e/c$b;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Ld/h/e/c$b;->e([Ld/h/e/c$b;Landroid/graphics/Path;)V

    :cond_0
    return-void
.end method

.method public getPathData()[Ld/h/e/c$b;
    .locals 1

    iget-object v0, p0, Ld/s/a/a/i$f;->a:[Ld/h/e/c$b;

    return-object v0
.end method

.method public getPathName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ld/s/a/a/i$f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setPathData([Ld/h/e/c$b;)V
    .locals 1

    iget-object v0, p0, Ld/s/a/a/i$f;->a:[Ld/h/e/c$b;

    invoke-static {v0, p1}, Ld/h/e/c;->b([Ld/h/e/c$b;[Ld/h/e/c$b;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ld/h/e/c;->f([Ld/h/e/c$b;)[Ld/h/e/c$b;

    move-result-object p1

    iput-object p1, p0, Ld/s/a/a/i$f;->a:[Ld/h/e/c$b;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ld/s/a/a/i$f;->a:[Ld/h/e/c$b;

    invoke-static {v0, p1}, Ld/h/e/c;->j([Ld/h/e/c$b;[Ld/h/e/c$b;)V

    :goto_0
    return-void
.end method
