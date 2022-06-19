.class public final Lcom/sinch/metadata/collector/BasicLocaleCollector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sinch/metadata/collector/MetadataCollector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sinch/metadata/collector/MetadataCollector<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u000c\u0012\u0004\u0012\u00020\u00020\u0001j\u0002`\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0007\u001a\u00020\u0002H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/sinch/metadata/collector/BasicLocaleCollector;",
        "Lcom/sinch/metadata/collector/MetadataCollector;",
        "",
        "Lcom/sinch/metadata/collector/LocaleCollector;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "collect",
        "metadata-collector_productionRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sinch/metadata/collector/BasicLocaleCollector;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final bridge synthetic collect()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/sinch/metadata/collector/BasicLocaleCollector;->collect()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final collect()Ljava/lang/String;
    .locals 2

    .line 12
    sget-object v0, Lcom/sinch/verification/utils/api/ApiLevelUtils;->INSTANCE:Lcom/sinch/verification/utils/api/ApiLevelUtils;

    invoke-virtual {v0}, Lcom/sinch/verification/utils/api/ApiLevelUtils;->isApi24OrLater()Z

    move-result v0

    const-string v1, "context.resources"

    if-eqz v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/sinch/metadata/collector/BasicLocaleCollector;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const-string v1, "context.resources.configuration"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/sinch/metadata/collector/BasicLocaleCollector;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 17
    :goto_0
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "if (ApiLevelUtils.isApi2\u2026n.locale\n    }.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
