.class public final Lorg/mistergroup/shouldianswer/utils/s$a;
.super Ljava/lang/Object;
.source "ProtectionIntegrityChecker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mistergroup/shouldianswer/utils/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 14

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x7ff

    const/4 v13, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v13}, Lorg/mistergroup/shouldianswer/utils/s$a;-><init>(ZZZZZZZZZZZILkotlin/e/b/e;)V

    return-void
.end method

.method public constructor <init>(ZZZZZZZZZZZ)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/utils/s$a;->a:Z

    iput-boolean p2, p0, Lorg/mistergroup/shouldianswer/utils/s$a;->b:Z

    iput-boolean p3, p0, Lorg/mistergroup/shouldianswer/utils/s$a;->c:Z

    iput-boolean p4, p0, Lorg/mistergroup/shouldianswer/utils/s$a;->d:Z

    iput-boolean p5, p0, Lorg/mistergroup/shouldianswer/utils/s$a;->e:Z

    iput-boolean p6, p0, Lorg/mistergroup/shouldianswer/utils/s$a;->f:Z

    iput-boolean p7, p0, Lorg/mistergroup/shouldianswer/utils/s$a;->g:Z

    iput-boolean p8, p0, Lorg/mistergroup/shouldianswer/utils/s$a;->h:Z

    iput-boolean p9, p0, Lorg/mistergroup/shouldianswer/utils/s$a;->i:Z

    iput-boolean p10, p0, Lorg/mistergroup/shouldianswer/utils/s$a;->j:Z

    iput-boolean p11, p0, Lorg/mistergroup/shouldianswer/utils/s$a;->k:Z

    return-void
.end method

.method public synthetic constructor <init>(ZZZZZZZZZZZILkotlin/e/b/e;)V
    .locals 12

    move/from16 v0, p12

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    move v5, v2

    goto :goto_3

    :cond_3
    move/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    move v6, v2

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    move v7, v2

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    move v8, v2

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    move v9, v2

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    move v10, v2

    goto :goto_8

    :cond_8
    move/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    move v11, v2

    goto :goto_9

    :cond_9
    move/from16 v11, p10

    :goto_9
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_a

    goto :goto_a

    :cond_a
    move/from16 v2, p11

    :goto_a
    move-object p1, p0

    move p2, v1

    move p3, v3

    move/from16 p4, v4

    move/from16 p5, v5

    move/from16 p6, v6

    move/from16 p7, v7

    move/from16 p8, v8

    move/from16 p9, v9

    move/from16 p10, v10

    move/from16 p11, v11

    move/from16 p12, v2

    .line 26
    invoke-direct/range {p1 .. p12}, Lorg/mistergroup/shouldianswer/utils/s$a;-><init>(ZZZZZZZZZZZ)V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    .line 16
    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/utils/s$a;->a:Z

    return-void
.end method

.method public final a()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/utils/s$a;->a:Z

    return v0
.end method

.method public final b(Z)V
    .locals 0

    .line 17
    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/utils/s$a;->b:Z

    return-void
.end method

.method public final b()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/utils/s$a;->b:Z

    return v0
.end method

.method public final c(Z)V
    .locals 0

    .line 18
    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/utils/s$a;->c:Z

    return-void
.end method

.method public final c()Z
    .locals 1

    .line 18
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/utils/s$a;->c:Z

    return v0
.end method

.method public final d(Z)V
    .locals 0

    .line 19
    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/utils/s$a;->d:Z

    return-void
.end method

.method public final d()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/utils/s$a;->d:Z

    return v0
.end method

.method public final e(Z)V
    .locals 0

    .line 20
    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/utils/s$a;->e:Z

    return-void
.end method

.method public final e()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/utils/s$a;->e:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_c

    instance-of v1, p1, Lorg/mistergroup/shouldianswer/utils/s$a;

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    check-cast p1, Lorg/mistergroup/shouldianswer/utils/s$a;

    iget-boolean v1, p0, Lorg/mistergroup/shouldianswer/utils/s$a;->a:Z

    iget-boolean v3, p1, Lorg/mistergroup/shouldianswer/utils/s$a;->a:Z

    if-ne v1, v3, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_b

    iget-boolean v1, p0, Lorg/mistergroup/shouldianswer/utils/s$a;->b:Z

    iget-boolean v3, p1, Lorg/mistergroup/shouldianswer/utils/s$a;->b:Z

    if-ne v1, v3, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v1, :cond_b

    iget-boolean v1, p0, Lorg/mistergroup/shouldianswer/utils/s$a;->c:Z

    iget-boolean v3, p1, Lorg/mistergroup/shouldianswer/utils/s$a;->c:Z

    if-ne v1, v3, :cond_2

    move v1, v0

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    if-eqz v1, :cond_b

    iget-boolean v1, p0, Lorg/mistergroup/shouldianswer/utils/s$a;->d:Z

    iget-boolean v3, p1, Lorg/mistergroup/shouldianswer/utils/s$a;->d:Z

    if-ne v1, v3, :cond_3

    move v1, v0

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    if-eqz v1, :cond_b

    iget-boolean v1, p0, Lorg/mistergroup/shouldianswer/utils/s$a;->e:Z

    iget-boolean v3, p1, Lorg/mistergroup/shouldianswer/utils/s$a;->e:Z

    if-ne v1, v3, :cond_4

    move v1, v0

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    if-eqz v1, :cond_b

    iget-boolean v1, p0, Lorg/mistergroup/shouldianswer/utils/s$a;->f:Z

    iget-boolean v3, p1, Lorg/mistergroup/shouldianswer/utils/s$a;->f:Z

    if-ne v1, v3, :cond_5

    move v1, v0

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    if-eqz v1, :cond_b

    iget-boolean v1, p0, Lorg/mistergroup/shouldianswer/utils/s$a;->g:Z

    iget-boolean v3, p1, Lorg/mistergroup/shouldianswer/utils/s$a;->g:Z

    if-ne v1, v3, :cond_6

    move v1, v0

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    if-eqz v1, :cond_b

    iget-boolean v1, p0, Lorg/mistergroup/shouldianswer/utils/s$a;->h:Z

    iget-boolean v3, p1, Lorg/mistergroup/shouldianswer/utils/s$a;->h:Z

    if-ne v1, v3, :cond_7

    move v1, v0

    goto :goto_7

    :cond_7
    move v1, v2

    :goto_7
    if-eqz v1, :cond_b

    iget-boolean v1, p0, Lorg/mistergroup/shouldianswer/utils/s$a;->i:Z

    iget-boolean v3, p1, Lorg/mistergroup/shouldianswer/utils/s$a;->i:Z

    if-ne v1, v3, :cond_8

    move v1, v0

    goto :goto_8

    :cond_8
    move v1, v2

    :goto_8
    if-eqz v1, :cond_b

    iget-boolean v1, p0, Lorg/mistergroup/shouldianswer/utils/s$a;->j:Z

    iget-boolean v3, p1, Lorg/mistergroup/shouldianswer/utils/s$a;->j:Z

    if-ne v1, v3, :cond_9

    move v1, v0

    goto :goto_9

    :cond_9
    move v1, v2

    :goto_9
    if-eqz v1, :cond_b

    iget-boolean v1, p0, Lorg/mistergroup/shouldianswer/utils/s$a;->k:Z

    iget-boolean p1, p1, Lorg/mistergroup/shouldianswer/utils/s$a;->k:Z

    if-ne v1, p1, :cond_a

    move p1, v0

    goto :goto_a

    :cond_a
    move p1, v2

    :goto_a
    if-eqz p1, :cond_b

    goto :goto_b

    :cond_b
    return v2

    :cond_c
    :goto_b
    return v0
.end method

.method public final f(Z)V
    .locals 0

    .line 21
    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/utils/s$a;->f:Z

    return-void
.end method

.method public final f()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/utils/s$a;->f:Z

    return v0
.end method

.method public final g(Z)V
    .locals 0

    .line 22
    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/utils/s$a;->g:Z

    return-void
.end method

.method public final g()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/utils/s$a;->g:Z

    return v0
.end method

.method public final h(Z)V
    .locals 0

    .line 23
    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/utils/s$a;->h:Z

    return-void
.end method

.method public final h()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/utils/s$a;->h:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/utils/s$a;->a:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lorg/mistergroup/shouldianswer/utils/s$a;->b:Z

    if-eqz v2, :cond_1

    move v2, v1

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lorg/mistergroup/shouldianswer/utils/s$a;->c:Z

    if-eqz v2, :cond_2

    move v2, v1

    :cond_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lorg/mistergroup/shouldianswer/utils/s$a;->d:Z

    if-eqz v2, :cond_3

    move v2, v1

    :cond_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lorg/mistergroup/shouldianswer/utils/s$a;->e:Z

    if-eqz v2, :cond_4

    move v2, v1

    :cond_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lorg/mistergroup/shouldianswer/utils/s$a;->f:Z

    if-eqz v2, :cond_5

    move v2, v1

    :cond_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lorg/mistergroup/shouldianswer/utils/s$a;->g:Z

    if-eqz v2, :cond_6

    move v2, v1

    :cond_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lorg/mistergroup/shouldianswer/utils/s$a;->h:Z

    if-eqz v2, :cond_7

    move v2, v1

    :cond_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lorg/mistergroup/shouldianswer/utils/s$a;->i:Z

    if-eqz v2, :cond_8

    move v2, v1

    :cond_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lorg/mistergroup/shouldianswer/utils/s$a;->j:Z

    if-eqz v2, :cond_9

    move v2, v1

    :cond_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lorg/mistergroup/shouldianswer/utils/s$a;->k:Z

    if-eqz v2, :cond_a

    goto :goto_0

    :cond_a
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final i(Z)V
    .locals 0

    .line 24
    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/utils/s$a;->i:Z

    return-void
.end method

.method public final i()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/utils/s$a;->i:Z

    return v0
.end method

.method public final j(Z)V
    .locals 0

    .line 25
    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/utils/s$a;->j:Z

    return-void
.end method

.method public final j()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/utils/s$a;->j:Z

    return v0
.end method

.method public final k(Z)V
    .locals 0

    .line 26
    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/utils/s$a;->k:Z

    return-void
.end method

.method public final k()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/utils/s$a;->k:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Status(defaultPhoneApp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/mistergroup/shouldianswer/utils/s$a;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", defaultPhoneAppRequired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/mistergroup/shouldianswer/utils/s$a;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", defaultCallScreeningRequired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/mistergroup/shouldianswer/utils/s$a;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", defaultCallScreening="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/mistergroup/shouldianswer/utils/s$a;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", drawOverOtherApps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/mistergroup/shouldianswer/utils/s$a;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", drawOverOtherAppsRequired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/mistergroup/shouldianswer/utils/s$a;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", phonePermissions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/mistergroup/shouldianswer/utils/s$a;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", phonePermissionsRequired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/mistergroup/shouldianswer/utils/s$a;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", contactsPermissions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/mistergroup/shouldianswer/utils/s$a;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", contactsPermissionsRequired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/mistergroup/shouldianswer/utils/s$a;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", integrityIsOk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/mistergroup/shouldianswer/utils/s$a;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
