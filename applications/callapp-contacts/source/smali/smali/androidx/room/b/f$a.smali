.class public final Landroidx/room/b/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:Z

.field public final e:I

.field public final f:Ljava/lang/String;

.field private final g:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 391
    invoke-direct/range {v0 .. v6}, Landroidx/room/b/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V
    .locals 0

    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    iput-object p1, p0, Landroidx/room/b/f$a;->a:Ljava/lang/String;

    .line 398
    iput-object p2, p0, Landroidx/room/b/f$a;->b:Ljava/lang/String;

    .line 399
    iput-boolean p3, p0, Landroidx/room/b/f$a;->d:Z

    .line 400
    iput p4, p0, Landroidx/room/b/f$a;->e:I

    const/4 p1, 0x5

    if-nez p2, :cond_0

    goto :goto_2

    .line 1417
    :cond_0
    sget-object p3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, p3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "INT"

    .line 1418
    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p1, 0x3

    goto :goto_2

    :cond_1
    const-string p3, "CHAR"

    .line 1421
    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_6

    const-string p3, "CLOB"

    .line 1422
    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_6

    const-string p3, "TEXT"

    .line 1423
    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    const-string p3, "BLOB"

    .line 1426
    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_2

    :cond_3
    const-string p1, "REAL"

    .line 1429
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "FLOA"

    .line 1430
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "DOUB"

    .line 1431
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    goto :goto_2

    :cond_5
    :goto_0
    const/4 p1, 0x4

    goto :goto_2

    :cond_6
    :goto_1
    const/4 p1, 0x2

    .line 401
    :goto_2
    iput p1, p0, Landroidx/room/b/f$a;->c:I

    .line 402
    iput-object p5, p0, Landroidx/room/b/f$a;->f:Ljava/lang/String;

    .line 403
    iput p6, p0, Landroidx/room/b/f$a;->g:I

    return-void
.end method

.method private a()Z
    .locals 1

    .line 481
    iget v0, p0, Landroidx/room/b/f$a;->e:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_a

    .line 442
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    .line 444
    :cond_1
    check-cast p1, Landroidx/room/b/f$a;

    .line 445
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x14

    if-lt v2, v3, :cond_2

    .line 446
    iget v2, p0, Landroidx/room/b/f$a;->e:I

    iget v3, p1, Landroidx/room/b/f$a;->e:I

    if-eq v2, v3, :cond_3

    return v1

    .line 448
    :cond_2
    invoke-direct {p0}, Landroidx/room/b/f$a;->a()Z

    move-result v2

    invoke-direct {p1}, Landroidx/room/b/f$a;->a()Z

    move-result v3

    if-eq v2, v3, :cond_3

    return v1

    .line 451
    :cond_3
    iget-object v2, p0, Landroidx/room/b/f$a;->a:Ljava/lang/String;

    iget-object v3, p1, Landroidx/room/b/f$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 453
    :cond_4
    iget-boolean v2, p0, Landroidx/room/b/f$a;->d:Z

    iget-boolean v3, p1, Landroidx/room/b/f$a;->d:Z

    if-eq v2, v3, :cond_5

    return v1

    .line 457
    :cond_5
    iget v2, p0, Landroidx/room/b/f$a;->g:I

    const/4 v3, 0x2

    if-ne v2, v0, :cond_6

    iget v2, p1, Landroidx/room/b/f$a;->g:I

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Landroidx/room/b/f$a;->f:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v4, p1, Landroidx/room/b/f$a;->f:Ljava/lang/String;

    .line 459
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 461
    :cond_6
    iget v2, p0, Landroidx/room/b/f$a;->g:I

    if-ne v2, v3, :cond_7

    iget v2, p1, Landroidx/room/b/f$a;->g:I

    if-ne v2, v0, :cond_7

    iget-object v2, p1, Landroidx/room/b/f$a;->f:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v3, p0, Landroidx/room/b/f$a;->f:Ljava/lang/String;

    .line 463
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 465
    :cond_7
    iget v2, p0, Landroidx/room/b/f$a;->g:I

    if-eqz v2, :cond_9

    iget v3, p1, Landroidx/room/b/f$a;->g:I

    if-ne v2, v3, :cond_9

    iget-object v2, p0, Landroidx/room/b/f$a;->f:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v3, p1, Landroidx/room/b/f$a;->f:Ljava/lang/String;

    .line 467
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_0

    :cond_8
    iget-object v2, p1, Landroidx/room/b/f$a;->f:Ljava/lang/String;

    if-eqz v2, :cond_9

    :goto_0
    return v1

    .line 472
    :cond_9
    iget v2, p0, Landroidx/room/b/f$a;->c:I

    iget p1, p1, Landroidx/room/b/f$a;->c:I

    if-ne v2, p1, :cond_a

    return v0

    :cond_a
    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 486
    iget-object v0, p0, Landroidx/room/b/f$a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 487
    iget v1, p0, Landroidx/room/b/f$a;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 488
    iget-boolean v1, p0, Landroidx/room/b/f$a;->d:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v1, 0x4d5

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 489
    iget v1, p0, Landroidx/room/b/f$a;->e:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Column{name=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/room/b/f$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", type=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/room/b/f$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", affinity=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/room/b/f$a;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", notNull="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroidx/room/b/f$a;->d:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", primaryKeyPosition="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/room/b/f$a;->e:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", defaultValue=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/room/b/f$a;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
