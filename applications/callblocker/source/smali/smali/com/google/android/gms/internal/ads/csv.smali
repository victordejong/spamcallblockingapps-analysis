.class public Lcom/google/android/gms/internal/ads/csv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/css;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PrimitiveT:",
        "Ljava/lang/Object;",
        "KeyProtoT::",
        "Lcom/google/android/gms/internal/ads/deg;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/css",
        "<TPrimitiveT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/csx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/csx",
            "<TKeyProtoT;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TPrimitiveT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/csx;Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/csx",
            "<TKeyProtoT;>;",
            "Ljava/lang/Class",
            "<TPrimitiveT;>;)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/csx;->d()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Ljava/lang/Void;

    .line 3
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Given internalKeyMananger %s does not support primitive class %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 6
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/csv;->a:Lcom/google/android/gms/internal/ads/csx;

    .line 8
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/csv;->b:Ljava/lang/Class;

    .line 9
    return-void
.end method

.method private final b(Lcom/google/android/gms/internal/ads/deg;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKeyProtoT;)TPrimitiveT;"
        }
    .end annotation

    .prologue
    .line 40
    const-class v0, Ljava/lang/Void;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/csv;->b:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "Cannot create a primitive for Void"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/csv;->a:Lcom/google/android/gms/internal/ads/csx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/csx;->a(Lcom/google/android/gms/internal/ads/deg;)V

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/csv;->a:Lcom/google/android/gms/internal/ads/csx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/csv;->b:Ljava/lang/Class;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/csx;->a(Lcom/google/android/gms/internal/ads/deg;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final c()Lcom/google/android/gms/internal/ads/csu;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/csu",
            "<*TKeyProtoT;>;"
        }
    .end annotation

    .prologue
    .line 44
    new-instance v0, Lcom/google/android/gms/internal/ads/csu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/csv;->a:Lcom/google/android/gms/internal/ads/csx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/csx;->f()Lcom/google/android/gms/internal/ads/csw;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/csu;-><init>(Lcom/google/android/gms/internal/ads/csw;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/dbi;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dbi;",
            ")TPrimitiveT;"
        }
    .end annotation

    .prologue
    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/csv;->a:Lcom/google/android/gms/internal/ads/csx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/csx;->a(Lcom/google/android/gms/internal/ads/dbi;)Lcom/google/android/gms/internal/ads/deg;

    move-result-object v0

    .line 11
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/csv;->b(Lcom/google/android/gms/internal/ads/deg;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzeco; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 12
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 13
    new-instance v2, Ljava/security/GeneralSecurityException;

    const-string/jumbo v3, "Failures parsing proto of type "

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/csv;->a:Lcom/google/android/gms/internal/ads/csx;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/csx;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v2, v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/deg;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/deg;",
            ")TPrimitiveT;"
        }
    .end annotation

    .prologue
    .line 15
    const-string/jumbo v1, "Expected proto of type "

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/csv;->a:Lcom/google/android/gms/internal/ads/csx;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/csx;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/csv;->a:Lcom/google/android/gms/internal/ads/csx;

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/csx;->a()Ljava/lang/Class;

    move-result-object v1

    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 20
    new-instance v1, Ljava/security/GeneralSecurityException;

    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 22
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/deg;

    .line 23
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/csv;->b(Lcom/google/android/gms/internal/ads/deg;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/csv;->a:Lcom/google/android/gms/internal/ads/csx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/csx;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/google/android/gms/internal/ads/dbi;)Lcom/google/android/gms/internal/ads/deg;
    .locals 5

    .prologue
    .line 24
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/csv;->c()Lcom/google/android/gms/internal/ads/csu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/csu;->a(Lcom/google/android/gms/internal/ads/dbi;)Lcom/google/android/gms/internal/ads/deg;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzeco; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 25
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 26
    new-instance v2, Ljava/security/GeneralSecurityException;

    const-string/jumbo v3, "Failures parsing proto of type "

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/csv;->a:Lcom/google/android/gms/internal/ads/csx;

    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/csx;->f()Lcom/google/android/gms/internal/ads/csw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/csw;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v2, v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TPrimitiveT;>;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/csv;->b:Ljava/lang/Class;

    return-object v0
.end method

.method public final c(Lcom/google/android/gms/internal/ads/dbi;)Lcom/google/android/gms/internal/ads/cxu;
    .locals 3

    .prologue
    .line 29
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/csv;->c()Lcom/google/android/gms/internal/ads/csu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/csu;->a(Lcom/google/android/gms/internal/ads/dbi;)Lcom/google/android/gms/internal/ads/deg;

    move-result-object v0

    .line 30
    invoke-static {}, Lcom/google/android/gms/internal/ads/cxu;->d()Lcom/google/android/gms/internal/ads/cxu$a;

    move-result-object v1

    .line 31
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/csv;->a:Lcom/google/android/gms/internal/ads/csx;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/csx;->b()Ljava/lang/String;

    move-result-object v2

    .line 32
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/cxu$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/cxu$a;

    move-result-object v1

    .line 33
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/deg;->k()Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/cxu$a;->a(Lcom/google/android/gms/internal/ads/dbi;)Lcom/google/android/gms/internal/ads/cxu$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/csv;->a:Lcom/google/android/gms/internal/ads/csx;

    .line 34
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/csx;->c()Lcom/google/android/gms/internal/ads/cxu$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cxu$a;->a(Lcom/google/android/gms/internal/ads/cxu$b;)Lcom/google/android/gms/internal/ads/cxu$a;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcw$a;->g()Lcom/google/android/gms/internal/ads/deg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dcw;

    check-cast v0, Lcom/google/android/gms/internal/ads/cxu;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzeco; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    return-object v0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string/jumbo v2, "Unexpected proto"

    invoke-direct {v1, v2, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
