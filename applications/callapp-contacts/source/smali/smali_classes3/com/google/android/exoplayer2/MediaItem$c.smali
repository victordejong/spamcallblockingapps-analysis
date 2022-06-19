.class public final Lcom/google/android/exoplayer2/MediaItem$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

.field public final d:Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/StreamKey;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/lang/String;

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaItem$d;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/net/Uri;Ljava/lang/String;Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;",
            "Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/StreamKey;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaItem$d;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 793
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 794
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$c;->a:Landroid/net/Uri;

    .line 795
    iput-object p2, p0, Lcom/google/android/exoplayer2/MediaItem$c;->b:Ljava/lang/String;

    .line 796
    iput-object p3, p0, Lcom/google/android/exoplayer2/MediaItem$c;->c:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    .line 797
    iput-object p4, p0, Lcom/google/android/exoplayer2/MediaItem$c;->d:Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;

    .line 798
    iput-object p5, p0, Lcom/google/android/exoplayer2/MediaItem$c;->e:Ljava/util/List;

    .line 799
    iput-object p6, p0, Lcom/google/android/exoplayer2/MediaItem$c;->f:Ljava/lang/String;

    .line 800
    iput-object p7, p0, Lcom/google/android/exoplayer2/MediaItem$c;->g:Ljava/util/List;

    .line 801
    iput-object p8, p0, Lcom/google/android/exoplayer2/MediaItem$c;->h:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;Ljava/lang/String;Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/exoplayer2/MediaItem$1;)V
    .locals 0

    .line 750
    invoke-direct/range {p0 .. p8}, Lcom/google/android/exoplayer2/MediaItem$c;-><init>(Landroid/net/Uri;Ljava/lang/String;Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 809
    :cond_0
    instance-of v1, p1, Lcom/google/android/exoplayer2/MediaItem$c;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 812
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/MediaItem$c;

    .line 814
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$c;->a:Landroid/net/Uri;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaItem$c;->a:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$c;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaItem$c;->b:Ljava/lang/String;

    .line 815
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$c;->c:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaItem$c;->c:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    .line 816
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$c;->d:Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaItem$c;->d:Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;

    .line 817
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$c;->e:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaItem$c;->e:Ljava/util/List;

    .line 818
    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$c;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaItem$c;->f:Ljava/lang/String;

    .line 819
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$c;->g:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaItem$c;->g:Ljava/util/List;

    .line 820
    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$c;->h:Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaItem$c;->h:Ljava/lang/Object;

    .line 821
    invoke-static {v1, p1}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    .line 826
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$c;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 827
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$c;->b:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 828
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$c;->c:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 829
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$c;->d:Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 830
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$c;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 831
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$c;->f:Ljava/lang/String;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 832
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$c;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 833
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$c;->h:Ljava/lang/Object;

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    return v0
.end method
