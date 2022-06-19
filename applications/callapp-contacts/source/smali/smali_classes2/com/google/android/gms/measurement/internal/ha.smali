.class final Lcom/google/android/gms/measurement/internal/ha;
.super Lcom/google/android/gms/measurement/internal/je;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/jo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/je;-><init>(Lcom/google/android/gms/measurement/internal/jo;)V

    return-void
.end method

.method static final b()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "This implementation should not be used."

    .line 1
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected final a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
