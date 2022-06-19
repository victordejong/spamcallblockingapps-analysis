.class final Lcom/google/android/gms/internal/ads/agt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ale;


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/awm;

.field private b:Lcom/google/android/gms/internal/ads/aqz;

.field private c:Lcom/google/android/gms/internal/ads/cpk;

.field private d:Lcom/google/android/gms/internal/ads/cmp;

.field private e:Lcom/google/android/gms/internal/ads/clq;

.field private final synthetic f:Lcom/google/android/gms/internal/ads/ago;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/ago;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/agt;->f:Lcom/google/android/gms/internal/ads/ago;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/ago;Lcom/google/android/gms/internal/ads/agn;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/agt;-><init>(Lcom/google/android/gms/internal/ads/ago;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/internal/ads/alp;)Lcom/google/android/gms/internal/ads/ale;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dso;->a(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/aqz;)Lcom/google/android/gms/internal/ads/ale;
    .locals 0

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dso;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/aqz;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/agt;->b:Lcom/google/android/gms/internal/ads/aqz;

    return-object p0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/awm;)Lcom/google/android/gms/internal/ads/ale;
    .locals 0

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dso;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/awm;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/agt;->a:Lcom/google/android/gms/internal/ads/awm;

    return-object p0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/clq;)Lcom/google/android/gms/internal/ads/aqw;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/agt;->e:Lcom/google/android/gms/internal/ads/clq;

    return-object p0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/cmp;)Lcom/google/android/gms/internal/ads/aqw;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/agt;->d:Lcom/google/android/gms/internal/ads/cmp;

    return-object p0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/cpk;)Lcom/google/android/gms/internal/ads/aqw;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/agt;->c:Lcom/google/android/gms/internal/ads/cpk;

    return-object p0
.end method

.method public final synthetic b()Ljava/lang/Object;
    .locals 15

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/agt;->a:Lcom/google/android/gms/internal/ads/awm;

    const-class v1, Lcom/google/android/gms/internal/ads/awm;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dso;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/agt;->b:Lcom/google/android/gms/internal/ads/aqz;

    const-class v1, Lcom/google/android/gms/internal/ads/aqz;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dso;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 17
    new-instance v0, Lcom/google/android/gms/internal/ads/agw;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/agt;->f:Lcom/google/android/gms/internal/ads/ago;

    new-instance v4, Lcom/google/android/gms/internal/ads/aow;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/aow;-><init>()V

    new-instance v5, Lcom/google/android/gms/internal/ads/cqk;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/cqk;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/ads/aqi;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/aqi;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/ads/blv;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/blv;-><init>()V

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/agt;->a:Lcom/google/android/gms/internal/ads/awm;

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/agt;->b:Lcom/google/android/gms/internal/ads/aqz;

    new-instance v10, Lcom/google/android/gms/internal/ads/cqo;

    invoke-direct {v10}, Lcom/google/android/gms/internal/ads/cqo;-><init>()V

    iget-object v11, p0, Lcom/google/android/gms/internal/ads/agt;->c:Lcom/google/android/gms/internal/ads/cpk;

    iget-object v12, p0, Lcom/google/android/gms/internal/ads/agt;->d:Lcom/google/android/gms/internal/ads/cmp;

    iget-object v13, p0, Lcom/google/android/gms/internal/ads/agt;->e:Lcom/google/android/gms/internal/ads/clq;

    const/4 v14, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lcom/google/android/gms/internal/ads/agw;-><init>(Lcom/google/android/gms/internal/ads/ago;Lcom/google/android/gms/internal/ads/aow;Lcom/google/android/gms/internal/ads/cqk;Lcom/google/android/gms/internal/ads/aqi;Lcom/google/android/gms/internal/ads/blv;Lcom/google/android/gms/internal/ads/awm;Lcom/google/android/gms/internal/ads/aqz;Lcom/google/android/gms/internal/ads/cqo;Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cmp;Lcom/google/android/gms/internal/ads/clq;Lcom/google/android/gms/internal/ads/agn;)V

    return-object v0
.end method
