.class public final Lcom/google/android/gms/internal/ads/azg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/azg;


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/da;

.field private final c:Lcom/google/android/gms/internal/ads/cv;

.field private final d:Lcom/google/android/gms/internal/ads/do;

.field private final e:Lcom/google/android/gms/internal/ads/dj;

.field private final f:Lcom/google/android/gms/internal/ads/gv;

.field private final g:Landroidx/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/g",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/dg;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Landroidx/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/g",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/db;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/google/android/gms/internal/ads/azi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/azi;-><init>()V

    .line 36
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/azi;->a()Lcom/google/android/gms/internal/ads/azg;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/azg;->a:Lcom/google/android/gms/internal/ads/azg;

    .line 37
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/azi;)V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/azi;->a:Lcom/google/android/gms/internal/ads/da;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/azg;->b:Lcom/google/android/gms/internal/ads/da;

    .line 27
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/azi;->b:Lcom/google/android/gms/internal/ads/cv;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/azg;->c:Lcom/google/android/gms/internal/ads/cv;

    .line 28
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/azi;->c:Lcom/google/android/gms/internal/ads/do;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/azg;->d:Lcom/google/android/gms/internal/ads/do;

    .line 29
    new-instance v0, Landroidx/b/g;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/azi;->f:Landroidx/b/g;

    invoke-direct {v0, v1}, Landroidx/b/g;-><init>(Landroidx/b/g;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/azg;->g:Landroidx/b/g;

    .line 30
    new-instance v0, Landroidx/b/g;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/azi;->g:Landroidx/b/g;

    invoke-direct {v0, v1}, Landroidx/b/g;-><init>(Landroidx/b/g;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/azg;->h:Landroidx/b/g;

    .line 31
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/azi;->d:Lcom/google/android/gms/internal/ads/dj;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/azg;->e:Lcom/google/android/gms/internal/ads/dj;

    .line 32
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/azi;->e:Lcom/google/android/gms/internal/ads/gv;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/azg;->f:Lcom/google/android/gms/internal/ads/gv;

    .line 33
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/azi;Lcom/google/android/gms/internal/ads/azj;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/azg;-><init>(Lcom/google/android/gms/internal/ads/azi;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/da;
    .locals 1

    .prologue
    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azg;->b:Lcom/google/android/gms/internal/ads/da;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/dg;
    .locals 1

    .prologue
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azg;->g:Landroidx/b/g;

    invoke-virtual {v0, p1}, Landroidx/b/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dg;

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/ads/cv;
    .locals 1

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azg;->c:Lcom/google/android/gms/internal/ads/cv;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/db;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azg;->h:Landroidx/b/g;

    invoke-virtual {v0, p1}, Landroidx/b/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/db;

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/do;
    .locals 1

    .prologue
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azg;->d:Lcom/google/android/gms/internal/ads/do;

    return-object v0
.end method

.method public final d()Lcom/google/android/gms/internal/ads/dj;
    .locals 1

    .prologue
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azg;->e:Lcom/google/android/gms/internal/ads/dj;

    return-object v0
.end method

.method public final e()Lcom/google/android/gms/internal/ads/gv;
    .locals 1

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azg;->f:Lcom/google/android/gms/internal/ads/gv;

    return-object v0
.end method

.method public final f()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/azg;->d:Lcom/google/android/gms/internal/ads/do;

    if-eqz v1, :cond_0

    .line 10
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/azg;->b:Lcom/google/android/gms/internal/ads/da;

    if-eqz v1, :cond_1

    .line 12
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/azg;->c:Lcom/google/android/gms/internal/ads/cv;

    if-eqz v1, :cond_2

    .line 14
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/azg;->g:Landroidx/b/g;

    invoke-virtual {v1}, Landroidx/b/g;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 16
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/azg;->f:Lcom/google/android/gms/internal/ads/gv;

    if-eqz v1, :cond_4

    .line 18
    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_4
    return-object v0
.end method

.method public final g()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azg;->g:Landroidx/b/g;

    invoke-virtual {v0}, Landroidx/b/g;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azg;->g:Landroidx/b/g;

    invoke-virtual {v0}, Landroidx/b/g;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azg;->g:Landroidx/b/g;

    invoke-virtual {v0, v1}, Landroidx/b/g;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 24
    :cond_0
    return-object v2
.end method
