.class public final Lcom/mopub/mobileads/VastVideoConfig$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/VastVideoConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lok1;)V
    .locals 0

    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoConfig$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromVastVideoConfigString(Ljava/lang/String;)Lcom/mopub/mobileads/VastVideoConfig;
    .locals 2

    const-string v0, "input"

    invoke-static {p1, v0}, Lqk1;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    new-instance v1, Lcom/mopub/mobileads/VastVideoConfig$a;

    invoke-direct {v1}, Lcom/mopub/mobileads/VastVideoConfig$a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapterFactory(Lcom/google/gson/TypeAdapterFactory;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "gson.fromJson(input, VastVideoConfig::class.java)"

    invoke-static {p1, v0}, Lqk1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/mopub/mobileads/VastVideoConfig;

    return-object p1
.end method
