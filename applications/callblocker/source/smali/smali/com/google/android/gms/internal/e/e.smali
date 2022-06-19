.class public final Lcom/google/android/gms/internal/e/e;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.1.1"


# static fields
.field private static final a:Lcom/google/android/gms/internal/e/f;

.field private static volatile b:Lcom/google/android/gms/internal/e/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2
    new-instance v0, Lcom/google/android/gms/internal/e/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/e/g;-><init>(Lcom/google/android/gms/internal/e/h;)V

    .line 3
    sput-object v0, Lcom/google/android/gms/internal/e/e;->a:Lcom/google/android/gms/internal/e/f;

    sput-object v0, Lcom/google/android/gms/internal/e/e;->b:Lcom/google/android/gms/internal/e/f;

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/e/f;
    .locals 1

    .prologue
    .line 1
    sget-object v0, Lcom/google/android/gms/internal/e/e;->b:Lcom/google/android/gms/internal/e/f;

    return-object v0
.end method
