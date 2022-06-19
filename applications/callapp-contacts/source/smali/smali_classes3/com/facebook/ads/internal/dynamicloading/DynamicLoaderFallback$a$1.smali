.class final Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$a;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$a;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$a$1;->a:Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 270
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p3, "toString"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 271
    iget-object p1, p0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$a$1;->a:Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$a;

    .line 1261
    iput-object p2, p1, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$a;->a:Ljava/lang/reflect/Method;

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
