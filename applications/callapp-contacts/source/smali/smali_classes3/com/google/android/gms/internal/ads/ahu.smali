.class final Lcom/google/android/gms/internal/ads/ahu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cat;


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/aqz;

.field private b:Lcom/google/android/gms/internal/ads/cbj;

.field private final synthetic c:Lcom/google/android/gms/internal/ads/ago;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/ago;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ahu;->c:Lcom/google/android/gms/internal/ads/ago;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/ago;Lcom/google/android/gms/internal/ads/agn;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/ahu;-><init>(Lcom/google/android/gms/internal/ads/ago;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/internal/ads/aqz;)Lcom/google/android/gms/internal/ads/cat;
    .locals 0

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dso;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/aqz;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ahu;->a:Lcom/google/android/gms/internal/ads/aqz;

    return-object p0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/awm;)Lcom/google/android/gms/internal/ads/cat;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dso;->a(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/cbj;)Lcom/google/android/gms/internal/ads/cat;
    .locals 0

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dso;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/cbj;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ahu;->b:Lcom/google/android/gms/internal/ads/cbj;

    return-object p0
.end method

.method public final a()Lcom/google/android/gms/internal/ads/cau;
    .locals 12

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ahu;->a:Lcom/google/android/gms/internal/ads/aqz;

    const-class v1, Lcom/google/android/gms/internal/ads/aqz;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dso;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ahu;->b:Lcom/google/android/gms/internal/ads/cbj;

    const-class v1, Lcom/google/android/gms/internal/ads/cbj;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dso;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/aht;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ahu;->c:Lcom/google/android/gms/internal/ads/ago;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/ahu;->b:Lcom/google/android/gms/internal/ads/cbj;

    new-instance v5, Lcom/google/android/gms/internal/ads/aow;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/aow;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/ads/blv;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/blv;-><init>()V

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/ahu;->a:Lcom/google/android/gms/internal/ads/aqz;

    new-instance v8, Lcom/google/android/gms/internal/ads/cqo;

    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/cqo;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lcom/google/android/gms/internal/ads/aht;-><init>(Lcom/google/android/gms/internal/ads/ago;Lcom/google/android/gms/internal/ads/cbj;Lcom/google/android/gms/internal/ads/aow;Lcom/google/android/gms/internal/ads/blv;Lcom/google/android/gms/internal/ads/aqz;Lcom/google/android/gms/internal/ads/cqo;Lcom/google/android/gms/internal/ads/cmp;Lcom/google/android/gms/internal/ads/clq;Lcom/google/android/gms/internal/ads/agn;)V

    return-object v0
.end method
