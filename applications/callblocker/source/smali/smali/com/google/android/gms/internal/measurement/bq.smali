.class final Lcom/google/android/gms/internal/measurement/bq;
.super Lcom/google/android/gms/internal/measurement/bj;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/bj",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/bp;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    .prologue
    .line 1
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/bj;-><init>(Lcom/google/android/gms/internal/measurement/bp;Ljava/lang/String;Ljava/lang/Object;ZLcom/google/android/gms/internal/measurement/bl;)V

    return-void
.end method


# virtual methods
.method final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2
    .line 3
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Ljava/lang/String;

    .line 6
    :goto_0
    return-object p1

    .line 5
    :cond_0
    const/4 p1, 0x0

    .line 6
    goto :goto_0
.end method
