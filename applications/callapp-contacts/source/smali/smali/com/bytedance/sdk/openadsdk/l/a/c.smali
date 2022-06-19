.class public Lcom/bytedance/sdk/openadsdk/l/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:I

.field private e:J

.field private f:J

.field private g:J

.field private h:J

.field private i:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIJJJJI)V
    .locals 3

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/l/a/c;->b:I

    .line 22
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/l/a/c;->c:I

    const-wide/16 v1, 0x0

    .line 26
    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/l/a/c;->e:J

    .line 27
    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/l/a/c;->f:J

    .line 29
    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/l/a/c;->g:J

    .line 30
    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/l/a/c;->h:J

    .line 32
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/l/a/c;->i:I

    .line 64
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/a/c;->a:Ljava/lang/String;

    .line 65
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/l/a/c;->b:I

    .line 66
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/l/a/c;->c:I

    .line 67
    iput-wide p4, p0, Lcom/bytedance/sdk/openadsdk/l/a/c;->e:J

    .line 68
    iput-wide p6, p0, Lcom/bytedance/sdk/openadsdk/l/a/c;->f:J

    .line 69
    iput-wide p8, p0, Lcom/bytedance/sdk/openadsdk/l/a/c;->g:J

    .line 70
    iput-wide p10, p0, Lcom/bytedance/sdk/openadsdk/l/a/c;->h:J

    .line 71
    iput p12, p0, Lcom/bytedance/sdk/openadsdk/l/a/c;->i:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/a/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .line 110
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/l/a/c;->i:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/l/a/c;->i:I

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 84
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/l/a/c;->e:J

    return-void
.end method

.method public b()J
    .locals 2

    .line 80
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/l/a/c;->e:J

    return-wide v0
.end method

.method public b(I)V
    .locals 0

    .line 118
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/l/a/c;->d:I

    return-void
.end method

.method public b(J)V
    .locals 2

    .line 89
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/l/a/c;->f:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/l/a/c;->f:J

    return-void
.end method

.method public c()J
    .locals 2

    .line 93
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/l/a/c;->g:J

    return-wide v0
.end method

.method public c(J)V
    .locals 0

    .line 97
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/l/a/c;->g:J

    return-void
.end method

.method public d()I
    .locals 1

    .line 106
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/l/a/c;->i:I

    return v0
.end method

.method public d(J)V
    .locals 2

    .line 102
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/l/a/c;->h:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/l/a/c;->h:J

    return-void
.end method
