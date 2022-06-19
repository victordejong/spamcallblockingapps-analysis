.class public final Lj4/i1;
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


# direct methods
.method public constructor <init>(Lo4/s;Lo4/s;Lo4/s;Lo4/s;Lo4/s;Lo4/s;Lo4/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj4/i1;->a:Lo4/s;

    iput-object p2, p0, Lj4/i1;->b:Lo4/s;

    iput-object p3, p0, Lj4/i1;->c:Lo4/s;

    iput-object p4, p0, Lj4/i1;->d:Lo4/s;

    iput-object p5, p0, Lj4/i1;->e:Lo4/s;

    iput-object p6, p0, Lj4/i1;->f:Lo4/s;

    iput-object p7, p0, Lj4/i1;->g:Lo4/s;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 13

    .line 1
    iget-object v0, p0, Lj4/i1;->a:Lo4/s;

    invoke-interface {v0}, Lo4/s;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lj4/i1;->b:Lo4/s;

    invoke-interface {v1}, Lo4/s;->zza()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lj4/i1;->c:Lo4/s;

    invoke-interface {v2}, Lo4/s;->zza()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lj4/i1;->d:Lo4/s;

    check-cast v3, Lj4/k2;

    invoke-virtual {v3}, Lj4/k2;->a()Landroid/content/Context;

    move-result-object v8

    iget-object v3, p0, Lj4/i1;->e:Lo4/s;

    invoke-interface {v3}, Lo4/s;->zza()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lj4/i1;->f:Lo4/s;

    invoke-static {v4}, Lo4/r;->a(Lo4/s;)Lo4/p;

    move-result-object v10

    iget-object v4, p0, Lj4/i1;->g:Lo4/s;

    invoke-interface {v4}, Lo4/s;->zza()Ljava/lang/Object;

    move-result-object v4

    .line 2
    new-instance v12, Lj4/h1;

    move-object v6, v1

    check-cast v6, Lj4/t;

    move-object v7, v2

    check-cast v7, Lj4/r0;

    move-object v9, v3

    check-cast v9, Lj4/t1;

    move-object v11, v4

    check-cast v11, Lj4/r1;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v2, Ljava/io/File;

    .line 3
    invoke-virtual {v8, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v5, v2

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v8, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    move-object v5, v0

    :goto_0
    move-object v4, v12

    .line 5
    invoke-direct/range {v4 .. v11}, Lj4/h1;-><init>(Ljava/io/File;Lj4/t;Lj4/r0;Landroid/content/Context;Lj4/t1;Lo4/p;Lj4/r1;)V

    return-object v12
.end method
