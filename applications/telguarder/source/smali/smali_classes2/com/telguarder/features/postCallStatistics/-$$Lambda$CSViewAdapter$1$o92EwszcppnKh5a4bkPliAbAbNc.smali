.class public final synthetic Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSViewAdapter$1$o92EwszcppnKh5a4bkPliAbAbNc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/telguarder/features/postCallStatistics/CSViewAdapter$1;


# direct methods
.method public synthetic constructor <init>(Lcom/telguarder/features/postCallStatistics/CSViewAdapter$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSViewAdapter$1$o92EwszcppnKh5a4bkPliAbAbNc;->f$0:Lcom/telguarder/features/postCallStatistics/CSViewAdapter$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSViewAdapter$1$o92EwszcppnKh5a4bkPliAbAbNc;->f$0:Lcom/telguarder/features/postCallStatistics/CSViewAdapter$1;

    invoke-virtual {v0}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter$1;->lambda$updateDuration$0$CSViewAdapter$1()V

    return-void
.end method
