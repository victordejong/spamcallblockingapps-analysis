.class public final Lcom/bytedance/sdk/a/b/a/c/h;
.super Lcom/bytedance/sdk/a/b/ab;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:J

.field private final c:Lcom/bytedance/sdk/a/a/e;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLcom/bytedance/sdk/a/a/e;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/ab;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/c/h;->a:Ljava/lang/String;

    .line 34
    iput-wide p2, p0, Lcom/bytedance/sdk/a/b/a/c/h;->b:J

    .line 35
    iput-object p4, p0, Lcom/bytedance/sdk/a/b/a/c/h;->c:Lcom/bytedance/sdk/a/a/e;

    return-void
.end method


# virtual methods
.method public final a()Lcom/bytedance/sdk/a/b/u;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/c/h;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/bytedance/sdk/a/b/u;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/u;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()J
    .locals 2

    .line 45
    iget-wide v0, p0, Lcom/bytedance/sdk/a/b/a/c/h;->b:J

    return-wide v0
.end method

.method public final d()Lcom/bytedance/sdk/a/a/e;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/c/h;->c:Lcom/bytedance/sdk/a/a/e;

    return-object v0
.end method
