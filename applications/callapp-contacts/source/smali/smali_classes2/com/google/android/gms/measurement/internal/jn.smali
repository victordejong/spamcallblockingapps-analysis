.class final Lcom/google/android/gms/measurement/internal/jn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/google/android/gms/internal/measurement/ce;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/bw;",
            ">;"
        }
    .end annotation
.end field

.field d:J

.field final synthetic e:Lcom/google/android/gms/measurement/internal/jo;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/jo;Lcom/google/android/gms/measurement/internal/jh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/jn;->e:Lcom/google/android/gms/measurement/internal/jo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final a(Lcom/google/android/gms/internal/measurement/bw;)J
    .locals 4

    .line 1000
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/bw;->zzg:J

    const-wide/16 v2, 0x3e8

    .line 1
    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    return-wide v0
.end method
