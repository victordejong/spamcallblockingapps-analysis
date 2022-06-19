.class public final Lj4/g2;
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

.field public final g:Lo4/s;

.field public final h:Lo4/s;

.field public final i:Lo4/s;

.field public final j:Lo4/s;


# direct methods
.method public constructor <init>(Lo4/s;Lo4/s;Lo4/s;Lo4/s;Lo4/s;Lo4/s;Lo4/s;Lo4/s;Lo4/s;Lo4/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj4/g2;->a:Lo4/s;

    iput-object p2, p0, Lj4/g2;->b:Lo4/s;

    iput-object p3, p0, Lj4/g2;->c:Lo4/s;

    iput-object p4, p0, Lj4/g2;->d:Lo4/s;

    iput-object p5, p0, Lj4/g2;->e:Lo4/s;

    iput-object p6, p0, Lj4/g2;->f:Lo4/s;

    iput-object p7, p0, Lj4/g2;->g:Lo4/s;

    iput-object p8, p0, Lj4/g2;->h:Lo4/s;

    iput-object p9, p0, Lj4/g2;->i:Lo4/s;

    iput-object p10, p0, Lj4/g2;->j:Lo4/s;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 15

    .line 1
    iget-object v0, p0, Lj4/g2;->a:Lo4/s;

    invoke-interface {v0}, Lo4/s;->zza()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lj4/g2;->b:Lo4/s;

    invoke-static {v1}, Lo4/r;->a(Lo4/s;)Lo4/p;

    move-result-object v4

    iget-object v1, p0, Lj4/g2;->c:Lo4/s;

    invoke-interface {v1}, Lo4/s;->zza()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lj4/g2;->d:Lo4/s;

    invoke-interface {v2}, Lo4/s;->zza()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lq4/a;

    iget-object v2, p0, Lj4/g2;->e:Lo4/s;

    invoke-interface {v2}, Lo4/s;->zza()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lj4/g2;->f:Lo4/s;

    invoke-interface {v3}, Lo4/s;->zza()Ljava/lang/Object;

    move-result-object v3

    iget-object v5, p0, Lj4/g2;->g:Lo4/s;

    invoke-interface {v5}, Lo4/s;->zza()Ljava/lang/Object;

    move-result-object v5

    iget-object v7, p0, Lj4/g2;->h:Lo4/s;

    invoke-static {v7}, Lo4/r;->a(Lo4/s;)Lo4/p;

    move-result-object v10

    iget-object v7, p0, Lj4/g2;->i:Lo4/s;

    invoke-interface {v7}, Lo4/s;->zza()Ljava/lang/Object;

    move-result-object v7

    move-object v11, v7

    check-cast v11, Ll4/b;

    iget-object v7, p0, Lj4/g2;->j:Lo4/s;

    invoke-interface {v7}, Lo4/s;->zza()Ljava/lang/Object;

    move-result-object v7

    .line 2
    new-instance v13, Lj4/f2;

    check-cast v0, Lj4/w;

    check-cast v1, Lj4/t;

    move-object v8, v2

    check-cast v8, Lj4/b1;

    move-object v9, v3

    check-cast v9, Lj4/r0;

    move-object v12, v5

    check-cast v12, Lj4/f0;

    move-object v14, v7

    check-cast v14, Lj4/r1;

    move-object v2, v13

    move-object v3, v0

    move-object v5, v1

    move-object v7, v8

    move-object v8, v9

    move-object v9, v12

    move-object v12, v14

    invoke-direct/range {v2 .. v12}, Lj4/f2;-><init>(Lj4/w;Lo4/p;Lj4/t;Lq4/a;Lj4/b1;Lj4/r0;Lj4/f0;Lo4/p;Ll4/b;Lj4/r1;)V

    return-object v13
.end method
