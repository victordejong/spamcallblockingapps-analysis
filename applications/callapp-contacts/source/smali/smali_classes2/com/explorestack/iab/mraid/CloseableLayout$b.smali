.class final Lcom/explorestack/iab/mraid/CloseableLayout$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/iab/mraid/CloseableLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:Z

.field b:F

.field c:J

.field d:J

.field e:J

.field f:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/explorestack/iab/mraid/CloseableLayout$b;->a:Z

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcom/explorestack/iab/mraid/CloseableLayout$b;->b:F

    const-wide/16 v0, 0x0

    .line 49
    iput-wide v0, p0, Lcom/explorestack/iab/mraid/CloseableLayout$b;->c:J

    .line 50
    iput-wide v0, p0, Lcom/explorestack/iab/mraid/CloseableLayout$b;->d:J

    .line 52
    iput-wide v0, p0, Lcom/explorestack/iab/mraid/CloseableLayout$b;->e:J

    .line 53
    iput-wide v0, p0, Lcom/explorestack/iab/mraid/CloseableLayout$b;->f:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/iab/mraid/CloseableLayout$1;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/explorestack/iab/mraid/CloseableLayout$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 5

    .line 71
    iget-wide v0, p0, Lcom/explorestack/iab/mraid/CloseableLayout$b;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v2, p0, Lcom/explorestack/iab/mraid/CloseableLayout$b;->d:J

    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
