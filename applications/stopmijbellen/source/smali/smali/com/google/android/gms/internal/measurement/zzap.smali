.class public interface abstract Lcom/google/android/gms/internal/measurement/zzap;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zzf:Lcom/google/android/gms/internal/measurement/zzap;

.field public static final zzg:Lcom/google/android/gms/internal/measurement/zzap;

.field public static final zzh:Lcom/google/android/gms/internal/measurement/zzap;

.field public static final zzi:Lcom/google/android/gms/internal/measurement/zzap;

.field public static final zzj:Lcom/google/android/gms/internal/measurement/zzap;

.field public static final zzk:Lcom/google/android/gms/internal/measurement/zzap;

.field public static final zzl:Lcom/google/android/gms/internal/measurement/zzap;

.field public static final zzm:Lcom/google/android/gms/internal/measurement/zzap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzau;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzau;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzap;->zzf:Lcom/google/android/gms/internal/measurement/zzap;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzan;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzan;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzap;->zzg:Lcom/google/android/gms/internal/measurement/zzap;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzag;

    const-string v1, "continue"

    .line 1
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzap;->zzh:Lcom/google/android/gms/internal/measurement/zzap;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzag;

    const-string v1, "break"

    .line 2
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzap;->zzi:Lcom/google/android/gms/internal/measurement/zzap;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzag;

    const-string v1, "return"

    .line 3
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzap;->zzj:Lcom/google/android/gms/internal/measurement/zzap;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzaf;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 4
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzaf;-><init>(Ljava/lang/Boolean;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzap;->zzk:Lcom/google/android/gms/internal/measurement/zzap;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzaf;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 5
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzaf;-><init>(Ljava/lang/Boolean;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzap;->zzl:Lcom/google/android/gms/internal/measurement/zzap;

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzat;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzap;->zzm:Lcom/google/android/gms/internal/measurement/zzap;

    return-void
.end method


# virtual methods
.method public abstract zzbK(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzg;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/zzap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/measurement/zzg;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzap;",
            ">;)",
            "Lcom/google/android/gms/internal/measurement/zzap;"
        }
    .end annotation
.end method

.method public abstract zzc()Ljava/lang/String;
.end method

.method public abstract zzd()Ljava/lang/Double;
.end method

.method public abstract zze()Ljava/lang/Boolean;
.end method

.method public abstract zzf()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/android/gms/internal/measurement/zzap;",
            ">;"
        }
    .end annotation
.end method

.method public abstract zzt()Lcom/google/android/gms/internal/measurement/zzap;
.end method
