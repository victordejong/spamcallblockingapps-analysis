.class public Lcom/bytedance/sdk/openadsdk/core/p$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final a:I

.field final b:J

.field final c:J

.field final d:I

.field final e:Ljava/lang/String;

.field final f:I

.field final g:Ljava/lang/String;

.field public final h:Lcom/bytedance/sdk/openadsdk/core/e/a;

.field final i:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/e/a;JJ)V
    .locals 0

    .line 1136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1137
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/p$a;->a:I

    .line 1138
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/core/p$a;->d:I

    .line 1139
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/p$a;->e:Ljava/lang/String;

    .line 1140
    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/p$a;->g:Ljava/lang/String;

    .line 1141
    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/core/p$a;->h:Lcom/bytedance/sdk/openadsdk/core/e/a;

    .line 1142
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p$a;->i:Ljava/lang/String;

    .line 1143
    iput p5, p0, Lcom/bytedance/sdk/openadsdk/core/p$a;->f:I

    .line 1144
    iput-wide p8, p0, Lcom/bytedance/sdk/openadsdk/core/p$a;->b:J

    .line 1145
    iput-wide p10, p0, Lcom/bytedance/sdk/openadsdk/core/p$a;->c:J

    return-void
.end method

.method public static a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/e/j;)Lcom/bytedance/sdk/openadsdk/core/p$a;
    .locals 13

    const-string v0, "did"

    .line 1153
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "processing_time_ms"

    .line 1154
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const-string v0, "s_receive_ts"

    .line 1155
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v9

    const-string v0, "s_send_ts"

    .line 1156
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v11

    const-string v0, "status_code"

    .line 1157
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const-string v0, "desc"

    .line 1158
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "request_id"

    .line 1159
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "reason"

    .line 1160
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 1161
    invoke-static {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/b;->a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/e/j;)Lcom/bytedance/sdk/openadsdk/core/e/a;

    move-result-object v8

    if-eqz v8, :cond_0

    const-string p1, "request_after"

    .line 1164
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide p0

    invoke-virtual {v8, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/e/a;->a(J)V

    .line 1166
    :cond_0
    new-instance p0, Lcom/bytedance/sdk/openadsdk/core/p$a;

    move-object v1, p0

    invoke-direct/range {v1 .. v12}, Lcom/bytedance/sdk/openadsdk/core/p$a;-><init>(Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/e/a;JJ)V

    return-object p0
.end method
