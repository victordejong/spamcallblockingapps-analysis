.class public Lnet/pubnative/lite/sdk/banner/presenter/BannerPresenterFactory;
.super Lnet/pubnative/lite/sdk/presenter/PresenterFactory;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "BannerPresenterFactory"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lnet/pubnative/lite/sdk/presenter/PresenterFactory;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public fromCreativeType(ILnet/pubnative/lite/sdk/models/Ad;)Lnet/pubnative/lite/sdk/presenter/AdPresenter;
    .locals 2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 65
    sget-object p2, Lnet/pubnative/lite/sdk/banner/presenter/BannerPresenterFactory;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Incompatible asset group type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", for banner ad format."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lnet/pubnative/lite/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 59
    :cond_0
    :pswitch_0
    new-instance p1, Lnet/pubnative/lite/sdk/banner/presenter/MraidAdPresenter;

    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/banner/presenter/BannerPresenterFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Lnet/pubnative/lite/sdk/banner/presenter/MraidAdPresenter;-><init>(Landroid/content/Context;Lnet/pubnative/lite/sdk/models/Ad;)V

    return-object p1

    .line 62
    :cond_1
    new-instance p1, Lnet/pubnative/lite/sdk/banner/presenter/VastAdPresenter;

    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/banner/presenter/BannerPresenterFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Lnet/pubnative/lite/sdk/banner/presenter/VastAdPresenter;-><init>(Landroid/content/Context;Lnet/pubnative/lite/sdk/models/Ad;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
