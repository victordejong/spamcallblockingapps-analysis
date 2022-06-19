.class public final synthetic Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSDataProvider$6ICTo2kzkhOCbSNltWfmJavFS44;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/telguarder/features/postCallStatistics/CSDataProvider$ResultItemHandler;


# instance fields
.field public final synthetic f$0:Lcom/telguarder/features/postCallStatistics/CSDataProvider;

.field public final synthetic f$1:Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;


# direct methods
.method public synthetic constructor <init>(Lcom/telguarder/features/postCallStatistics/CSDataProvider;Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSDataProvider$6ICTo2kzkhOCbSNltWfmJavFS44;->f$0:Lcom/telguarder/features/postCallStatistics/CSDataProvider;

    iput-object p2, p0, Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSDataProvider$6ICTo2kzkhOCbSNltWfmJavFS44;->f$1:Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;

    return-void
.end method


# virtual methods
.method public final handle(JIIZ)V
    .locals 7

    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSDataProvider$6ICTo2kzkhOCbSNltWfmJavFS44;->f$0:Lcom/telguarder/features/postCallStatistics/CSDataProvider;

    iget-object v1, p0, Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSDataProvider$6ICTo2kzkhOCbSNltWfmJavFS44;->f$1:Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->lambda$null$0$CSDataProvider(Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;JIIZ)V

    return-void
.end method
