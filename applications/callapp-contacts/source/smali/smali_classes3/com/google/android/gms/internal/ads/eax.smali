.class final Lcom/google/android/gms/internal/ads/eax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/eat;


# instance fields
.field private final synthetic a:I

.field private final synthetic b:Lcom/google/android/gms/internal/ads/eav;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/eav;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eax;->b:Lcom/google/android/gms/internal/ads/eav;

    iput p2, p0, Lcom/google/android/gms/internal/ads/eax;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/dwe;Ljava/lang/Object;)V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eax;->b:Lcom/google/android/gms/internal/ads/eav;

    iget v1, p0, Lcom/google/android/gms/internal/ads/eax;->a:I

    .line 2033
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/eav;->h:Lcom/google/android/gms/internal/ads/zznh;

    if-nez v2, :cond_3

    .line 2035
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dwe;->a()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 2037
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/eav;->c:Lcom/google/android/gms/internal/ads/dwf;

    .line 3003
    invoke-virtual {p1, v3, v4}, Lcom/google/android/gms/internal/ads/dwe;->a(ILcom/google/android/gms/internal/ads/dwf;)Lcom/google/android/gms/internal/ads/dwf;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2039
    :cond_0
    iget v2, v0, Lcom/google/android/gms/internal/ads/eav;->g:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 2040
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dwe;->b()I

    move-result v2

    iput v2, v0, Lcom/google/android/gms/internal/ads/eav;->g:I

    goto :goto_1

    .line 2041
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dwe;->b()I

    move-result v2

    iget v3, v0, Lcom/google/android/gms/internal/ads/eav;->g:I

    if-eq v2, v3, :cond_2

    .line 2042
    new-instance v2, Lcom/google/android/gms/internal/ads/zznh;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zznh;-><init>(I)V

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v2, 0x0

    .line 2044
    :goto_2
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/eav;->h:Lcom/google/android/gms/internal/ads/zznh;

    .line 2045
    :cond_3
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/eav;->h:Lcom/google/android/gms/internal/ads/zznh;

    if-nez v2, :cond_5

    .line 2047
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/eav;->b:Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/eav;->a:[Lcom/google/android/gms/internal/ads/eau;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    if-nez v1, :cond_4

    .line 2049
    iput-object p1, v0, Lcom/google/android/gms/internal/ads/eav;->e:Lcom/google/android/gms/internal/ads/dwe;

    .line 2050
    iput-object p2, v0, Lcom/google/android/gms/internal/ads/eav;->f:Ljava/lang/Object;

    .line 2051
    :cond_4
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/eav;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2052
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/eav;->d:Lcom/google/android/gms/internal/ads/eat;

    iget-object p2, v0, Lcom/google/android/gms/internal/ads/eav;->e:Lcom/google/android/gms/internal/ads/dwe;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/eav;->f:Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/ads/eat;->a(Lcom/google/android/gms/internal/ads/dwe;Ljava/lang/Object;)V

    :cond_5
    return-void
.end method
