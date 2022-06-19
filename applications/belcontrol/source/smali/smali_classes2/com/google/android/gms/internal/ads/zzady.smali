.class public final Lcom/google/android/gms/internal/ads/zzady;
.super Lcom/google/android/gms/internal/ads/zzaei;
.source ""


# static fields
.field private static final zzdff:I

.field private static final zzdfg:I

.field private static final zzdfh:I

.field private static final zzdfi:I


# instance fields
.field private final backgroundColor:I

.field private final textColor:I

.field private final textSize:I

.field private final zzdfj:Ljava/lang/String;

.field private final zzdfk:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzaed;",
            ">;"
        }
    .end annotation
.end field

.field private final zzdfl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzaer;",
            ">;"
        }
    .end annotation
.end field

.field private final zzdfm:I

.field private final zzdfn:I

.field private final zzdfo:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xc

    const/16 v1, 0xae

    const/16 v2, 0xce

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/zzady;->zzdff:I

    const/16 v1, 0xcc

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    sput v1, Lcom/google/android/gms/internal/ads/zzady;->zzdfg:I

    sput v1, Lcom/google/android/gms/internal/ads/zzady;->zzdfh:I

    sput v0, Lcom/google/android/gms/internal/ads/zzady;->zzdfi:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;IIZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzaed;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "IIZ)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaei;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzady;->zzdfk:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzady;->zzdfl:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzady;->zzdfj:Ljava/lang/String;

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaed;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzady;->zzdfk:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzady;->zzdfl:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_1
    sget p1, Lcom/google/android/gms/internal/ads/zzady;->zzdfh:I

    :goto_1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzady;->backgroundColor:I

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_2

    :cond_2
    sget p1, Lcom/google/android/gms/internal/ads/zzady;->zzdfi:I

    :goto_2
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzady;->textColor:I

    if-eqz p5, :cond_3

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_3

    :cond_3
    const/16 p1, 0xc

    :goto_3
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzady;->textSize:I

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzady;->zzdfm:I

    iput p7, p0, Lcom/google/android/gms/internal/ads/zzady;->zzdfn:I

    iput-boolean p8, p0, Lcom/google/android/gms/internal/ads/zzady;->zzdfo:Z

    return-void
.end method


# virtual methods
.method public final getBackgroundColor()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzady;->backgroundColor:I

    return v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzady;->zzdfj:Ljava/lang/String;

    return-object v0
.end method

.method public final getTextColor()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzady;->textColor:I

    return v0
.end method

.method public final getTextSize()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzady;->textSize:I

    return v0
.end method

.method public final zztd()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzaer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzady;->zzdfl:Ljava/util/List;

    return-object v0
.end method

.method public final zzte()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzaed;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzady;->zzdfk:Ljava/util/List;

    return-object v0
.end method

.method public final zztf()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzady;->zzdfm:I

    return v0
.end method

.method public final zztg()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzady;->zzdfn:I

    return v0
.end method
