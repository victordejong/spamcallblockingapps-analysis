.class public Lcom/mopub/nativeads/factories/CustomEventNativeFactory;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Lcom/mopub/nativeads/factories/CustomEventNativeFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mopub/nativeads/factories/CustomEventNativeFactory;

    invoke-direct {v0}, Lcom/mopub/nativeads/factories/CustomEventNativeFactory;-><init>()V

    sput-object v0, Lcom/mopub/nativeads/factories/CustomEventNativeFactory;->a:Lcom/mopub/nativeads/factories/CustomEventNativeFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/mopub/nativeads/CustomEventNative;
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-class v0, Lcom/mopub/nativeads/CustomEventNative;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    sget-object v0, Lcom/mopub/nativeads/factories/CustomEventNativeFactory;->a:Lcom/mopub/nativeads/factories/CustomEventNativeFactory;

    invoke-virtual {v0, p0}, Lcom/mopub/nativeads/factories/CustomEventNativeFactory;->a(Ljava/lang/Class;)Lcom/mopub/nativeads/CustomEventNative;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/mopub/nativeads/MoPubCustomEventNative;

    invoke-direct {p0}, Lcom/mopub/nativeads/MoPubCustomEventNative;-><init>()V

    return-object p0
.end method

.method public static setInstance(Lcom/mopub/nativeads/factories/CustomEventNativeFactory;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    sput-object p0, Lcom/mopub/nativeads/factories/CustomEventNativeFactory;->a:Lcom/mopub/nativeads/factories/CustomEventNativeFactory;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lcom/mopub/nativeads/CustomEventNative;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/mopub/nativeads/CustomEventNative;",
            ">;)",
            "Lcom/mopub/nativeads/CustomEventNative;"
        }
    .end annotation

    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mopub/nativeads/CustomEventNative;

    return-object p1
.end method
