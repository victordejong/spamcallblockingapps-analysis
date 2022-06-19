.class public final Lorg/mistergroup/shouldianswer/model/d;
.super Ljava/lang/Object;
.source "BlockException.kt"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 16
    iget v0, p0, Lorg/mistergroup/shouldianswer/model/d;->a:I

    return v0
.end method

.method public final a(I)V
    .locals 0

    .line 16
    iput p1, p0, Lorg/mistergroup/shouldianswer/model/d;->a:I

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/d;->b:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "number"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "numberNormalized"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "country"

    invoke-static {p3, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/d;->b:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lorg/mistergroup/shouldianswer/model/d;->c:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lorg/mistergroup/shouldianswer/model/d;->d:Ljava/lang/String;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 24
    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/model/d;->e:Z

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/d;->c:Ljava/lang/String;

    return-void
.end method

.method public final b(Z)V
    .locals 0

    .line 26
    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/model/d;->f:Z

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/d;->d:Ljava/lang/String;

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/model/d;->e:Z

    return v0
.end method

.method public final f()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/model/d;->f:Z

    return v0
.end method

.method public final g()Lorg/mistergroup/shouldianswer/model/NumberInfo;
    .locals 8

    .line 35
    new-instance v7, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/model/d;->b:Ljava/lang/String;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/model/d;->d:Ljava/lang/String;

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_0
    sget-object v3, Lorg/mistergroup/shouldianswer/model/k;->h:Lorg/mistergroup/shouldianswer/model/k;

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/mistergroup/shouldianswer/model/NumberInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/mistergroup/shouldianswer/model/k;ZILkotlin/e/b/e;)V

    return-object v7
.end method
