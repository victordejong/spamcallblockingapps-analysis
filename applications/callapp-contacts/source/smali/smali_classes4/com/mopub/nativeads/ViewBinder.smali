.class public Lcom/mopub/nativeads/ViewBinder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/ViewBinder$Builder;
    }
.end annotation


# instance fields
.field final a:I

.field final b:I

.field final c:I

.field final d:I

.field final e:I

.field final f:I

.field final g:I

.field final h:I

.field final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/mopub/nativeads/ViewBinder$Builder;)V
    .locals 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-static {p1}, Lcom/mopub/nativeads/ViewBinder$Builder;->a(Lcom/mopub/nativeads/ViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mopub/nativeads/ViewBinder;->a:I

    .line 103
    invoke-static {p1}, Lcom/mopub/nativeads/ViewBinder$Builder;->b(Lcom/mopub/nativeads/ViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mopub/nativeads/ViewBinder;->b:I

    .line 104
    invoke-static {p1}, Lcom/mopub/nativeads/ViewBinder$Builder;->c(Lcom/mopub/nativeads/ViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mopub/nativeads/ViewBinder;->c:I

    .line 105
    invoke-static {p1}, Lcom/mopub/nativeads/ViewBinder$Builder;->d(Lcom/mopub/nativeads/ViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mopub/nativeads/ViewBinder;->d:I

    .line 106
    invoke-static {p1}, Lcom/mopub/nativeads/ViewBinder$Builder;->e(Lcom/mopub/nativeads/ViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mopub/nativeads/ViewBinder;->e:I

    .line 107
    invoke-static {p1}, Lcom/mopub/nativeads/ViewBinder$Builder;->f(Lcom/mopub/nativeads/ViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mopub/nativeads/ViewBinder;->f:I

    .line 108
    invoke-static {p1}, Lcom/mopub/nativeads/ViewBinder$Builder;->g(Lcom/mopub/nativeads/ViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mopub/nativeads/ViewBinder;->g:I

    .line 109
    invoke-static {p1}, Lcom/mopub/nativeads/ViewBinder$Builder;->h(Lcom/mopub/nativeads/ViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mopub/nativeads/ViewBinder;->h:I

    .line 110
    invoke-static {p1}, Lcom/mopub/nativeads/ViewBinder$Builder;->i(Lcom/mopub/nativeads/ViewBinder$Builder;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/nativeads/ViewBinder;->i:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/mopub/nativeads/ViewBinder$Builder;Lcom/mopub/nativeads/ViewBinder$1;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/mopub/nativeads/ViewBinder;-><init>(Lcom/mopub/nativeads/ViewBinder$Builder;)V

    return-void
.end method
