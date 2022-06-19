.class public Lcom/flurry/sdk/iv;
.super Lcom/flurry/sdk/le;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/iv$a;
    }
.end annotation


# static fields
.field private static final t:Ljava/lang/String; = "com.flurry.sdk.iv"


# instance fields
.field public final a:J

.field public final b:I

.field public final c:I

.field public final d:Lcom/flurry/sdk/jc;

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/flurry/sdk/iw;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lcom/flurry/sdk/iz;

.field public h:J

.field public i:I

.field public j:I

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;JIILcom/flurry/sdk/jc;Ljava/util/Map;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "JII",
            "Lcom/flurry/sdk/jc;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/flurry/sdk/le;-><init>()V

    invoke-virtual {p0, p4}, Lcom/flurry/sdk/le;->a(Ljava/lang/String;)V

    iput-wide p5, p0, Lcom/flurry/sdk/le;->n:J

    invoke-virtual {p0}, Lcom/flurry/sdk/iv;->a_()V

    iput-object p1, p0, Lcom/flurry/sdk/iv;->l:Ljava/lang/String;

    iput-wide p2, p0, Lcom/flurry/sdk/iv;->a:J

    iput p7, p0, Lcom/flurry/sdk/le;->s:I

    iput p7, p0, Lcom/flurry/sdk/iv;->b:I

    iput p8, p0, Lcom/flurry/sdk/iv;->c:I

    iput-object p9, p0, Lcom/flurry/sdk/iv;->d:Lcom/flurry/sdk/jc;

    iput-object p10, p0, Lcom/flurry/sdk/iv;->e:Ljava/util/Map;

    iput p11, p0, Lcom/flurry/sdk/iv;->i:I

    iput p12, p0, Lcom/flurry/sdk/iv;->j:I

    iput-object p13, p0, Lcom/flurry/sdk/iv;->k:Ljava/lang/String;

    const-wide/16 p1, 0x7530

    iput-wide p1, p0, Lcom/flurry/sdk/iv;->h:J

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/flurry/sdk/iv;->f:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic a(Lcom/flurry/sdk/iv;J)J
    .locals 0

    iput-wide p1, p0, Lcom/flurry/sdk/iv;->h:J

    return-wide p1
.end method

.method public static synthetic a(Lcom/flurry/sdk/iv;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/flurry/sdk/iv;->l:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic a(Lcom/flurry/sdk/iv;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/flurry/sdk/iv;->m:Z

    return p1
.end method

.method public static synthetic b(Lcom/flurry/sdk/iv;)J
    .locals 2

    iget-wide v0, p0, Lcom/flurry/sdk/iv;->a:J

    return-wide v0
.end method

.method public static synthetic c(Lcom/flurry/sdk/iv;)I
    .locals 0

    iget p0, p0, Lcom/flurry/sdk/iv;->b:I

    return p0
.end method

.method public static synthetic d(Lcom/flurry/sdk/iv;)I
    .locals 0

    iget p0, p0, Lcom/flurry/sdk/iv;->c:I

    return p0
.end method

.method public static synthetic e(Lcom/flurry/sdk/iv;)Lcom/flurry/sdk/jc;
    .locals 0

    iget-object p0, p0, Lcom/flurry/sdk/iv;->d:Lcom/flurry/sdk/jc;

    return-object p0
.end method

.method public static synthetic f(Lcom/flurry/sdk/iv;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/flurry/sdk/iv;->e:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic g(Lcom/flurry/sdk/iv;)J
    .locals 2

    iget-wide v0, p0, Lcom/flurry/sdk/iv;->h:J

    return-wide v0
.end method

.method public static synthetic h(Lcom/flurry/sdk/iv;)I
    .locals 0

    iget p0, p0, Lcom/flurry/sdk/iv;->i:I

    return p0
.end method

.method public static synthetic i(Lcom/flurry/sdk/iv;)I
    .locals 0

    iget p0, p0, Lcom/flurry/sdk/iv;->j:I

    return p0
.end method

.method public static synthetic j(Lcom/flurry/sdk/iv;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/flurry/sdk/iv;->k:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic k(Lcom/flurry/sdk/iv;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/flurry/sdk/iv;->m:Z

    return p0
.end method


# virtual methods
.method public final a_()V
    .locals 4

    invoke-super {p0}, Lcom/flurry/sdk/le;->a_()V

    iget v0, p0, Lcom/flurry/sdk/le;->p:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-wide v0, p0, Lcom/flurry/sdk/iv;->h:J

    const-wide/16 v2, 0x3

    mul-long v0, v0, v2

    iput-wide v0, p0, Lcom/flurry/sdk/iv;->h:J

    :cond_0
    return-void
.end method

.method public final declared-synchronized c()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/iv;->g:Lcom/flurry/sdk/iz;

    invoke-virtual {v0}, Lcom/flurry/sdk/iz;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/iv;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/iw;

    iput-object p0, v1, Lcom/flurry/sdk/iw;->l:Lcom/flurry/sdk/iv;

    goto :goto_0

    :cond_0
    return-void
.end method
