.class public final Lm6/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm6/c$a;
    }
.end annotation


# instance fields
.field public final a:Le6/a;

.field public final b:F

.field public c:Lm6/c$a;

.field public d:Lm6/c$a;

.field public e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ln6/c;J)V
    .locals 11

    .line 1
    new-instance v8, Lb0/a;

    invoke-direct {v8}, Lb0/a;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    .line 3
    invoke-static {}, Le6/a;->e()Le6/a;

    move-result-object v9

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lm6/c;->c:Lm6/c$a;

    .line 6
    iput-object v1, p0, Lm6/c;->d:Lm6/c$a;

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Lm6/c;->e:Z

    const/4 v2, 0x0

    cmpg-float v2, v2, v0

    if-gtz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    .line 8
    iput v0, p0, Lm6/c;->b:F

    .line 9
    iput-object v9, p0, Lm6/c;->a:Le6/a;

    .line 10
    new-instance v10, Lm6/c$a;

    iget-boolean v7, p0, Lm6/c;->e:Z

    const-string v6, "Trace"

    move-object v0, v10

    move-object v1, p2

    move-wide v2, p3

    move-object v4, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v7}, Lm6/c$a;-><init>(Ln6/c;JLb0/a;Le6/a;Ljava/lang/String;Z)V

    iput-object v10, p0, Lm6/c;->c:Lm6/c$a;

    .line 11
    new-instance v10, Lm6/c$a;

    iget-boolean v7, p0, Lm6/c;->e:Z

    const-string v6, "Network"

    move-object v0, v10

    invoke-direct/range {v0 .. v7}, Lm6/c$a;-><init>(Ln6/c;JLb0/a;Le6/a;Ljava/lang/String;Z)V

    iput-object v10, p0, Lm6/c;->d:Lm6/c$a;

    .line 12
    invoke-static {p1}, Ln6/f;->a(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lm6/c;->e:Z

    return-void

    .line 13
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Sampling bucket ID should be in range [0.0f, 1.0f)."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo6/k;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo6/k;

    invoke-virtual {v0}, Lo6/k;->C()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo6/k;

    invoke-virtual {p1, v1}, Lo6/k;->B(I)Lo6/l;

    move-result-object p1

    sget-object v0, Lo6/l;->c:Lo6/l;

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
