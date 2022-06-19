.class public Landroidx/constraintlayout/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/constraintlayout/a/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/a/b$a;
    }
.end annotation


# instance fields
.field a:Landroidx/constraintlayout/a/h;

.field public b:F

.field c:Z

.field d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/a/h;",
            ">;"
        }
    .end annotation
.end field

.field public e:Landroidx/constraintlayout/a/b$a;

.field f:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Landroidx/constraintlayout/a/b;->a:Landroidx/constraintlayout/a/h;

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Landroidx/constraintlayout/a/b;->b:F

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Landroidx/constraintlayout/a/b;->c:Z

    .line 31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/a/b;->d:Ljava/util/ArrayList;

    .line 53
    iput-boolean v0, p0, Landroidx/constraintlayout/a/b;->f:Z

    return-void
.end method

.method public constructor <init>(Landroidx/constraintlayout/a/c;)V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Landroidx/constraintlayout/a/b;->a:Landroidx/constraintlayout/a/h;

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Landroidx/constraintlayout/a/b;->b:F

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Landroidx/constraintlayout/a/b;->c:Z

    .line 31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/a/b;->d:Ljava/util/ArrayList;

    .line 53
    iput-boolean v0, p0, Landroidx/constraintlayout/a/b;->f:Z

    .line 58
    new-instance v0, Landroidx/constraintlayout/a/a;

    invoke-direct {v0, p0, p1}, Landroidx/constraintlayout/a/a;-><init>(Landroidx/constraintlayout/a/b;Landroidx/constraintlayout/a/c;)V

    iput-object v0, p0, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    return-void
.end method

.method static b(Landroidx/constraintlayout/a/h;)Z
    .locals 1

    .line 532
    iget p0, p0, Landroidx/constraintlayout/a/h;->l:I

    const/4 v0, 0x1

    if-gt p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Landroidx/constraintlayout/a/d;I)Landroidx/constraintlayout/a/b;
    .locals 3

    .line 349
    iget-object v0, p0, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    const-string v1, "ep"

    invoke-virtual {p1, p2, v1}, Landroidx/constraintlayout/a/d;->a(ILjava/lang/String;)Landroidx/constraintlayout/a/h;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v0, v1, v2}, Landroidx/constraintlayout/a/b$a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 350
    iget-object v0, p0, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    const-string v1, "em"

    invoke-virtual {p1, p2, v1}, Landroidx/constraintlayout/a/d;->a(ILjava/lang/String;)Landroidx/constraintlayout/a/h;

    move-result-object p1

    const/high16 p2, -0x40800000    # -1.0f

    invoke-interface {v0, p1, p2}, Landroidx/constraintlayout/a/b$a;->a(Landroidx/constraintlayout/a/h;F)V

    return-object p0
.end method

.method public final a(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;I)Landroidx/constraintlayout/a/b;
    .locals 2

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    if-gez p4, :cond_0

    mul-int/lit8 p4, p4, -0x1

    const/4 v0, 0x1

    :cond_0
    int-to-float p4, p4

    .line 192
    iput p4, p0, Landroidx/constraintlayout/a/b;->b:F

    :cond_1
    const/high16 p4, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_2

    .line 195
    iget-object v0, p0, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {v0, p1, p4}, Landroidx/constraintlayout/a/b$a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 196
    iget-object p1, p0, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {p1, p2, v1}, Landroidx/constraintlayout/a/b$a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 197
    iget-object p1, p0, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {p1, p3, v1}, Landroidx/constraintlayout/a/b$a;->a(Landroidx/constraintlayout/a/h;F)V

    goto :goto_0

    .line 199
    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {v0, p1, v1}, Landroidx/constraintlayout/a/b$a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 200
    iget-object p1, p0, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {p1, p2, p4}, Landroidx/constraintlayout/a/b$a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 201
    iget-object p1, p0, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {p1, p3, p4}, Landroidx/constraintlayout/a/b$a;->a(Landroidx/constraintlayout/a/h;F)V

    :goto_0
    return-object p0
.end method

.method public final a(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;F)Landroidx/constraintlayout/a/b;
    .locals 2

    .line 375
    iget-object v0, p0, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-interface {v0, p1, v1}, Landroidx/constraintlayout/a/b$a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 376
    iget-object p1, p0, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p1, p2, v0}, Landroidx/constraintlayout/a/b$a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 377
    iget-object p1, p0, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {p1, p3, p5}, Landroidx/constraintlayout/a/b$a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 378
    iget-object p1, p0, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    neg-float p2, p5

    invoke-interface {p1, p4, p2}, Landroidx/constraintlayout/a/b$a;->a(Landroidx/constraintlayout/a/h;F)V

    return-object p0
.end method

.method public a([Z)Landroidx/constraintlayout/a/h;
    .locals 1

    const/4 v0, 0x0

    .line 660
    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/a/b;->a([ZLandroidx/constraintlayout/a/h;)Landroidx/constraintlayout/a/h;

    move-result-object p1

    return-object p1
.end method

.method final a([ZLandroidx/constraintlayout/a/h;)Landroidx/constraintlayout/a/h;
    .locals 9

    .line 616
    iget-object v0, p0, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {v0}, Landroidx/constraintlayout/a/b$a;->c()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    .line 618
    iget-object v5, p0, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {v5, v3}, Landroidx/constraintlayout/a/b$a;->b(I)F

    move-result v5

    cmpg-float v6, v5, v1

    if-gez v6, :cond_2

    .line 622
    iget-object v6, p0, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {v6, v3}, Landroidx/constraintlayout/a/b$a;->a(I)Landroidx/constraintlayout/a/h;

    move-result-object v6

    if-eqz p1, :cond_0

    .line 623
    iget v7, v6, Landroidx/constraintlayout/a/h;->b:I

    aget-boolean v7, p1, v7

    if-nez v7, :cond_2

    :cond_0
    if-eq v6, p2, :cond_2

    .line 625
    iget-object v7, v6, Landroidx/constraintlayout/a/h;->i:Landroidx/constraintlayout/a/h$a;

    sget-object v8, Landroidx/constraintlayout/a/h$a;->SLACK:Landroidx/constraintlayout/a/h$a;

    if-eq v7, v8, :cond_1

    iget-object v7, v6, Landroidx/constraintlayout/a/h;->i:Landroidx/constraintlayout/a/h$a;

    sget-object v8, Landroidx/constraintlayout/a/h$a;->ERROR:Landroidx/constraintlayout/a/h$a;

    if-ne v7, v8, :cond_2

    :cond_1
    cmpg-float v7, v5, v4

    if-gez v7, :cond_2

    move v4, v5

    move-object v2, v6

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method public final a()V
    .locals 1

    const/4 v0, 0x0

    .line 128
    iput-object v0, p0, Landroidx/constraintlayout/a/b;->a:Landroidx/constraintlayout/a/h;

    .line 129
    iget-object v0, p0, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {v0}, Landroidx/constraintlayout/a/b$a;->a()V

    const/4 v0, 0x0

    .line 130
    iput v0, p0, Landroidx/constraintlayout/a/b;->b:F

    const/4 v0, 0x0

    .line 131
    iput-boolean v0, p0, Landroidx/constraintlayout/a/b;->f:Z

    return-void
.end method

.method public final a(Landroidx/constraintlayout/a/d$a;)V
    .locals 5

    .line 676
    instance-of v0, p1, Landroidx/constraintlayout/a/b;

    if-eqz v0, :cond_0

    .line 677
    check-cast p1, Landroidx/constraintlayout/a/b;

    const/4 v0, 0x0

    .line 678
    iput-object v0, p0, Landroidx/constraintlayout/a/b;->a:Landroidx/constraintlayout/a/h;

    .line 679
    iget-object v0, p0, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {v0}, Landroidx/constraintlayout/a/b$a;->a()V

    const/4 v0, 0x0

    .line 680
    :goto_0
    iget-object v1, p1, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {v1}, Landroidx/constraintlayout/a/b$a;->c()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 681
    iget-object v1, p1, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {v1, v0}, Landroidx/constraintlayout/a/b$a;->a(I)Landroidx/constraintlayout/a/h;

    move-result-object v1

    .line 682
    iget-object v2, p1, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {v2, v0}, Landroidx/constraintlayout/a/b$a;->b(I)F

    move-result v2

    .line 683
    iget-object v3, p0, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    const/4 v4, 0x1

    invoke-interface {v3, v1, v2, v4}, Landroidx/constraintlayout/a/b$a;->a(Landroidx/constraintlayout/a/h;FZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Landroidx/constraintlayout/a/d;Landroidx/constraintlayout/a/b;Z)V
    .locals 3

    .line 561
    iget-object v0, p0, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {v0, p2, p3}, Landroidx/constraintlayout/a/b$a;->a(Landroidx/constraintlayout/a/b;Z)F

    move-result v0

    .line 563
    iget v1, p0, Landroidx/constraintlayout/a/b;->b:F

    iget v2, p2, Landroidx/constraintlayout/a/b;->b:F

    mul-float v2, v2, v0

    add-float/2addr v1, v2

    iput v1, p0, Landroidx/constraintlayout/a/b;->b:F

    if-eqz p3, :cond_0

    .line 565
    iget-object p2, p2, Landroidx/constraintlayout/a/b;->a:Landroidx/constraintlayout/a/h;

    invoke-virtual {p2, p0}, Landroidx/constraintlayout/a/h;->b(Landroidx/constraintlayout/a/b;)V

    .line 567
    :cond_0
    sget-boolean p2, Landroidx/constraintlayout/a/d;->c:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Landroidx/constraintlayout/a/b;->a:Landroidx/constraintlayout/a/h;

    if-eqz p2, :cond_1

    iget-object p2, p0, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    .line 568
    invoke-interface {p2}, Landroidx/constraintlayout/a/b$a;->c()I

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x1

    .line 569
    iput-boolean p2, p0, Landroidx/constraintlayout/a/b;->f:Z

    .line 570
    iput-boolean p2, p1, Landroidx/constraintlayout/a/d;->g:Z

    :cond_1
    return-void
.end method

.method public final a(Landroidx/constraintlayout/a/d;Landroidx/constraintlayout/a/h;Z)V
    .locals 3

    .line 575
    iget-boolean v0, p2, Landroidx/constraintlayout/a/h;->f:Z

    if-nez v0, :cond_0

    return-void

    .line 578
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {v0, p2}, Landroidx/constraintlayout/a/b$a;->b(Landroidx/constraintlayout/a/h;)F

    move-result v0

    .line 579
    iget v1, p0, Landroidx/constraintlayout/a/b;->b:F

    iget v2, p2, Landroidx/constraintlayout/a/h;->e:F

    mul-float v2, v2, v0

    add-float/2addr v1, v2

    iput v1, p0, Landroidx/constraintlayout/a/b;->b:F

    .line 580
    iget-object v0, p0, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {v0, p2, p3}, Landroidx/constraintlayout/a/b$a;->a(Landroidx/constraintlayout/a/h;Z)F

    if-eqz p3, :cond_1

    .line 582
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/a/h;->b(Landroidx/constraintlayout/a/b;)V

    .line 584
    :cond_1
    sget-boolean p3, Landroidx/constraintlayout/a/d;->c:Z

    if-eqz p3, :cond_2

    if-eqz p2, :cond_2

    iget-object p2, p0, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    .line 585
    invoke-interface {p2}, Landroidx/constraintlayout/a/b$a;->c()I

    move-result p2

    if-nez p2, :cond_2

    const/4 p2, 0x1

    .line 586
    iput-boolean p2, p0, Landroidx/constraintlayout/a/b;->f:Z

    .line 587
    iput-boolean p2, p1, Landroidx/constraintlayout/a/d;->g:Z

    :cond_2
    return-void
.end method

.method final a(Landroidx/constraintlayout/a/h;)Z
    .locals 1

    .line 135
    iget-object v0, p0, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {v0, p1}, Landroidx/constraintlayout/a/b$a;->a(Landroidx/constraintlayout/a/h;)Z

    move-result p1

    return p1
.end method

.method public final b(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;I)Landroidx/constraintlayout/a/b;
    .locals 2

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    if-gez p4, :cond_0

    mul-int/lit8 p4, p4, -0x1

    const/4 v0, 0x1

    :cond_0
    int-to-float p4, p4

    .line 221
    iput p4, p0, Landroidx/constraintlayout/a/b;->b:F

    :cond_1
    const/high16 p4, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_2

    .line 224
    iget-object v0, p0, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {v0, p1, p4}, Landroidx/constraintlayout/a/b$a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 225
    iget-object p1, p0, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {p1, p2, v1}, Landroidx/constraintlayout/a/b$a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 226
    iget-object p1, p0, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {p1, p3, p4}, Landroidx/constraintlayout/a/b$a;->a(Landroidx/constraintlayout/a/h;F)V

    goto :goto_0

    .line 228
    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {v0, p1, v1}, Landroidx/constraintlayout/a/b$a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 229
    iget-object p1, p0, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {p1, p2, p4}, Landroidx/constraintlayout/a/b$a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 230
    iget-object p1, p0, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {p1, p3, v1}, Landroidx/constraintlayout/a/b$a;->a(Landroidx/constraintlayout/a/h;F)V

    :goto_0
    return-object p0
.end method

.method public final b(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;F)Landroidx/constraintlayout/a/b;
    .locals 2

    .line 393
    iget-object v0, p0, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-interface {v0, p3, v1}, Landroidx/constraintlayout/a/b$a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 394
    iget-object p3, p0, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {p3, p4, v1}, Landroidx/constraintlayout/a/b$a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 395
    iget-object p3, p0, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    const/high16 p4, -0x41000000    # -0.5f

    invoke-interface {p3, p1, p4}, Landroidx/constraintlayout/a/b$a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 396
    iget-object p1, p0, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {p1, p2, p4}, Landroidx/constraintlayout/a/b$a;->a(Landroidx/constraintlayout/a/h;F)V

    neg-float p1, p5

    .line 397
    iput p1, p0, Landroidx/constraintlayout/a/b;->b:F

    return-object p0
.end method

.method public b()Z
    .locals 2

    .line 556
    iget-object v0, p0, Landroidx/constraintlayout/a/b;->a:Landroidx/constraintlayout/a/h;

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/constraintlayout/a/b;->b:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {v0}, Landroidx/constraintlayout/a/b$a;->c()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c()V
    .locals 1

    .line 665
    iget-object v0, p0, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {v0}, Landroidx/constraintlayout/a/b$a;->a()V

    const/4 v0, 0x0

    .line 666
    iput-object v0, p0, Landroidx/constraintlayout/a/b;->a:Landroidx/constraintlayout/a/h;

    const/4 v0, 0x0

    .line 667
    iput v0, p0, Landroidx/constraintlayout/a/b;->b:F

    return-void
.end method

.method final c(Landroidx/constraintlayout/a/h;)V
    .locals 3

    .line 536
    iget-object v0, p0, Landroidx/constraintlayout/a/b;->a:Landroidx/constraintlayout/a/h;

    const/high16 v1, -0x40800000    # -1.0f

    if-eqz v0, :cond_0

    .line 538
    iget-object v2, p0, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {v2, v0, v1}, Landroidx/constraintlayout/a/b$a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 539
    iget-object v0, p0, Landroidx/constraintlayout/a/b;->a:Landroidx/constraintlayout/a/h;

    const/4 v2, -0x1

    iput v2, v0, Landroidx/constraintlayout/a/h;->c:I

    const/4 v0, 0x0

    .line 540
    iput-object v0, p0, Landroidx/constraintlayout/a/b;->a:Landroidx/constraintlayout/a/h;

    .line 543
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    const/4 v2, 0x1

    invoke-interface {v0, p1, v2}, Landroidx/constraintlayout/a/b$a;->a(Landroidx/constraintlayout/a/h;Z)F

    move-result v0

    mul-float v0, v0, v1

    .line 544
    iput-object p1, p0, Landroidx/constraintlayout/a/b;->a:Landroidx/constraintlayout/a/h;

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p1, v0, p1

    if-nez p1, :cond_1

    return-void

    .line 548
    :cond_1
    iget p1, p0, Landroidx/constraintlayout/a/b;->b:F

    div-float/2addr p1, v0

    iput p1, p0, Landroidx/constraintlayout/a/b;->b:F

    .line 549
    iget-object p1, p0, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {p1, v0}, Landroidx/constraintlayout/a/b$a;->a(F)V

    return-void
.end method

.method public final d()Landroidx/constraintlayout/a/h;
    .locals 1

    .line 707
    iget-object v0, p0, Landroidx/constraintlayout/a/b;->a:Landroidx/constraintlayout/a/h;

    return-object v0
.end method

.method public d(Landroidx/constraintlayout/a/h;)V
    .locals 3

    .line 691
    iget v0, p1, Landroidx/constraintlayout/a/h;->d:I

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 693
    :cond_0
    iget v0, p1, Landroidx/constraintlayout/a/h;->d:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const/high16 v1, 0x447a0000    # 1000.0f

    goto :goto_0

    .line 695
    :cond_1
    iget v0, p1, Landroidx/constraintlayout/a/h;->d:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    const v1, 0x49742400    # 1000000.0f

    goto :goto_0

    .line 697
    :cond_2
    iget v0, p1, Landroidx/constraintlayout/a/h;->d:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    const v1, 0x4e6e6b28    # 1.0E9f

    goto :goto_0

    .line 699
    :cond_3
    iget v0, p1, Landroidx/constraintlayout/a/h;->d:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_4

    const v1, 0x5368d4a5    # 1.0E12f

    .line 702
    :cond_4
    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {v0, p1, v1}, Landroidx/constraintlayout/a/b$a;->a(Landroidx/constraintlayout/a/h;F)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 1076
    iget-object v0, p0, Landroidx/constraintlayout/a/b;->a:Landroidx/constraintlayout/a/h;

    if-nez v0, :cond_0

    const-string v0, "0"

    goto :goto_0

    .line 1079
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/constraintlayout/a/b;->a:Landroidx/constraintlayout/a/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1081
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1083
    iget v1, p0, Landroidx/constraintlayout/a/b;->b:F

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_1

    .line 1084
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroidx/constraintlayout/a/b;->b:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 1087
    :goto_1
    iget-object v5, p0, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {v5}, Landroidx/constraintlayout/a/b$a;->c()I

    move-result v5

    :goto_2
    if-ge v2, v5, :cond_7

    .line 1089
    iget-object v6, p0, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {v6, v2}, Landroidx/constraintlayout/a/b$a;->a(I)Landroidx/constraintlayout/a/h;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 1093
    iget-object v7, p0, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {v7, v2}, Landroidx/constraintlayout/a/b$a;->b(I)F

    move-result v7

    cmpl-float v8, v7, v4

    if-eqz v8, :cond_6

    .line 1097
    invoke-virtual {v6}, Landroidx/constraintlayout/a/h;->toString()Ljava/lang/String;

    move-result-object v6

    const/high16 v9, -0x40800000    # -1.0f

    if-nez v1, :cond_2

    cmpg-float v1, v7, v4

    if-gez v1, :cond_4

    .line 1100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "- "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_2
    if-lez v8, :cond_3

    .line 1105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " + "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 1107
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    mul-float v7, v7, v9

    :cond_4
    :goto_4
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v7, v1

    if-nez v1, :cond_5

    .line 1112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 1114
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5
    const/4 v1, 0x1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_7
    if-nez v1, :cond_8

    .line 1119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "0.0"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_8
    return-object v0
.end method
