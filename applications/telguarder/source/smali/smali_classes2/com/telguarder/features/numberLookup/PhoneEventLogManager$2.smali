.class Lcom/telguarder/features/numberLookup/PhoneEventLogManager$2;
.super Ljava/lang/Object;
.source "PhoneEventLogManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->sortMergedResultListByDate(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/telguarder/features/numberLookup/PhoneEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;


# direct methods
.method constructor <init>(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;)V
    .locals 0

    .line 411
    iput-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$2;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/telguarder/features/numberLookup/PhoneEvent;Lcom/telguarder/features/numberLookup/PhoneEvent;)I
    .locals 3

    .line 414
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p2, Lcom/telguarder/features/numberLookup/PhoneEvent;->dateTimeInMillis:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    new-instance p2, Ljava/util/Date;

    iget-wide v1, p1, Lcom/telguarder/features/numberLookup/PhoneEvent;->dateTimeInMillis:J

    invoke-direct {p2, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, p2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 411
    check-cast p1, Lcom/telguarder/features/numberLookup/PhoneEvent;

    check-cast p2, Lcom/telguarder/features/numberLookup/PhoneEvent;

    invoke-virtual {p0, p1, p2}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$2;->compare(Lcom/telguarder/features/numberLookup/PhoneEvent;Lcom/telguarder/features/numberLookup/PhoneEvent;)I

    move-result p1

    return p1
.end method
