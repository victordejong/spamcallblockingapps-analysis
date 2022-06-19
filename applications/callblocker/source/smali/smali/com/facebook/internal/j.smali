.class public final Lcom/facebook/internal/j;
.super Ljava/lang/Object;
.source "FeatureManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/j$a;,
        Lcom/facebook/internal/j$b;
    }
.end annotation


# direct methods
.method public static a(Lcom/facebook/internal/j$b;Lcom/facebook/internal/j$a;)V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/facebook/internal/j$1;

    invoke-direct {v0, p1, p0}, Lcom/facebook/internal/j$1;-><init>(Lcom/facebook/internal/j$a;Lcom/facebook/internal/j$b;)V

    invoke-static {v0}, Lcom/facebook/internal/k;->a(Lcom/facebook/internal/k$a;)V

    .line 42
    return-void
.end method

.method public static a(Lcom/facebook/internal/j$b;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 45
    sget-object v2, Lcom/facebook/internal/j$b;->a:Lcom/facebook/internal/j$b;

    if-ne v2, p0, :cond_1

    move v0, v1

    .line 57
    :cond_0
    :goto_0
    return v0

    .line 49
    :cond_1
    sget-object v2, Lcom/facebook/internal/j$b;->b:Lcom/facebook/internal/j$b;

    if-eq v2, p0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/facebook/internal/j$b;->a()Lcom/facebook/internal/j$b;

    move-result-object v2

    .line 54
    if-ne v2, p0, :cond_2

    .line 55
    invoke-static {p0}, Lcom/facebook/internal/j;->b(Lcom/facebook/internal/j$b;)Z

    move-result v0

    goto :goto_0

    .line 57
    :cond_2
    invoke-static {v2}, Lcom/facebook/internal/j;->a(Lcom/facebook/internal/j$b;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p0}, Lcom/facebook/internal/j;->b(Lcom/facebook/internal/j$b;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private static b(Lcom/facebook/internal/j$b;)Z
    .locals 3

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "FBSDKFeature"

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 64
    invoke-virtual {p0}, Lcom/facebook/internal/j$b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-static {p0}, Lcom/facebook/internal/j;->c(Lcom/facebook/internal/j$b;)Z

    move-result v1

    .line 70
    invoke-static {}, Lcom/facebook/j;->l()Ljava/lang/String;

    move-result-object v2

    .line 68
    invoke-static {v0, v2, v1}, Lcom/facebook/internal/k;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static c(Lcom/facebook/internal/j$b;)Z
    .locals 2

    .prologue
    .line 75
    sget-object v0, Lcom/facebook/internal/j$2;->a:[I

    invoke-virtual {p0}, Lcom/facebook/internal/j$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 86
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 85
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
