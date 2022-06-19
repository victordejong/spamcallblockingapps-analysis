.class final Lcom/google/android/gms/internal/ads/ahb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/amq;


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/awm;

.field private b:Lcom/google/android/gms/internal/ads/aqz;

.field private c:Lcom/google/android/gms/internal/ads/byb;

.field private d:Lcom/google/android/gms/internal/ads/anl;

.field private e:Lcom/google/android/gms/internal/ads/alp;

.field private f:Lcom/google/android/gms/internal/ads/bba;

.field private g:Lcom/google/android/gms/internal/ads/cpk;

.field private h:Lcom/google/android/gms/internal/ads/cmp;

.field private i:Lcom/google/android/gms/internal/ads/clq;

.field private final synthetic j:Lcom/google/android/gms/internal/ads/ago;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/ago;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ahb;->j:Lcom/google/android/gms/internal/ads/ago;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/ago;Lcom/google/android/gms/internal/ads/agn;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/ahb;-><init>(Lcom/google/android/gms/internal/ads/ago;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/amn;
    .locals 20

    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ahb;->a:Lcom/google/android/gms/internal/ads/awm;

    const-class v2, Lcom/google/android/gms/internal/ads/awm;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/dso;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ahb;->b:Lcom/google/android/gms/internal/ads/aqz;

    const-class v2, Lcom/google/android/gms/internal/ads/aqz;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/dso;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 4
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ahb;->c:Lcom/google/android/gms/internal/ads/byb;

    const-class v2, Lcom/google/android/gms/internal/ads/byb;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/dso;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 5
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ahb;->d:Lcom/google/android/gms/internal/ads/anl;

    const-class v2, Lcom/google/android/gms/internal/ads/anl;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/dso;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 6
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ahb;->e:Lcom/google/android/gms/internal/ads/alp;

    const-class v2, Lcom/google/android/gms/internal/ads/alp;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/dso;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 7
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ahb;->f:Lcom/google/android/gms/internal/ads/bba;

    const-class v2, Lcom/google/android/gms/internal/ads/bba;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/dso;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 8
    new-instance v1, Lcom/google/android/gms/internal/ads/ahe;

    move-object v3, v1

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/ahb;->j:Lcom/google/android/gms/internal/ads/ago;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/ahb;->e:Lcom/google/android/gms/internal/ads/alp;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/ahb;->f:Lcom/google/android/gms/internal/ads/bba;

    new-instance v2, Lcom/google/android/gms/internal/ads/aow;

    move-object v7, v2

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/aow;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/ads/cqk;

    move-object v8, v2

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/cqk;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/ads/aqi;

    move-object v9, v2

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/aqi;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/ads/blv;

    move-object v10, v2

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/blv;-><init>()V

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/ahb;->a:Lcom/google/android/gms/internal/ads/awm;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/ahb;->b:Lcom/google/android/gms/internal/ads/aqz;

    new-instance v2, Lcom/google/android/gms/internal/ads/cqo;

    move-object v13, v2

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/cqo;-><init>()V

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/ahb;->c:Lcom/google/android/gms/internal/ads/byb;

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/ahb;->d:Lcom/google/android/gms/internal/ads/anl;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/ahb;->g:Lcom/google/android/gms/internal/ads/cpk;

    move-object/from16 v16, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/ahb;->h:Lcom/google/android/gms/internal/ads/cmp;

    move-object/from16 v17, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/ahb;->i:Lcom/google/android/gms/internal/ads/clq;

    move-object/from16 v18, v2

    const/16 v19, 0x0

    invoke-direct/range {v3 .. v19}, Lcom/google/android/gms/internal/ads/ahe;-><init>(Lcom/google/android/gms/internal/ads/ago;Lcom/google/android/gms/internal/ads/alp;Lcom/google/android/gms/internal/ads/bba;Lcom/google/android/gms/internal/ads/aow;Lcom/google/android/gms/internal/ads/cqk;Lcom/google/android/gms/internal/ads/aqi;Lcom/google/android/gms/internal/ads/blv;Lcom/google/android/gms/internal/ads/awm;Lcom/google/android/gms/internal/ads/aqz;Lcom/google/android/gms/internal/ads/cqo;Lcom/google/android/gms/internal/ads/byb;Lcom/google/android/gms/internal/ads/anl;Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cmp;Lcom/google/android/gms/internal/ads/clq;Lcom/google/android/gms/internal/ads/agn;)V

    return-object v1
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/alp;)Lcom/google/android/gms/internal/ads/amq;
    .locals 0

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dso;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/alp;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ahb;->e:Lcom/google/android/gms/internal/ads/alp;

    return-object p0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/anl;)Lcom/google/android/gms/internal/ads/amq;
    .locals 0

    .line 18
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dso;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/anl;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ahb;->d:Lcom/google/android/gms/internal/ads/anl;

    return-object p0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/aqz;)Lcom/google/android/gms/internal/ads/amq;
    .locals 0

    .line 26
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dso;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/aqz;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ahb;->b:Lcom/google/android/gms/internal/ads/aqz;

    return-object p0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/awm;)Lcom/google/android/gms/internal/ads/amq;
    .locals 0

    .line 30
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dso;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/awm;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ahb;->a:Lcom/google/android/gms/internal/ads/awm;

    return-object p0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/bba;)Lcom/google/android/gms/internal/ads/amq;
    .locals 0

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dso;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/bba;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ahb;->f:Lcom/google/android/gms/internal/ads/bba;

    return-object p0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/byb;)Lcom/google/android/gms/internal/ads/amq;
    .locals 0

    .line 22
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dso;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/byb;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ahb;->c:Lcom/google/android/gms/internal/ads/byb;

    return-object p0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/clq;)Lcom/google/android/gms/internal/ads/aqw;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ahb;->i:Lcom/google/android/gms/internal/ads/clq;

    return-object p0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/cmp;)Lcom/google/android/gms/internal/ads/aqw;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ahb;->h:Lcom/google/android/gms/internal/ads/cmp;

    return-object p0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/cpk;)Lcom/google/android/gms/internal/ads/aqw;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ahb;->g:Lcom/google/android/gms/internal/ads/cpk;

    return-object p0
.end method

.method public final synthetic b()Ljava/lang/Object;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ahb;->a()Lcom/google/android/gms/internal/ads/amn;

    move-result-object v0

    return-object v0
.end method
