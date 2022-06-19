.class public Lcom/bytedance/sdk/openadsdk/multipro/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z

.field public static b:Z


# direct methods
.method public static a()V
    .locals 3

    .line 17
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "sp_multi_info"

    const-string v2, "is_support_multi_process"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    const/4 v0, 0x1

    .line 18
    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/multipro/b;->a:Z

    .line 19
    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/multipro/b;->b:Z

    return-void
.end method

.method public static b()Z
    .locals 3

    .line 23
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/multipro/b;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "sp_multi_info"

    const-string v2, "is_support_multi_process"

    .line 24
    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/multipro/b;->a:Z

    const/4 v0, 0x1

    .line 25
    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/multipro/b;->b:Z

    .line 27
    :cond_0
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/multipro/b;->a:Z

    return v0
.end method
