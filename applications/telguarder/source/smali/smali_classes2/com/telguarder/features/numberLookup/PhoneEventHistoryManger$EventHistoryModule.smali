.class Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$EventHistoryModule;
.super Ljava/lang/Object;
.source "PhoneEventHistoryManger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventHistoryModule"
.end annotation

.annotation runtime Lio/realm/annotations/RealmModule;
    classes = {
        Lcom/telguarder/features/numberLookup/CachedHistoryListItem;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;


# direct methods
.method constructor <init>(Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$EventHistoryModule;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
