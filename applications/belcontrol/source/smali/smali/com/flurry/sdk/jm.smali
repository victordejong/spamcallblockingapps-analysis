.class public final Lcom/flurry/sdk/jm;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:J

.field public d:J

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:I

.field public l:I

.field public m:Ljava/lang/String;

.field public n:Landroid/location/Location;

.field public o:I

.field public p:B

.field public q:Ljava/lang/Long;

.field public r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/jh;",
            ">;"
        }
    .end annotation
.end field

.field public s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/flurry/sdk/ji;",
            ">;"
        }
    .end annotation
.end field

.field public t:Z

.field public u:I

.field public v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/flurry/sdk/jg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/flurry/sdk/jm;->b:J

    iput-wide v0, p0, Lcom/flurry/sdk/jm;->c:J

    iput-wide v0, p0, Lcom/flurry/sdk/jm;->d:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/flurry/sdk/jm;->k:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/flurry/sdk/jm;->l:I

    iput v0, p0, Lcom/flurry/sdk/jm;->o:I

    iput-byte v0, p0, Lcom/flurry/sdk/jm;->p:B

    iput-boolean v1, p0, Lcom/flurry/sdk/jm;->t:Z

    iput v0, p0, Lcom/flurry/sdk/jm;->u:I

    return-void
.end method
