.class Lcom/google/android/gms/measurement/internal/d9;
.super Lcom/google/android/gms/measurement/internal/m5;
.source "com.google.android.gms:play-services-measurement@@18.0.3"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/o5;


# instance fields
.field protected final b:Lcom/google/android/gms/measurement/internal/o9;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/o9;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/o9;->r()Lcom/google/android/gms/measurement/internal/s4;

    move-result-object v0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/m5;-><init>(Lcom/google/android/gms/measurement/internal/s4;)V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/d9;->b:Lcom/google/android/gms/measurement/internal/o9;

    return-void
.end method
