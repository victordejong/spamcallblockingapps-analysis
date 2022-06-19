.class public final Lorg/mistergroup/shouldianswer/components/b/b;
.super Ljava/lang/Object;
.source "ReviewListItem.kt"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lorg/mistergroup/shouldianswer/model/m;

.field private e:Lorg/mistergroup/shouldianswer/model/ag;

.field private f:Ljava/util/Date;

.field private g:Lorg/mistergroup/shouldianswer/model/NumberReport;

.field private h:Lorg/mistergroup/shouldianswer/model/communityDatabase/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    sget-object v0, Lorg/mistergroup/shouldianswer/model/m;->a:Lorg/mistergroup/shouldianswer/model/m;

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/components/b/b;->d:Lorg/mistergroup/shouldianswer/model/m;

    .line 20
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ag;->a:Lorg/mistergroup/shouldianswer/model/ag;

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/components/b/b;->e:Lorg/mistergroup/shouldianswer/model/ag;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/components/b/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/components/b/b;->a:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/util/Date;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/components/b/b;->f:Ljava/util/Date;

    return-void
.end method

.method public final a(Lorg/mistergroup/shouldianswer/model/NumberReport;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/components/b/b;->g:Lorg/mistergroup/shouldianswer/model/NumberReport;

    return-void
.end method

.method public final a(Lorg/mistergroup/shouldianswer/model/ag;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/components/b/b;->e:Lorg/mistergroup/shouldianswer/model/ag;

    return-void
.end method

.method public final a(Lorg/mistergroup/shouldianswer/model/communityDatabase/d;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/components/b/b;->h:Lorg/mistergroup/shouldianswer/model/communityDatabase/d;

    return-void
.end method

.method public final a(Lorg/mistergroup/shouldianswer/model/m;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/components/b/b;->d:Lorg/mistergroup/shouldianswer/model/m;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/components/b/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/components/b/b;->b:Ljava/lang/String;

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/components/b/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/components/b/b;->c:Ljava/lang/String;

    return-void
.end method

.method public final d()Lorg/mistergroup/shouldianswer/model/m;
    .locals 1

    .line 19
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/components/b/b;->d:Lorg/mistergroup/shouldianswer/model/m;

    return-object v0
.end method

.method public final e()Lorg/mistergroup/shouldianswer/model/ag;
    .locals 1

    .line 20
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/components/b/b;->e:Lorg/mistergroup/shouldianswer/model/ag;

    return-object v0
.end method
