.class final Lcom/google/android/gms/measurement/internal/zzfi;
.super Ls/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls/e<",
        "Ljava/lang/String;",
        "Lcom/google/android/gms/internal/measurement/zzc;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/measurement/internal/zzfl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzfl;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfi;->zza:Lcom/google/android/gms/measurement/internal/zzfl;

    const/16 p1, 0x14

    .line 1
    invoke-direct {p0, p1}, Ls/e;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfi;->zza:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzo(Lcom/google/android/gms/measurement/internal/zzfl;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzc;

    move-result-object p1

    return-object p1
.end method
