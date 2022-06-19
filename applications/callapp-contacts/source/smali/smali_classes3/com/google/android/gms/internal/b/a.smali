.class public final Lcom/google/android/gms/internal/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/android/gms/internal/b/b;

.field private static volatile b:Lcom/google/android/gms/internal/b/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/b/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/b/c;-><init>(Lcom/google/android/gms/internal/b/d;)V

    .line 3
    sput-object v0, Lcom/google/android/gms/internal/b/a;->a:Lcom/google/android/gms/internal/b/b;

    sput-object v0, Lcom/google/android/gms/internal/b/a;->b:Lcom/google/android/gms/internal/b/b;

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/b/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/b/a;->b:Lcom/google/android/gms/internal/b/b;

    return-object v0
.end method
