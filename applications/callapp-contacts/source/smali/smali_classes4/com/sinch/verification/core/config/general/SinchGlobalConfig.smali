.class public final Lcom/sinch/verification/core/config/general/SinchGlobalConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sinch/verification/core/config/general/GlobalConfig;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sinch/verification/core/config/general/SinchGlobalConfig$Builder;,
        Lcom/sinch/verification/core/config/general/SinchGlobalConfig$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 \u000c2\u00020\u0001:\u0002\u000b\u000cB\u0017\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/sinch/verification/core/config/general/SinchGlobalConfig;",
        "Lcom/sinch/verification/core/config/general/GlobalConfig;",
        "context",
        "Landroid/content/Context;",
        "retrofit",
        "Lretrofit2/Retrofit;",
        "(Landroid/content/Context;Lretrofit2/Retrofit;)V",
        "getContext",
        "()Landroid/content/Context;",
        "getRetrofit",
        "()Lretrofit2/Retrofit;",
        "Builder",
        "Companion",
        "verification-core_productionRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final Companion:Lcom/sinch/verification/core/config/general/SinchGlobalConfig$Companion;

.field public static final OKHTTP_CONNECT_TIMEOUT:J = 0x1eL

.field public static final OKHTTP_READ_TIMEOUT:J = 0x1eL


# instance fields
.field private final context:Landroid/content/Context;

.field private final retrofit:Lretrofit2/Retrofit;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sinch/verification/core/config/general/SinchGlobalConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sinch/verification/core/config/general/SinchGlobalConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/sinch/verification/core/config/general/SinchGlobalConfig;->Companion:Lcom/sinch/verification/core/config/general/SinchGlobalConfig$Companion;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lretrofit2/Retrofit;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sinch/verification/core/config/general/SinchGlobalConfig;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/sinch/verification/core/config/general/SinchGlobalConfig;->retrofit:Lretrofit2/Retrofit;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lretrofit2/Retrofit;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/sinch/verification/core/config/general/SinchGlobalConfig;-><init>(Landroid/content/Context;Lretrofit2/Retrofit;)V

    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/sinch/verification/core/config/general/SinchGlobalConfig;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getRetrofit()Lretrofit2/Retrofit;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/sinch/verification/core/config/general/SinchGlobalConfig;->retrofit:Lretrofit2/Retrofit;

    return-object v0
.end method
