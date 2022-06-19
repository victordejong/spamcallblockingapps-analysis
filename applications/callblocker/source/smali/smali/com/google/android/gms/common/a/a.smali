.class public Lcom/google/android/gms/common/a/a;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.1.1"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/gms/common/internal/j;

.field private final d:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p2, p0, Lcom/google/android/gms/common/a/a;->b:Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lcom/google/android/gms/common/a/a;->a:Ljava/lang/String;

    .line 18
    new-instance v0, Lcom/google/android/gms/common/internal/j;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/internal/j;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/common/a/a;->c:Lcom/google/android/gms/common/internal/j;

    .line 20
    const/4 v0, 0x2

    .line 21
    :goto_0
    const/4 v1, 0x7

    if-lt v1, v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/a/a;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 22
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 24
    :cond_0
    iput v0, p0, Lcom/google/android/gms/common/a/a;->d:I

    .line 25
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 1
    .line 2
    array-length v0, p2

    if-nez v0, :cond_0

    .line 3
    const-string/jumbo v0, ""

    .line 13
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    return-void

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    const/16 v0, 0x5b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    array-length v2, p2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_2

    aget-object v3, p2, v0

    .line 7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    .line 8
    const-string/jumbo v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 11
    :cond_2
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 34
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/a/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/common/a/a;->a:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/a/a;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_0
    return-void
.end method

.method public a(I)Z
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/google/android/gms/common/a/a;->d:I

    if-gt v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/gms/common/a/a;->a:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/a/a;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return-void
.end method

.method protected varargs c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    .line 53
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
