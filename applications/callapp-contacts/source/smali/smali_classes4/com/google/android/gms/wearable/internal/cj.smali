.class final Lcom/google/android/gms/wearable/internal/cj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/wearable/f$a;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/android/gms/wearable/f$a;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/wearable/f$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/cj;->a:Ljava/lang/String;

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/f$a;

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/cj;->b:Lcom/google/android/gms/wearable/f$a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/wearable/Channel;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/cj;->b:Lcom/google/android/gms/wearable/f$a;

    invoke-interface {v0, p1}, Lcom/google/android/gms/wearable/f$a;->a(Lcom/google/android/gms/wearable/Channel;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/wearable/Channel;II)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/cj;->b:Lcom/google/android/gms/wearable/f$a;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/wearable/f$a;->a(Lcom/google/android/gms/wearable/Channel;II)V

    return-void
.end method

.method public final b(Lcom/google/android/gms/wearable/Channel;II)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/cj;->b:Lcom/google/android/gms/wearable/f$a;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/wearable/f$a;->b(Lcom/google/android/gms/wearable/Channel;II)V

    return-void
.end method

.method public final c(Lcom/google/android/gms/wearable/Channel;II)V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/cj;->b:Lcom/google/android/gms/wearable/f$a;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/wearable/f$a;->c(Lcom/google/android/gms/wearable/Channel;II)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 15
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/wearable/internal/cj;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 17
    :cond_1
    check-cast p1, Lcom/google/android/gms/wearable/internal/cj;

    .line 18
    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/cj;->b:Lcom/google/android/gms/wearable/f$a;

    iget-object v3, p1, Lcom/google/android/gms/wearable/internal/cj;->b:Lcom/google/android/gms/wearable/f$a;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/cj;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/wearable/internal/cj;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/cj;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 20
    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/cj;->b:Lcom/google/android/gms/wearable/f$a;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
