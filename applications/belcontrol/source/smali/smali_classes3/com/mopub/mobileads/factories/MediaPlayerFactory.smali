.class public Lcom/mopub/mobileads/factories/MediaPlayerFactory;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/factories/MediaPlayerFactory$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/mopub/mobileads/factories/MediaPlayerFactory$Companion;

.field public static a:Lcom/mopub/mobileads/factories/MediaPlayerFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/mopub/mobileads/factories/MediaPlayerFactory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mopub/mobileads/factories/MediaPlayerFactory$Companion;-><init>(Lok1;)V

    sput-object v0, Lcom/mopub/mobileads/factories/MediaPlayerFactory;->Companion:Lcom/mopub/mobileads/factories/MediaPlayerFactory$Companion;

    new-instance v0, Lcom/mopub/mobileads/factories/MediaPlayerFactory;

    invoke-direct {v0}, Lcom/mopub/mobileads/factories/MediaPlayerFactory;-><init>()V

    sput-object v0, Lcom/mopub/mobileads/factories/MediaPlayerFactory;->a:Lcom/mopub/mobileads/factories/MediaPlayerFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lcom/mopub/mobileads/factories/MediaPlayerFactory;
    .locals 1

    sget-object v0, Lcom/mopub/mobileads/factories/MediaPlayerFactory;->a:Lcom/mopub/mobileads/factories/MediaPlayerFactory;

    return-object v0
.end method

.method public static final synthetic access$setInstance$cp(Lcom/mopub/mobileads/factories/MediaPlayerFactory;)V
    .locals 0

    sput-object p0, Lcom/mopub/mobileads/factories/MediaPlayerFactory;->a:Lcom/mopub/mobileads/factories/MediaPlayerFactory;

    return-void
.end method


# virtual methods
.method public internalCreate(Landroid/content/Context;)Lev;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lqk1;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lev;

    invoke-direct {v0, p1}, Lev;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
