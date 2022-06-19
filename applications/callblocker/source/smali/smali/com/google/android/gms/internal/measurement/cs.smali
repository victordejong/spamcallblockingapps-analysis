.class final Lcom/google/android/gms/internal/measurement/cs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@17.4.2"


# instance fields
.field public a:I

.field public b:J

.field public c:Ljava/lang/Object;

.field public final d:Lcom/google/android/gms/internal/measurement/dp;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/dp;->a()Lcom/google/android/gms/internal/measurement/dp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/cs;->d:Lcom/google/android/gms/internal/measurement/dp;

    .line 3
    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/measurement/dp;)V
    .locals 1

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    if-nez p1, :cond_0

    .line 6
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/cs;->d:Lcom/google/android/gms/internal/measurement/dp;

    .line 8
    return-void
.end method
