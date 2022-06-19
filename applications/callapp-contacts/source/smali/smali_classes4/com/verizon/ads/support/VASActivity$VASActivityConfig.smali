.class public Lcom/verizon/ads/support/VASActivity$VASActivityConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/support/VASActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VASActivityConfig"
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lcom/verizon/ads/support/VASActivity$VASActivityConfig;->e:I

    .line 54
    iput v0, p0, Lcom/verizon/ads/support/VASActivity$VASActivityConfig;->f:I

    const/4 v0, -0x1

    .line 62
    iput v0, p0, Lcom/verizon/ads/support/VASActivity$VASActivityConfig;->d:I

    .line 63
    iput v0, p0, Lcom/verizon/ads/support/VASActivity$VASActivityConfig;->c:I

    return-void
.end method

.method static synthetic a(Lcom/verizon/ads/support/VASActivity$VASActivityConfig;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/verizon/ads/support/VASActivity$VASActivityConfig;->e:I

    return p0
.end method

.method static synthetic a(Lcom/verizon/ads/support/VASActivity$VASActivityConfig;I)I
    .locals 0

    .line 47
    iput p1, p0, Lcom/verizon/ads/support/VASActivity$VASActivityConfig;->c:I

    return p1
.end method

.method static synthetic b(Lcom/verizon/ads/support/VASActivity$VASActivityConfig;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/verizon/ads/support/VASActivity$VASActivityConfig;->f:I

    return p0
.end method

.method static synthetic c(Lcom/verizon/ads/support/VASActivity$VASActivityConfig;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/verizon/ads/support/VASActivity$VASActivityConfig;->d:I

    return p0
.end method

.method static synthetic d(Lcom/verizon/ads/support/VASActivity$VASActivityConfig;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/verizon/ads/support/VASActivity$VASActivityConfig;->a:Z

    return p0
.end method

.method static synthetic e(Lcom/verizon/ads/support/VASActivity$VASActivityConfig;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/verizon/ads/support/VASActivity$VASActivityConfig;->c:I

    return p0
.end method


# virtual methods
.method public setAudioSource(I)Lcom/verizon/ads/support/VASActivity$VASActivityConfig;
    .locals 0

    .line 104
    iput p1, p0, Lcom/verizon/ads/support/VASActivity$VASActivityConfig;->d:I

    return-object p0
.end method

.method public setImmersive(Z)Lcom/verizon/ads/support/VASActivity$VASActivityConfig;
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/verizon/ads/support/VASActivity$VASActivityConfig;->a:Z

    return-object p0
.end method

.method public setOrientation(I)Lcom/verizon/ads/support/VASActivity$VASActivityConfig;
    .locals 0

    .line 89
    iput p1, p0, Lcom/verizon/ads/support/VASActivity$VASActivityConfig;->c:I

    return-object p0
.end method

.method public setTransitionAnimation(II)Lcom/verizon/ads/support/VASActivity$VASActivityConfig;
    .locals 0

    .line 119
    iput p1, p0, Lcom/verizon/ads/support/VASActivity$VASActivityConfig;->e:I

    .line 120
    iput p2, p0, Lcom/verizon/ads/support/VASActivity$VASActivityConfig;->f:I

    return-object p0
.end method

.method public setTransparent(Z)Lcom/verizon/ads/support/VASActivity$VASActivityConfig;
    .locals 0

    .line 134
    iput-boolean p1, p0, Lcom/verizon/ads/support/VASActivity$VASActivityConfig;->b:Z

    return-object p0
.end method
