.class public Lcom/mopub/mobileads/VastIconConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/mopub/mobileads/Mockable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/VastIconConfig$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0011\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0017\u0018\u0000 \'2\u00020\u0001:\u0001\'BW\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r\u0012\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u00a2\u0006\u0002\u0010\u000fJ$\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\u0008\u0010\"\u001a\u0004\u0018\u00010\r2\u0008\u0010#\u001a\u0004\u0018\u00010\rH\u0016J \u0010$\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\u0006\u0010%\u001a\u00020\u00032\u0006\u0010&\u001a\u00020\rH\u0016R\u0018\u0010\u000c\u001a\u0004\u0018\u00010\r8\u0016X\u0097\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u001c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n8\u0016X\u0097\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0016X\u0097\u0004\u00a2\u0006\n\n\u0002\u0010\u0016\u001a\u0004\u0008\u0014\u0010\u0015R\u0016\u0010\u0004\u001a\u00020\u00038\u0016X\u0097\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0016\u0010\u0005\u001a\u00020\u00038\u0016X\u0097\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0018R\u0016\u0010\u0007\u001a\u00020\u00088\u0016X\u0097\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u001c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n8\u0016X\u0097\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0013R\u0016\u0010\u0002\u001a\u00020\u00038\u0016X\u0097\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u0018\u00a8\u0006("
    }
    d2 = {
        "Lcom/mopub/mobileads/VastIconConfig;",
        "Ljava/io/Serializable;",
        "width",
        "",
        "height",
        "offsetMS",
        "durationMS",
        "vastResource",
        "Lcom/mopub/mobileads/VastResource;",
        "clickTrackingUris",
        "",
        "Lcom/mopub/mobileads/VastTracker;",
        "clickThroughUri",
        "",
        "viewTrackingUris",
        "(IILjava/lang/Integer;Ljava/lang/Integer;Lcom/mopub/mobileads/VastResource;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V",
        "getClickThroughUri",
        "()Ljava/lang/String;",
        "getClickTrackingUris",
        "()Ljava/util/List;",
        "getDurationMS",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getHeight",
        "()I",
        "getOffsetMS",
        "getVastResource",
        "()Lcom/mopub/mobileads/VastResource;",
        "getViewTrackingUris",
        "getWidth",
        "handleClick",
        "",
        "context",
        "Landroid/content/Context;",
        "webViewClickThroughUri",
        "dspCreativeId",
        "handleImpression",
        "contentPlayHead",
        "assetUri",
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
.field public static final Companion:Lcom/mopub/mobileads/VastIconConfig$Companion;


# instance fields
.field private a:I
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "skip_offset_ms"
    .end annotation
.end field

.field private b:I
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "width"
    .end annotation
.end field

.field private c:I
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "height"
    .end annotation
.end field

.field private d:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "duration_ms"
    .end annotation
.end field

.field private e:Lcom/mopub/mobileads/VastResource;
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "resource"
    .end annotation
.end field

.field private f:Ljava/util/List;
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

.field private g:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "clickthrough_url"
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "video_viewability_tracker"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/mopub/mobileads/VastIconConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mopub/mobileads/VastIconConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/mopub/mobileads/VastIconConfig;->Companion:Lcom/mopub/mobileads/VastIconConfig$Companion;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IILjava/lang/Integer;Ljava/lang/Integer;Lcom/mopub/mobileads/VastResource;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/mopub/mobileads/VastResource;",
            "Ljava/util/List<",
            "+",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "vastResource"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickTrackingUris"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "viewTrackingUris"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/mopub/mobileads/VastIconConfig;->b:I

    iput p2, p0, Lcom/mopub/mobileads/VastIconConfig;->c:I

    iput-object p4, p0, Lcom/mopub/mobileads/VastIconConfig;->d:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/mopub/mobileads/VastIconConfig;->e:Lcom/mopub/mobileads/VastResource;

    iput-object p6, p0, Lcom/mopub/mobileads/VastIconConfig;->f:Ljava/util/List;

    iput-object p7, p0, Lcom/mopub/mobileads/VastIconConfig;->g:Ljava/lang/String;

    iput-object p8, p0, Lcom/mopub/mobileads/VastIconConfig;->h:Ljava/util/List;

    if-eqz p3, :cond_0

    .line 47
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/mopub/mobileads/VastIconConfig;->a:I

    return-void
.end method


# virtual methods
.method public synthetic fromJson$1(Lcom/google/gson/f;Lcom/google/gson/stream/JsonReader;Lproguard/optimize/gson/_OptimizedJsonReader;)V
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

    const/16 v2, 0x3c

    if-eq v0, v2, :cond_8

    const/16 v2, 0x42

    if-eq v0, v2, :cond_6

    const/16 v2, 0x50

    if-eq v0, v2, :cond_0

    const/16 v2, 0x3e

    if-eq v0, v2, :cond_4

    const/16 v2, 0x3f

    if-eq v0, v2, :cond_2

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    new-instance v0, Lcom/mopub/mobileads/VastIconConfigviewTrackingUrisTypeToken;

    invoke-direct {v0}, Lcom/mopub/mobileads/VastIconConfigviewTrackingUrisTypeToken;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/gson/f;->a(Lcom/google/gson/a/a;)Lcom/google/gson/j;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/mopub/mobileads/VastIconConfig;->h:Ljava/util/List;

    goto :goto_0

    :cond_3
    iput-object v3, p0, Lcom/mopub/mobileads/VastIconConfig;->h:Ljava/util/List;

    goto/16 :goto_3

    :cond_4
    if-eqz v1, :cond_5

    const-class v0, Lcom/mopub/mobileads/VastResource;

    invoke-virtual {p1, v0}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/VastResource;

    iput-object v0, p0, Lcom/mopub/mobileads/VastIconConfig;->e:Lcom/mopub/mobileads/VastResource;

    goto :goto_0

    :cond_5
    iput-object v3, p0, Lcom/mopub/mobileads/VastIconConfig;->e:Lcom/mopub/mobileads/VastResource;

    goto/16 :goto_3

    :cond_6
    if-eqz v1, :cond_7

    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/mopub/mobileads/VastIconConfig;->d:Ljava/lang/Integer;

    goto :goto_0

    :cond_7
    iput-object v3, p0, Lcom/mopub/mobileads/VastIconConfig;->d:Ljava/lang/Integer;

    goto :goto_3

    :cond_8
    if-eqz v1, :cond_10

    :try_start_0
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Lcom/mopub/mobileads/VastIconConfig;->a:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {p2, p1}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_9
    if-eqz v1, :cond_10

    :try_start_1
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Lcom/mopub/mobileads/VastIconConfig;->b:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
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

    goto :goto_2

    :cond_b
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/mopub/mobileads/VastIconConfig;->g:Ljava/lang/String;

    goto/16 :goto_0

    :cond_c
    iput-object v3, p0, Lcom/mopub/mobileads/VastIconConfig;->g:Ljava/lang/String;

    goto :goto_3

    :cond_d
    if-eqz v1, :cond_e

    new-instance v0, Lcom/mopub/mobileads/VastIconConfigclickTrackingUrisTypeToken;

    invoke-direct {v0}, Lcom/mopub/mobileads/VastIconConfigclickTrackingUrisTypeToken;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/gson/f;->a(Lcom/google/gson/a/a;)Lcom/google/gson/j;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/mopub/mobileads/VastIconConfig;->f:Ljava/util/List;

    goto/16 :goto_0

    :cond_e
    iput-object v3, p0, Lcom/mopub/mobileads/VastIconConfig;->f:Ljava/util/List;

    goto :goto_3

    :cond_f
    if-eqz v1, :cond_10

    :try_start_2
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Lcom/mopub/mobileads/VastIconConfig;->c:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception p1

    new-instance p2, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {p2, p1}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_10
    :goto_3
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    goto/16 :goto_0

    :cond_11
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->endObject()V

    return-void
.end method

.method public getClickThroughUri()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/mopub/mobileads/VastIconConfig;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getClickTrackingUris()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/mopub/mobileads/VastIconConfig;->f:Ljava/util/List;

    return-object v0
.end method

.method public getDurationMS()Ljava/lang/Integer;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/mopub/mobileads/VastIconConfig;->d:Ljava/lang/Integer;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/mopub/mobileads/VastIconConfig;->c:I

    return v0
.end method

.method public getOffsetMS()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/mopub/mobileads/VastIconConfig;->a:I

    return v0
.end method

.method public getVastResource()Lcom/mopub/mobileads/VastResource;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/mopub/mobileads/VastIconConfig;->e:Lcom/mopub/mobileads/VastResource;

    return-object v0
.end method

.method public getViewTrackingUris()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/mopub/mobileads/VastIconConfig;->h:Ljava/util/List;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/mopub/mobileads/VastIconConfig;->b:I

    return v0
.end method

.method public handleClick(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastIconConfig;->getVastResource()Lcom/mopub/mobileads/VastResource;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastIconConfig;->getClickThroughUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/mopub/mobileads/VastResource;->getCorrectClickThroughUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 84
    move-object v0, p2

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
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_2

    .line 87
    new-instance v0, Lcom/mopub/common/UrlHandler$Builder;

    invoke-direct {v0}, Lcom/mopub/common/UrlHandler$Builder;-><init>()V

    .line 89
    sget-object v3, Lcom/mopub/common/UrlAction;->IGNORE_ABOUT_SCHEME:Lcom/mopub/common/UrlAction;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/mopub/common/UrlAction;

    .line 90
    sget-object v5, Lcom/mopub/common/UrlAction;->OPEN_NATIVE_BROWSER:Lcom/mopub/common/UrlAction;

    aput-object v5, v4, v2

    .line 91
    sget-object v2, Lcom/mopub/common/UrlAction;->OPEN_IN_APP_BROWSER:Lcom/mopub/common/UrlAction;

    aput-object v2, v4, v1

    .line 88
    invoke-virtual {v0, v3, v4}, Lcom/mopub/common/UrlHandler$Builder;->withSupportedUrlActions(Lcom/mopub/common/UrlAction;[Lcom/mopub/common/UrlAction;)Lcom/mopub/common/UrlHandler$Builder;

    move-result-object v0

    .line 93
    new-instance v1, Lcom/mopub/mobileads/VastIconConfig$handleClick$$inlined$let$lambda$1;

    invoke-direct {v1, p3, p1}, Lcom/mopub/mobileads/VastIconConfig$handleClick$$inlined$let$lambda$1;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    check-cast v1, Lcom/mopub/common/UrlHandler$ResultActions;

    invoke-virtual {v0, v1}, Lcom/mopub/common/UrlHandler$Builder;->withResultActions(Lcom/mopub/common/UrlHandler$ResultActions;)Lcom/mopub/common/UrlHandler$Builder;

    move-result-object p3

    .line 120
    invoke-virtual {p3}, Lcom/mopub/common/UrlHandler$Builder;->withoutMoPubBrowser()Lcom/mopub/common/UrlHandler$Builder;

    move-result-object p3

    .line 121
    invoke-virtual {p3}, Lcom/mopub/common/UrlHandler$Builder;->build()Lcom/mopub/common/UrlHandler;

    move-result-object p3

    .line 122
    invoke-virtual {p3, p1, p2}, Lcom/mopub/common/UrlHandler;->handleUrl(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public handleImpression(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetUri"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastIconConfig;->getViewTrackingUris()Ljava/util/List;

    move-result-object v0

    .line 64
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x0

    .line 61
    invoke-static {v0, v1, p2, p3, p1}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public synthetic toJson$1(Lcom/google/gson/f;Lcom/google/gson/stream/JsonWriter;Lproguard/optimize/gson/_OptimizedJsonWriter;)V
    .locals 2

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    const/16 v0, 0x3c

    .line 1000
    invoke-interface {p3, p2, v0}, Lproguard/optimize/gson/_OptimizedJsonWriter;->b(Lcom/google/gson/stream/JsonWriter;I)V

    iget v0, p0, Lcom/mopub/mobileads/VastIconConfig;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lcom/google/gson/stream/JsonWriter;

    const/16 v0, 0x2f

    invoke-interface {p3, p2, v0}, Lproguard/optimize/gson/_OptimizedJsonWriter;->b(Lcom/google/gson/stream/JsonWriter;I)V

    iget v0, p0, Lcom/mopub/mobileads/VastIconConfig;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lcom/google/gson/stream/JsonWriter;

    const/16 v0, 0xe

    invoke-interface {p3, p2, v0}, Lproguard/optimize/gson/_OptimizedJsonWriter;->b(Lcom/google/gson/stream/JsonWriter;I)V

    iget v0, p0, Lcom/mopub/mobileads/VastIconConfig;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lcom/google/gson/stream/JsonWriter;

    iget-object v0, p0, Lcom/mopub/mobileads/VastIconConfig;->d:Ljava/lang/Integer;

    if-eq p0, v0, :cond_0

    const/16 v0, 0x42

    invoke-interface {p3, p2, v0}, Lproguard/optimize/gson/_OptimizedJsonWriter;->b(Lcom/google/gson/stream/JsonWriter;I)V

    const-class v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/mopub/mobileads/VastIconConfig;->d:Ljava/lang/Integer;

    invoke-static {p1, v0, v1}, Lproguard/optimize/gson/a;->a(Lcom/google/gson/f;Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/gson/j;

    move-result-object v0

    invoke-virtual {v0, p2, v1}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/VastIconConfig;->e:Lcom/mopub/mobileads/VastResource;

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3e

    invoke-interface {p3, p2, v0}, Lproguard/optimize/gson/_OptimizedJsonWriter;->b(Lcom/google/gson/stream/JsonWriter;I)V

    const-class v0, Lcom/mopub/mobileads/VastResource;

    iget-object v1, p0, Lcom/mopub/mobileads/VastIconConfig;->e:Lcom/mopub/mobileads/VastResource;

    invoke-static {p1, v0, v1}, Lproguard/optimize/gson/a;->a(Lcom/google/gson/f;Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/gson/j;

    move-result-object v0

    invoke-virtual {v0, p2, v1}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/VastIconConfig;->f:Ljava/util/List;

    if-eq p0, v0, :cond_2

    const/16 v0, 0x17

    invoke-interface {p3, p2, v0}, Lproguard/optimize/gson/_OptimizedJsonWriter;->b(Lcom/google/gson/stream/JsonWriter;I)V

    new-instance v0, Lcom/mopub/mobileads/VastIconConfigclickTrackingUrisTypeToken;

    invoke-direct {v0}, Lcom/mopub/mobileads/VastIconConfigclickTrackingUrisTypeToken;-><init>()V

    iget-object v1, p0, Lcom/mopub/mobileads/VastIconConfig;->f:Ljava/util/List;

    invoke-static {p1, v0, v1}, Lproguard/optimize/gson/a;->a(Lcom/google/gson/f;Lcom/google/gson/a/a;Ljava/lang/Object;)Lcom/google/gson/j;

    move-result-object v0

    invoke-virtual {v0, p2, v1}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/mopub/mobileads/VastIconConfig;->g:Ljava/lang/String;

    if-eq p0, v0, :cond_3

    const/16 v0, 0x1b

    invoke-interface {p3, p2, v0}, Lproguard/optimize/gson/_OptimizedJsonWriter;->b(Lcom/google/gson/stream/JsonWriter;I)V

    iget-object v0, p0, Lcom/mopub/mobileads/VastIconConfig;->g:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    :cond_3
    iget-object v0, p0, Lcom/mopub/mobileads/VastIconConfig;->h:Ljava/util/List;

    if-eq p0, v0, :cond_4

    const/16 v0, 0x3f

    invoke-interface {p3, p2, v0}, Lproguard/optimize/gson/_OptimizedJsonWriter;->b(Lcom/google/gson/stream/JsonWriter;I)V

    new-instance p3, Lcom/mopub/mobileads/VastIconConfigviewTrackingUrisTypeToken;

    invoke-direct {p3}, Lcom/mopub/mobileads/VastIconConfigviewTrackingUrisTypeToken;-><init>()V

    iget-object v0, p0, Lcom/mopub/mobileads/VastIconConfig;->h:Ljava/util/List;

    invoke-static {p1, p3, v0}, Lproguard/optimize/gson/a;->a(Lcom/google/gson/f;Lcom/google/gson/a/a;Ljava/lang/Object;)Lcom/google/gson/j;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    return-void
.end method
