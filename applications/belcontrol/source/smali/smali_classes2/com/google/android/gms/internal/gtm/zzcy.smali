.class public final Lcom/google/android/gms/internal/gtm/zzcy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbn;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation


# instance fields
.field public zzacm:Ljava/lang/String;

.field public zzacn:D

.field public zzaco:I

.field public zzacp:I

.field public zzacq:I

.field public zzacr:I

.field public zzacs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzcy;->zzacn:D

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzcy;->zzaco:I

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzcy;->zzacp:I

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzcy;->zzacq:I

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzcy;->zzacr:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcy;->zzacs:Ljava/util/Map;

    return-void
.end method
