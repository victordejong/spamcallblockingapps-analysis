.class final Lcom/google/android/gms/internal/ads/dem;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dfd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dfd",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/deg;

.field private final b:Lcom/google/android/gms/internal/ads/dfv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dfv",
            "<**>;"
        }
    .end annotation
.end field

.field private final c:Z

.field private final d:Lcom/google/android/gms/internal/ads/dck;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dck",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/dfv;Lcom/google/android/gms/internal/ads/dck;Lcom/google/android/gms/internal/ads/deg;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dfv",
            "<**>;",
            "Lcom/google/android/gms/internal/ads/dck",
            "<*>;",
            "Lcom/google/android/gms/internal/ads/deg;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dem;->b:Lcom/google/android/gms/internal/ads/dfv;

    .line 3
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/dck;->a(Lcom/google/android/gms/internal/ads/deg;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dem;->c:Z

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dem;->d:Lcom/google/android/gms/internal/ads/dck;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/dem;->a:Lcom/google/android/gms/internal/ads/deg;

    .line 6
    return-void
.end method

.method static a(Lcom/google/android/gms/internal/ads/dfv;Lcom/google/android/gms/internal/ads/dck;Lcom/google/android/gms/internal/ads/deg;)Lcom/google/android/gms/internal/ads/dem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/dfv",
            "<**>;",
            "Lcom/google/android/gms/internal/ads/dck",
            "<*>;",
            "Lcom/google/android/gms/internal/ads/deg;",
            ")",
            "Lcom/google/android/gms/internal/ads/dem",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/dem;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/dem;-><init>(Lcom/google/android/gms/internal/ads/dfv;Lcom/google/android/gms/internal/ads/dck;Lcom/google/android/gms/internal/ads/deg;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dem;->b:Lcom/google/android/gms/internal/ads/dfv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dfv;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 19
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/dem;->c:Z

    if-eqz v1, :cond_0

    .line 20
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dem;->d:Lcom/google/android/gms/internal/ads/dck;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/dck;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dcl;

    move-result-object v1

    .line 21
    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dcl;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 22
    :cond_0
    return v0
.end method

.method public final a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dem;->a:Lcom/google/android/gms/internal/ads/deg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/deg;->v()Lcom/google/android/gms/internal/ads/def;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/def;->f()Lcom/google/android/gms/internal/ads/deg;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/dex;Lcom/google/android/gms/internal/ads/dci;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/ads/dex;",
            "Lcom/google/android/gms/internal/ads/dci;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const v10, 0x7fffffff

    .line 104
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dem;->b:Lcom/google/android/gms/internal/ads/dfv;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/dem;->d:Lcom/google/android/gms/internal/ads/dck;

    .line 105
    invoke-virtual {v4, p1}, Lcom/google/android/gms/internal/ads/dfv;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 106
    invoke-virtual {v5, p1}, Lcom/google/android/gms/internal/ads/dck;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dcl;

    move-result-object v7

    .line 107
    :cond_0
    :try_start_0
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/dex;->a()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 108
    if-ne v0, v10, :cond_1

    .line 109
    invoke-virtual {v4, p1, v6}, Lcom/google/android/gms/internal/ads/dfv;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 152
    :goto_0
    return-void

    .line 112
    :cond_1
    :try_start_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/dex;->b()I

    move-result v0

    .line 113
    const/16 v2, 0xb

    if-eq v0, v2, :cond_5

    .line 115
    and-int/lit8 v2, v0, 0x7

    .line 116
    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 117
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dem;->a:Lcom/google/android/gms/internal/ads/deg;

    .line 118
    ushr-int/lit8 v0, v0, 0x3

    .line 119
    invoke-virtual {v5, p3, v2, v0}, Lcom/google/android/gms/internal/ads/dck;->a(Lcom/google/android/gms/internal/ads/dci;Lcom/google/android/gms/internal/ads/deg;I)Ljava/lang/Object;

    move-result-object v0

    .line 120
    if-eqz v0, :cond_3

    .line 121
    invoke-virtual {v5, p2, v0, p3, v7}, Lcom/google/android/gms/internal/ads/dck;->a(Lcom/google/android/gms/internal/ads/dex;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/dci;Lcom/google/android/gms/internal/ads/dcl;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 150
    :goto_2
    if-nez v0, :cond_0

    .line 151
    invoke-virtual {v4, p1, v6}, Lcom/google/android/gms/internal/ads/dfv;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 123
    :cond_3
    :try_start_2
    invoke-virtual {v4, v6, p2}, Lcom/google/android/gms/internal/ads/dfv;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/dex;)Z

    move-result v0

    goto :goto_2

    .line 124
    :cond_4
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/dex;->c()Z

    move-result v0

    goto :goto_2

    .line 125
    :cond_5
    const/4 v3, 0x0

    move-object v0, v1

    move-object v2, v1

    .line 128
    :cond_6
    :goto_3
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/dex;->a()I

    move-result v8

    .line 129
    if-eq v8, v10, :cond_a

    .line 130
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/dex;->b()I

    move-result v8

    .line 131
    const/16 v9, 0x10

    if-ne v8, v9, :cond_7

    .line 132
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/dex;->o()I

    move-result v3

    .line 133
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dem;->a:Lcom/google/android/gms/internal/ads/deg;

    .line 134
    invoke-virtual {v5, p3, v0, v3}, Lcom/google/android/gms/internal/ads/dck;->a(Lcom/google/android/gms/internal/ads/dci;Lcom/google/android/gms/internal/ads/deg;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    .line 136
    :cond_7
    const/16 v9, 0x1a

    if-ne v8, v9, :cond_9

    .line 137
    if-eqz v0, :cond_8

    .line 138
    invoke-virtual {v5, p2, v0, p3, v7}, Lcom/google/android/gms/internal/ads/dck;->a(Lcom/google/android/gms/internal/ads/dex;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/dci;Lcom/google/android/gms/internal/ads/dcl;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 153
    :catchall_0
    move-exception v0

    invoke-virtual {v4, p1, v6}, Lcom/google/android/gms/internal/ads/dfv;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 154
    throw v0

    .line 140
    :cond_8
    :try_start_3
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/dex;->n()Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v2

    goto :goto_3

    .line 142
    :cond_9
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/dex;->c()Z

    move-result v8

    if-nez v8, :cond_6

    .line 143
    :cond_a
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/dex;->b()I

    move-result v8

    const/16 v9, 0xc

    if-eq v8, v9, :cond_b

    .line 144
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeco;->e()Lcom/google/android/gms/internal/ads/zzeco;

    move-result-object v0

    throw v0

    .line 145
    :cond_b
    if-eqz v2, :cond_2

    .line 146
    if-eqz v0, :cond_c

    .line 147
    invoke-virtual {v5, v2, v0, p3, v7}, Lcom/google/android/gms/internal/ads/dck;->a(Lcom/google/android/gms/internal/ads/dbi;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/dci;Lcom/google/android/gms/internal/ads/dcl;)V

    goto :goto_1

    .line 148
    :cond_c
    invoke-virtual {v4, v6, v3, v2}, Lcom/google/android/gms/internal/ads/dfv;->a(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/dbi;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public final a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/dgo;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/ads/dgo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dem;->d:Lcom/google/android/gms/internal/ads/dck;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dck;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dcl;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcl;->d()Ljava/util/Iterator;

    move-result-object v2

    .line 29
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 30
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 31
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/dcn;

    .line 32
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/dcn;->c()Lcom/google/android/gms/internal/ads/dgp;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/ads/dgp;->i:Lcom/google/android/gms/internal/ads/dgp;

    if-ne v3, v4, :cond_0

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/dcn;->d()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/dcn;->e()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Found invalid MessageSet item."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_1
    instance-of v3, v0, Lcom/google/android/gms/internal/ads/ddi;

    if-eqz v3, :cond_2

    .line 36
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/dcn;->a()I

    move-result v1

    check-cast v0, Lcom/google/android/gms/internal/ads/ddi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ddi;->a()Lcom/google/android/gms/internal/ads/ddg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ddk;->c()Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v0

    .line 37
    invoke-interface {p2, v1, v0}, Lcom/google/android/gms/internal/ads/dgo;->a(ILjava/lang/Object;)V

    goto :goto_0

    .line 38
    :cond_2
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/dcn;->a()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Lcom/google/android/gms/internal/ads/dgo;->a(ILjava/lang/Object;)V

    goto :goto_0

    .line 40
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dem;->b:Lcom/google/android/gms/internal/ads/dfv;

    .line 41
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dfv;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/ads/dfv;->b(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/dgo;)V

    .line 42
    return-void
.end method

.method public final a(Ljava/lang/Object;[BIILcom/google/android/gms/internal/ads/dbh;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/google/android/gms/internal/ads/dbh;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x2

    .line 43
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/dcw;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dcw;->zzhxv:Lcom/google/android/gms/internal/ads/dfu;

    .line 44
    invoke-static {}, Lcom/google/android/gms/internal/ads/dfu;->a()Lcom/google/android/gms/internal/ads/dfu;

    move-result-object v0

    if-ne v4, v0, :cond_0

    .line 45
    invoke-static {}, Lcom/google/android/gms/internal/ads/dfu;->b()Lcom/google/android/gms/internal/ads/dfu;

    move-result-object v4

    move-object v0, p1

    .line 46
    check-cast v0, Lcom/google/android/gms/internal/ads/dcw;

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/dcw;->zzhxv:Lcom/google/android/gms/internal/ads/dfu;

    .line 47
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/dcw$b;

    .line 48
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dcw$b;->a()Lcom/google/android/gms/internal/ads/dcl;

    move-object v6, v7

    .line 50
    :goto_0
    if-ge p3, p4, :cond_9

    .line 51
    invoke-static {p2, p3, p5}, Lcom/google/android/gms/internal/ads/dbe;->a([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result v2

    .line 52
    iget v0, p5, Lcom/google/android/gms/internal/ads/dbh;->a:I

    .line 53
    const/16 v1, 0xb

    if-eq v0, v1, :cond_3

    .line 55
    and-int/lit8 v1, v0, 0x7

    .line 56
    if-ne v1, v9, :cond_2

    .line 57
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dem;->d:Lcom/google/android/gms/internal/ads/dck;

    iget-object v3, p5, Lcom/google/android/gms/internal/ads/dbh;->d:Lcom/google/android/gms/internal/ads/dci;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/dem;->a:Lcom/google/android/gms/internal/ads/deg;

    .line 58
    ushr-int/lit8 v6, v0, 0x3

    .line 59
    invoke-virtual {v1, v3, v5, v6}, Lcom/google/android/gms/internal/ads/dck;->a(Lcom/google/android/gms/internal/ads/dci;Lcom/google/android/gms/internal/ads/deg;I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/google/android/gms/internal/ads/dcw$d;

    .line 60
    if-eqz v6, :cond_1

    .line 61
    invoke-static {}, Lcom/google/android/gms/internal/ads/der;->a()Lcom/google/android/gms/internal/ads/der;

    .line 62
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0

    :cond_1
    move-object v1, p2

    move v3, p4

    move-object v5, p5

    .line 64
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/dbe;->a(I[BIILcom/google/android/gms/internal/ads/dfu;Lcom/google/android/gms/internal/ads/dbh;)I

    move-result p3

    goto :goto_0

    .line 65
    :cond_2
    invoke-static {v0, p2, v2, p4, p5}, Lcom/google/android/gms/internal/ads/dbe;->a(I[BIILcom/google/android/gms/internal/ads/dbh;)I

    move-result p3

    goto :goto_0

    .line 67
    :cond_3
    const/4 v0, 0x0

    move-object v3, v7

    move v5, v0

    move v1, v2

    .line 69
    :goto_1
    if-ge v1, p4, :cond_6

    .line 70
    invoke-static {p2, v1, p5}, Lcom/google/android/gms/internal/ads/dbe;->a([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result v0

    .line 71
    iget v1, p5, Lcom/google/android/gms/internal/ads/dbh;->a:I

    .line 73
    ushr-int/lit8 v2, v1, 0x3

    .line 76
    and-int/lit8 v8, v1, 0x7

    .line 78
    packed-switch v2, :pswitch_data_0

    .line 92
    :cond_4
    const/16 v2, 0xc

    if-eq v1, v2, :cond_7

    .line 93
    invoke-static {v1, p2, v0, p4, p5}, Lcom/google/android/gms/internal/ads/dbe;->a(I[BIILcom/google/android/gms/internal/ads/dbh;)I

    move-result v1

    goto :goto_1

    .line 79
    :pswitch_0
    if-nez v8, :cond_4

    .line 80
    invoke-static {p2, v0, p5}, Lcom/google/android/gms/internal/ads/dbe;->a([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result v1

    .line 81
    iget v2, p5, Lcom/google/android/gms/internal/ads/dbh;->a:I

    .line 82
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dem;->d:Lcom/google/android/gms/internal/ads/dck;

    iget-object v5, p5, Lcom/google/android/gms/internal/ads/dbh;->d:Lcom/google/android/gms/internal/ads/dci;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/dem;->a:Lcom/google/android/gms/internal/ads/deg;

    .line 83
    invoke-virtual {v0, v5, v6, v2}, Lcom/google/android/gms/internal/ads/dck;->a(Lcom/google/android/gms/internal/ads/dci;Lcom/google/android/gms/internal/ads/deg;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dcw$d;

    move v5, v2

    move-object v6, v0

    .line 84
    goto :goto_1

    .line 85
    :pswitch_1
    if-eqz v6, :cond_5

    .line 86
    invoke-static {}, Lcom/google/android/gms/internal/ads/der;->a()Lcom/google/android/gms/internal/ads/der;

    .line 87
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0

    .line 88
    :cond_5
    if-ne v8, v9, :cond_4

    .line 89
    invoke-static {p2, v0, p5}, Lcom/google/android/gms/internal/ads/dbe;->e([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result v1

    .line 90
    iget-object v0, p5, Lcom/google/android/gms/internal/ads/dbh;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/dbi;

    move-object v3, v0

    .line 91
    goto :goto_1

    :cond_6
    move v0, v1

    .line 95
    :cond_7
    if-eqz v3, :cond_8

    .line 97
    shl-int/lit8 v1, v5, 0x3

    or-int/lit8 v1, v1, 0x2

    .line 99
    invoke-virtual {v4, v1, v3}, Lcom/google/android/gms/internal/ads/dfu;->a(ILjava/lang/Object;)V

    :cond_8
    move p3, v0

    .line 100
    goto/16 :goto_0

    .line 101
    :cond_9
    if-eq p3, p4, :cond_a

    .line 102
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeco;->h()Lcom/google/android/gms/internal/ads/zzeco;

    move-result-object v0

    throw v0

    .line 103
    :cond_a
    return-void

    .line 78
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .prologue
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dem;->b:Lcom/google/android/gms/internal/ads/dfv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dfv;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dem;->b:Lcom/google/android/gms/internal/ads/dfv;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/dfv;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 12
    const/4 v0, 0x0

    .line 17
    :goto_0
    return v0

    .line 13
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dem;->c:Z

    if-eqz v0, :cond_1

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dem;->d:Lcom/google/android/gms/internal/ads/dck;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dck;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dcl;

    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dem;->d:Lcom/google/android/gms/internal/ads/dck;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/dck;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dcl;

    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dcl;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 17
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dem;->b:Lcom/google/android/gms/internal/ads/dfv;

    .line 161
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dfv;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 162
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dfv;->e(Ljava/lang/Object;)I

    move-result v0

    .line 163
    add-int/lit8 v0, v0, 0x0

    .line 164
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/dem;->c:Z

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dem;->d:Lcom/google/android/gms/internal/ads/dck;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/dck;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dcl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dcl;->g()I

    move-result v1

    add-int/2addr v0, v1

    .line 166
    :cond_0
    return v0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dem;->b:Lcom/google/android/gms/internal/ads/dfv;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/dff;->a(Lcom/google/android/gms/internal/ads/dfv;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 24
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dem;->c:Z

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dem;->d:Lcom/google/android/gms/internal/ads/dck;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/dff;->a(Lcom/google/android/gms/internal/ads/dck;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dem;->b:Lcom/google/android/gms/internal/ads/dfv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dfv;->d(Ljava/lang/Object;)V

    .line 156
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dem;->d:Lcom/google/android/gms/internal/ads/dck;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dck;->c(Ljava/lang/Object;)V

    .line 157
    return-void
.end method

.method public final d(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dem;->d:Lcom/google/android/gms/internal/ads/dck;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dck;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dcl;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcl;->f()Z

    move-result v0

    return v0
.end method
