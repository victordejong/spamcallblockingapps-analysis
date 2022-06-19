.class public Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/nativeads/FacebookAdRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FacebookViewBinder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;
    }
.end annotation


# instance fields
.field final a:I

.field final b:I

.field final c:I

.field final d:I

.field final e:I

.field final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final g:I

.field final h:I

.field final i:I

.field final j:I


# direct methods
.method private constructor <init>(Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;)V
    .locals 1

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    invoke-static {p1}, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;->a(Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder;->a:I

    .line 319
    invoke-static {p1}, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;->b(Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder;->b:I

    .line 320
    invoke-static {p1}, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;->c(Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder;->c:I

    .line 321
    invoke-static {p1}, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;->d(Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder;->d:I

    .line 322
    invoke-static {p1}, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;->e(Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder;->e:I

    .line 323
    invoke-static {p1}, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;->f(Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder;->f:Ljava/util/Map;

    .line 324
    invoke-static {p1}, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;->g(Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder;->g:I

    .line 325
    invoke-static {p1}, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;->h(Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder;->h:I

    .line 326
    invoke-static {p1}, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;->i(Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder;->i:I

    .line 327
    invoke-static {p1}, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;->j(Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;)I

    move-result p1

    iput p1, p0, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder;->j:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;Lcom/mopub/nativeads/FacebookAdRenderer$1;)V
    .locals 0

    .line 303
    invoke-direct {p0, p1}, Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder;-><init>(Lcom/mopub/nativeads/FacebookAdRenderer$FacebookViewBinder$Builder;)V

    return-void
.end method
