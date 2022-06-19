.class final Lcom/google/android/gms/wearable/internal/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/wearable/b$a;


# instance fields
.field private final a:Lcom/google/android/gms/wearable/b$a;

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/b$a;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/e;->a:Lcom/google/android/gms/wearable/b$a;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/e;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/wearable/c;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/e;->a:Lcom/google/android/gms/wearable/b$a;

    invoke-interface {v0, p1}, Lcom/google/android/gms/wearable/b$a;->a(Lcom/google/android/gms/wearable/c;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    check-cast p1, Lcom/google/android/gms/wearable/internal/e;

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/e;->a:Lcom/google/android/gms/wearable/b$a;

    iget-object v2, p1, Lcom/google/android/gms/wearable/internal/e;->a:Lcom/google/android/gms/wearable/b$a;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/e;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/wearable/internal/e;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/e;->a:Lcom/google/android/gms/wearable/b$a;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 16
    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/e;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
