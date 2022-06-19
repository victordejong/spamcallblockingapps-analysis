.class public final Lcom/google/android/gms/internal/g/a;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@20.1.5"


# static fields
.field private static final a:Lcom/google/android/gms/internal/g/b;

.field private static volatile b:Lcom/google/android/gms/internal/g/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2
    new-instance v0, Lcom/google/android/gms/internal/g/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/g/c;-><init>(Lcom/google/android/gms/internal/g/d;)V

    .line 3
    sput-object v0, Lcom/google/android/gms/internal/g/a;->a:Lcom/google/android/gms/internal/g/b;

    sput-object v0, Lcom/google/android/gms/internal/g/a;->b:Lcom/google/android/gms/internal/g/b;

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/g/b;
    .locals 1

    .prologue
    .line 1
    sget-object v0, Lcom/google/android/gms/internal/g/a;->b:Lcom/google/android/gms/internal/g/b;

    return-object v0
.end method
