.class public final Li4/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo4/s;


# instance fields
.field public final a:Lo4/s;

.field public final b:Lo4/s;

.field public final c:Lo4/s;

.field public final d:Lo4/s;

.field public final e:Lo4/s;

.field public final f:Lo4/s;

.field public final g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Li4/j;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Li4/e;->g:Ljava/lang/Object;

    new-instance v0, Li4/l;

    invoke-direct {v0, p1}, Li4/l;-><init>(Li4/j;)V

    iput-object v0, p0, Li4/e;->a:Lo4/s;

    new-instance p1, Li4/g;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Li4/g;-><init>(Lo4/s;I)V

    sget-object v1, Lo4/r;->c:Ljava/lang/Object;

    .line 2
    instance-of v1, p1, Lo4/r;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Lo4/r;

    .line 4
    invoke-direct {v1, p1}, Lo4/r;-><init>(Lo4/s;)V

    move-object p1, v1

    .line 5
    :goto_0
    iput-object p1, p0, Li4/e;->b:Lo4/s;

    new-instance v1, Li4/s;

    invoke-direct {v1, v0, p1}, Li4/s;-><init>(Lo4/s;Lo4/s;)V

    .line 6
    instance-of p1, v1, Lo4/r;

    if-eqz p1, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    new-instance p1, Lo4/r;

    .line 8
    invoke-direct {p1, v1}, Lo4/r;-><init>(Lo4/s;)V

    move-object v1, p1

    .line 9
    :goto_1
    iput-object v1, p0, Li4/e;->c:Lo4/s;

    new-instance p1, Li4/g;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v2}, Li4/g;-><init>(Lo4/s;I)V

    .line 10
    instance-of v3, p1, Lo4/r;

    if-eqz v3, :cond_2

    goto :goto_2

    .line 11
    :cond_2
    new-instance v3, Lo4/r;

    .line 12
    invoke-direct {v3, p1}, Lo4/r;-><init>(Lo4/s;)V

    move-object p1, v3

    .line 13
    :goto_2
    iput-object p1, p0, Li4/e;->d:Lo4/s;

    new-instance v3, Li4/i;

    invoke-direct {v3, v1, p1, v0, v2}, Li4/i;-><init>(Lo4/s;Lo4/s;Lo4/s;I)V

    .line 14
    instance-of p1, v3, Lo4/r;

    if-eqz p1, :cond_3

    goto :goto_3

    .line 15
    :cond_3
    new-instance p1, Lo4/r;

    .line 16
    invoke-direct {p1, v3}, Lo4/r;-><init>(Lo4/s;)V

    move-object v3, p1

    .line 17
    :goto_3
    iput-object v3, p0, Li4/e;->e:Lo4/s;

    new-instance p1, Li4/k;

    invoke-direct {p1, v3, v2}, Li4/k;-><init>(Lo4/s;I)V

    .line 18
    instance-of v0, p1, Lo4/r;

    if-eqz v0, :cond_4

    goto :goto_4

    .line 19
    :cond_4
    new-instance v0, Lo4/r;

    .line 20
    invoke-direct {v0, p1}, Lo4/r;-><init>(Lo4/s;)V

    move-object p1, v0

    .line 21
    :goto_4
    iput-object p1, p0, Li4/e;->f:Lo4/s;

    return-void
.end method

.method public synthetic constructor <init>(Lo4/s;Lo4/s;Lo4/s;Lo4/s;Lo4/s;Lo4/s;Lo4/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li4/e;->a:Lo4/s;

    iput-object p2, p0, Li4/e;->b:Lo4/s;

    iput-object p3, p0, Li4/e;->c:Lo4/s;

    iput-object p4, p0, Li4/e;->d:Lo4/s;

    iput-object p5, p0, Li4/e;->e:Lo4/s;

    iput-object p6, p0, Li4/e;->f:Lo4/s;

    iput-object p7, p0, Li4/e;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic zza()Ljava/lang/Object;
    .locals 11

    .line 1
    iget-object v0, p0, Li4/e;->a:Lo4/s;

    invoke-interface {v0}, Lo4/s;->zza()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Li4/e;->b:Lo4/s;

    invoke-static {v1}, Lo4/r;->a(Lo4/s;)Lo4/p;

    move-result-object v4

    iget-object v1, p0, Li4/e;->c:Lo4/s;

    invoke-interface {v1}, Lo4/s;->zza()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Li4/e;->d:Lo4/s;

    invoke-static {v2}, Lo4/r;->a(Lo4/s;)Lo4/p;

    move-result-object v6

    iget-object v2, p0, Li4/e;->e:Lo4/s;

    invoke-interface {v2}, Lo4/s;->zza()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Li4/e;->f:Lo4/s;

    invoke-interface {v3}, Lo4/s;->zza()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Ll4/b;

    iget-object v3, p0, Li4/e;->g:Ljava/lang/Object;

    check-cast v3, Lo4/s;

    invoke-interface {v3}, Lo4/s;->zza()Ljava/lang/Object;

    move-result-object v3

    new-instance v10, Lj4/q1;

    .line 2
    check-cast v0, Lj4/w;

    move-object v5, v1

    check-cast v5, Lj4/b1;

    move-object v7, v2

    check-cast v7, Lj4/r0;

    move-object v9, v3

    check-cast v9, Lj4/r1;

    move-object v2, v10

    move-object v3, v0

    invoke-direct/range {v2 .. v9}, Lj4/q1;-><init>(Lj4/w;Lo4/p;Lj4/b1;Lo4/p;Lj4/r0;Ll4/b;Lj4/r1;)V

    return-object v10
.end method
