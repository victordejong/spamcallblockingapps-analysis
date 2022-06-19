.class public final Landroidx/e/a/c;
.super Landroidx/e/a/b;
.source "FlingAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/e/a/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/e/a/b<",
        "Landroidx/e/a/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final w:Landroidx/e/a/c$a;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroidx/e/a/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Landroidx/e/a/d<",
            "TK;>;)V"
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1, p2}, Landroidx/e/a/b;-><init>(Ljava/lang/Object;Landroidx/e/a/d;)V

    .line 43
    new-instance p1, Landroidx/e/a/c$a;

    invoke-direct {p1}, Landroidx/e/a/c$a;-><init>()V

    iput-object p1, p0, Landroidx/e/a/c;->w:Landroidx/e/a/c$a;

    .line 71
    iget-object p1, p0, Landroidx/e/a/c;->w:Landroidx/e/a/c$a;

    invoke-virtual {p0}, Landroidx/e/a/c;->b()F

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/e/a/c$a;->b(F)V

    return-void
.end method


# virtual methods
.method public synthetic a(F)Landroidx/e/a/b;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Landroidx/e/a/c;->h(F)Landroidx/e/a/c;

    move-result-object p1

    return-object p1
.end method

.method a(FF)Z
    .locals 1

    .line 184
    iget v0, p0, Landroidx/e/a/c;->u:F

    cmpl-float v0, p1, v0

    if-gez v0, :cond_1

    iget v0, p0, Landroidx/e/a/c;->v:F

    cmpg-float v0, p1, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Landroidx/e/a/c;->w:Landroidx/e/a/c$a;

    .line 186
    invoke-virtual {v0, p1, p2}, Landroidx/e/a/c$a;->a(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public synthetic b(F)Landroidx/e/a/b;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Landroidx/e/a/c;->g(F)Landroidx/e/a/c;

    move-result-object p1

    return-object p1
.end method

.method b(J)Z
    .locals 3

    .line 157
    iget-object v0, p0, Landroidx/e/a/c;->w:Landroidx/e/a/c$a;

    iget v1, p0, Landroidx/e/a/c;->p:F

    iget v2, p0, Landroidx/e/a/c;->o:F

    invoke-virtual {v0, v1, v2, p1, p2}, Landroidx/e/a/c$a;->a(FFJ)Landroidx/e/a/b$a;

    move-result-object p1

    .line 158
    iget p2, p1, Landroidx/e/a/b$a;->a:F

    iput p2, p0, Landroidx/e/a/c;->p:F

    .line 159
    iget p1, p1, Landroidx/e/a/b$a;->b:F

    iput p1, p0, Landroidx/e/a/c;->o:F

    .line 162
    iget p1, p0, Landroidx/e/a/c;->p:F

    iget p2, p0, Landroidx/e/a/c;->v:F

    cmpg-float p1, p1, p2

    const/4 p2, 0x1

    if-gez p1, :cond_0

    .line 163
    iget p1, p0, Landroidx/e/a/c;->v:F

    iput p1, p0, Landroidx/e/a/c;->p:F

    return p2

    .line 166
    :cond_0
    iget p1, p0, Landroidx/e/a/c;->p:F

    iget v0, p0, Landroidx/e/a/c;->u:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    .line 167
    iget p1, p0, Landroidx/e/a/c;->u:F

    iput p1, p0, Landroidx/e/a/c;->p:F

    return p2

    .line 171
    :cond_1
    iget p1, p0, Landroidx/e/a/c;->p:F

    iget v0, p0, Landroidx/e/a/c;->o:F

    invoke-virtual {p0, p1, v0}, Landroidx/e/a/c;->a(FF)Z

    move-result p1

    if-eqz p1, :cond_2

    return p2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic c(F)Landroidx/e/a/b;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Landroidx/e/a/c;->f(F)Landroidx/e/a/c;

    move-result-object p1

    return-object p1
.end method

.method public e(F)Landroidx/e/a/c;
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    .line 87
    iget-object v0, p0, Landroidx/e/a/c;->w:Landroidx/e/a/c$a;

    invoke-virtual {v0, p1}, Landroidx/e/a/c$a;->a(F)V

    return-object p0

    .line 85
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Friction must be positive"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f(F)Landroidx/e/a/c;
    .locals 0

    .line 110
    invoke-super {p0, p1}, Landroidx/e/a/b;->c(F)Landroidx/e/a/b;

    return-object p0
.end method

.method public g(F)Landroidx/e/a/c;
    .locals 0

    .line 123
    invoke-super {p0, p1}, Landroidx/e/a/b;->b(F)Landroidx/e/a/b;

    return-object p0
.end method

.method public h(F)Landroidx/e/a/c;
    .locals 0

    .line 150
    invoke-super {p0, p1}, Landroidx/e/a/b;->a(F)Landroidx/e/a/b;

    return-object p0
.end method
