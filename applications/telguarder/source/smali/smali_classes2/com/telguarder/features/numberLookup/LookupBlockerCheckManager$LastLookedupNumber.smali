.class public Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager$LastLookedupNumber;
.super Ljava/lang/Object;
.source "LookupBlockerCheckManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LastLookedupNumber"
.end annotation


# instance fields
.field public checkedCallLogId:J

.field public number:Ljava/lang/String;

.field public visible:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
