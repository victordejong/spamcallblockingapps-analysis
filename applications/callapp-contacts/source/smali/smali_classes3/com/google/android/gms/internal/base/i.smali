.class public final Lcom/google/android/gms/internal/base/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/android/gms/internal/base/f;

.field private static volatile b:Lcom/google/android/gms/internal/base/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/base/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/base/h;-><init>(Lcom/google/android/gms/internal/base/g;)V

    sput-object v0, Lcom/google/android/gms/internal/base/i;->a:Lcom/google/android/gms/internal/base/f;

    sput-object v0, Lcom/google/android/gms/internal/base/i;->b:Lcom/google/android/gms/internal/base/f;

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/base/f;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/base/i;->b:Lcom/google/android/gms/internal/base/f;

    return-object v0
.end method
