.class final Lcom/google/android/gms/internal/ads/dtb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cww;


# instance fields
.field final a:Lcom/google/android/gms/internal/ads/dtn;

.field private final b:Lcom/google/android/gms/internal/ads/cvc;

.field private final c:Lcom/google/android/gms/internal/ads/cvo;

.field private final d:Lcom/google/android/gms/internal/ads/zzfa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cvc;Lcom/google/android/gms/internal/ads/cvo;Lcom/google/android/gms/internal/ads/dtn;Lcom/google/android/gms/internal/ads/zzfa;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dtb;->b:Lcom/google/android/gms/internal/ads/cvc;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dtb;->c:Lcom/google/android/gms/internal/ads/cvo;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/dtb;->a:Lcom/google/android/gms/internal/ads/dtn;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/dtb;->d:Lcom/google/android/gms/internal/ads/zzfa;

    return-void
.end method

.method private final d()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dtb;->c:Lcom/google/android/gms/internal/ads/cvo;

    .line 1017
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/cvo;->f:Lcom/google/android/gms/tasks/h;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/cvo;->d:Lcom/google/android/gms/internal/ads/cvu;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/cvu;->a()Lcom/google/android/gms/internal/ads/beb$a;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/cvo;->a(Lcom/google/android/gms/tasks/h;Lcom/google/android/gms/internal/ads/beb$a;)Lcom/google/android/gms/internal/ads/beb$a;

    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dtb;->b:Lcom/google/android/gms/internal/ads/cvc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/cvc;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "v"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dtb;->b:Lcom/google/android/gms/internal/ads/cvc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/cvc;->c()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "gms"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1093
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/beb$a;->zzfg:Ljava/lang/String;

    const-string v2, "int"

    .line 13
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dtb;->d:Lcom/google/android/gms/internal/ads/zzfa;

    .line 2008
    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzfa;->a:Z

    .line 14
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "up"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "t"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dtb;->d()Ljava/util/Map;

    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dtb;->c:Lcom/google/android/gms/internal/ads/cvo;

    .line 2016
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/cvo;->e:Lcom/google/android/gms/tasks/h;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/cvo;->c:Lcom/google/android/gms/internal/ads/cvu;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/cvu;->a()Lcom/google/android/gms/internal/ads/beb$a;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/cvo;->a(Lcom/google/android/gms/tasks/h;Lcom/google/android/gms/internal/ads/beb$a;)Lcom/google/android/gms/internal/ads/beb$a;

    move-result-object v1

    .line 19
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dtb;->b:Lcom/google/android/gms/internal/ads/cvc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/cvc;->b()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "gai"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2211
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/beb$a;->zzif:Ljava/lang/String;

    const-string v3, "did"

    .line 20
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2216
    iget v2, v1, Lcom/google/android/gms/internal/ads/beb$a;->zzig:I

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/beb$a$c;->zzl(I)Lcom/google/android/gms/internal/ads/beb$a$c;

    move-result-object v2

    if-nez v2, :cond_0

    .line 2217
    sget-object v2, Lcom/google/android/gms/internal/ads/beb$a$c;->zziw:Lcom/google/android/gms/internal/ads/beb$a$c;

    .line 21
    :cond_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/beb$a$c;->zzv()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "dst"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2221
    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/beb$a;->zzih:Z

    .line 22
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "doo"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dtb;->d()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dtb;->d()Ljava/util/Map;

    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dtb;->a:Lcom/google/android/gms/internal/ads/dtn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dtn;->a()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "lts"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
