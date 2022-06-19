.class public final Lorg/mistergroup/shouldianswer/model/o;
.super Ljava/lang/Object;
.source "CheckedCall.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mistergroup/shouldianswer/model/o$a;
    }
.end annotation


# static fields
.field public static final a:Lorg/mistergroup/shouldianswer/model/o$a;


# instance fields
.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lorg/mistergroup/shouldianswer/model/ag;

.field private g:I

.field private h:Lorg/mistergroup/shouldianswer/model/k;

.field private i:Lorg/mistergroup/shouldianswer/model/h;

.field private j:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/mistergroup/shouldianswer/model/o$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mistergroup/shouldianswer/model/o$a;-><init>(Lkotlin/e/b/e;)V

    sput-object v0, Lorg/mistergroup/shouldianswer/model/o;->a:Lorg/mistergroup/shouldianswer/model/o$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ag;->a:Lorg/mistergroup/shouldianswer/model/ag;

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/o;->f:Lorg/mistergroup/shouldianswer/model/ag;

    .line 23
    sget-object v0, Lorg/mistergroup/shouldianswer/model/k;->h:Lorg/mistergroup/shouldianswer/model/k;

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/o;->h:Lorg/mistergroup/shouldianswer/model/k;

    .line 25
    sget-object v0, Lorg/mistergroup/shouldianswer/model/h;->a:Lorg/mistergroup/shouldianswer/model/h;

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/o;->i:Lorg/mistergroup/shouldianswer/model/h;

    const-wide/16 v0, 0x0

    .line 27
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/o;->j:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 11
    iget v0, p0, Lorg/mistergroup/shouldianswer/model/o;->b:I

    return v0
.end method

.method public final a(I)V
    .locals 0

    .line 11
    iput p1, p0, Lorg/mistergroup/shouldianswer/model/o;->b:I

    return-void
.end method

.method public final a(Ljava/lang/Long;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/o;->j:Ljava/lang/Long;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/o;->c:Ljava/lang/String;

    return-void
.end method

.method public final a(Lorg/mistergroup/shouldianswer/model/ag;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/o;->f:Lorg/mistergroup/shouldianswer/model/ag;

    return-void
.end method

.method public final a(Lorg/mistergroup/shouldianswer/model/h;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/o;->i:Lorg/mistergroup/shouldianswer/model/h;

    return-void
.end method

.method public final a(Lorg/mistergroup/shouldianswer/model/k;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/o;->h:Lorg/mistergroup/shouldianswer/model/k;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/o;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b(I)V
    .locals 0

    .line 21
    iput p1, p0, Lorg/mistergroup/shouldianswer/model/o;->g:I

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/o;->d:Ljava/lang/String;

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/o;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/o;->e:Ljava/lang/String;

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/o;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Lorg/mistergroup/shouldianswer/model/ag;
    .locals 1

    .line 19
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/o;->f:Lorg/mistergroup/shouldianswer/model/ag;

    return-object v0
.end method

.method public final f()I
    .locals 1

    .line 21
    iget v0, p0, Lorg/mistergroup/shouldianswer/model/o;->g:I

    return v0
.end method

.method public final g()Lorg/mistergroup/shouldianswer/model/k;
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/o;->h:Lorg/mistergroup/shouldianswer/model/k;

    return-object v0
.end method

.method public final h()Lorg/mistergroup/shouldianswer/model/h;
    .locals 1

    .line 25
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/o;->i:Lorg/mistergroup/shouldianswer/model/h;

    return-object v0
.end method

.method public final i()Ljava/lang/Long;
    .locals 1

    .line 27
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/o;->j:Ljava/lang/Long;

    return-object v0
.end method
