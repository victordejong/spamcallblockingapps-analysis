.class public final Lcom/google/android/gms/internal/ads/zzdwk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.7.0"


# instance fields
.field private final limit:I

.field private final zzhvz:Lcom/google/android/gms/internal/ads/zzdvu;

.field private final zzhwa:Z

.field private final zzhwb:Lcom/google/android/gms/internal/ads/zzdwr;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzdwr;)V
    .locals 3

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdvy;->zzhvt:Lcom/google/android/gms/internal/ads/zzdvy;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    .line 3
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzdwk;-><init>(Lcom/google/android/gms/internal/ads/zzdwr;ZLcom/google/android/gms/internal/ads/zzdvu;I)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzdwr;ZLcom/google/android/gms/internal/ads/zzdvu;I)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdwk;->zzhwb:Lcom/google/android/gms/internal/ads/zzdwr;

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdwk;->zzhwa:Z

    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdwk;->zzhvz:Lcom/google/android/gms/internal/ads/zzdvu;

    const p1, 0x7fffffff

    .line 9
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdwk;->limit:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdwk;)Lcom/google/android/gms/internal/ads/zzdvu;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdwk;->zzhvz:Lcom/google/android/gms/internal/ads/zzdvu;

    return-object p0
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzdvu;)Lcom/google/android/gms/internal/ads/zzdwk;
    .locals 2

    .line 11
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdwl;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdwk;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdwn;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdwn;-><init>(Lcom/google/android/gms/internal/ads/zzdvu;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdwk;-><init>(Lcom/google/android/gms/internal/ads/zzdwr;)V

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdwk;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdwk;->zzb(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzdwk;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/google/android/gms/internal/ads/zzdwk;->limit:I

    return p0
.end method

.method private final zzb(Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwk;->zzhwb:Lcom/google/android/gms/internal/ads/zzdwr;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzdwr;->zzb(Lcom/google/android/gms/internal/ads/zzdwk;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final zza(Ljava/lang/CharSequence;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdwl;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdwp;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzdwp;-><init>(Lcom/google/android/gms/internal/ads/zzdwk;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public final zzc(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 16
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdwl;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdwk;->zzb(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p1

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 21
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
