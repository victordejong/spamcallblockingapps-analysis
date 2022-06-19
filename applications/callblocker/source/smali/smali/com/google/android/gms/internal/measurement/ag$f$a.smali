.class public final Lcom/google/android/gms/internal/measurement/ag$f$a;
.super Lcom/google/android/gms/internal/measurement/ed$b;
.source "com.google.android.gms:play-services-measurement@@17.4.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/fp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/ag$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/ed$b",
        "<",
        "Lcom/google/android/gms/internal/measurement/ag$f;",
        "Lcom/google/android/gms/internal/measurement/ag$f$a;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/fp;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ag$f;->j()Lcom/google/android/gms/internal/measurement/ag$f;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/ed$b;-><init>(Lcom/google/android/gms/internal/measurement/ed;)V

    .line 2
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/ah;)V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ag$f$a;-><init>()V

    return-void
.end method
