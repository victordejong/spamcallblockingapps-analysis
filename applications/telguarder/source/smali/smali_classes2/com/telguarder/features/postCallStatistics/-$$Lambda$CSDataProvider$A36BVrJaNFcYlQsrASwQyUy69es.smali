.class public final synthetic Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSDataProvider$A36BVrJaNFcYlQsrASwQyUy69es;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/realm/Realm$Transaction;


# instance fields
.field public final synthetic f$0:Lcom/telguarder/features/postCallStatistics/CSDataProvider;

.field public final synthetic f$1:J

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/telguarder/features/postCallStatistics/CSDataProvider;JII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSDataProvider$A36BVrJaNFcYlQsrASwQyUy69es;->f$0:Lcom/telguarder/features/postCallStatistics/CSDataProvider;

    iput-wide p2, p0, Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSDataProvider$A36BVrJaNFcYlQsrASwQyUy69es;->f$1:J

    iput p4, p0, Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSDataProvider$A36BVrJaNFcYlQsrASwQyUy69es;->f$2:I

    iput p5, p0, Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSDataProvider$A36BVrJaNFcYlQsrASwQyUy69es;->f$3:I

    return-void
.end method


# virtual methods
.method public final execute(Lio/realm/Realm;)V
    .locals 6

    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSDataProvider$A36BVrJaNFcYlQsrASwQyUy69es;->f$0:Lcom/telguarder/features/postCallStatistics/CSDataProvider;

    iget-wide v1, p0, Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSDataProvider$A36BVrJaNFcYlQsrASwQyUy69es;->f$1:J

    iget v3, p0, Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSDataProvider$A36BVrJaNFcYlQsrASwQyUy69es;->f$2:I

    iget v4, p0, Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSDataProvider$A36BVrJaNFcYlQsrASwQyUy69es;->f$3:I

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->lambda$addToRealmDb$8$CSDataProvider(JIILio/realm/Realm;)V

    return-void
.end method
