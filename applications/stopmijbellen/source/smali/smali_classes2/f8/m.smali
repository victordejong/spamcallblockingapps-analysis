.class public final synthetic Lf8/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls4/b$a;


# instance fields
.field public final synthetic a:Lcom/mglab/scm/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/mglab/scm/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf8/m;->a:Lcom/mglab/scm/MainActivity;

    return-void
.end method


# virtual methods
.method public final a(Ls4/e;)V
    .locals 2

    iget-object p1, p0, Lf8/m;->a:Lcom/mglab/scm/MainActivity;

    sget v0, Lcom/mglab/scm/MainActivity;->v:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    new-instance v0, Lz2/q;

    const/4 v1, 0x5

    invoke-direct {v0, p1, v1}, Lz2/q;-><init>(Ljava/lang/Object;I)V

    sget-object v1, Lz2/p;->f:Lz2/p;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/consent_sdk/zzd;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/consent_sdk/zzd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/consent_sdk/zzd;->zzc()Lcom/google/android/gms/internal/consent_sdk/zzba;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/consent_sdk/zzba;->zza(Ls4/g;Ls4/f;)V

    return-void
.end method
