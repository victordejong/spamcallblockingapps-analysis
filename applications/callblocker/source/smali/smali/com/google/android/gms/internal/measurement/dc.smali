.class final Lcom/google/android/gms/internal/measurement/dc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@17.4.2"


# instance fields
.field private final a:Lcom/google/android/gms/internal/measurement/zzes;

.field private final b:[B


# direct methods
.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/dc;->b:[B

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/dc;->b:[B

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzes;->a([B)Lcom/google/android/gms/internal/measurement/zzes;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/dc;->a:Lcom/google/android/gms/internal/measurement/zzes;

    .line 4
    return-void
.end method

.method synthetic constructor <init>(ILcom/google/android/gms/internal/measurement/cx;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/dc;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/measurement/ct;
    .locals 2

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/dc;->a:Lcom/google/android/gms/internal/measurement/zzes;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzes;->b()V

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/measurement/de;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/dc;->b:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/de;-><init>([B)V

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/measurement/zzes;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/dc;->a:Lcom/google/android/gms/internal/measurement/zzes;

    return-object v0
.end method
