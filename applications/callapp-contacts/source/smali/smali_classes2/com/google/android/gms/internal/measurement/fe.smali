.class final Lcom/google/android/gms/internal/measurement/fe;
.super Lcom/google/android/gms/internal/measurement/fg;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/measurement/fm;

.field private b:I

.field private final c:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/fm;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/fe;->a:Lcom/google/android/gms/internal/measurement/fm;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/fg;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/fe;->b:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/fm;->a()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/fe;->c:I

    return-void
.end method


# virtual methods
.method public final a()B
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/fe;->b:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/fe;->c:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 1
    iput v1, p0, Lcom/google/android/gms/internal/measurement/fe;->b:I

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/fe;->a:Lcom/google/android/gms/internal/measurement/fm;

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/fm;->b(I)B

    move-result v0

    return v0

    .line 0
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 1
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/fe;->b:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/fe;->c:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
