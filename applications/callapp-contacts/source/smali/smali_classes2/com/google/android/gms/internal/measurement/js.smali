.class public final Lcom/google/android/gms/internal/measurement/js;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/android/gms/internal/measurement/gu;

.field private static volatile b:Lcom/google/android/gms/internal/measurement/gu;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/ir;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/ir;-><init>(Lcom/google/android/gms/internal/measurement/hs;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/js;->a:Lcom/google/android/gms/internal/measurement/gu;

    sput-object v0, Lcom/google/android/gms/internal/measurement/js;->b:Lcom/google/android/gms/internal/measurement/gu;

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/measurement/gu;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/js;->b:Lcom/google/android/gms/internal/measurement/gu;

    return-object v0
.end method
