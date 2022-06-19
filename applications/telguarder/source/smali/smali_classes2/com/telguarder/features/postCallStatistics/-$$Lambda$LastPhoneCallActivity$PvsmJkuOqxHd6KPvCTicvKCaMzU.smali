.class public final synthetic Lcom/telguarder/features/postCallStatistics/-$$Lambda$LastPhoneCallActivity$PvsmJkuOqxHd6KPvCTicvKCaMzU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;

.field public final synthetic f$1:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;


# direct methods
.method public synthetic constructor <init>(Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/telguarder/features/postCallStatistics/-$$Lambda$LastPhoneCallActivity$PvsmJkuOqxHd6KPvCTicvKCaMzU;->f$0:Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;

    iput-object p2, p0, Lcom/telguarder/features/postCallStatistics/-$$Lambda$LastPhoneCallActivity$PvsmJkuOqxHd6KPvCTicvKCaMzU;->f$1:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/-$$Lambda$LastPhoneCallActivity$PvsmJkuOqxHd6KPvCTicvKCaMzU;->f$0:Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;

    iget-object v1, p0, Lcom/telguarder/features/postCallStatistics/-$$Lambda$LastPhoneCallActivity$PvsmJkuOqxHd6KPvCTicvKCaMzU;->f$1:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    invoke-virtual {v0, v1}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->lambda$updateContentWith$13$LastPhoneCallActivity(Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;)V

    return-void
.end method
