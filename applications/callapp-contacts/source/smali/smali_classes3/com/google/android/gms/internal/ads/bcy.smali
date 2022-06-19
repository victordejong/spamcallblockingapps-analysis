.class public final Lcom/google/android/gms/internal/ads/bcy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final g:Lcom/google/android/gms/internal/ads/bcy;


# instance fields
.field final a:Lcom/google/android/gms/internal/ads/ex;

.field final b:Lcom/google/android/gms/internal/ads/es;

.field final c:Lcom/google/android/gms/internal/ads/fm;

.field final d:Lcom/google/android/gms/internal/ads/fh;

.field final e:Lcom/google/android/gms/internal/ads/jf;

.field final f:Landroidx/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/g<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/fe;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Landroidx/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/g<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/ey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lcom/google/android/gms/internal/ads/bdb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/bdb;-><init>()V

    .line 36
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bdb;->a()Lcom/google/android/gms/internal/ads/bcy;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/bcy;->g:Lcom/google/android/gms/internal/ads/bcy;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/bdb;)V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/bdb;->a:Lcom/google/android/gms/internal/ads/ex;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bcy;->a:Lcom/google/android/gms/internal/ads/ex;

    .line 27
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/bdb;->b:Lcom/google/android/gms/internal/ads/es;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bcy;->b:Lcom/google/android/gms/internal/ads/es;

    .line 28
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/bdb;->c:Lcom/google/android/gms/internal/ads/fm;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bcy;->c:Lcom/google/android/gms/internal/ads/fm;

    .line 29
    new-instance v0, Landroidx/b/g;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/bdb;->f:Landroidx/b/g;

    invoke-direct {v0, v1}, Landroidx/b/g;-><init>(Landroidx/b/g;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bcy;->f:Landroidx/b/g;

    .line 30
    new-instance v0, Landroidx/b/g;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/bdb;->g:Landroidx/b/g;

    invoke-direct {v0, v1}, Landroidx/b/g;-><init>(Landroidx/b/g;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bcy;->h:Landroidx/b/g;

    .line 31
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/bdb;->d:Lcom/google/android/gms/internal/ads/fh;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bcy;->d:Lcom/google/android/gms/internal/ads/fh;

    .line 32
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/bdb;->e:Lcom/google/android/gms/internal/ads/jf;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bcy;->e:Lcom/google/android/gms/internal/ads/jf;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/bdb;Lcom/google/android/gms/internal/ads/bdc;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/bcy;-><init>(Lcom/google/android/gms/internal/ads/bdb;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/fe;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bcy;->f:Landroidx/b/g;

    invoke-virtual {v0, p1}, Landroidx/b/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/fe;

    return-object p1
.end method

.method public final a()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bcy;->f:Landroidx/b/g;

    invoke-virtual {v1}, Landroidx/b/g;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 21
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bcy;->f:Landroidx/b/g;

    invoke-virtual {v2}, Landroidx/b/g;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 22
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bcy;->f:Landroidx/b/g;

    invoke-virtual {v2, v1}, Landroidx/b/g;->b(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ey;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bcy;->h:Landroidx/b/g;

    invoke-virtual {v0, p1}, Landroidx/b/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/ey;

    return-object p1
.end method
