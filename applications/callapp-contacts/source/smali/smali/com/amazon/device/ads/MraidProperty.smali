.class abstract Lcom/amazon/device/ads/MraidProperty;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final b:Lcom/amazon/device/ads/StateProperty;

.field static final c:Lcom/amazon/device/ads/StateProperty;

.field static final d:Lcom/amazon/device/ads/StateProperty;

.field static final e:Lcom/amazon/device/ads/StateProperty;

.field static final f:Lcom/amazon/device/ads/StateProperty;

.field static final g:Lcom/amazon/device/ads/SupportsProperty;


# instance fields
.field h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Lcom/amazon/device/ads/StateProperty;

    sget-object v1, Lcom/amazon/device/ads/MraidStateType;->LOADING:Lcom/amazon/device/ads/MraidStateType;

    invoke-direct {v0, v1}, Lcom/amazon/device/ads/StateProperty;-><init>(Lcom/amazon/device/ads/MraidStateType;)V

    sput-object v0, Lcom/amazon/device/ads/MraidProperty;->b:Lcom/amazon/device/ads/StateProperty;

    .line 44
    new-instance v0, Lcom/amazon/device/ads/StateProperty;

    sget-object v1, Lcom/amazon/device/ads/MraidStateType;->DEFAULT:Lcom/amazon/device/ads/MraidStateType;

    invoke-direct {v0, v1}, Lcom/amazon/device/ads/StateProperty;-><init>(Lcom/amazon/device/ads/MraidStateType;)V

    sput-object v0, Lcom/amazon/device/ads/MraidProperty;->c:Lcom/amazon/device/ads/StateProperty;

    .line 46
    new-instance v0, Lcom/amazon/device/ads/StateProperty;

    sget-object v1, Lcom/amazon/device/ads/MraidStateType;->HIDDEN:Lcom/amazon/device/ads/MraidStateType;

    invoke-direct {v0, v1}, Lcom/amazon/device/ads/StateProperty;-><init>(Lcom/amazon/device/ads/MraidStateType;)V

    sput-object v0, Lcom/amazon/device/ads/MraidProperty;->d:Lcom/amazon/device/ads/StateProperty;

    .line 48
    new-instance v0, Lcom/amazon/device/ads/StateProperty;

    sget-object v1, Lcom/amazon/device/ads/MraidStateType;->RESIZED:Lcom/amazon/device/ads/MraidStateType;

    invoke-direct {v0, v1}, Lcom/amazon/device/ads/StateProperty;-><init>(Lcom/amazon/device/ads/MraidStateType;)V

    sput-object v0, Lcom/amazon/device/ads/MraidProperty;->e:Lcom/amazon/device/ads/StateProperty;

    .line 50
    new-instance v0, Lcom/amazon/device/ads/StateProperty;

    sget-object v1, Lcom/amazon/device/ads/MraidStateType;->EXPANDED:Lcom/amazon/device/ads/MraidStateType;

    invoke-direct {v0, v1}, Lcom/amazon/device/ads/StateProperty;-><init>(Lcom/amazon/device/ads/MraidStateType;)V

    sput-object v0, Lcom/amazon/device/ads/MraidProperty;->f:Lcom/amazon/device/ads/StateProperty;

    .line 52
    new-instance v0, Lcom/amazon/device/ads/SupportsProperty;

    invoke-direct {v0}, Lcom/amazon/device/ads/SupportsProperty;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/MraidProperty;->g:Lcom/amazon/device/ads/SupportsProperty;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/amazon/device/ads/MraidProperty;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method abstract a(Lorg/json/JSONObject;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method
