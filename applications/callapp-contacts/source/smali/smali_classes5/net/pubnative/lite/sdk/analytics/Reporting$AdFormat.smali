.class public final Lnet/pubnative/lite/sdk/analytics/Reporting$AdFormat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/lite/sdk/analytics/Reporting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AdFormat"
.end annotation


# static fields
.field public static final BANNER:Ljava/lang/String; = "banner"

.field public static final FULLSCREEN:Ljava/lang/String; = "fullscreen"

.field public static final NATIVE:Ljava/lang/String; = "native"

.field public static final REWARDED:Ljava/lang/String; = "rewarded"


# instance fields
.field final synthetic this$0:Lnet/pubnative/lite/sdk/analytics/Reporting;


# direct methods
.method public constructor <init>(Lnet/pubnative/lite/sdk/analytics/Reporting;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lnet/pubnative/lite/sdk/analytics/Reporting$AdFormat;->this$0:Lnet/pubnative/lite/sdk/analytics/Reporting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
