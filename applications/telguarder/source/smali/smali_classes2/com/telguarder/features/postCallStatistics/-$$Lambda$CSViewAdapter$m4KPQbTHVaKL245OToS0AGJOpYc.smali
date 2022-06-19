.class public final synthetic Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSViewAdapter$m4KPQbTHVaKL245OToS0AGJOpYc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/telguarder/features/postCallStatistics/CSViewAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/telguarder/features/postCallStatistics/CSViewAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSViewAdapter$m4KPQbTHVaKL245OToS0AGJOpYc;->f$0:Lcom/telguarder/features/postCallStatistics/CSViewAdapter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSViewAdapter$m4KPQbTHVaKL245OToS0AGJOpYc;->f$0:Lcom/telguarder/features/postCallStatistics/CSViewAdapter;

    invoke-virtual {v0}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->lambda$notifyAdBox$0$CSViewAdapter()V

    return-void
.end method
