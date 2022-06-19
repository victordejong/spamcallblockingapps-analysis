.class Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/util/ads/NativeAdParamGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$3;->a:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;I)I
    .locals 0

    .line 204
    invoke-static {p0, p1}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->access$300(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;I)I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$bTcgkC8EgIZfgL1Q7seO2QwFkxE(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;I)I
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$3;->a(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/callapp/contacts/util/ads/AdSettings;
    .locals 3

    .line 204
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$3;->a:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;

    invoke-virtual {v0}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->getExperimentRemoteConfigName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$3;->a:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;

    new-instance v2, Lcom/callapp/contacts/popup/contact/callrecorder/-$$Lambda$DialogCallRecorderPlayer$3$bTcgkC8EgIZfgL1Q7seO2QwFkxE;

    invoke-direct {v2, v1}, Lcom/callapp/contacts/popup/contact/callrecorder/-$$Lambda$DialogCallRecorderPlayer$3$bTcgkC8EgIZfgL1Q7seO2QwFkxE;-><init>(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;)V

    invoke-static {p1, v0, v2}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/util/ads/AdUtils$NativeAdLayoutGetter;)Lcom/callapp/contacts/util/ads/AdSettings;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/callapp/contacts/util/ads/AdSettings;)Lcom/mopub/nativeads/ViewBinder;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$3;->a:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->getViewBinder(Lcom/callapp/contacts/util/ads/AdSettings;)Lcom/mopub/nativeads/ViewBinder;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/callapp/contacts/util/ads/AdSettings;)Ljava/util/EnumSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/util/ads/AdSettings;",
            ")",
            "Ljava/util/EnumSet<",
            "Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;",
            ">;"
        }
    .end annotation

    .line 214
    invoke-static {p1}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Lcom/callapp/contacts/util/ads/AdSettings;)Ljava/util/EnumSet;

    move-result-object p1

    return-object p1
.end method
