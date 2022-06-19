.class public final Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$AdData;,
        Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0018\u0000 \u00042\u00020\u0001:\u0002\u0003\u0004B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache;",
        "",
        "()V",
        "AdData",
        "Companion",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final a:Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$Companion;

.field private static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$AdData;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache;->a:Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$Companion;

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache;->b:Ljava/util/HashMap;

    .line 16
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache;->c:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    .line 10
    sget-object v0, Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache;->c:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method public static final synthetic b()Ljava/util/HashMap;
    .locals 1

    .line 10
    sget-object v0, Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache;->b:Ljava/util/HashMap;

    return-object v0
.end method
