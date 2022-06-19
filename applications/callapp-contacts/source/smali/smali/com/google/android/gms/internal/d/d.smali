.class public final Lcom/google/android/gms/internal/d/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/android/gms/internal/d/a;

.field private static volatile b:Lcom/google/android/gms/internal/d/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/d/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/d/c;-><init>(Lcom/google/android/gms/internal/d/b;)V

    sput-object v0, Lcom/google/android/gms/internal/d/d;->a:Lcom/google/android/gms/internal/d/a;

    sput-object v0, Lcom/google/android/gms/internal/d/d;->b:Lcom/google/android/gms/internal/d/a;

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/d/a;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/d/d;->b:Lcom/google/android/gms/internal/d/a;

    return-object v0
.end method
