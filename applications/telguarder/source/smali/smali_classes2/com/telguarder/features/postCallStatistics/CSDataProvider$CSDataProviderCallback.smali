.class interface abstract Lcom/telguarder/features/postCallStatistics/CSDataProvider$CSDataProviderCallback;
.super Ljava/lang/Object;
.source "CSDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telguarder/features/postCallStatistics/CSDataProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "CSDataProviderCallback"
.end annotation


# virtual methods
.method public abstract addCallHistoryRow(JII)V
.end method

.method public abstract updateCount(III)V
.end method

.method public abstract updateDailyStat(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/Date;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Number;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateDuration(IJJJ)V
.end method
