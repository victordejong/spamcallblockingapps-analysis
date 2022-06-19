.class public Lcom/bytedance/sdk/openadsdk/video/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z = false

.field private static b:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static varargs a([Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    if-eqz p0, :cond_3

    .line 274
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_2

    .line 277
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 278
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    if-nez v3, :cond_1

    const-string v3, "null"

    goto :goto_1

    .line 279
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    .line 280
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 282
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_2
    const-string p0, ""

    return-object p0
.end method

.method public static a()V
    .locals 1

    const/4 v0, 0x1

    .line 24
    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/video/d/a;->a:Z

    const/4 v0, 0x3

    .line 25
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/video/d/a;->a(I)V

    return-void
.end method

.method public static a(I)V
    .locals 0

    .line 12
    sput p0, Lcom/bytedance/sdk/openadsdk/video/d/a;->b:I

    return-void
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 100
    sget-boolean p0, Lcom/bytedance/sdk/openadsdk/video/d/a;->a:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 106
    :cond_1
    sget p0, Lcom/bytedance/sdk/openadsdk/video/d/a;->b:I

    const/4 v0, 0x3

    if-gt p0, v0, :cond_2

    .line 107
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/video/d/a;->a([Ljava/lang/Object;)Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public static varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 141
    sget-boolean p0, Lcom/bytedance/sdk/openadsdk/video/d/a;->a:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 147
    :cond_1
    sget p0, Lcom/bytedance/sdk/openadsdk/video/d/a;->b:I

    const/4 v0, 0x4

    if-gt p0, v0, :cond_2

    .line 148
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/video/d/a;->a([Ljava/lang/Object;)Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public static b()Z
    .locals 1

    .line 29
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/video/d/a;->a:Z

    return v0
.end method
