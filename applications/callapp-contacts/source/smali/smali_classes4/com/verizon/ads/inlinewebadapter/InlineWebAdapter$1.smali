.class Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/webcontroller/WebController$LoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;->loadView(Landroid/content/Context;ILcom/verizon/ads/inlineplacement/InlineAdAdapter$LoadViewListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/inlineplacement/InlineAdAdapter$LoadViewListener;

.field final synthetic b:Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;


# direct methods
.method constructor <init>(Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;Lcom/verizon/ads/inlineplacement/InlineAdAdapter$LoadViewListener;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$1;->b:Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;

    iput-object p2, p0, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$1;->a:Lcom/verizon/ads/inlineplacement/InlineAdAdapter$LoadViewListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/verizon/ads/ErrorInfo;)V
    .locals 5

    .line 216
    iget-object v0, p0, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$1;->b:Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;

    monitor-enter v0

    .line 218
    :try_start_0
    iget-object v1, p0, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$1;->b:Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;

    invoke-static {v1}, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;->a(Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;)Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;

    move-result-object v1

    sget-object v2, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;->LOADING:Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;

    if-ne v1, v2, :cond_1

    if-eqz p1, :cond_0

    .line 220
    iget-object v1, p0, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$1;->b:Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;

    sget-object v2, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;->ERROR:Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;

    invoke-static {v1, v2}, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;->a(Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;)Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;

    .line 222
    iget-object v1, p0, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$1;->a:Lcom/verizon/ads/inlineplacement/InlineAdAdapter$LoadViewListener;

    invoke-interface {v1, p1}, Lcom/verizon/ads/inlineplacement/InlineAdAdapter$LoadViewListener;->onComplete(Lcom/verizon/ads/ErrorInfo;)V

    .line 224
    monitor-exit v0

    return-void

    .line 227
    :cond_0
    iget-object p1, p0, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$1;->b:Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;

    sget-object v1, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;->LOADED:Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;

    invoke-static {p1, v1}, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;->a(Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;)Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;

    .line 229
    iget-object p1, p0, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$1;->a:Lcom/verizon/ads/inlineplacement/InlineAdAdapter$LoadViewListener;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/verizon/ads/inlineplacement/InlineAdAdapter$LoadViewListener;->onComplete(Lcom/verizon/ads/ErrorInfo;)V

    goto :goto_0

    .line 231
    :cond_1
    iget-object p1, p0, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$1;->a:Lcom/verizon/ads/inlineplacement/InlineAdAdapter$LoadViewListener;

    new-instance v1, Lcom/verizon/ads/ErrorInfo;

    invoke-static {}, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Adapter not in the loading state."

    const/4 v4, -0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p1, v1}, Lcom/verizon/ads/inlineplacement/InlineAdAdapter$LoadViewListener;->onComplete(Lcom/verizon/ads/ErrorInfo;)V

    .line 233
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
