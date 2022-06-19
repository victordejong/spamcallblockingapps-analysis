.class public Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/content/Context;


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 10
    sput-object p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/g;->a:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method
