.class final synthetic Lcom/google/android/gms/internal/ads/ary;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/awn;


# static fields
.field static final a:Lcom/google/android/gms/internal/ads/awn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/ary;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ary;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/ary;->a:Lcom/google/android/gms/internal/ads/awn;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/asd;

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/cqj;->zzhpf:Lcom/google/android/gms/internal/ads/cqj;

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1, v1}, Lcom/google/android/gms/internal/ads/cqh;->a(Lcom/google/android/gms/internal/ads/cqj;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvh;)Lcom/google/android/gms/internal/ads/zzvh;

    move-result-object v0

    .line 4
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/asd;->a_(Lcom/google/android/gms/internal/ads/zzvh;)V

    return-void
.end method
