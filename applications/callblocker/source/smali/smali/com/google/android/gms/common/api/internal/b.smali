.class public final Lcom/google/android/gms/common/api/internal/b;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/google/android/gms/common/api/a$d;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:I

.field private final c:Lcom/google/android/gms/common/api/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a",
            "<TO;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/common/api/a$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a",
            "<TO;>;TO;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean v2, p0, Lcom/google/android/gms/common/api/internal/b;->a:Z

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/b;->c:Lcom/google/android/gms/common/api/a;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/b;->d:Lcom/google/android/gms/common/api/a$d;

    .line 5
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/b;->c:Lcom/google/android/gms/common/api/a;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/b;->d:Lcom/google/android/gms/common/api/a$d;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/q;->a([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/api/internal/b;->b:I

    .line 6
    return-void
.end method

.method public static a(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;)Lcom/google/android/gms/common/api/internal/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lcom/google/android/gms/common/api/a$d;",
            ">(",
            "Lcom/google/android/gms/common/api/a",
            "<TO;>;TO;)",
            "Lcom/google/android/gms/common/api/internal/b",
            "<TO;>;"
        }
    .end annotation

    .prologue
    .line 13
    new-instance v0, Lcom/google/android/gms/common/api/internal/b;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/api/internal/b;-><init>(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->c:Lcom/google/android/gms/common/api/a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/a;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 19
    if-ne p1, p0, :cond_1

    .line 27
    :cond_0
    :goto_0
    return v0

    .line 21
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/common/api/internal/b;

    if-nez v2, :cond_2

    move v0, v1

    .line 22
    goto :goto_0

    .line 23
    :cond_2
    check-cast p1, Lcom/google/android/gms/common/api/internal/b;

    .line 24
    iget-boolean v2, p0, Lcom/google/android/gms/common/api/internal/b;->a:Z

    if-nez v2, :cond_3

    iget-boolean v2, p1, Lcom/google/android/gms/common/api/internal/b;->a:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/b;->c:Lcom/google/android/gms/common/api/a;

    iget-object v3, p1, Lcom/google/android/gms/common/api/internal/b;->c:Lcom/google/android/gms/common/api/a;

    .line 25
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/b;->d:Lcom/google/android/gms/common/api/a$d;

    iget-object v3, p1, Lcom/google/android/gms/common/api/internal/b;->d:Lcom/google/android/gms/common/api/a$d;

    .line 26
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    .line 27
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/google/android/gms/common/api/internal/b;->b:I

    return v0
.end method
