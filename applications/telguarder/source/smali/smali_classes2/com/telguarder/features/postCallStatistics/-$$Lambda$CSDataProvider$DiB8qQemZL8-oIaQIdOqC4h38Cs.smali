.class public final synthetic Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSDataProvider$DiB8qQemZL8-oIaQIdOqC4h38Cs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/telguarder/features/postCallStatistics/CSDataProvider;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/telguarder/features/postCallStatistics/CSDataProvider;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSDataProvider$DiB8qQemZL8-oIaQIdOqC4h38Cs;->f$0:Lcom/telguarder/features/postCallStatistics/CSDataProvider;

    iput-object p2, p0, Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSDataProvider$DiB8qQemZL8-oIaQIdOqC4h38Cs;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSDataProvider$DiB8qQemZL8-oIaQIdOqC4h38Cs;->f$2:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSDataProvider$DiB8qQemZL8-oIaQIdOqC4h38Cs;->f$0:Lcom/telguarder/features/postCallStatistics/CSDataProvider;

    iget-object v1, p0, Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSDataProvider$DiB8qQemZL8-oIaQIdOqC4h38Cs;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSDataProvider$DiB8qQemZL8-oIaQIdOqC4h38Cs;->f$2:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->lambda$getData$7$CSDataProvider(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
