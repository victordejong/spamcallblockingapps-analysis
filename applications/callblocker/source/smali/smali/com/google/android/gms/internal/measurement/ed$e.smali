.class public final Lcom/google/android/gms/internal/measurement/ed$e;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@17.4.2"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/ed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final enum a:I

.field public static final enum b:I

.field public static final enum c:I

.field public static final enum d:I

.field public static final enum e:I

.field public static final enum f:I

.field public static final enum g:I

.field public static final enum h:I

.field public static final enum i:I

.field public static final enum j:I

.field public static final enum k:I

.field private static final synthetic l:[I

.field private static final synthetic m:[I

.field private static final synthetic n:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v2, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    sput v3, Lcom/google/android/gms/internal/measurement/ed$e;->a:I

    sput v4, Lcom/google/android/gms/internal/measurement/ed$e;->b:I

    sput v2, Lcom/google/android/gms/internal/measurement/ed$e;->c:I

    sput v6, Lcom/google/android/gms/internal/measurement/ed$e;->d:I

    const/4 v0, 0x5

    sput v0, Lcom/google/android/gms/internal/measurement/ed$e;->e:I

    const/4 v0, 0x6

    sput v0, Lcom/google/android/gms/internal/measurement/ed$e;->f:I

    const/4 v0, 0x7

    sput v0, Lcom/google/android/gms/internal/measurement/ed$e;->g:I

    const/4 v0, 0x7

    new-array v0, v0, [I

    sget v1, Lcom/google/android/gms/internal/measurement/ed$e;->a:I

    aput v1, v0, v5

    sget v1, Lcom/google/android/gms/internal/measurement/ed$e;->b:I

    aput v1, v0, v3

    sget v1, Lcom/google/android/gms/internal/measurement/ed$e;->c:I

    aput v1, v0, v4

    sget v1, Lcom/google/android/gms/internal/measurement/ed$e;->d:I

    aput v1, v0, v2

    sget v1, Lcom/google/android/gms/internal/measurement/ed$e;->e:I

    aput v1, v0, v6

    const/4 v1, 0x5

    sget v2, Lcom/google/android/gms/internal/measurement/ed$e;->f:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/google/android/gms/internal/measurement/ed$e;->g:I

    aput v2, v0, v1

    sput-object v0, Lcom/google/android/gms/internal/measurement/ed$e;->l:[I

    sput v3, Lcom/google/android/gms/internal/measurement/ed$e;->h:I

    sput v4, Lcom/google/android/gms/internal/measurement/ed$e;->i:I

    new-array v0, v4, [I

    sget v1, Lcom/google/android/gms/internal/measurement/ed$e;->h:I

    aput v1, v0, v5

    sget v1, Lcom/google/android/gms/internal/measurement/ed$e;->i:I

    aput v1, v0, v3

    sput-object v0, Lcom/google/android/gms/internal/measurement/ed$e;->m:[I

    sput v3, Lcom/google/android/gms/internal/measurement/ed$e;->j:I

    sput v4, Lcom/google/android/gms/internal/measurement/ed$e;->k:I

    new-array v0, v4, [I

    sget v1, Lcom/google/android/gms/internal/measurement/ed$e;->j:I

    aput v1, v0, v5

    sget v1, Lcom/google/android/gms/internal/measurement/ed$e;->k:I

    aput v1, v0, v3

    sput-object v0, Lcom/google/android/gms/internal/measurement/ed$e;->n:[I

    return-void
.end method

.method public static a()[I
    .locals 1

    .prologue
    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/ed$e;->l:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
