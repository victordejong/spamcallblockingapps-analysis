.class public Landroidx/room/b/f$a;
.super Ljava/lang/Object;
.source "TableInfo.java"


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
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V
    .locals 1

    .prologue
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

    .line 401
    invoke-static {p2}, Landroidx/room/b/f$a;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/room/b/f$a;->c:I

    .line 402
    iput-object p5, p0, Landroidx/room/b/f$a;->f:Ljava/lang/String;

    .line 403
    iput p6, p0, Landroidx/room/b/f$a;->g:I

    .line 404
    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v0, 0x5

    .line 414
    if-nez p0, :cond_1

    .line 436
    :cond_0
    :goto_0
    return v0

    .line 417
    :cond_1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 418
    const-string/jumbo v2, "INT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 419
    const/4 v0, 0x3

    goto :goto_0

    .line 421
    :cond_2
    const-string/jumbo v2, "CHAR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "CLOB"

    .line 422
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "TEXT"

    .line 423
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 424
    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    .line 426
    :cond_4
    const-string/jumbo v2, "BLOB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 429
    const-string/jumbo v0, "REAL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "FLOA"

    .line 430
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "DOUB"

    .line 431
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 432
    :cond_5
    const/4 v0, 0x4

    goto :goto_0

    .line 436
    :cond_6
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 481
    iget v0, p0, Landroidx/room/b/f$a;->e:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 441
    if-ne p0, p1, :cond_1

    move v1, v0

    .line 472
    :cond_0
    :goto_0
    return v1

    .line 442
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 444
    check-cast p1, Landroidx/room/b/f$a;

    .line 445
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x14

    if-lt v2, v3, :cond_6

    .line 446
    iget v2, p0, Landroidx/room/b/f$a;->e:I

    iget v3, p1, Landroidx/room/b/f$a;->e:I

    if-ne v2, v3, :cond_0

    .line 451
    :cond_2
    iget-object v2, p0, Landroidx/room/b/f$a;->a:Ljava/lang/String;

    iget-object v3, p1, Landroidx/room/b/f$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 453
    iget-boolean v2, p0, Landroidx/room/b/f$a;->d:Z

    iget-boolean v3, p1, Landroidx/room/b/f$a;->d:Z

    if-ne v2, v3, :cond_0

    .line 457
    iget v2, p0, Landroidx/room/b/f$a;->g:I

    if-ne v2, v0, :cond_3

    iget v2, p1, Landroidx/room/b/f$a;->g:I

    if-ne v2, v4, :cond_3

    iget-object v2, p0, Landroidx/room/b/f$a;->f:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/room/b/f$a;->f:Ljava/lang/String;

    iget-object v3, p1, Landroidx/room/b/f$a;->f:Ljava/lang/String;

    .line 459
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 461
    :cond_3
    iget v2, p0, Landroidx/room/b/f$a;->g:I

    if-ne v2, v4, :cond_4

    iget v2, p1, Landroidx/room/b/f$a;->g:I

    if-ne v2, v0, :cond_4

    iget-object v2, p1, Landroidx/room/b/f$a;->f:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p1, Landroidx/room/b/f$a;->f:Ljava/lang/String;

    iget-object v3, p0, Landroidx/room/b/f$a;->f:Ljava/lang/String;

    .line 463
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 465
    :cond_4
    iget v2, p0, Landroidx/room/b/f$a;->g:I

    if-eqz v2, :cond_5

    iget v2, p0, Landroidx/room/b/f$a;->g:I

    iget v3, p1, Landroidx/room/b/f$a;->g:I

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Landroidx/room/b/f$a;->f:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Landroidx/room/b/f$a;->f:Ljava/lang/String;

    iget-object v3, p1, Landroidx/room/b/f$a;->f:Ljava/lang/String;

    .line 467
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 472
    :cond_5
    iget v2, p0, Landroidx/room/b/f$a;->c:I

    iget v3, p1, Landroidx/room/b/f$a;->c:I

    if-ne v2, v3, :cond_8

    :goto_1
    move v1, v0

    goto :goto_0

    .line 448
    :cond_6
    invoke-virtual {p0}, Landroidx/room/b/f$a;->a()Z

    move-result v2

    invoke-virtual {p1}, Landroidx/room/b/f$a;->a()Z

    move-result v3

    if-eq v2, v3, :cond_2

    goto/16 :goto_0

    .line 467
    :cond_7
    iget-object v2, p1, Landroidx/room/b/f$a;->f:Ljava/lang/String;

    if-eqz v2, :cond_5

    goto/16 :goto_0

    :cond_8
    move v0, v1

    .line 472
    goto :goto_1
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 486
    iget-object v0, p0, Landroidx/room/b/f$a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 487
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/room/b/f$a;->c:I

    add-int/2addr v0, v1

    .line 488
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Landroidx/room/b/f$a;->d:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x4cf

    :goto_0
    add-int/2addr v0, v1

    .line 489
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/room/b/f$a;->e:I

    add-int/2addr v0, v1

    .line 493
    return v0

    .line 488
    :cond_0
    const/16 v0, 0x4d5

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Column{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/room/b/f$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", type=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/room/b/f$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", affinity=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/room/b/f$a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", notNull="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/room/b/f$a;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", primaryKeyPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/room/b/f$a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", defaultValue=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/room/b/f$a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
