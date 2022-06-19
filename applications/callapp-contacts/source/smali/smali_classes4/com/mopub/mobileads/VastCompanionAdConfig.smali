.class public Lcom/mopub/mobileads/VastCompanionAdConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/VastCompanionAdConfig$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u0002\n\u0002\u0010\u001e\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0017\u0018\u0000 12\u00020\u0001:\u00011BM\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u0012\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\u000eJ\u0014\u0010\u001a\u001a\u00020\u001b2\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u001cJ\u0014\u0010\u001d\u001a\u00020\u001b2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u001cJ\u0018\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u00032\u0006\u0010!\u001a\u00020\u0003H\u0016J\u0013\u0010\"\u001a\u00020#2\u0008\u0010$\u001a\u0004\u0018\u00010%H\u0096\u0002J\u0006\u0010&\u001a\u00020\u001fJ,\u0010\'\u001a\u00020\u001b2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\u00032\u0008\u0010+\u001a\u0004\u0018\u00010\u00082\u0008\u0010,\u001a\u0004\u0018\u00010\u0008H\u0016J\u0016\u0010-\u001a\u00020\u001b2\u0006\u0010(\u001a\u00020)2\u0006\u0010.\u001a\u00020\u0003J\u0008\u0010/\u001a\u00020\u0003H\u0016J\u0008\u00100\u001a\u00020\u0008H\u0016R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u001c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u001c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0012R\u0018\u0010\r\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0010R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0016\u00a8\u00062"
    }
    d2 = {
        "Lcom/mopub/mobileads/VastCompanionAdConfig;",
        "Ljava/io/Serializable;",
        "width",
        "",
        "height",
        "vastResource",
        "Lcom/mopub/mobileads/VastResource;",
        "clickThroughUrl",
        "",
        "clickTrackers",
        "",
        "Lcom/mopub/mobileads/VastTracker;",
        "creativeViewTrackers",
        "customCtaText",
        "(IILcom/mopub/mobileads/VastResource;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V",
        "getClickThroughUrl",
        "()Ljava/lang/String;",
        "getClickTrackers",
        "()Ljava/util/List;",
        "getCreativeViewTrackers",
        "getCustomCtaText",
        "getHeight",
        "()I",
        "getVastResource",
        "()Lcom/mopub/mobileads/VastResource;",
        "getWidth",
        "addClickTrackers",
        "",
        "",
        "addCreativeViewTrackers",
        "calculateScore",
        "",
        "containerWidth",
        "containerHeight",
        "equals",
        "",
        "other",
        "",
        "formatScore",
        "handleClick",
        "context",
        "Landroid/content/Context;",
        "requestCode",
        "webViewClickThroughUrl",
        "dspCreativeId",
        "handleImpression",
        "contentPlayHead",
        "hashCode",
        "toString",
        "Companion",
        "mopub-sdk-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final Companion:Lcom/mopub/mobileads/VastCompanionAdConfig$Companion;


# instance fields
.field private a:I
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "width"
    .end annotation
.end field

.field private b:I
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "height"
    .end annotation
.end field

.field private c:Lcom/mopub/mobileads/VastResource;
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "resource"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "clickthrough_url"
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "click_trackers"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "impression_trackers"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "custom_cta_text"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/mopub/mobileads/VastCompanionAdConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mopub/mobileads/VastCompanionAdConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/mopub/mobileads/VastCompanionAdConfig;->Companion:Lcom/mopub/mobileads/VastCompanionAdConfig$Companion;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IILcom/mopub/mobileads/VastResource;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/mopub/mobileads/VastResource;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "vastResource"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickTrackers"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "creativeViewTrackers"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/mopub/mobileads/VastCompanionAdConfig;->a:I

    iput p2, p0, Lcom/mopub/mobileads/VastCompanionAdConfig;->b:I

    iput-object p3, p0, Lcom/mopub/mobileads/VastCompanionAdConfig;->c:Lcom/mopub/mobileads/VastResource;

    iput-object p4, p0, Lcom/mopub/mobileads/VastCompanionAdConfig;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/mopub/mobileads/VastCompanionAdConfig;->e:Ljava/util/List;

    iput-object p6, p0, Lcom/mopub/mobileads/VastCompanionAdConfig;->f:Ljava/util/List;

    iput-object p7, p0, Lcom/mopub/mobileads/VastCompanionAdConfig;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final addClickTrackers(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;)V"
        }
    .end annotation

    const-string v0, "clickTrackers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/mopub/mobileads/VastCompanionAdConfig;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final addCreativeViewTrackers(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;)V"
        }
    .end annotation

    const-string v0, "creativeViewTrackers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/mopub/mobileads/VastCompanionAdConfig;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public calculateScore(II)D
    .locals 7

    if-eqz p2, :cond_1

    .line 96
    iget v0, p0, Lcom/mopub/mobileads/VastCompanionAdConfig;->b:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    int-to-double v1, p1

    int-to-double p1, p2

    div-double p1, v1, p1

    .line 100
    iget v3, p0, Lcom/mopub/mobileads/VastCompanionAdConfig;->a:I

    int-to-double v3, v3

    int-to-double v5, v0

    div-double/2addr v3, v5

    sub-double/2addr p1, v3

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    .line 101
    iget v0, p0, Lcom/mopub/mobileads/VastCompanionAdConfig;->a:I

    int-to-double v3, v0

    sub-double v3, v1, v3

    div-double/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    add-double/2addr p1, v0

    .line 103
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastCompanionAdConfig;->formatScore()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr p1, v2

    div-double/2addr v0, p1

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 167
    move-object v0, p0

    check-cast v0, Lcom/mopub/mobileads/VastCompanionAdConfig;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    return v1

    .line 168
    :cond_0
    instance-of v0, p1, Lcom/mopub/mobileads/VastCompanionAdConfig;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 170
    :cond_1
    iget v0, p0, Lcom/mopub/mobileads/VastCompanionAdConfig;->a:I

    check-cast p1, Lcom/mopub/mobileads/VastCompanionAdConfig;

    iget v3, p1, Lcom/mopub/mobileads/VastCompanionAdConfig;->a:I

    if-eq v0, v3, :cond_2

    return v2

    .line 171
    :cond_2
    iget v0, p0, Lcom/mopub/mobileads/VastCompanionAdConfig;->b:I

    iget v3, p1, Lcom/mopub/mobileads/VastCompanionAdConfig;->b:I

    if-eq v0, v3, :cond_3

    return v2

    .line 172
    :cond_3
    iget-object v0, p0, Lcom/mopub/mobileads/VastCompanionAdConfig;->c:Lcom/mopub/mobileads/VastResource;

    iget-object v3, p1, Lcom/mopub/mobileads/VastCompanionAdConfig;->c:Lcom/mopub/mobileads/VastResource;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_4

    return v2

    .line 173
    :cond_4
    iget-object v0, p0, Lcom/mopub/mobileads/VastCompanionAdConfig;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/mopub/mobileads/VastCompanionAdConfig;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_5

    return v2

    .line 174
    :cond_5
    iget-object v0, p0, Lcom/mopub/mobileads/VastCompanionAdConfig;->e:Ljava/util/List;

    iget-object v3, p1, Lcom/mopub/mobileads/VastCompanionAdConfig;->e:Ljava/util/List;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_6

    return v2

    .line 175
    :cond_6
    iget-object v0, p0, Lcom/mopub/mobileads/VastCompanionAdConfig;->f:Ljava/util/List;

    iget-object v3, p1, Lcom/mopub/mobileads/VastCompanionAdConfig;->f:Ljava/util/List;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_7

    return v2

    .line 176
    :cond_7
    iget-object v0, p0, Lcom/mopub/mobileads/VastCompanionAdConfig;->g:Ljava/lang/String;

    iget-object p1, p1, Lcom/mopub/mobileads/VastCompanionAdConfig;->g:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    if-eqz p1, :cond_8

    return v2

    :cond_8
    return v1
.end method

.method public final formatScore()D
    .locals 6

    .line 80
    iget-object v0, p0, Lcom/mopub/mobileads/VastCompanionAdConfig;->c:Lcom/mopub/mobileads/VastResource;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastResource;->getType()Lcom/mopub/mobileads/VastResource$Type;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/VastCompanionAdConfig$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastResource$Type;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    return-wide v2

    .line 91
    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_1
    return-wide v4

    :cond_2
    const-wide v0, 0x3ff3333333333333L    # 1.2

    return-wide v0

    .line 82
    :cond_3
    sget-object v0, Lcom/mopub/mobileads/VastResource$CreativeType;->JAVASCRIPT:Lcom/mopub/mobileads/VastResource$CreativeType;

    iget-object v1, p0, Lcom/mopub/mobileads/VastCompanionAdConfig;->c:Lcom/mopub/mobileads/VastResource;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastResource;->getCreativeType()Lcom/mopub/mobileads/VastResource$CreativeType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastResource$CreativeType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-wide v4

    .line 84
    :cond_4
    sget-object v0, Lcom/mopub/mobileads/VastResource$CreativeType;->IMAGE:Lcom/mopub/mobileads/VastResource$CreativeType;

    iget-object v1, p0, Lcom/mopub/mobileads/VastCompanionAdConfig;->c:Lcom/mopub/mobileads/VastResource;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastResource;->getCreativeType()Lcom/mopub/mobileads/VastResource$CreativeType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastResource$CreativeType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-wide v0, 0x3fe999999999999aL    # 0.8

    return-wide v0

    :cond_5
    return-wide v2
.end method

.method public synthetic fromJson$4(Lcom/google/gson/f;Lcom/google/gson/stream/JsonReader;Lproguard/optimize/gson/_OptimizedJsonReader;)V
    .locals 4

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    :goto_0
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {p3, p2}, Lproguard/optimize/gson/_OptimizedJsonReader;->b(Lcom/google/gson/stream/JsonReader;)I

    move-result v0

    .line 2000
    :cond_0
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const/16 v2, 0xe

    if-eq v0, v2, :cond_f

    const/16 v2, 0x17

    const/4 v3, 0x0

    if-eq v0, v2, :cond_d

    const/16 v2, 0x1b

    if-eq v0, v2, :cond_a

    const/16 v2, 0x2f

    if-eq v0, v2, :cond_9

    const/16 v2, 0x3e

    if-eq v0, v2, :cond_7

    const/16 v2, 0x45

    if-eq v0, v2, :cond_5

    const/16 v2, 0x4e

    if-eq v0, v2, :cond_2

    const/16 v1, 0x50

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_4

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->BOOLEAN:Lcom/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_3

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/mopub/mobileads/VastCompanionAdConfig;->g:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iput-object v3, p0, Lcom/mopub/mobileads/VastCompanionAdConfig;->g:Ljava/lang/String;

    goto/16 :goto_4

    :cond_5
    if-eqz v1, :cond_6

    new-instance v0, Lcom/mopub/mobileads/VastCompanionAdConfigcreativeViewTrackersTypeToken;

    invoke-direct {v0}, Lcom/mopub/mobileads/VastCompanionAdConfigcreativeViewTrackersTypeToken;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/gson/f;->a(Lcom/google/gson/a/a;)Lcom/google/gson/j;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/mopub/mobileads/VastCompanionAdConfig;->f:Ljava/util/List;

    goto :goto_0

    :cond_6
    iput-object v3, p0, Lcom/mopub/mobileads/VastCompanionAdConfig;->f:Ljava/util/List;

    goto/16 :goto_4

    :cond_7
    if-eqz v1, :cond_8

    const-class v0, Lcom/mopub/mobileads/VastResource;

    invoke-virtual {p1, v0}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/VastResource;

    iput-object v0, p0, Lcom/mopub/mobileads/VastCompanionAdConfig;->c:Lcom/mopub/mobileads/VastResource;

    goto/16 :goto_0

    :cond_8
    iput-object v3, p0, Lcom/mopub/mobileads/VastCompanionAdConfig;->c:Lcom/mopub/mobileads/VastResource;

    goto :goto_4

    :cond_9
    if-eqz v1, :cond_10

    :try_start_0
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Lcom/mopub/mobileads/VastCompanionAdConfig;->a:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {p2, p1}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_a
    if-eqz v1, :cond_c

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->BOOLEAN:Lcom/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_b

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_b
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/mopub/mobileads/VastCompanionAdConfig;->d:Ljava/lang/String;

    goto/16 :goto_0

    :cond_c
    iput-object v3, p0, Lcom/mopub/mobileads/VastCompanionAdConfig;->d:Ljava/lang/String;

    goto :goto_4

    :cond_d
    if-eqz v1, :cond_e

    new-instance v0, Lcom/mopub/mobileads/VastCompanionAdConfigclickTrackersTypeToken;

    invoke-direct {v0}, Lcom/mopub/mobileads/VastCompanionAdConfigclickTrackersTypeToken;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/gson/f;->a(Lcom/google/gson/a/a;)Lcom/google/gson/j;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/mopub/mobileads/VastCompanionAdConfig;->e:Ljava/util/List;

    goto/16 :goto_0

    :cond_e
    iput-object v3, p0, Lcom/mopub/mobileads/VastCompanionAdConfig;->e:Ljava/util/List;

    goto :goto_4

    :cond_f
    if-eqz v1, :cond_10

    :try_start_1
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Lcom/mopub/mobileads/VastCompanionAdConfig;->b:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception p1

    new-instance p2, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {p2, p1}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_10
    :goto_4
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    goto/16 :goto_0

    :cond_11
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->endObject()V

    return-void
.end method

.method public final getClickThroughUrl()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/mopub/mobileads/VastCompanionAdConfig;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final getClickTrackers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/mopub/mobileads/VastCompanionAdConfig;->e:Ljava/util/List;

    return-object v0
.end method

.method public final getCreativeViewTrackers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/mopub/mobileads/VastCompanionAdConfig;->f:Ljava/util/List;

    return-object v0
.end method

.method public final getCustomCtaText()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/mopub/mobileads/VastCompanionAdConfig;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final getHeight()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/mopub/mobileads/VastCompanionAdConfig;->b:I

    return v0
.end method

.method public final getVastResource()Lcom/mopub/mobileads/VastResource;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/mopub/mobileads/VastCompanionAdConfig;->c:Lcom/mopub/mobileads/VastResource;

    return-object v0
.end method

.method public final getWidth()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/mopub/mobileads/VastCompanionAdConfig;->a:I

    return v0
.end method

.method public handleClick(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 115
    iget-object v0, p0, Lcom/mopub/mobileads/VastCompanionAdConfig;->c:Lcom/mopub/mobileads/VastResource;

    iget-object v1, p0, Lcom/mopub/mobileads/VastCompanionAdConfig;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Lcom/mopub/mobileads/VastResource;->getCorrectClickThroughUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 116
    move-object v0, p3

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    :goto_1
    if-eqz p3, :cond_2

    .line 118
    new-instance v0, Lcom/mopub/common/UrlHandler$Builder;

    invoke-direct {v0}, Lcom/mopub/common/UrlHandler$Builder;-><init>()V

    .line 120
    sget-object v3, Lcom/mopub/common/UrlAction;->IGNORE_ABOUT_SCHEME:Lcom/mopub/common/UrlAction;

    const/4 v4, 0x6

    new-array v4, v4, [Lcom/mopub/common/UrlAction;

    .line 121
    sget-object v5, Lcom/mopub/common/UrlAction;->OPEN_APP_MARKET:Lcom/mopub/common/UrlAction;

    aput-object v5, v4, v2

    .line 122
    sget-object v2, Lcom/mopub/common/UrlAction;->OPEN_NATIVE_BROWSER:Lcom/mopub/common/UrlAction;

    aput-object v2, v4, v1

    const/4 v1, 0x2

    .line 123
    sget-object v2, Lcom/mopub/common/UrlAction;->OPEN_IN_APP_BROWSER:Lcom/mopub/common/UrlAction;

    aput-object v2, v4, v1

    const/4 v1, 0x3

    .line 124
    sget-object v2, Lcom/mopub/common/UrlAction;->HANDLE_SHARE_TWEET:Lcom/mopub/common/UrlAction;

    aput-object v2, v4, v1

    const/4 v1, 0x4

    .line 125
    sget-object v2, Lcom/mopub/common/UrlAction;->FOLLOW_DEEP_LINK_WITH_FALLBACK:Lcom/mopub/common/UrlAction;

    aput-object v2, v4, v1

    const/4 v1, 0x5

    .line 126
    sget-object v2, Lcom/mopub/common/UrlAction;->FOLLOW_DEEP_LINK:Lcom/mopub/common/UrlAction;

    aput-object v2, v4, v1

    .line 119
    invoke-virtual {v0, v3, v4}, Lcom/mopub/common/UrlHandler$Builder;->withSupportedUrlActions(Lcom/mopub/common/UrlAction;[Lcom/mopub/common/UrlAction;)Lcom/mopub/common/UrlHandler$Builder;

    move-result-object v0

    .line 128
    new-instance v1, Lcom/mopub/mobileads/VastCompanionAdConfig$handleClick$$inlined$let$lambda$1;

    invoke-direct {v1, p4, p1, p2}, Lcom/mopub/mobileads/VastCompanionAdConfig$handleClick$$inlined$let$lambda$1;-><init>(Ljava/lang/String;Landroid/content/Context;I)V

    check-cast v1, Lcom/mopub/common/UrlHandler$ResultActions;

    invoke-virtual {v0, v1}, Lcom/mopub/common/UrlHandler$Builder;->withResultActions(Lcom/mopub/common/UrlHandler$ResultActions;)Lcom/mopub/common/UrlHandler$Builder;

    move-result-object p2

    .line 159
    invoke-virtual {p2, p4}, Lcom/mopub/common/UrlHandler$Builder;->withDspCreativeId(Ljava/lang/String;)Lcom/mopub/common/UrlHandler$Builder;

    move-result-object p2

    .line 160
    invoke-virtual {p2}, Lcom/mopub/common/UrlHandler$Builder;->withoutMoPubBrowser()Lcom/mopub/common/UrlHandler$Builder;

    move-result-object p2

    .line 161
    invoke-virtual {p2}, Lcom/mopub/common/UrlHandler$Builder;->build()Lcom/mopub/common/UrlHandler;

    move-result-object p2

    .line 162
    invoke-virtual {p2, p1, p3}, Lcom/mopub/common/UrlHandler;->handleUrl(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    return-void

    .line 113
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context must be an activity"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final handleImpression(Landroid/content/Context;I)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/mopub/mobileads/VastCompanionAdConfig;->f:Ljava/util/List;

    .line 73
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x0

    .line 70
    invoke-static {v0, v1, p2, v1, p1}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public hashCode()I
    .locals 3

    .line 182
    iget v0, p0, Lcom/mopub/mobileads/VastCompanionAdConfig;->a:I

    mul-int/lit8 v0, v0, 0x1f

    .line 183
    iget v1, p0, Lcom/mopub/mobileads/VastCompanionAdConfig;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 184
    iget-object v1, p0, Lcom/mopub/mobileads/VastCompanionAdConfig;->c:Lcom/mopub/mobileads/VastResource;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastResource;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 185
    iget-object v1, p0, Lcom/mopub/mobileads/VastCompanionAdConfig;->d:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 186
    iget-object v1, p0, Lcom/mopub/mobileads/VastCompanionAdConfig;->e:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 187
    iget-object v1, p0, Lcom/mopub/mobileads/VastCompanionAdConfig;->f:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 188
    iget-object v1, p0, Lcom/mopub/mobileads/VastCompanionAdConfig;->g:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method

.method public synthetic toJson$4(Lcom/google/gson/f;Lcom/google/gson/stream/JsonWriter;Lproguard/optimize/gson/_OptimizedJsonWriter;)V
    .locals 2

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    const/16 v0, 0x2f

    .line 1000
    invoke-interface {p3, p2, v0}, Lproguard/optimize/gson/_OptimizedJsonWriter;->b(Lcom/google/gson/stream/JsonWriter;I)V

    iget v0, p0, Lcom/mopub/mobileads/VastCompanionAdConfig;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lcom/google/gson/stream/JsonWriter;

    const/16 v0, 0xe

    invoke-interface {p3, p2, v0}, Lproguard/optimize/gson/_OptimizedJsonWriter;->b(Lcom/google/gson/stream/JsonWriter;I)V

    iget v0, p0, Lcom/mopub/mobileads/VastCompanionAdConfig;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lcom/google/gson/stream/JsonWriter;

    iget-object v0, p0, Lcom/mopub/mobileads/VastCompanionAdConfig;->c:Lcom/mopub/mobileads/VastResource;

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3e

    invoke-interface {p3, p2, v0}, Lproguard/optimize/gson/_OptimizedJsonWriter;->b(Lcom/google/gson/stream/JsonWriter;I)V

    const-class v0, Lcom/mopub/mobileads/VastResource;

    iget-object v1, p0, Lcom/mopub/mobileads/VastCompanionAdConfig;->c:Lcom/mopub/mobileads/VastResource;

    invoke-static {p1, v0, v1}, Lproguard/optimize/gson/a;->a(Lcom/google/gson/f;Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/gson/j;

    move-result-object v0

    invoke-virtual {v0, p2, v1}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/VastCompanionAdConfig;->d:Ljava/lang/String;

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1b

    invoke-interface {p3, p2, v0}, Lproguard/optimize/gson/_OptimizedJsonWriter;->b(Lcom/google/gson/stream/JsonWriter;I)V

    iget-object v0, p0, Lcom/mopub/mobileads/VastCompanionAdConfig;->d:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/VastCompanionAdConfig;->e:Ljava/util/List;

    if-eq p0, v0, :cond_2

    const/16 v0, 0x17

    invoke-interface {p3, p2, v0}, Lproguard/optimize/gson/_OptimizedJsonWriter;->b(Lcom/google/gson/stream/JsonWriter;I)V

    new-instance v0, Lcom/mopub/mobileads/VastCompanionAdConfigclickTrackersTypeToken;

    invoke-direct {v0}, Lcom/mopub/mobileads/VastCompanionAdConfigclickTrackersTypeToken;-><init>()V

    iget-object v1, p0, Lcom/mopub/mobileads/VastCompanionAdConfig;->e:Ljava/util/List;

    invoke-static {p1, v0, v1}, Lproguard/optimize/gson/a;->a(Lcom/google/gson/f;Lcom/google/gson/a/a;Ljava/lang/Object;)Lcom/google/gson/j;

    move-result-object v0

    invoke-virtual {v0, p2, v1}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/mopub/mobileads/VastCompanionAdConfig;->f:Ljava/util/List;

    if-eq p0, v0, :cond_3

    const/16 v0, 0x45

    invoke-interface {p3, p2, v0}, Lproguard/optimize/gson/_OptimizedJsonWriter;->b(Lcom/google/gson/stream/JsonWriter;I)V

    new-instance v0, Lcom/mopub/mobileads/VastCompanionAdConfigcreativeViewTrackersTypeToken;

    invoke-direct {v0}, Lcom/mopub/mobileads/VastCompanionAdConfigcreativeViewTrackersTypeToken;-><init>()V

    iget-object v1, p0, Lcom/mopub/mobileads/VastCompanionAdConfig;->f:Ljava/util/List;

    invoke-static {p1, v0, v1}, Lproguard/optimize/gson/a;->a(Lcom/google/gson/f;Lcom/google/gson/a/a;Ljava/lang/Object;)Lcom/google/gson/j;

    move-result-object p1

    invoke-virtual {p1, p2, v1}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    :cond_3
    iget-object p1, p0, Lcom/mopub/mobileads/VastCompanionAdConfig;->g:Ljava/lang/String;

    if-eq p0, p1, :cond_4

    const/16 p1, 0x4e

    invoke-interface {p3, p2, p1}, Lproguard/optimize/gson/_OptimizedJsonWriter;->b(Lcom/google/gson/stream/JsonWriter;I)V

    iget-object p1, p0, Lcom/mopub/mobileads/VastCompanionAdConfig;->g:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    :cond_4
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VastCompanionAdConfig(width="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/mopub/mobileads/VastCompanionAdConfig;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mopub/mobileads/VastCompanionAdConfig;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", vastResource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mopub/mobileads/VastCompanionAdConfig;->c:Lcom/mopub/mobileads/VastResource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", clickThroughUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    iget-object v1, p0, Lcom/mopub/mobileads/VastCompanionAdConfig;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", clickTrackers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mopub/mobileads/VastCompanionAdConfig;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", creativeViewTrackers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    iget-object v1, p0, Lcom/mopub/mobileads/VastCompanionAdConfig;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", customCtaText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mopub/mobileads/VastCompanionAdConfig;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
