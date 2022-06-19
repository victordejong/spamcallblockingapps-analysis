.class final Lcom/google/zxing/c/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[I


# instance fields
.field private final b:Lcom/google/zxing/c/q;

.field private final c:Lcom/google/zxing/c/r;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 26
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/c/s;->a:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x1
        0x2
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/google/zxing/c/q;

    invoke-direct {v0}, Lcom/google/zxing/c/q;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/c/s;->b:Lcom/google/zxing/c/q;

    .line 29
    new-instance v0, Lcom/google/zxing/c/r;

    invoke-direct {v0}, Lcom/google/zxing/c/r;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/c/s;->c:Lcom/google/zxing/c/r;

    return-void
.end method
