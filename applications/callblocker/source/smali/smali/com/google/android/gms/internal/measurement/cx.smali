.class final Lcom/google/android/gms/internal/measurement/cx;
.super Lcom/google/android/gms/internal/measurement/cz;
.source "com.google.android.gms:play-services-measurement-base@@17.4.2"


# instance fields
.field private a:I

.field private final b:I

.field private final synthetic c:Lcom/google/android/gms/internal/measurement/ct;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/ct;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/cx;->c:Lcom/google/android/gms/internal/measurement/ct;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/cz;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/cx;->a:I

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/cx;->c:Lcom/google/android/gms/internal/measurement/ct;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ct;->a()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/cx;->b:I

    return-void
.end method


# virtual methods
.method public final a()B
    .locals 2

    .prologue
    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/measurement/cx;->a:I

    .line 6
    iget v1, p0, Lcom/google/android/gms/internal/measurement/cx;->b:I

    if-lt v0, v1, :cond_0

    .line 7
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 8
    :cond_0
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/measurement/cx;->a:I

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/cx;->c:Lcom/google/android/gms/internal/measurement/ct;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/ct;->b(I)B

    move-result v0

    return v0
.end method

.method public final hasNext()Z
    .locals 2

    .prologue
    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/cx;->a:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/cx;->b:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
