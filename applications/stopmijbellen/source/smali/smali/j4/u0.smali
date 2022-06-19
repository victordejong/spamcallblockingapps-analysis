.class public final synthetic Lj4/u0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj4/a1;


# instance fields
.field public final synthetic a:Lj4/b1;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Lj4/b1;Ljava/lang/String;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj4/u0;->a:Lj4/b1;

    iput-object p2, p0, Lj4/u0;->b:Ljava/lang/String;

    iput p3, p0, Lj4/u0;->c:I

    iput-wide p4, p0, Lj4/u0;->d:J

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Lj4/u0;->a:Lj4/b1;

    iget-object v1, p0, Lj4/u0;->b:Ljava/lang/String;

    iget v2, p0, Lj4/u0;->c:I

    iget-wide v3, p0, Lj4/u0;->d:J

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    .line 1
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 2
    new-instance v8, Lba/g;

    const/4 v9, 0x2

    invoke-direct {v8, v0, v6, v9}, Lba/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v8}, Lj4/b1;->b(Lj4/a1;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 3
    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lj4/y0;

    if-eqz v6, :cond_0

    iget-object v8, v6, Lj4/y0;->c:Lj4/x0;

    iget v8, v8, Lj4/x0;->d:I

    invoke-static {v8}, Ly/d;->s(I)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    sget-object v8, Lj4/b1;->g:Lp6/c;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v7

    const-string v9, "Could not find pack %s while trying to complete it"

    .line 4
    invoke-static {v9, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v8, v5, v7}, Lp6/c;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_1
    iget-object v0, v0, Lj4/b1;->a:Lj4/w;

    .line 5
    invoke-virtual {v0, v1, v2, v3, v4}, Lj4/w;->c(Ljava/lang/String;IJ)Z

    .line 6
    iget-object v0, v6, Lj4/y0;->c:Lj4/x0;

    const/4 v1, 0x4

    iput v1, v0, Lj4/x0;->d:I

    const/4 v0, 0x0

    return-object v0
.end method
