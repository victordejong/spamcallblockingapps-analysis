.class final Lcom/google/android/gms/internal/measurement/gj;
.super Lcom/google/android/gms/internal/measurement/gp;
.source "com.google.android.gms:play-services-measurement-base@@17.4.2"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/gp;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/measurement/gi;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/measurement/gi;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/gj;->a:Lcom/google/android/gms/internal/measurement/gi;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/gp;-><init>(Lcom/google/android/gms/internal/measurement/gi;Lcom/google/android/gms/internal/measurement/gh;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/gi;Lcom/google/android/gms/internal/measurement/gh;)V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/gj;-><init>(Lcom/google/android/gms/internal/measurement/gi;)V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 2
    new-instance v0, Lcom/google/android/gms/internal/measurement/gk;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/gj;->a:Lcom/google/android/gms/internal/measurement/gi;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/gk;-><init>(Lcom/google/android/gms/internal/measurement/gi;Lcom/google/android/gms/internal/measurement/gh;)V

    return-object v0
.end method
