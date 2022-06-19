.class final Lcom/google/android/gms/internal/ads/agq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/bbd;


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/awm;

.field private b:Lcom/google/android/gms/internal/ads/aqz;

.field private c:Lcom/google/android/gms/internal/ads/bba;

.field private d:Lcom/google/android/gms/internal/ads/alp;

.field private e:Lcom/google/android/gms/internal/ads/cpk;

.field private f:Lcom/google/android/gms/internal/ads/cmp;

.field private g:Lcom/google/android/gms/internal/ads/clq;

.field private final synthetic h:Lcom/google/android/gms/internal/ads/ago;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/ago;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/agq;->h:Lcom/google/android/gms/internal/ads/ago;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/ago;Lcom/google/android/gms/internal/ads/agn;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/agq;-><init>(Lcom/google/android/gms/internal/ads/ago;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/internal/ads/clq;)Lcom/google/android/gms/internal/ads/aqw;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/agq;->g:Lcom/google/android/gms/internal/ads/clq;

    return-object p0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/cmp;)Lcom/google/android/gms/internal/ads/aqw;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/agq;->f:Lcom/google/android/gms/internal/ads/cmp;

    return-object p0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/cpk;)Lcom/google/android/gms/internal/ads/aqw;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/agq;->e:Lcom/google/android/gms/internal/ads/cpk;

    return-object p0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/alp;)Lcom/google/android/gms/internal/ads/bbd;
    .locals 0

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dso;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/alp;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/agq;->d:Lcom/google/android/gms/internal/ads/alp;

    return-object p0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/aqz;)Lcom/google/android/gms/internal/ads/bbd;
    .locals 0

    .line 16
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dso;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/aqz;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/agq;->b:Lcom/google/android/gms/internal/ads/aqz;

    return-object p0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/awm;)Lcom/google/android/gms/internal/ads/bbd;
    .locals 0

    .line 20
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dso;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/awm;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/agq;->a:Lcom/google/android/gms/internal/ads/awm;

    return-object p0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/bba;)Lcom/google/android/gms/internal/ads/bbd;
    .locals 0

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dso;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/bba;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/agq;->c:Lcom/google/android/gms/internal/ads/bba;

    return-object p0
.end method

.method public final a()Lcom/google/android/gms/internal/ads/bbe;
    .locals 18

    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/agq;->a:Lcom/google/android/gms/internal/ads/awm;

    const-class v2, Lcom/google/android/gms/internal/ads/awm;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/dso;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/agq;->b:Lcom/google/android/gms/internal/ads/aqz;

    const-class v2, Lcom/google/android/gms/internal/ads/aqz;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/dso;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 4
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/agq;->c:Lcom/google/android/gms/internal/ads/bba;

    const-class v2, Lcom/google/android/gms/internal/ads/bba;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/dso;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 5
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/agq;->d:Lcom/google/android/gms/internal/ads/alp;

    const-class v2, Lcom/google/android/gms/internal/ads/alp;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/dso;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 6
    new-instance v1, Lcom/google/android/gms/internal/ads/agp;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/agq;->h:Lcom/google/android/gms/internal/ads/ago;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/agq;->d:Lcom/google/android/gms/internal/ads/alp;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/agq;->c:Lcom/google/android/gms/internal/ads/bba;

    new-instance v7, Lcom/google/android/gms/internal/ads/aow;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/aow;-><init>()V

    new-instance v8, Lcom/google/android/gms/internal/ads/cqk;

    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/cqk;-><init>()V

    new-instance v9, Lcom/google/android/gms/internal/ads/aqi;

    invoke-direct {v9}, Lcom/google/android/gms/internal/ads/aqi;-><init>()V

    new-instance v10, Lcom/google/android/gms/internal/ads/blv;

    invoke-direct {v10}, Lcom/google/android/gms/internal/ads/blv;-><init>()V

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/agq;->a:Lcom/google/android/gms/internal/ads/awm;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/agq;->b:Lcom/google/android/gms/internal/ads/aqz;

    new-instance v13, Lcom/google/android/gms/internal/ads/cqo;

    invoke-direct {v13}, Lcom/google/android/gms/internal/ads/cqo;-><init>()V

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/agq;->e:Lcom/google/android/gms/internal/ads/cpk;

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/agq;->f:Lcom/google/android/gms/internal/ads/cmp;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/agq;->g:Lcom/google/android/gms/internal/ads/clq;

    const/16 v17, 0x0

    move-object v3, v1

    move-object/from16 v16, v2

    invoke-direct/range {v3 .. v17}, Lcom/google/android/gms/internal/ads/agp;-><init>(Lcom/google/android/gms/internal/ads/ago;Lcom/google/android/gms/internal/ads/alp;Lcom/google/android/gms/internal/ads/bba;Lcom/google/android/gms/internal/ads/aow;Lcom/google/android/gms/internal/ads/cqk;Lcom/google/android/gms/internal/ads/aqi;Lcom/google/android/gms/internal/ads/blv;Lcom/google/android/gms/internal/ads/awm;Lcom/google/android/gms/internal/ads/aqz;Lcom/google/android/gms/internal/ads/cqo;Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cmp;Lcom/google/android/gms/internal/ads/clq;Lcom/google/android/gms/internal/ads/agn;)V

    return-object v1
.end method

.method public final synthetic b()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/agq;->a()Lcom/google/android/gms/internal/ads/bbe;

    move-result-object v0

    return-object v0
.end method
