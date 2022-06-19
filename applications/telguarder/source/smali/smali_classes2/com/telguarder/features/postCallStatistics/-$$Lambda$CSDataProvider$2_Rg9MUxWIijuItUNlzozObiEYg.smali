.class public final synthetic Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSDataProvider$2_Rg9MUxWIijuItUNlzozObiEYg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/telguarder/features/postCallStatistics/CSDataProvider$CompletionHandler;


# instance fields
.field public final synthetic f$0:Lcom/telguarder/features/postCallStatistics/CSDataProvider;

.field public final synthetic f$1:Lio/realm/RealmResults;

.field public final synthetic f$2:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/telguarder/features/postCallStatistics/CSDataProvider;Lio/realm/RealmResults;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSDataProvider$2_Rg9MUxWIijuItUNlzozObiEYg;->f$0:Lcom/telguarder/features/postCallStatistics/CSDataProvider;

    iput-object p2, p0, Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSDataProvider$2_Rg9MUxWIijuItUNlzozObiEYg;->f$1:Lio/realm/RealmResults;

    iput-object p3, p0, Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSDataProvider$2_Rg9MUxWIijuItUNlzozObiEYg;->f$2:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final handle(JJ)V
    .locals 7

    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSDataProvider$2_Rg9MUxWIijuItUNlzozObiEYg;->f$0:Lcom/telguarder/features/postCallStatistics/CSDataProvider;

    iget-object v1, p0, Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSDataProvider$2_Rg9MUxWIijuItUNlzozObiEYg;->f$1:Lio/realm/RealmResults;

    iget-object v2, p0, Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSDataProvider$2_Rg9MUxWIijuItUNlzozObiEYg;->f$2:Landroid/content/Context;

    move-wide v3, p1

    move-wide v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->lambda$null$5$CSDataProvider(Lio/realm/RealmResults;Landroid/content/Context;JJ)V

    return-void
.end method
