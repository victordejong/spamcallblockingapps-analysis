.class public final Lorg/mistergroup/shouldianswer/model/j$b;
.super Ljava/lang/Object;
.source "CallLogs.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mistergroup/shouldianswer/model/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field private c:J

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Lorg/mistergroup/shouldianswer/model/k;

.field private j:J

.field private k:I

.field private l:I

.field private m:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-object v0, Lorg/mistergroup/shouldianswer/model/k;->h:Lorg/mistergroup/shouldianswer/model/k;

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/j$b;->i:Lorg/mistergroup/shouldianswer/model/k;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 19
    iget-wide v0, p0, Lorg/mistergroup/shouldianswer/model/j$b;->c:J

    return-wide v0
.end method

.method public final a(I)V
    .locals 0

    .line 23
    iput p1, p0, Lorg/mistergroup/shouldianswer/model/j$b;->d:I

    return-void
.end method

.method public final a(J)V
    .locals 0

    .line 19
    iput-wide p1, p0, Lorg/mistergroup/shouldianswer/model/j$b;->c:J

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/j$b;->a:Ljava/lang/String;

    return-void
.end method

.method public final a(Lorg/mistergroup/shouldianswer/model/k;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/j$b;->i:Lorg/mistergroup/shouldianswer/model/k;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .line 20
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/j$b;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v1, "number"

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final b(I)V
    .locals 0

    .line 24
    iput p1, p0, Lorg/mistergroup/shouldianswer/model/j$b;->e:I

    return-void
.end method

.method public final b(J)V
    .locals 0

    .line 29
    iput-wide p1, p0, Lorg/mistergroup/shouldianswer/model/j$b;->j:J

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/j$b;->b:Ljava/lang/String;

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    .line 21
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/j$b;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v1, "country"

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final c(I)V
    .locals 0

    .line 26
    iput p1, p0, Lorg/mistergroup/shouldianswer/model/j$b;->g:I

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/j$b;->f:Ljava/lang/String;

    return-void
.end method

.method public final d()Lorg/mistergroup/shouldianswer/model/k;
    .locals 1

    .line 28
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/j$b;->i:Lorg/mistergroup/shouldianswer/model/k;

    return-object v0
.end method

.method public final d(I)V
    .locals 0

    .line 30
    iput p1, p0, Lorg/mistergroup/shouldianswer/model/j$b;->k:I

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/j$b;->h:Ljava/lang/String;

    return-void
.end method

.method public final e()J
    .locals 2

    .line 29
    iget-wide v0, p0, Lorg/mistergroup/shouldianswer/model/j$b;->j:J

    return-wide v0
.end method

.method public final e(I)V
    .locals 0

    .line 31
    iput p1, p0, Lorg/mistergroup/shouldianswer/model/j$b;->l:I

    return-void
.end method

.method public final f()I
    .locals 1

    .line 30
    iget v0, p0, Lorg/mistergroup/shouldianswer/model/j$b;->k:I

    return v0
.end method

.method public final f(I)V
    .locals 0

    .line 32
    iput p1, p0, Lorg/mistergroup/shouldianswer/model/j$b;->m:I

    return-void
.end method
