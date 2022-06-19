.class public final Lcom/google/android/gms/internal/ads/eav;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/eau;


# instance fields
.field final a:[Lcom/google/android/gms/internal/ads/eau;

.field final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/internal/ads/eau;",
            ">;"
        }
    .end annotation
.end field

.field final c:Lcom/google/android/gms/internal/ads/dwf;

.field d:Lcom/google/android/gms/internal/ads/eat;

.field e:Lcom/google/android/gms/internal/ads/dwe;

.field f:Ljava/lang/Object;

.field g:I

.field h:Lcom/google/android/gms/internal/ads/zznh;


# direct methods
.method public varargs constructor <init>([Lcom/google/android/gms/internal/ads/eau;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eav;->a:[Lcom/google/android/gms/internal/ads/eau;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/eav;->b:Ljava/util/ArrayList;

    .line 4
    new-instance p1, Lcom/google/android/gms/internal/ads/dwf;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/dwf;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eav;->c:Lcom/google/android/gms/internal/ads/dwf;

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/google/android/gms/internal/ads/eav;->g:I

    return-void
.end method


# virtual methods
.method public final a(ILcom/google/android/gms/internal/ads/ebz;)Lcom/google/android/gms/internal/ads/eas;
    .locals 4

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eav;->a:[Lcom/google/android/gms/internal/ads/eau;

    array-length v0, v0

    new-array v1, v0, [Lcom/google/android/gms/internal/ads/eas;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 21
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/eav;->a:[Lcom/google/android/gms/internal/ads/eau;

    aget-object v3, v3, v2

    invoke-interface {v3, p1, p2}, Lcom/google/android/gms/internal/ads/eau;->a(ILcom/google/android/gms/internal/ads/ebz;)Lcom/google/android/gms/internal/ads/eas;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 23
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/eaw;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/eaw;-><init>([Lcom/google/android/gms/internal/ads/eas;)V

    return-object p1
.end method

.method public final a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eav;->h:Lcom/google/android/gms/internal/ads/zznh;

    if-nez v0, :cond_1

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eav;->a:[Lcom/google/android/gms/internal/ads/eau;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 16
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/eau;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 14
    :cond_1
    throw v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dvl;Lcom/google/android/gms/internal/ads/eat;)V
    .locals 2

    .line 7
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/eav;->d:Lcom/google/android/gms/internal/ads/eat;

    const/4 p2, 0x0

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eav;->a:[Lcom/google/android/gms/internal/ads/eau;

    array-length v1, v0

    if-ge p2, v1, :cond_0

    .line 10
    aget-object v0, v0, p2

    new-instance v1, Lcom/google/android/gms/internal/ads/eax;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/ads/eax;-><init>(Lcom/google/android/gms/internal/ads/eav;I)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/eau;->a(Lcom/google/android/gms/internal/ads/dvl;Lcom/google/android/gms/internal/ads/eat;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/eas;)V
    .locals 3

    .line 24
    check-cast p1, Lcom/google/android/gms/internal/ads/eaw;

    const/4 v0, 0x0

    .line 25
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eav;->a:[Lcom/google/android/gms/internal/ads/eau;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 26
    aget-object v1, v1, v0

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/eaw;->a:[Lcom/google/android/gms/internal/ads/eas;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/eau;->a(Lcom/google/android/gms/internal/ads/eas;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 4

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eav;->a:[Lcom/google/android/gms/internal/ads/eau;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 30
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/eau;->b()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
