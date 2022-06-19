.class public final Lcom/google/android/gms/internal/ads/dhu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dhn;
.implements Lcom/google/android/gms/internal/ads/dig;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dhn",
        "<TT;>;",
        "Lcom/google/android/gms/internal/ads/dig",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private volatile b:Lcom/google/android/gms/internal/ads/dig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dig",
            "<TT;>;"
        }
    .end annotation
.end field

.field private volatile c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/dhu;->a:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/dig;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dig",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/dhu;->a:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dhu;->c:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dhu;->b:Lcom/google/android/gms/internal/ads/dig;

    .line 4
    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/dig;)Lcom/google/android/gms/internal/ads/dig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lcom/google/android/gms/internal/ads/dig",
            "<TT;>;T:",
            "Ljava/lang/Object;",
            ">(TP;)",
            "Lcom/google/android/gms/internal/ads/dig",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 20
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/dhz;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/dhu;

    if-eqz v0, :cond_0

    .line 23
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/dhu;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/dhu;-><init>(Lcom/google/android/gms/internal/ads/dig;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static b(Lcom/google/android/gms/internal/ads/dig;)Lcom/google/android/gms/internal/ads/dhn;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lcom/google/android/gms/internal/ads/dig",
            "<TT;>;T:",
            "Ljava/lang/Object;",
            ">(TP;)",
            "Lcom/google/android/gms/internal/ads/dhn",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 24
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/dhn;

    if-eqz v0, :cond_0

    .line 25
    check-cast p0, Lcom/google/android/gms/internal/ads/dhn;

    .line 27
    :goto_0
    return-object p0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/dhu;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/dhz;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dig;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/dhu;-><init>(Lcom/google/android/gms/internal/ads/dig;)V

    move-object p0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dhu;->c:Ljava/lang/Object;

    .line 6
    sget-object v1, Lcom/google/android/gms/internal/ads/dhu;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_3

    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dhu;->c:Ljava/lang/Object;

    .line 9
    sget-object v1, Lcom/google/android/gms/internal/ads/dhu;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dhu;->b:Lcom/google/android/gms/internal/ads/dig;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dig;->a()Ljava/lang/Object;

    move-result-object v0

    .line 11
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dhu;->c:Ljava/lang/Object;

    .line 12
    sget-object v1, Lcom/google/android/gms/internal/ads/dhu;->a:Ljava/lang/Object;

    if-eq v2, v1, :cond_0

    instance-of v1, v2, Lcom/google/android/gms/internal/ads/dia;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 13
    :goto_0
    if-eqz v1, :cond_1

    if-eq v2, v0, :cond_1

    .line 14
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x76

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Scoped provider was invoked recursively returning different results: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " & "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ". This is likely due to a circular dependency."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 18
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 12
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 16
    :cond_1
    :try_start_1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dhu;->c:Ljava/lang/Object;

    .line 17
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/dhu;->b:Lcom/google/android/gms/internal/ads/dig;

    .line 18
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    :cond_3
    return-object v0
.end method
