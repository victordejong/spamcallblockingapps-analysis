.class abstract Lcom/bytedance/sdk/openadsdk/g/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method a(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/g/a/b;->a:Ljava/lang/String;

    return-void
.end method

.method protected b()Lcom/bytedance/sdk/openadsdk/g/a/w;
    .locals 1

    .line 25
    sget-object v0, Lcom/bytedance/sdk/openadsdk/g/a/w;->b:Lcom/bytedance/sdk/openadsdk/g/a/w;

    return-object v0
.end method
