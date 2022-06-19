.class public final Lcom/google/android/gms/internal/ads/cf1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/cf1;


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/g00;

.field private final c:Lcom/google/android/gms/internal/ads/d00;

.field private final d:Lcom/google/android/gms/internal/ads/t00;

.field private final e:Lcom/google/android/gms/internal/ads/q00;

.field private final f:Lcom/google/android/gms/internal/ads/q40;

.field private final g:Lb/e/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/e/g<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/m00;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lb/e/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/e/g<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/j00;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/af1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/af1;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/cf1;

    .line 2
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/cf1;-><init>(Lcom/google/android/gms/internal/ads/af1;)V

    sput-object v1, Lcom/google/android/gms/internal/ads/cf1;->a:Lcom/google/android/gms/internal/ads/cf1;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/af1;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/af1;->a:Lcom/google/android/gms/internal/ads/g00;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cf1;->b:Lcom/google/android/gms/internal/ads/g00;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/af1;->b:Lcom/google/android/gms/internal/ads/d00;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cf1;->c:Lcom/google/android/gms/internal/ads/d00;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/af1;->c:Lcom/google/android/gms/internal/ads/t00;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cf1;->d:Lcom/google/android/gms/internal/ads/t00;

    new-instance v0, Lb/e/g;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/af1;->f:Lb/e/g;

    invoke-direct {v0, v1}, Lb/e/g;-><init>(Lb/e/g;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cf1;->g:Lb/e/g;

    new-instance v0, Lb/e/g;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/af1;->g:Lb/e/g;

    .line 2
    invoke-direct {v0, v1}, Lb/e/g;-><init>(Lb/e/g;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cf1;->h:Lb/e/g;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/af1;->d:Lcom/google/android/gms/internal/ads/q00;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cf1;->e:Lcom/google/android/gms/internal/ads/q00;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/af1;->e:Lcom/google/android/gms/internal/ads/q40;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cf1;->f:Lcom/google/android/gms/internal/ads/q40;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/af1;Lcom/google/android/gms/internal/ads/bf1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/cf1;-><init>(Lcom/google/android/gms/internal/ads/af1;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/g00;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cf1;->b:Lcom/google/android/gms/internal/ads/g00;

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/ads/d00;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cf1;->c:Lcom/google/android/gms/internal/ads/d00;

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/t00;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cf1;->d:Lcom/google/android/gms/internal/ads/t00;

    return-object v0
.end method

.method public final d()Lcom/google/android/gms/internal/ads/q00;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cf1;->e:Lcom/google/android/gms/internal/ads/q00;

    return-object v0
.end method

.method public final e()Lcom/google/android/gms/internal/ads/q40;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cf1;->f:Lcom/google/android/gms/internal/ads/q40;

    return-object v0
.end method

.method public final f(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/m00;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cf1;->g:Lb/e/g;

    invoke-virtual {v0, p1}, Lb/e/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/m00;

    return-object p1
.end method

.method public final g(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/j00;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cf1;->h:Lb/e/g;

    invoke-virtual {v0, p1}, Lb/e/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/j00;

    return-object p1
.end method

.method public final h()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cf1;->d:Lcom/google/android/gms/internal/ads/t00;

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cf1;->b:Lcom/google/android/gms/internal/ads/g00;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cf1;->c:Lcom/google/android/gms/internal/ads/d00;

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cf1;->g:Lb/e/g;

    .line 5
    invoke-virtual {v1}, Lb/e/g;->size()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x3

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cf1;->f:Lcom/google/android/gms/internal/ads/q40;

    if-eqz v1, :cond_4

    const/4 v1, 0x7

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v0
.end method

.method public final i()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cf1;->g:Lb/e/g;

    invoke-virtual {v1}, Lb/e/g;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cf1;->g:Lb/e/g;

    .line 2
    invoke-virtual {v2}, Lb/e/g;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cf1;->g:Lb/e/g;

    .line 3
    invoke-virtual {v2, v1}, Lb/e/g;->i(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
