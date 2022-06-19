.class public Lcom/millennialmedia/InlineAd$AdSize;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/InlineAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdSize"
.end annotation


# static fields
.field public static final AUTO_HEIGHT:I

.field public static final AUTO_WIDTH:I

.field public static final BANNER:Lcom/millennialmedia/InlineAd$AdSize;

.field public static final FULL_BANNER:Lcom/millennialmedia/InlineAd$AdSize;

.field public static final LARGE_BANNER:Lcom/millennialmedia/InlineAd$AdSize;

.field public static final LEADERBOARD:Lcom/millennialmedia/InlineAd$AdSize;

.field public static final MEDIUM_RECTANGLE:Lcom/millennialmedia/InlineAd$AdSize;

.field public static final SMART_BANNER:Lcom/millennialmedia/InlineAd$AdSize;


# instance fields
.field public final height:I

.field public final width:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/millennialmedia/InlineAd$AdSize;

    const/16 v1, 0x140

    const/16 v2, 0x32

    invoke-direct {v0, v1, v2}, Lcom/millennialmedia/InlineAd$AdSize;-><init>(II)V

    sput-object v0, Lcom/millennialmedia/InlineAd$AdSize;->BANNER:Lcom/millennialmedia/InlineAd$AdSize;

    new-instance v0, Lcom/millennialmedia/InlineAd$AdSize;

    const/16 v2, 0x1d4

    const/16 v3, 0x3c

    invoke-direct {v0, v2, v3}, Lcom/millennialmedia/InlineAd$AdSize;-><init>(II)V

    sput-object v0, Lcom/millennialmedia/InlineAd$AdSize;->FULL_BANNER:Lcom/millennialmedia/InlineAd$AdSize;

    new-instance v0, Lcom/millennialmedia/InlineAd$AdSize;

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/millennialmedia/InlineAd$AdSize;-><init>(II)V

    sput-object v0, Lcom/millennialmedia/InlineAd$AdSize;->LARGE_BANNER:Lcom/millennialmedia/InlineAd$AdSize;

    new-instance v0, Lcom/millennialmedia/InlineAd$AdSize;

    const/16 v1, 0x2d8

    const/16 v2, 0x5a

    invoke-direct {v0, v1, v2}, Lcom/millennialmedia/InlineAd$AdSize;-><init>(II)V

    sput-object v0, Lcom/millennialmedia/InlineAd$AdSize;->LEADERBOARD:Lcom/millennialmedia/InlineAd$AdSize;

    new-instance v0, Lcom/millennialmedia/InlineAd$AdSize;

    const/16 v1, 0x12c

    const/16 v2, 0xfa

    invoke-direct {v0, v1, v2}, Lcom/millennialmedia/InlineAd$AdSize;-><init>(II)V

    sput-object v0, Lcom/millennialmedia/InlineAd$AdSize;->MEDIUM_RECTANGLE:Lcom/millennialmedia/InlineAd$AdSize;

    new-instance v0, Lcom/millennialmedia/InlineAd$AdSize;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/millennialmedia/InlineAd$AdSize;-><init>(II)V

    sput-object v0, Lcom/millennialmedia/InlineAd$AdSize;->SMART_BANNER:Lcom/millennialmedia/InlineAd$AdSize;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/millennialmedia/InlineAd$AdSize;->width:I

    if-lez p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    iput p2, p0, Lcom/millennialmedia/InlineAd$AdSize;->height:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    instance-of v2, p1, Lcom/millennialmedia/InlineAd$AdSize;

    if-nez v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Lcom/millennialmedia/InlineAd$AdSize;

    iget v2, p0, Lcom/millennialmedia/InlineAd$AdSize;->width:I

    iget v3, p1, Lcom/millennialmedia/InlineAd$AdSize;->width:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/millennialmedia/InlineAd$AdSize;->height:I

    iget p1, p1, Lcom/millennialmedia/InlineAd$AdSize;->height:I

    if-ne v2, p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/millennialmedia/InlineAd$AdSize;->width:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/millennialmedia/InlineAd$AdSize;->height:I

    add-int/2addr v0, v1

    return v0
.end method

.method public isAuto()Z
    .locals 1

    iget v0, p0, Lcom/millennialmedia/InlineAd$AdSize;->width:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/millennialmedia/InlineAd$AdSize;->height:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Inline ad of size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/millennialmedia/InlineAd$AdSize;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/millennialmedia/InlineAd$AdSize;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
