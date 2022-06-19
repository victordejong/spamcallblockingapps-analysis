.class public final Lcom/google/android/gms/internal/measurement/a9;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-sdk-api@@18.0.3"


# static fields
.field private static final a:Lcom/google/android/gms/internal/measurement/g6;

.field private static volatile b:Lcom/google/android/gms/internal/measurement/g6;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/c8;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/c8;-><init>(Lcom/google/android/gms/internal/measurement/c7;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/a9;->a:Lcom/google/android/gms/internal/measurement/g6;

    sput-object v0, Lcom/google/android/gms/internal/measurement/a9;->b:Lcom/google/android/gms/internal/measurement/g6;

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/measurement/g6;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/a9;->b:Lcom/google/android/gms/internal/measurement/g6;

    return-object v0
.end method
