.class public final Lcom/google/android/gms/internal/e/j;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.1.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final enum a:I

.field private static final enum b:I

.field private static final synthetic c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 1
    const/4 v0, 0x1

    sput v0, Lcom/google/android/gms/internal/e/j;->b:I

    .line 2
    sput v1, Lcom/google/android/gms/internal/e/j;->a:I

    .line 3
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/e/j;->c:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data
.end method
