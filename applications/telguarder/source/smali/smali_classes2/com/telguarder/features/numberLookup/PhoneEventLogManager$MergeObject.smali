.class Lcom/telguarder/features/numberLookup/PhoneEventLogManager$MergeObject;
.super Ljava/lang/Object;
.source "PhoneEventLogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telguarder/features/numberLookup/PhoneEventLogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MergeObject"
.end annotation


# instance fields
.field companyCall:Lcom/telguarder/features/numberLookup/PhoneEvent;

.field personCall:Lcom/telguarder/features/numberLookup/PhoneEvent;

.field final synthetic this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;


# direct methods
.method private constructor <init>(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;)V
    .locals 0

    .line 472
    iput-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$MergeObject;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;Lcom/telguarder/features/numberLookup/PhoneEventLogManager$1;)V
    .locals 0

    .line 472
    invoke-direct {p0, p1}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$MergeObject;-><init>(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;)V

    return-void
.end method
