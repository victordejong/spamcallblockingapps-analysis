.class Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent$NativeComponentRuleListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/RuleComponent$RuleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NativeComponentRuleListener"
.end annotation


# instance fields
.field final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;)V
    .locals 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent$NativeComponentRuleListener;->a:Ljava/lang/ref/WeakReference;

    .line 91
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent$NativeComponentRuleListener;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private synthetic a(Lcom/verizon/ads/RuleComponent;)V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent$NativeComponentRuleListener;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 103
    iget-object v1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent$NativeComponentRuleListener;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {v1, v0, p1}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->a(Landroid/content/Context;Lcom/verizon/ads/RuleComponent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic lambda$Z9Y1Y_i7APgpubslV-NW6b5lnYk(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent$NativeComponentRuleListener;Lcom/verizon/ads/RuleComponent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent$NativeComponentRuleListener;->a(Lcom/verizon/ads/RuleComponent;)V

    return-void
.end method


# virtual methods
.method public onRuleFired(Lcom/verizon/ads/RuleComponent;)V
    .locals 1

    .line 100
    new-instance v0, Lcom/verizon/ads/verizonnativecontroller/-$$Lambda$VerizonNativeComponent$NativeComponentRuleListener$Z9Y1Y_i7APgpubslV-NW6b5lnYk;

    invoke-direct {v0, p0, p1}, Lcom/verizon/ads/verizonnativecontroller/-$$Lambda$VerizonNativeComponent$NativeComponentRuleListener$Z9Y1Y_i7APgpubslV-NW6b5lnYk;-><init>(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent$NativeComponentRuleListener;Lcom/verizon/ads/RuleComponent;)V

    invoke-static {v0}, Lcom/verizon/ads/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
