.class public final Lcom/google/android/gms/internal/c/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/android/gms/internal/c/d;

.field private static volatile b:Lcom/google/android/gms/internal/c/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/c/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/c/f;-><init>(Lcom/google/android/gms/internal/c/e;)V

    sput-object v0, Lcom/google/android/gms/internal/c/g;->a:Lcom/google/android/gms/internal/c/d;

    sput-object v0, Lcom/google/android/gms/internal/c/g;->b:Lcom/google/android/gms/internal/c/d;

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/c/d;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/c/g;->b:Lcom/google/android/gms/internal/c/d;

    return-object v0
.end method
