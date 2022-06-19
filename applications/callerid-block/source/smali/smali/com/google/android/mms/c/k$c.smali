.class Lcom/google/android/mms/c/k$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/mms/c/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field a:Ljava/io/ByteArrayOutputStream;

.field public b:I

.field public c:Lcom/google/android/mms/c/k$c;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/mms/c/k$c;->a:Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/mms/c/k$c;->b:I

    iput-object v0, p0, Lcom/google/android/mms/c/k$c;->c:Lcom/google/android/mms/c/k$c;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/mms/c/k$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/mms/c/k$c;-><init>()V

    return-void
.end method
