.class public Lcom/flurry/sdk/iw;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/iw$a;
    }
.end annotation


# static fields
.field private static final m:Ljava/lang/String; = "com.flurry.sdk.iw"


# instance fields
.field public a:I

.field public b:J

.field public c:J

.field public d:Z

.field public e:I

.field public f:Lcom/flurry/sdk/ix;

.field public g:Ljava/lang/String;

.field public h:I

.field public i:J

.field public j:Z

.field public k:J

.field public l:Lcom/flurry/sdk/iv;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/flurry/sdk/iv;JJI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flurry/sdk/iw;->k:J

    iput-object p1, p0, Lcom/flurry/sdk/iw;->l:Lcom/flurry/sdk/iv;

    iput-wide p2, p0, Lcom/flurry/sdk/iw;->b:J

    iput-wide p4, p0, Lcom/flurry/sdk/iw;->c:J

    iput p6, p0, Lcom/flurry/sdk/iw;->a:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/flurry/sdk/iw;->e:I

    sget-object p1, Lcom/flurry/sdk/ix;->d:Lcom/flurry/sdk/ix;

    iput-object p1, p0, Lcom/flurry/sdk/iw;->f:Lcom/flurry/sdk/ix;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/iw;->l:Lcom/flurry/sdk/iv;

    iget-object v0, v0, Lcom/flurry/sdk/iv;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/flurry/sdk/iw;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/iw;->l:Lcom/flurry/sdk/iv;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/flurry/sdk/iv;->m:Z

    :cond_0
    return-void
.end method
