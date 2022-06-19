.class public final Lcom/criteo/publisher/advancednative/m;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lcom/criteo/publisher/advancednative/m;

    invoke-direct {v0}, Lcom/criteo/publisher/advancednative/m;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lcom/criteo/publisher/advancednative/CriteoNativeLoader;)Lcom/criteo/publisher/logging/e;
    .locals 8

    const-string v0, "nativeLoader"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    new-instance v0, Lcom/criteo/publisher/logging/e;

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Native("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->adUnit:Lcom/criteo/publisher/model/NativeAdUnit;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ") is loading"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xd

    const/4 v7, 0x0

    move-object v1, v0

    .line 33
    invoke-direct/range {v1 .. v7}, Lcom/criteo/publisher/logging/e;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final a(Lcom/criteo/publisher/advancednative/CriteoNativeLoader;Lcom/criteo/publisher/Bid;)Lcom/criteo/publisher/logging/e;
    .locals 8

    const-string v0, "nativeLoader"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-instance v0, Lcom/criteo/publisher/logging/e;

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Native("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->adUnit:Lcom/criteo/publisher/model/NativeAdUnit;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ") is loading with bid "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/criteo/publisher/c;->a(Lcom/criteo/publisher/Bid;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xd

    const/4 v7, 0x0

    move-object v1, v0

    .line 38
    invoke-direct/range {v1 .. v7}, Lcom/criteo/publisher/logging/e;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final a(Lcom/criteo/publisher/model/NativeAdUnit;)Lcom/criteo/publisher/logging/e;
    .locals 8

    .line 28
    new-instance v7, Lcom/criteo/publisher/logging/e;

    .line 29
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "NativeLoader initialized for "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xd

    const/4 v6, 0x0

    move-object v0, v7

    .line 28
    invoke-direct/range {v0 .. v6}, Lcom/criteo/publisher/logging/e;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7
.end method

.method public static final b(Lcom/criteo/publisher/advancednative/CriteoNativeLoader;)Lcom/criteo/publisher/logging/e;
    .locals 8

    .line 43
    new-instance v7, Lcom/criteo/publisher/logging/e;

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Native("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->adUnit:Lcom/criteo/publisher/model/NativeAdUnit;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ") is loaded"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xd

    const/4 v6, 0x0

    move-object v0, v7

    .line 43
    invoke-direct/range {v0 .. v6}, Lcom/criteo/publisher/logging/e;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7
.end method

.method public static final c(Lcom/criteo/publisher/advancednative/CriteoNativeLoader;)Lcom/criteo/publisher/logging/e;
    .locals 8

    .line 48
    new-instance v7, Lcom/criteo/publisher/logging/e;

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Native("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->adUnit:Lcom/criteo/publisher/model/NativeAdUnit;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ") failed to load"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xd

    const/4 v6, 0x0

    move-object v0, v7

    .line 48
    invoke-direct/range {v0 .. v6}, Lcom/criteo/publisher/logging/e;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7
.end method

.method public static final d(Lcom/criteo/publisher/advancednative/CriteoNativeLoader;)Lcom/criteo/publisher/logging/e;
    .locals 8

    if-eqz p0, :cond_0

    .line 54
    iget-object p0, p0, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->adUnit:Lcom/criteo/publisher/model/NativeAdUnit;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1058
    :goto_0
    new-instance v7, Lcom/criteo/publisher/logging/e;

    .line 1059
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Native("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ") impression registered"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xd

    const/4 v6, 0x0

    move-object v0, v7

    .line 1058
    invoke-direct/range {v0 .. v6}, Lcom/criteo/publisher/logging/e;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7
.end method

.method public static final e(Lcom/criteo/publisher/advancednative/CriteoNativeLoader;)Lcom/criteo/publisher/logging/e;
    .locals 8

    if-eqz p0, :cond_0

    .line 64
    iget-object p0, p0, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->adUnit:Lcom/criteo/publisher/model/NativeAdUnit;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1068
    :goto_0
    new-instance v7, Lcom/criteo/publisher/logging/e;

    .line 1069
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Native("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ") clicked"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xd

    const/4 v6, 0x0

    move-object v0, v7

    .line 1068
    invoke-direct/range {v0 .. v6}, Lcom/criteo/publisher/logging/e;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7
.end method
