.class public Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager$UTM;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UTM"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 264
    iput-object v0, p0, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager$UTM;->a:Ljava/lang/String;

    .line 265
    iput-object v0, p0, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager$UTM;->b:Ljava/lang/String;

    .line 266
    iput-object v0, p0, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager$UTM;->c:Ljava/lang/String;

    .line 267
    iput-object v0, p0, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager$UTM;->d:Ljava/lang/String;

    return-void
.end method
