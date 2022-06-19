.class Lcom/google/android/mms/c/k$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/mms/c/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/google/android/mms/c/k$c;

.field private b:Lcom/google/android/mms/c/k$c;

.field c:I

.field final synthetic d:Lcom/google/android/mms/c/k;


# direct methods
.method private constructor <init>(Lcom/google/android/mms/c/k;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/mms/c/k$b;->d:Lcom/google/android/mms/c/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/mms/c/k$b;->a:Lcom/google/android/mms/c/k$c;

    iput-object p1, p0, Lcom/google/android/mms/c/k$b;->b:Lcom/google/android/mms/c/k$c;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/mms/c/k$b;->c:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/mms/c/k;Lcom/google/android/mms/c/k$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/mms/c/k$b;-><init>(Lcom/google/android/mms/c/k;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/mms/c/k$b;->d:Lcom/google/android/mms/c/k;

    iget-object v1, p0, Lcom/google/android/mms/c/k$b;->b:Lcom/google/android/mms/c/k$c;

    iget-object v1, v1, Lcom/google/android/mms/c/k$c;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/mms/c/k$b;->b:Lcom/google/android/mms/c/k$c;

    iget v2, v2, Lcom/google/android/mms/c/k$c;->b:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/mms/c/k;->q([BII)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/mms/c/k$b;->b:Lcom/google/android/mms/c/k$c;

    return-void
.end method

.method b()Lcom/google/android/mms/c/k$d;
    .locals 3

    new-instance v0, Lcom/google/android/mms/c/k$d;

    iget-object v1, p0, Lcom/google/android/mms/c/k$b;->d:Lcom/google/android/mms/c/k;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/mms/c/k$d;-><init>(Lcom/google/android/mms/c/k;Lcom/google/android/mms/c/k$a;)V

    iget v1, v1, Lcom/google/android/mms/c/k;->c:I

    invoke-static {v0, v1}, Lcom/google/android/mms/c/k$d;->a(Lcom/google/android/mms/c/k$d;I)I

    iget v1, p0, Lcom/google/android/mms/c/k$b;->c:I

    invoke-static {v0, v1}, Lcom/google/android/mms/c/k$d;->b(Lcom/google/android/mms/c/k$d;I)I

    return-object v0
.end method

.method c()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/mms/c/k$b;->b:Lcom/google/android/mms/c/k$c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/mms/c/k$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/mms/c/k$c;-><init>(Lcom/google/android/mms/c/k$a;)V

    iget-object v1, p0, Lcom/google/android/mms/c/k$b;->d:Lcom/google/android/mms/c/k;

    iget-object v2, v1, Lcom/google/android/mms/c/k;->a:Ljava/io/ByteArrayOutputStream;

    iput-object v2, v0, Lcom/google/android/mms/c/k$c;->a:Ljava/io/ByteArrayOutputStream;

    iget v2, v1, Lcom/google/android/mms/c/k;->c:I

    iput v2, v0, Lcom/google/android/mms/c/k$c;->b:I

    iget-object v2, p0, Lcom/google/android/mms/c/k$b;->a:Lcom/google/android/mms/c/k$c;

    iput-object v2, v0, Lcom/google/android/mms/c/k$c;->c:Lcom/google/android/mms/c/k$c;

    iput-object v0, p0, Lcom/google/android/mms/c/k$b;->a:Lcom/google/android/mms/c/k$c;

    iget v0, p0, Lcom/google/android/mms/c/k$b;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/mms/c/k$b;->c:I

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, v1, Lcom/google/android/mms/c/k;->a:Ljava/io/ByteArrayOutputStream;

    iget-object v0, p0, Lcom/google/android/mms/c/k$b;->d:Lcom/google/android/mms/c/k;

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/mms/c/k;->c:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "BUG: Invalid newbuf() before copy()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method d()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/mms/c/k$b;->d:Lcom/google/android/mms/c/k;

    iget-object v1, v0, Lcom/google/android/mms/c/k;->a:Ljava/io/ByteArrayOutputStream;

    iget v2, v0, Lcom/google/android/mms/c/k;->c:I

    iget-object v3, p0, Lcom/google/android/mms/c/k$b;->a:Lcom/google/android/mms/c/k$c;

    iget-object v4, v3, Lcom/google/android/mms/c/k$c;->a:Ljava/io/ByteArrayOutputStream;

    iput-object v4, v0, Lcom/google/android/mms/c/k;->a:Ljava/io/ByteArrayOutputStream;

    iget v4, v3, Lcom/google/android/mms/c/k$c;->b:I

    iput v4, v0, Lcom/google/android/mms/c/k;->c:I

    iput-object v3, p0, Lcom/google/android/mms/c/k$b;->b:Lcom/google/android/mms/c/k$c;

    iget-object v0, v3, Lcom/google/android/mms/c/k$c;->c:Lcom/google/android/mms/c/k$c;

    iput-object v0, p0, Lcom/google/android/mms/c/k$b;->a:Lcom/google/android/mms/c/k$c;

    iget v0, p0, Lcom/google/android/mms/c/k$b;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/mms/c/k$b;->c:I

    iput-object v1, v3, Lcom/google/android/mms/c/k$c;->a:Ljava/io/ByteArrayOutputStream;

    iput v2, v3, Lcom/google/android/mms/c/k$c;->b:I

    return-void
.end method
