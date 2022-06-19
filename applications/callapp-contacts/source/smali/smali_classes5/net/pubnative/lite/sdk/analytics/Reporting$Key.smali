.class public final Lnet/pubnative/lite/sdk/analytics/Reporting$Key;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/lite/sdk/analytics/Reporting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Key"
.end annotation


# static fields
.field public static final AD_FORMAT:Ljava/lang/String; = "ad_format"

.field public static final AD_SIZE:Ljava/lang/String; = "ad_size"

.field public static final CAMPAIGN_ID:Ljava/lang/String; = "campaign_id"

.field public static final CATEGORY_ID:Ljava/lang/String; = "category_id"

.field public static final CREATIVE_ID:Ljava/lang/String; = "creative_id"

.field public static final CREATIVE_TYPE:Ljava/lang/String; = "creative_type"

.field public static final EVENT_TYPE:Ljava/lang/String; = "event_type"

.field public static final PARTICIPANTS:Ljava/lang/String; = "participants"

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"


# instance fields
.field final synthetic this$0:Lnet/pubnative/lite/sdk/analytics/Reporting;


# direct methods
.method public constructor <init>(Lnet/pubnative/lite/sdk/analytics/Reporting;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lnet/pubnative/lite/sdk/analytics/Reporting$Key;->this$0:Lnet/pubnative/lite/sdk/analytics/Reporting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
