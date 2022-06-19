.class public Lcom/bytedance/sdk/adnet/core/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/adnet/core/m$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final b:Lcom/bytedance/sdk/adnet/face/a$a;

.field public final c:Lcom/bytedance/sdk/adnet/err/VAdError;

.field public d:Z

.field public e:J

.field public f:J

.field public g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public h:J


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/adnet/err/VAdError;)V
    .locals 3

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcom/bytedance/sdk/adnet/core/m;->d:Z

    const-wide/16 v0, 0x0

    .line 87
    iput-wide v0, p0, Lcom/bytedance/sdk/adnet/core/m;->e:J

    .line 88
    iput-wide v0, p0, Lcom/bytedance/sdk/adnet/core/m;->f:J

    .line 91
    iput-wide v0, p0, Lcom/bytedance/sdk/adnet/core/m;->h:J

    const/4 v2, 0x0

    .line 118
    iput-object v2, p0, Lcom/bytedance/sdk/adnet/core/m;->a:Ljava/lang/Object;

    .line 119
    iput-object v2, p0, Lcom/bytedance/sdk/adnet/core/m;->b:Lcom/bytedance/sdk/adnet/face/a$a;

    .line 120
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/core/m;->c:Lcom/bytedance/sdk/adnet/err/VAdError;

    cmp-long v2, v0, v0

    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    .line 123
    iget-object v0, p1, Lcom/bytedance/sdk/adnet/err/VAdError;->networkResponse:Lcom/bytedance/sdk/adnet/core/i;

    if-eqz v0, :cond_0

    .line 124
    iget-object p1, p1, Lcom/bytedance/sdk/adnet/err/VAdError;->networkResponse:Lcom/bytedance/sdk/adnet/core/i;

    iget p1, p1, Lcom/bytedance/sdk/adnet/core/i;->a:I

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/bytedance/sdk/adnet/core/m;->h:J

    goto :goto_0

    .line 126
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/err/VAdError;->getErrorCode()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/bytedance/sdk/adnet/core/m;->h:J

    .line 128
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Response error code = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/bytedance/sdk/adnet/core/m;->h:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Response"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/adnet/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lcom/bytedance/sdk/adnet/face/a$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/bytedance/sdk/adnet/face/a$a;",
            ")V"
        }
    .end annotation

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcom/bytedance/sdk/adnet/core/m;->d:Z

    const-wide/16 v0, 0x0

    .line 87
    iput-wide v0, p0, Lcom/bytedance/sdk/adnet/core/m;->e:J

    .line 88
    iput-wide v0, p0, Lcom/bytedance/sdk/adnet/core/m;->f:J

    .line 91
    iput-wide v0, p0, Lcom/bytedance/sdk/adnet/core/m;->h:J

    .line 109
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/core/m;->a:Ljava/lang/Object;

    .line 110
    iput-object p2, p0, Lcom/bytedance/sdk/adnet/core/m;->b:Lcom/bytedance/sdk/adnet/face/a$a;

    const/4 p1, 0x0

    .line 111
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/core/m;->c:Lcom/bytedance/sdk/adnet/err/VAdError;

    if-eqz p2, :cond_0

    .line 113
    iget p1, p2, Lcom/bytedance/sdk/adnet/face/a$a;->a:I

    int-to-long p1, p1

    iput-wide p1, p0, Lcom/bytedance/sdk/adnet/core/m;->h:J

    :cond_0
    return-void
.end method

.method public static a(Lcom/bytedance/sdk/adnet/err/VAdError;)Lcom/bytedance/sdk/adnet/core/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bytedance/sdk/adnet/err/VAdError;",
            ")",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "TT;>;"
        }
    .end annotation

    .line 64
    new-instance v0, Lcom/bytedance/sdk/adnet/core/m;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/adnet/core/m;-><init>(Lcom/bytedance/sdk/adnet/err/VAdError;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Lcom/bytedance/sdk/adnet/face/a$a;)Lcom/bytedance/sdk/adnet/core/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/bytedance/sdk/adnet/face/a$a;",
            ")",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "TT;>;"
        }
    .end annotation

    .line 56
    new-instance v0, Lcom/bytedance/sdk/adnet/core/m;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/adnet/core/m;-><init>(Ljava/lang/Object;Lcom/bytedance/sdk/adnet/face/a$a;)V

    return-object v0
.end method


# virtual methods
.method public a(J)Lcom/bytedance/sdk/adnet/core/m;
    .locals 0

    .line 133
    iput-wide p1, p0, Lcom/bytedance/sdk/adnet/core/m;->e:J

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/m;->b:Lcom/bytedance/sdk/adnet/face/a$a;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/bytedance/sdk/adnet/face/a$a;->h:Ljava/util/Map;

    if-nez v0, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/m;->b:Lcom/bytedance/sdk/adnet/face/a$a;

    iget-object v0, v0, Lcom/bytedance/sdk/adnet/face/a$a;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    :goto_0
    return-object p2
.end method

.method public a()Z
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/m;->c:Lcom/bytedance/sdk/adnet/err/VAdError;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public b(J)Lcom/bytedance/sdk/adnet/core/m;
    .locals 0

    .line 138
    iput-wide p1, p0, Lcom/bytedance/sdk/adnet/core/m;->f:J

    return-object p0
.end method
