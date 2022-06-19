.class public final Lorg/mistergroup/shouldianswer/ui/main/b$a;
.super Ljava/lang/Object;
.source "MainBanners.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mistergroup/shouldianswer/ui/main/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private final c:J

.field private d:Z

.field private e:Lorg/mistergroup/shouldianswer/ui/main/MainFragment$a;

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 10

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3f

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lorg/mistergroup/shouldianswer/ui/main/b$a;-><init>(ZZJZLorg/mistergroup/shouldianswer/ui/main/MainFragment$a;IILkotlin/e/b/e;)V

    return-void
.end method

.method public constructor <init>(ZZJZLorg/mistergroup/shouldianswer/ui/main/MainFragment$a;I)V
    .locals 1

    const-string v0, "bannerType"

    invoke-static {p6, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/ui/main/b$a;->a:Z

    iput-boolean p2, p0, Lorg/mistergroup/shouldianswer/ui/main/b$a;->b:Z

    iput-wide p3, p0, Lorg/mistergroup/shouldianswer/ui/main/b$a;->c:J

    iput-boolean p5, p0, Lorg/mistergroup/shouldianswer/ui/main/b$a;->d:Z

    iput-object p6, p0, Lorg/mistergroup/shouldianswer/ui/main/b$a;->e:Lorg/mistergroup/shouldianswer/ui/main/MainFragment$a;

    iput p7, p0, Lorg/mistergroup/shouldianswer/ui/main/b$a;->f:I

    return-void
.end method

.method public synthetic constructor <init>(ZZJZLorg/mistergroup/shouldianswer/ui/main/MainFragment$a;IILkotlin/e/b/e;)V
    .locals 5

    and-int/lit8 p9, p8, 0x1

    const/4 v0, 0x0

    if-eqz p9, :cond_0

    move p9, v0

    goto :goto_0

    :cond_0
    move p9, p1

    :goto_0
    and-int/lit8 p1, p8, 0x2

    if-eqz p1, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, p2

    :goto_1
    and-int/lit8 p1, p8, 0x4

    if-eqz p1, :cond_2

    .line 26
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p3

    :cond_2
    move-wide v2, p3

    and-int/lit8 p1, p8, 0x8

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v0, p5

    :goto_2
    and-int/lit8 p1, p8, 0x10

    if-eqz p1, :cond_4

    .line 28
    sget-object p6, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$a;->a:Lorg/mistergroup/shouldianswer/ui/main/MainFragment$a;

    :cond_4
    move-object v4, p6

    and-int/lit8 p1, p8, 0x20

    if-eqz p1, :cond_5

    const/16 p7, 0x5a0

    :cond_5
    move p8, p7

    move-object p1, p0

    move p2, p9

    move p3, v1

    move-wide p4, v2

    move p6, v0

    move-object p7, v4

    .line 29
    invoke-direct/range {p1 .. p8}, Lorg/mistergroup/shouldianswer/ui/main/b$a;-><init>(ZZJZLorg/mistergroup/shouldianswer/ui/main/MainFragment$a;I)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .line 29
    iput p1, p0, Lorg/mistergroup/shouldianswer/ui/main/b$a;->f:I

    return-void
.end method

.method public final a(Lorg/mistergroup/shouldianswer/ui/main/MainFragment$a;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/b$a;->e:Lorg/mistergroup/shouldianswer/ui/main/MainFragment$a;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 24
    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/ui/main/b$a;->a:Z

    return-void
.end method

.method public final a()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/ui/main/b$a;->a:Z

    return v0
.end method

.method public final b(Z)V
    .locals 0

    .line 25
    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/ui/main/b$a;->b:Z

    return-void
.end method

.method public final b()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/ui/main/b$a;->b:Z

    return v0
.end method

.method public final c()J
    .locals 2

    .line 26
    iget-wide v0, p0, Lorg/mistergroup/shouldianswer/ui/main/b$a;->c:J

    return-wide v0
.end method

.method public final c(Z)V
    .locals 0

    .line 27
    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/ui/main/b$a;->d:Z

    return-void
.end method

.method public final d()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/ui/main/b$a;->d:Z

    return v0
.end method

.method public final e()Lorg/mistergroup/shouldianswer/ui/main/MainFragment$a;
    .locals 1

    .line 28
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/b$a;->e:Lorg/mistergroup/shouldianswer/ui/main/MainFragment$a;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-eq p0, p1, :cond_6

    instance-of v1, p1, Lorg/mistergroup/shouldianswer/ui/main/b$a;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/main/b$a;

    iget-boolean v1, p0, Lorg/mistergroup/shouldianswer/ui/main/b$a;->a:Z

    iget-boolean v3, p1, Lorg/mistergroup/shouldianswer/ui/main/b$a;->a:Z

    if-ne v1, v3, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lorg/mistergroup/shouldianswer/ui/main/b$a;->b:Z

    iget-boolean v3, p1, Lorg/mistergroup/shouldianswer/ui/main/b$a;->b:Z

    if-ne v1, v3, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v1, :cond_5

    iget-wide v3, p0, Lorg/mistergroup/shouldianswer/ui/main/b$a;->c:J

    iget-wide v5, p1, Lorg/mistergroup/shouldianswer/ui/main/b$a;->c:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    move v1, v0

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lorg/mistergroup/shouldianswer/ui/main/b$a;->d:Z

    iget-boolean v3, p1, Lorg/mistergroup/shouldianswer/ui/main/b$a;->d:Z

    if-ne v1, v3, :cond_3

    move v1, v0

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/b$a;->e:Lorg/mistergroup/shouldianswer/ui/main/MainFragment$a;

    iget-object v3, p1, Lorg/mistergroup/shouldianswer/ui/main/b$a;->e:Lorg/mistergroup/shouldianswer/ui/main/MainFragment$a;

    invoke-static {v1, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lorg/mistergroup/shouldianswer/ui/main/b$a;->f:I

    iget p1, p1, Lorg/mistergroup/shouldianswer/ui/main/b$a;->f:I

    if-ne v1, p1, :cond_4

    move p1, v0

    goto :goto_4

    :cond_4
    move p1, v2

    :goto_4
    if-eqz p1, :cond_5

    goto :goto_5

    :cond_5
    return v2

    :cond_6
    :goto_5
    return v0
.end method

.method public final f()I
    .locals 1

    .line 29
    iget v0, p0, Lorg/mistergroup/shouldianswer/ui/main/b$a;->f:I

    return v0
.end method

.method public hashCode()I
    .locals 6

    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/ui/main/b$a;->a:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lorg/mistergroup/shouldianswer/ui/main/b$a;->b:Z

    if-eqz v2, :cond_1

    move v2, v1

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lorg/mistergroup/shouldianswer/ui/main/b$a;->c:J

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lorg/mistergroup/shouldianswer/ui/main/b$a;->d:Z

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/b$a;->e:Lorg/mistergroup/shouldianswer/ui/main/MainFragment$a;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/mistergroup/shouldianswer/ui/main/b$a;->f:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BState(canShow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/mistergroup/shouldianswer/ui/main/b$a;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", force="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/mistergroup/shouldianswer/ui/main/b$a;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", actTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/mistergroup/shouldianswer/ui/main/b$a;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", preparedBanner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/mistergroup/shouldianswer/ui/main/b$a;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", bannerType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/b$a;->e:Lorg/mistergroup/shouldianswer/ui/main/MainFragment$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", snoozeMinutes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/mistergroup/shouldianswer/ui/main/b$a;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
