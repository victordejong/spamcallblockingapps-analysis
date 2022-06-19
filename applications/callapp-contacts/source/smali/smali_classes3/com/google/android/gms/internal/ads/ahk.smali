.class final Lcom/google/android/gms/internal/ads/ahk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/bah;


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/awm;

.field private b:Lcom/google/android/gms/internal/ads/aqz;

.field private c:Lcom/google/android/gms/internal/ads/byb;

.field private d:Lcom/google/android/gms/internal/ads/cpk;

.field private e:Lcom/google/android/gms/internal/ads/cmp;

.field private f:Lcom/google/android/gms/internal/ads/clq;

.field private final synthetic g:Lcom/google/android/gms/internal/ads/ago;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/ago;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ahk;->g:Lcom/google/android/gms/internal/ads/ago;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/ago;Lcom/google/android/gms/internal/ads/agn;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/ahk;-><init>(Lcom/google/android/gms/internal/ads/ago;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/internal/ads/clq;)Lcom/google/android/gms/internal/ads/aqw;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ahk;->f:Lcom/google/android/gms/internal/ads/clq;

    return-object p0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/cmp;)Lcom/google/android/gms/internal/ads/aqw;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ahk;->e:Lcom/google/android/gms/internal/ads/cmp;

    return-object p0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/cpk;)Lcom/google/android/gms/internal/ads/aqw;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ahk;->d:Lcom/google/android/gms/internal/ads/cpk;

    return-object p0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/aqz;)Lcom/google/android/gms/internal/ads/bah;
    .locals 0

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dso;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/aqz;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ahk;->b:Lcom/google/android/gms/internal/ads/aqz;

    return-object p0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/awm;)Lcom/google/android/gms/internal/ads/bah;
    .locals 0

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dso;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/awm;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ahk;->a:Lcom/google/android/gms/internal/ads/awm;

    return-object p0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/byb;)Lcom/google/android/gms/internal/ads/bah;
    .locals 0

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dso;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/byb;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ahk;->c:Lcom/google/android/gms/internal/ads/byb;

    return-object p0
.end method

.method public final a()Lcom/google/android/gms/internal/ads/bai;
    .locals 17

    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ahk;->a:Lcom/google/android/gms/internal/ads/awm;

    const-class v2, Lcom/google/android/gms/internal/ads/awm;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/dso;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ahk;->b:Lcom/google/android/gms/internal/ads/aqz;

    const-class v2, Lcom/google/android/gms/internal/ads/aqz;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/dso;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 4
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ahk;->c:Lcom/google/android/gms/internal/ads/byb;

    const-class v2, Lcom/google/android/gms/internal/ads/byb;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/dso;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 5
    new-instance v1, Lcom/google/android/gms/internal/ads/ahj;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/ahk;->g:Lcom/google/android/gms/internal/ads/ago;

    new-instance v5, Lcom/google/android/gms/internal/ads/aow;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/aow;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/ads/cqk;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/cqk;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/ads/aqi;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/aqi;-><init>()V

    new-instance v8, Lcom/google/android/gms/internal/ads/blv;

    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/blv;-><init>()V

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/ahk;->a:Lcom/google/android/gms/internal/ads/awm;

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/ahk;->b:Lcom/google/android/gms/internal/ads/aqz;

    new-instance v11, Lcom/google/android/gms/internal/ads/cqo;

    invoke-direct {v11}, Lcom/google/android/gms/internal/ads/cqo;-><init>()V

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/ahk;->c:Lcom/google/android/gms/internal/ads/byb;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/ahk;->d:Lcom/google/android/gms/internal/ads/cpk;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/ahk;->e:Lcom/google/android/gms/internal/ads/cmp;

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/ahk;->f:Lcom/google/android/gms/internal/ads/clq;

    const/16 v16, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v16}, Lcom/google/android/gms/internal/ads/ahj;-><init>(Lcom/google/android/gms/internal/ads/ago;Lcom/google/android/gms/internal/ads/aow;Lcom/google/android/gms/internal/ads/cqk;Lcom/google/android/gms/internal/ads/aqi;Lcom/google/android/gms/internal/ads/blv;Lcom/google/android/gms/internal/ads/awm;Lcom/google/android/gms/internal/ads/aqz;Lcom/google/android/gms/internal/ads/cqo;Lcom/google/android/gms/internal/ads/byb;Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cmp;Lcom/google/android/gms/internal/ads/clq;Lcom/google/android/gms/internal/ads/agn;)V

    return-object v1
.end method

.method public final synthetic b()Ljava/lang/Object;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ahk;->a()Lcom/google/android/gms/internal/ads/bai;

    move-result-object v0

    return-object v0
.end method
