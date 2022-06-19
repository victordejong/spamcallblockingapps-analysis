.class public final Lnet/pubnative/lite/sdk/audience/EventAnalytics$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/lite/sdk/audience/EventAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lnet/pubnative/lite/sdk/audience/EventAnalytics$Companion;",
        "",
        "()V",
        "instance",
        "Lnet/pubnative/lite/sdk/audience/EventAnalytics;",
        "getInstance",
        "context",
        "Landroid/content/Context;",
        "hybid.sdk.core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 125
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/audience/EventAnalytics$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance(Landroid/content/Context;)Lnet/pubnative/lite/sdk/audience/EventAnalytics;
    .locals 1

    .line 129
    invoke-static {}, Lnet/pubnative/lite/sdk/audience/EventAnalytics;->access$getInstance$cp()Lnet/pubnative/lite/sdk/audience/EventAnalytics;

    move-result-object v0

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Lnet/pubnative/lite/sdk/audience/EventAnalytics;

    invoke-direct {v0, p1}, Lnet/pubnative/lite/sdk/audience/EventAnalytics;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lnet/pubnative/lite/sdk/audience/EventAnalytics;->access$setInstance$cp(Lnet/pubnative/lite/sdk/audience/EventAnalytics;)V

    .line 132
    :cond_0
    invoke-static {}, Lnet/pubnative/lite/sdk/audience/EventAnalytics;->access$getInstance$cp()Lnet/pubnative/lite/sdk/audience/EventAnalytics;

    move-result-object p1

    return-object p1
.end method
