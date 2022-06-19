.class final Lcom/google/android/gms/internal/ads/emy$a;
.super Lcom/google/android/gms/internal/ads/is;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/emy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/emy;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/emy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/emy$a;->a:Lcom/google/android/gms/internal/ads/emy;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/is;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/emy;Lcom/google/android/gms/internal/ads/enb;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/emy$a;-><init>(Lcom/google/android/gms/internal/ads/emy;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzajm;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/emy$a;->a:Lcom/google/android/gms/internal/ads/emy;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/emy;->a(Lcom/google/android/gms/internal/ads/emy;)Z

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/emy$a;->a:Lcom/google/android/gms/internal/ads/emy;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/emy;->b(Lcom/google/android/gms/internal/ads/emy;)Z

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/emy;->a(Ljava/util/List;)Lcom/google/android/gms/ads/initialization/InitializationStatus;

    move-result-object p1

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/emy;->a()Lcom/google/android/gms/internal/ads/emy;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/emy;->c(Lcom/google/android/gms/internal/ads/emy;)Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;

    .line 6
    invoke-interface {v3, p1}, Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;->onInitializationComplete(Lcom/google/android/gms/ads/initialization/InitializationStatus;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/emy;->a()Lcom/google/android/gms/internal/ads/emy;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/emy;->c(Lcom/google/android/gms/internal/ads/emy;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
