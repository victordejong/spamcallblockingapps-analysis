.class final Lcom/mopub/mobileads/InlineVisibilityTracker$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/InlineVisibilityTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:J

.field final d:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(II)V
    .locals 2

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    .line 237
    iput-wide v0, p0, Lcom/mopub/mobileads/InlineVisibilityTracker$a;->c:J

    .line 240
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/InlineVisibilityTracker$a;->d:Landroid/graphics/Rect;

    .line 243
    iput p1, p0, Lcom/mopub/mobileads/InlineVisibilityTracker$a;->a:I

    .line 244
    iput p2, p0, Lcom/mopub/mobileads/InlineVisibilityTracker$a;->b:I

    return-void
.end method


# virtual methods
.method final a()Z
    .locals 5

    .line 248
    iget-wide v0, p0, Lcom/mopub/mobileads/InlineVisibilityTracker$a;->c:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
