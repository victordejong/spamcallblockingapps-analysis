.class Lcom/google/android/mms/c/k$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/mms/c/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field final synthetic c:Lcom/google/android/mms/c/k;


# direct methods
.method private constructor <init>(Lcom/google/android/mms/c/k;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/mms/c/k$d;->c:Lcom/google/android/mms/c/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/mms/c/k;Lcom/google/android/mms/c/k$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/mms/c/k$d;-><init>(Lcom/google/android/mms/c/k;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/mms/c/k$d;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/mms/c/k$d;->a:I

    return p1
.end method

.method static synthetic b(Lcom/google/android/mms/c/k$d;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/mms/c/k$d;->b:I

    return p1
.end method


# virtual methods
.method c()I
    .locals 2

    iget v0, p0, Lcom/google/android/mms/c/k$d;->b:I

    iget-object v1, p0, Lcom/google/android/mms/c/k$d;->c:Lcom/google/android/mms/c/k;

    invoke-static {v1}, Lcom/google/android/mms/c/k;->a(Lcom/google/android/mms/c/k;)Lcom/google/android/mms/c/k$b;

    move-result-object v1

    iget v1, v1, Lcom/google/android/mms/c/k$b;->c:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/mms/c/k$d;->c:Lcom/google/android/mms/c/k;

    iget v0, v0, Lcom/google/android/mms/c/k;->c:I

    iget v1, p0, Lcom/google/android/mms/c/k$d;->a:I

    sub-int/2addr v0, v1

    return v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "BUG: Invalid call to getLength()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
