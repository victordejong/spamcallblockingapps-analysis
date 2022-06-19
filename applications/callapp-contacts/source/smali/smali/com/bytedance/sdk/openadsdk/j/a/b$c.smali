.class public Lcom/bytedance/sdk/openadsdk/j/a/b$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/j/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private final a:[B

.field private final b:Lcom/bytedance/sdk/openadsdk/j/a/b$b;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/bytedance/sdk/adnet/err/VAdError;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/adnet/err/VAdError;Lcom/bytedance/sdk/openadsdk/j/a/b$b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/j/a/b$c;->e:Lcom/bytedance/sdk/adnet/err/VAdError;

    .line 214
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/j/a/b$c;->b:Lcom/bytedance/sdk/openadsdk/j/a/b$b;

    .line 215
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/j/a/b$c;->c:Ljava/lang/String;

    .line 216
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/j/a/b$c;->d:Ljava/lang/String;

    const/4 p1, 0x0

    .line 217
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/j/a/b$c;->a:[B

    return-void
.end method

.method public constructor <init>([BLcom/bytedance/sdk/openadsdk/j/a/b$b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/j/a/b$c;->a:[B

    .line 206
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/j/a/b$c;->b:Lcom/bytedance/sdk/openadsdk/j/a/b$b;

    .line 207
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/j/a/b$c;->c:Ljava/lang/String;

    .line 208
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/j/a/b$c;->d:Ljava/lang/String;

    const/4 p1, 0x0

    .line 209
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/j/a/b$c;->e:Lcom/bytedance/sdk/adnet/err/VAdError;

    return-void
.end method
