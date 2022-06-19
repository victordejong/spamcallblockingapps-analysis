.class public final Lcom/mopub/mobileads/factories/VideoViewFactory$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/factories/VideoViewFactory;
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
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/mopub/mobileads/factories/VideoViewFactory$Companion;",
        "",
        "()V",
        "instance",
        "Lcom/mopub/mobileads/factories/VideoViewFactory;",
        "getInstance",
        "()Lcom/mopub/mobileads/factories/VideoViewFactory;",
        "setInstance",
        "(Lcom/mopub/mobileads/factories/VideoViewFactory;)V",
        "create",
        "Landroidx/media2/widget/VideoView;",
        "context",
        "Landroid/content/Context;",
        "mopub-sdk-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/mopub/mobileads/factories/VideoViewFactory$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Landroid/content/Context;)Landroidx/media2/widget/VideoView;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    move-object v0, p0

    check-cast v0, Lcom/mopub/mobileads/factories/VideoViewFactory$Companion;

    invoke-virtual {v0}, Lcom/mopub/mobileads/factories/VideoViewFactory$Companion;->getInstance()Lcom/mopub/mobileads/factories/VideoViewFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/factories/VideoViewFactory;->internalCreate(Landroid/content/Context;)Landroidx/media2/widget/VideoView;

    move-result-object p1

    return-object p1
.end method

.method public final getInstance()Lcom/mopub/mobileads/factories/VideoViewFactory;
    .locals 1

    .line 13
    invoke-static {}, Lcom/mopub/mobileads/factories/VideoViewFactory;->access$getInstance$cp()Lcom/mopub/mobileads/factories/VideoViewFactory;

    move-result-object v0

    return-object v0
.end method

.method public final setInstance(Lcom/mopub/mobileads/factories/VideoViewFactory;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-static {p1}, Lcom/mopub/mobileads/factories/VideoViewFactory;->access$setInstance$cp(Lcom/mopub/mobileads/factories/VideoViewFactory;)V

    return-void
.end method
