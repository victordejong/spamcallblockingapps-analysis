.class public final Lj4/u;
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


# direct methods
.method public constructor <init>(Lo4/s;Lo4/s;Lo4/s;Lo4/s;Lo4/s;Lo4/s;Lo4/s;Lo4/s;Lo4/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj4/u;->a:Lo4/s;

    iput-object p2, p0, Lj4/u;->b:Lo4/s;

    iput-object p3, p0, Lj4/u;->c:Lo4/s;

    iput-object p4, p0, Lj4/u;->d:Lo4/s;

    iput-object p5, p0, Lj4/u;->e:Lo4/s;

    iput-object p6, p0, Lj4/u;->f:Lo4/s;

    iput-object p7, p0, Lj4/u;->g:Lo4/s;

    iput-object p8, p0, Lj4/u;->h:Lo4/s;

    iput-object p9, p0, Lj4/u;->i:Lo4/s;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 14

    iget-object v0, p0, Lj4/u;->a:Lo4/s;

    check-cast v0, Lj4/k2;

    .line 1
    invoke-virtual {v0}, Lj4/k2;->a()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lj4/u;->b:Lo4/s;

    invoke-interface {v0}, Lo4/s;->zza()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lj4/u;->c:Lo4/s;

    invoke-interface {v1}, Lo4/s;->zza()Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Lj4/u;->d:Lo4/s;

    invoke-static {v3}, Lo4/r;->a(Lo4/s;)Lo4/p;

    move-result-object v5

    iget-object v3, p0, Lj4/u;->e:Lo4/s;

    invoke-interface {v3}, Lo4/s;->zza()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lj4/u;->f:Lo4/s;

    invoke-interface {v4}, Lo4/s;->zza()Ljava/lang/Object;

    move-result-object v4

    iget-object v6, p0, Lj4/u;->g:Lo4/s;

    invoke-static {v6}, Lo4/r;->a(Lo4/s;)Lo4/p;

    move-result-object v8

    iget-object v6, p0, Lj4/u;->h:Lo4/s;

    invoke-static {v6}, Lo4/r;->a(Lo4/s;)Lo4/p;

    move-result-object v9

    iget-object v6, p0, Lj4/u;->i:Lo4/s;

    invoke-interface {v6}, Lo4/s;->zza()Ljava/lang/Object;

    move-result-object v6

    new-instance v11, Lj4/t;

    .line 2
    check-cast v0, Lj4/b1;

    move-object v7, v1

    check-cast v7, Lj4/o0;

    move-object v10, v3

    check-cast v10, Lj4/r0;

    move-object v12, v4

    check-cast v12, Lj4/f0;

    move-object v13, v6

    check-cast v13, Lj4/r1;

    move-object v1, v11

    move-object v3, v0

    move-object v4, v7

    move-object v6, v10

    move-object v7, v12

    move-object v10, v13

    invoke-direct/range {v1 .. v10}, Lj4/t;-><init>(Landroid/content/Context;Lj4/b1;Lj4/o0;Lo4/p;Lj4/r0;Lj4/f0;Lo4/p;Lo4/p;Lj4/r1;)V

    return-object v11
.end method
