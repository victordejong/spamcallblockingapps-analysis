.class final Lcom/google/android/gms/internal/consent_sdk/bn;
.super Lcom/google/android/gms/internal/consent_sdk/bj;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/internal/consent_sdk/bm;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/consent_sdk/bj;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/bm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/consent_sdk/bm;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/bn;->a:Lcom/google/android/gms/internal/consent_sdk/bm;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 1

    if-eq p2, p1, :cond_0

    const-string v0, "The suppressed exception cannot be null."

    .line 6
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/bn;->a:Lcom/google/android/gms/internal/consent_sdk/bm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/consent_sdk/bm;->a(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Self suppression is not allowed."

    invoke-direct {p1, v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
