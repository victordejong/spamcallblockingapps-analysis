.class final Lcom/explorestack/iab/vast/VastRequest$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/iab/vast/VastRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field public a:J

.field public b:Ljava/io/File;

.field final synthetic c:Lcom/explorestack/iab/vast/VastRequest;


# direct methods
.method public constructor <init>(Lcom/explorestack/iab/vast/VastRequest;Ljava/io/File;)V
    .locals 0

    .line 399
    iput-object p1, p0, Lcom/explorestack/iab/vast/VastRequest$a;->c:Lcom/explorestack/iab/vast/VastRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 400
    iput-object p2, p0, Lcom/explorestack/iab/vast/VastRequest$a;->b:Ljava/io/File;

    .line 401
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/explorestack/iab/vast/VastRequest$a;->a:J

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 4

    .line 405
    check-cast p1, Lcom/explorestack/iab/vast/VastRequest$a;

    .line 406
    iget-wide v0, p0, Lcom/explorestack/iab/vast/VastRequest$a;->a:J

    iget-wide v2, p1, Lcom/explorestack/iab/vast/VastRequest$a;->a:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
