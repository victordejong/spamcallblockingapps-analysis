.class public final Lcom/facebook/internal/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/b$c;,
        Lcom/facebook/internal/b$b;,
        Lcom/facebook/internal/b$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010\t\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0018\u0000 \u00122\u00020\u0001:\u0003\u0012\u0013\u0014B\u0005\u00a2\u0006\u0002\u0010\u0002R\u0013\u0010\u0003\u001a\u0004\u0018\u00010\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\"\u0010\t\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0006R\"\u0010\u000b\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u0006R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0008\u001a\u00020\u000f@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/facebook/internal/AttributionIdentifiers;",
        "",
        "()V",
        "androidAdvertiserId",
        "",
        "getAndroidAdvertiserId",
        "()Ljava/lang/String;",
        "androidAdvertiserIdValue",
        "<set-?>",
        "androidInstallerPackage",
        "getAndroidInstallerPackage",
        "attributionId",
        "getAttributionId",
        "fetchTime",
        "",
        "",
        "isTrackingLimited",
        "()Z",
        "Companion",
        "GoogleAdInfo",
        "GoogleAdServiceConnection",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static final d:Lcom/facebook/internal/b$a;

.field private static final g:Ljava/lang/String;

.field private static h:Lcom/facebook/internal/b;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Z

.field private e:Ljava/lang/String;

.field private f:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/internal/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/internal/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/internal/b;->d:Lcom/facebook/internal/b$a;

    .line 70
    const-class v0, Lcom/facebook/internal/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/b;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/facebook/internal/b;)V
    .locals 0

    .line 50
    sput-object p0, Lcom/facebook/internal/b;->h:Lcom/facebook/internal/b;

    return-void
.end method

.method public static final synthetic a(Lcom/facebook/internal/b;J)V
    .locals 0

    .line 50
    iput-wide p1, p0, Lcom/facebook/internal/b;->f:J

    return-void
.end method

.method public static final synthetic a(Lcom/facebook/internal/b;Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/facebook/internal/b;->e:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a(Lcom/facebook/internal/b;Z)V
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/facebook/internal/b;->c:Z

    return-void
.end method

.method public static final a(Landroid/content/Context;)Z
    .locals 2

    sget-object v0, Lcom/facebook/internal/b;->d:Lcom/facebook/internal/b$a;

    const-string v1, "context"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1130
    check-cast v0, Lcom/facebook/internal/b$a;

    invoke-virtual {v0, p0}, Lcom/facebook/internal/b$a;->a(Landroid/content/Context;)Lcom/facebook/internal/b;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2057
    iget-boolean p0, p0, Lcom/facebook/internal/b;->c:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final synthetic b(Lcom/facebook/internal/b;)J
    .locals 2

    .line 50
    iget-wide v0, p0, Lcom/facebook/internal/b;->f:J

    return-wide v0
.end method

.method public static final synthetic b()Lcom/facebook/internal/b;
    .locals 1

    .line 50
    sget-object v0, Lcom/facebook/internal/b;->h:Lcom/facebook/internal/b;

    return-object v0
.end method

.method public static final b(Landroid/content/Context;)Lcom/facebook/internal/b;
    .locals 1

    sget-object v0, Lcom/facebook/internal/b;->d:Lcom/facebook/internal/b$a;

    invoke-virtual {v0, p0}, Lcom/facebook/internal/b$a;->a(Landroid/content/Context;)Lcom/facebook/internal/b;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lcom/facebook/internal/b;Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/facebook/internal/b;->b:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic c()Ljava/lang/String;
    .locals 1

    .line 50
    sget-object v0, Lcom/facebook/internal/b;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic c(Lcom/facebook/internal/b;Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/facebook/internal/b;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 62
    invoke-static {}, Lcom/facebook/g;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/facebook/g;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/facebook/internal/b;->e:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
